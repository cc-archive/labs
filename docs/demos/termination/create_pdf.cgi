#!/usr/bin/python

import cgi
import cgitb; cgitb.enable()
import commands
import tempfile
from types import *
from os import chdir, environ
import lxml.etree

## Lets hope that this gets installed in the right place...
pdflatex_bin = '/usr/bin/pdflatex'

# Template config
template_path = '/latex/'
template_prefix = 'termination_template_'

# Temporary directory
work_dir = tempfile.mkdtemp()

def escapeStrForLatex( str ):
    # we'll do backslashes separately to keep from getting confused
    # haven't figured out how to get Latex to render backslashed properly
    # so we'll just switch them with forward slashes... :)
    str = str.replace( '\\', '/' )

    # This is the list of characters we need to escape (all except backslash)
    esc_chars = ( '#', '$', '%', '^', '&', '_', '{', '}', '~' )
    for ch in esc_chars:
        str = str.replace( ch, '\\' + ch )
    return str

def escapeForLatex( var ):
    if type( var ) is str:
        return escapeStrForLatex( var )
    elif ( ( type( var ) is TupleType ) or ( type( var ) is ListType ) ):
        temp_list = list()
        for item in var:
            temp_list.append( escapeForLatex( item ) )
        if type( var ) is TupleType:
            temp_list = tuple( temp_list )
        return temp_list
    elif type( var ) is DictType:
        for key in var.keys():
            var[key] = escapeForLatex( var[key] )
        return var
    else:
        ## Unknown type - could be int? Not handled... could be bad
        return var

def deceasedStr( alive ):
    if alive in ('Yes','true'):
        return '(living)'
    elif alive in ('No','false'):
        return '(deceased)'
    else:
        return '(???)'

def genLatex( args ):

    ## do this later
    ## args = escapeForLatex( args )

    ## These are the elements we expect in the XML:
    ##
    ## authors
    ## successor_grantors
    ## type
    ## gby
    ## author_grant
    ## successor_grant
    ## copyright_date
    ## grant_date
    ## twopen
    ## twclose
    ## nwopen
    ## nwclose
    ## title
    ## ocn
    ## grant_description
    ## grantee

    ## Create a dictionary of template pieces
    template = {}
    for t in ( 'main', 'authors', 'grant_info', 'grantors', 'basic_end', 'main_end', 'descendants', 'descendants_end',
               'child', 'nochildren', 'grandchild', 'nograndchildren' ):

        tpath = environ['SCRIPT_FILENAME'].split('/')
        tpath.pop(); tpath.append(template_path)
        temp_file = file( '/'.join(tpath) + template_prefix + t + '.tex','r' )
        template[t] = temp_file.read()
        temp_file.close()

    ## Do Variable Substitution on main template
    output = template['main']
    output = output.replace('[GRANTTYPE]',        str(args.find("type").text))
    output = output.replace('[WORKTITLE]',        args.find("title").text)
    output = output.replace('[CREATEDATE]',       args.find("create_date").text)
    output = output.replace('[PUBLISHDATE]',      args.find("publish_date").text)
    output = output.replace('[COPYRIGHTDATE]',    args.find("copyright_date").text)
    output = output.replace('[COPYRIGHTNUMBER]',  args.find("ocn").text)

    ## Special note for 203 terminations
    if str(args.find("type").text) == '203':
      output = output.replace('[NOTICECLOSE]', '[NOTICECLOSE] *')
      output = output.replace('[TERMCLOSE]', '[TERMCLOSE] *')
      output = output.replace('%[203FOOTNOTE]', '')

    output = output.replace('[NOTICEOPEN]',       args.find("nwopen").text)
    output = output.replace('[NOTICECLOSE]',      args.find("nwclose").text)
    output = output.replace('[TERMOPEN]',         args.find("twopen").text)
    output = output.replace('[TERMCLOSE]',        args.find("twclose").text)

    authors = args.findall("authors")
    for author in authors:
      output += template['authors']
      if len(authors) == 1 or author.find("grantor").text == 'Yes':
        output = output.replace('[AUTHORNAME]', author.find("name").text + ' ' + deceasedStr(author.find("alive").text) )
      else:
        output = output.replace('[AUTHORNAME]', author.find("name").text + ' ' + '(Non-Grantor)' )


    ## Grant info
    if args.find("author_grant").text == 'Yes':
      output = output.replace('[GRANTBY]', '- Grant By Author')
      for author in authors:
        if len(authors) == 1 or author.find("grantor").text == 'Yes':
          output += template['grantors']
          output = output.replace('[GRANTOR]', author.find("name").text + ' (Author)')

    elif args.find("successor_grant").text == 'Yes':
      output = output.replace('[GRANTBY]', '- Grant By Successors')
      for grantor in args.findall("successor_grantors"):
        output += template['grantors']
        output = output.replace('[GRANTOR]', grantor.find("name").text + ' ' + deceasedStr( grantor.find("alive").text ) + ' (' + grantor.find("relationship").text + ')')

    output += template['grant_info']
    output = output.replace('[GRANTDESCRIPTION]',    args.find("grant_description").text)
    output = output.replace('[GRANTDATE]',           args.find("grant_date").text)
    output = output.replace('[ORIGINALGRANTEENAME]', args.find("original_grantee").text)
    output = output.replace('[CURRENTGRANTEENAME]',  args.find("current_grantee").text)

    output += template['basic_end']


    ## Descendants info only if we're doing an author_grant
    if args.find("author_grant").text == 'Yes':
      for author in authors:
        if len(authors) > 1 and author.find("grantor").text == 'No': continue

        #output += template['descendants'].replace('[AUTHORNAME]',args['authors'][grantor][1])
        #output += template['descendants_end']
        if author.find("alive").text == 'No':

          output += template['descendants']
          output = output.replace(
              '[AUTHORNAME]', author.find("name").text + ' ' + deceasedStr(author.find("alive").text) )
          spouse = author.find("spouse")
          if spouse.text == 'none':
              output = output.replace('[SPOUSENAME]', 'No Spouse')
          else:
              output = output.replace(
                  '[SPOUSENAME]', spouse.find("name").text + ' ' + deceasedStr( spouse.find("alive").text ) )

          ## Children info
          children = author.findall("children")
          if len(children) > 0:
              for child in children:
                  output += template['child'].replace(
                      '[CHILDNAME]', child.find("name").text + ' ' + deceasedStr( child.find("alive").text )
                  )

                  ## Grandchildren
                  grandchildren = child.findall("grandchildren")
                  if len(grandchildren) > 0:
                    for grandchild in grandchildren:
                      output += template['grandchild'].replace(
                               '[GRANDCHILDNAME]', grandchild.find("name").text + ' ' + deceasedStr( grandchild.find("alive").text )
                               )

                  ## No Grandchildren
                  else:
                    output += template['nograndchildren']

          ## No Children
          else:
            output += template['nochildren']

          output += template['descendants_end']

    output += template['main_end']

    # Name doesn't need to be random anymore.
    latex_file = "out.tex"
    if len(work_dir): chdir(work_dir)
    active = file(latex_file,'w')
    active.write(output)
    active.close()

    # Return the name of the generated latex file
    return latex_file

def genPDF( args ):

    # create the latex
    genLatex( args )

    # feed it to pdflatex
    commands.getstatusoutput('%s out.tex' % pdflatex_bin)

    # debug:
    commands.getstatusoutput("ls > /home/lunpa/debug.txt")
    commands.getstatusoutput("cat out.log > /home/lunpa/out.log")
    commands.getstatusoutput("cat out.tex > /home/lunpa/out.tex")


    # get the pdf file
    pdf_file = "out.pdf"
    pdf_bin = file( pdf_file, 'r' ).read()

    # clean up the crud
    for file_type in ('.tex','.aux','.log','.pdf'):
        clean_file = pdf_file.replace( '.pdf', file_type )
        commands.getstatusoutput( 'rm ' + clean_file )

    return pdf_bin

def main():
    form = cgi.FieldStorage()
    tot = lxml.etree.XML(form.getvalue("tot"))
    pdf_data =  genPDF( tot )
    print "Content-type: application/pdf"
    print "Content-disposition: inline; filename=TerminationOfTransfer.pdf"
    print
    print pdf_data

# Some unit testing (could do more here)
if __name__ == '__main__':
    main()
