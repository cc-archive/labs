#!/usr/bin/python
# This takes template.html and makes a document.write() for it.
# Later, it could take template.html and make DOM objects instead.

from simpletal import simpleTAL, simpleTALES
import cStringIO as StringIO

# Create the context that is used by the template
context = simpleTALES.Context()
jurisdictions = [{"id": "kr", "name": "Korea"}
            ]
context.addGlobal("jurisdictions", jurisdictions)

def escape_single_quote(s):
	return s.replace("'", "\\'")

templateFile = open('template.html')
template = simpleTAL.compileHTMLTemplate(templateFile)
templateFile.close()

output_buffer = StringIO.StringIO()
template.expand(context, output_buffer)
out = open('template.js', 'w')

for line in output_buffer.getvalue().split('\n'):
	escaped_line = escape_single_quote(line.strip())
	print >> out, "document.write('%s');" % escaped_line

