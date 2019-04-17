// <![CDATA[
/**
 * Creative Commons has made the contents of this file
 * available under a CC-GNU-GPL license:
 *
 * http://creativecommons.org/licenses/GPL/2.0/
 *
 * A copy of the full license can be found as part of this
 * distribution in the file COPYING.
 *
 * You may use this software in accordance with the
 * terms of that license. You agree that you are solely 
 * responsible for your use of this software and you
 * represent and warrant to Creative Commons that your use
 * of this software will comply with the CC-GNU-GPL.
 *
 * $Id: $
 *
 * Copyright 2006, Creative Commons, www.creativecommons.org.
 *
 * This is code to deal with jurisdictions.
 */

    var default_version_number = '2.5';
    var jurisdictions_array = {
               'generic' : { 
                        'name' : _('Unported'),
                        'url'  : 'http://creativecommons.org',
                        'generic' : true,
                        'version' : '3.0',
                        'sampling' : '1.0' },
               'ar' : { 'name' : _('Argentina'),
                        'url'  : 'http://creativecommons.org/worldwide/ar/',
                        'version' : '2.5'},
               'au' : { 'name' : _('Australia'),
                        'url'  : 'http://www.creativecommons.org.au',
                        'version' : '2.5'},
               'at' : { 'name' : _('Austria'),
                        'url'  : 'http://www.creativecommons.at',
                        'version' : '2.0'},
               'be' : { 'name' : _('Belgium'),
                        'url'  :'http://creativecommons.org/worldwide/be/',
                        'version' : '2.0'},
               'br' : { 'name' : _('Brazil'),
                        'url'  : 'http://creativecommons.org/worldwide/br/',
                        'version' : '2.5',
                        'sampling' : '1.0'},
               'bg' : { 'name' : _('Bulgaria'),
                        'url'  : 'http://creativecommons.org/worldwide/bg/',
                        'version' : '2.5'},
               'ca' : { 'name' : _('Canada'),
                        'url'  : 'http://creativecommons.ca',
                        'version' : '2.5'},
               'cl' : { 'name' : _('Chile'),
                        'url'  : 'http://creativecommons.cl',
                        'version' : '2.0'},
               'cn' : { 'name' : _('Mainland China'),
                        'url'  : 'http://cn.creativecommons.org',
                        'version' : '2.5'},
               'co' : { 'name' : _('Colombia'),
                        'url'  : 'http://creativecommons.org/worldwide/co/',
                        'version' : '2.5'},
               'hr' : { 'name' : _('Croatia'),
                        'url'  : 'http://creativecommons.org/worldwide/hr/',
                        'version' : '2.5'},
               'hu' : { 'name' : _('Hungary'),
                        'url'  :'http://creativecommons.org/worldwide/hu/',
                        'version' : '2.5'},
               'dk' : { 'name' : _('Denmark'),
                        'url'  : 'http://creativecommons.org/worldwide/dk/',
                        'version' : '2.5'},
               'fi' : { 'name' : _('Finland'),
                        'url'  : 'http://creativecommons.fi',
                        'version' : '1.0'},
               'fr' : { 'name' : _('France'),
                        'url'  : 'http://fr.creativecommons.org',
                        'version' : '2.0'},
               'de' : { 'name' : _('Germany'),
                        'url'  : 'http://de.creativecommons.org',
                        'version' : '2.0'},
               'il' : { 'name' : _('Israel'),
                        'url'  : 'http://creativecommons.org.il',
                        'version' : '2.5'},
               'in' : { 'name' : _('India'),
                        'url'  : 'http://www.cc-india.org',
                        'version' : '2.5'},
               'it' : { 'name' : _('Italy'),
                        'url'  : 'http://www.creativecommons.it',
                        'version' : '2.5'},
               'jp' : { 'name' : _('Japan'),
                        'url'  : 'http://www.creativecommons.jp',
                        'version' : '2.1'},
               'kr' : { 'name' : _('Korea'),
                        'url'  : 'http://www.creativecommons.or.kr/',
                        'version' : '2.0'},
               'my' : { 'name' : _('Malaysia'),
                        'url'  : 'http://creativecommons.org/worldwide/my/',
                        'version' : '2.5'},
               'mt' : { 'name' : _('Malta'),
                        'url'  : 'http://creativecommons.org/worldwide/mt/',
                        'version' : '2.5'},
               'mx' : { 'name' : _('Mexico'),
                        'url'  : 'http://creativecommons.org.mx',
                        'version' : '2.5'},
               'nl' : { 'name' : _('Netherlands'),
                        'url'  : 'http://www.creativecommons.nl',
                        'version' : '2.5'},
               'pe' : { 'name' : _('Peru'),
                        'url'  : 'http://pe.creativecommons.org',
                        'version' : '2.5'},
               'pl' : { 'name' : _('Poland'),
                        'url'  : 'http://creativecommons.pl',
                        'version' : '2.5'},
               'pt' : { 'name' : _('Portugal'),
                        'url'  : 'http://creativecommons.org/worldwide/pt/',
                        'version' : '2.5'},
               'si' : { 'name' : _('Slovenia'),
                        'url'  : 'http://creativecommons.si',
                        'version' : '2.5'},
               'za' : { 'name' : _('South Africa'),
                        'url'  : 'http://za.creativecommons.org',
                        'version' : '2.5'},
               'es' : { 'name' : _('Spain'),
                        'url'  : 'http://es.creativecommons.org/',
                        'version' : '2.5'},
               'scotland' :
                      { 'name' : _('UK: Scotland'),
                        'url'  : 'http://www.creativecommons.org.uk',
                        'version' : '2.5'},
               'se' : { 'name' : _('Sweden'),
                        'url'  : 'http://creativecommons.org/worldwide/se/',
                        'version' : '2.5'},
               'tw' : { 'name' : _('Taiwan'),
                        'url'  : 'http://www.creativecommons.org.tw',
                        'version' : '2.5',
                        'sampling' : '1.0'},
               'uk' : { 'name' : _('UK: England &amp; Wales'),
                        'url'  : 'http://www.creativecommons.org.uk',
                        'version' : '2.0'},
               'us' : { 'name' : _('United States'),
                        'url'  : 'http://creativecommons.org/worldwide/us/',
                        'version' : '3.0'}
               };

    /**
     * A cheap hack for getting out javascript gettext.
     */
    function _ (str)
    {
        return str;
    }

    function print_jurisdictions ()
    {
        for (var j in jurisdictions_array)
            document.write(j);
    } 

    function print_jurisdictions_option (jurisdiction_code, lic_curr, js_on_change)
    {
        var output = '';

        if ( ! js_on_change )
            js_on_change = 'modify(this);';

        output = '<select name="jurisdiction" id="jurisdiction" onchange="' + 
                 js_on_change + '">';

        for (var j in jurisdictions_array) 
        {
            var selected = '';
            if ( j == jurisdiction_code )
                selected = ' selected="selected"';

           output += "<option id=\"" + j + " \" value=\"" + j + "\"" + selected + ">" + 
                          jurisdictions_array[j]['name'] + "</option>\n";
        }
        output += '</select>';

        document.write( output );
    }
// ]]>
