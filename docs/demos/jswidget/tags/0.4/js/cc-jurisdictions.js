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

var cc_js_default_version_number = '2.5';
var cc_js_jurisdictions_array = {
    'generic' : { 
	'name' : 'Unported',
	'url'  : 'http://creativecommons.org',
	'generic' : true,
	'version' : '3.0',
	'sampling' : '1.0' },
    'ar' : { 'name' : 'Argentina',
	     'url'  : 'http://creativecommons.org/worldwide/ar/',
	     'version' : '2.5'},
    'au' : { 'name' : 'Australia',
	     'url'  : 'http://www.creativecommons.org.au',
	     'version' : '2.5'},
    'at' : { 'name' : 'Austria',
	     'url'  : 'http://www.creativecommons.at',
	     'version' : '2.0'},
    'be' : { 'name' : 'Belgium',
	     'url'  :'http://creativecommons.org/worldwide/be/',
	     'version' : '2.0'},
    'br' : { 'name' : 'Brazil',
	     'url'  : 'http://creativecommons.org/worldwide/br/',
	     'version' : '2.5',
	     'sampling' : '1.0'},
    'bg' : { 'name' : 'Bulgaria',
	     'url'  : 'http://creativecommons.org/worldwide/bg/',
	     'version' : '2.5'},
    'ca' : { 'name' : 'Canada',
	     'url'  : 'http://creativecommons.ca',
	     'version' : '2.5'},
    'cl' : { 'name' : 'Chile',
	     'url'  : 'http://creativecommons.cl',
	     'version' : '2.0'},
    'cn' : { 'name' : 'Mainland China',
	     'url'  : 'http://cn.creativecommons.org',
	     'version' : '2.5'},
    'co' : { 'name' : 'Colombia',
	     'url'  : 'http://creativecommons.org/worldwide/co/',
	     'version' : '2.5'},
    'hr' : { 'name' : 'Croatia',
	     'url'  : 'http://creativecommons.org/worldwide/hr/',
	     'version' : '2.5'},
    'hu' : { 'name' : 'Hungary',
	     'url'  :'http://creativecommons.org/worldwide/hu/',
	     'version' : '2.5'},
    'dk' : { 'name' : 'Denmark',
	     'url'  : 'http://creativecommons.org/worldwide/dk/',
	     'version' : '2.5'},
    'fi' : { 'name' : 'Finland',
	     'url'  : 'http://creativecommons.fi',
	     'version' : '1.0'},
    'fr' : { 'name' : 'France',
	     'url'  : 'http://fr.creativecommons.org',
	     'version' : '2.0'},
    'de' : { 'name' : 'Germany',
	     'url'  : 'http://de.creativecommons.org',
	     'version' : '2.0'},
    'il' : { 'name' : 'Israel',
	     'url'  : 'http://creativecommons.org.il',
	     'version' : '2.5'},
    'in' : { 'name' : 'India',
	     'url'  : 'http://www.cc-india.org',
	     'version' : '2.5'},
    'it' : { 'name' : 'Italy',
	     'url'  : 'http://www.creativecommons.it',
	     'version' : '2.5'},
    'jp' : { 'name' : 'Japan',
	     'url'  : 'http://www.creativecommons.jp',
	     'version' : '2.1'},
    'kr' : { 'name' : 'Korea',
	     'url'  : 'http://www.creativecommons.or.kr/',
	     'version' : '2.0'},
    'my' : { 'name' : 'Malaysia',
	     'url'  : 'http://creativecommons.org/worldwide/my/',
	     'version' : '2.5'},
    'mt' : { 'name' : 'Malta',
	     'url'  : 'http://creativecommons.org/worldwide/mt/',
	     'version' : '2.5'},
    'mx' : { 'name' : 'Mexico',
	     'url'  : 'http://creativecommons.org.mx',
	     'version' : '2.5'},
    'nl' : { 'name' : 'Netherlands',
	     'url'  : 'http://www.creativecommons.nl',
	     'version' : '2.5'},
    'pe' : { 'name' : 'Peru',
	     'url'  : 'http://pe.creativecommons.org',
	     'version' : '2.5'},
    'pl' : { 'name' : 'Poland',
	     'url'  : 'http://creativecommons.pl',
	     'version' : '2.5'},
    'pt' : { 'name' : 'Portugal',
	     'url'  : 'http://creativecommons.org/worldwide/pt/',
	     'version' : '2.5'},
    'si' : { 'name' : 'Slovenia',
	     'url'  : 'http://creativecommons.si',
	     'version' : '2.5'},
    'za' : { 'name' : 'South Africa',
	     'url'  : 'http://za.creativecommons.org',
	     'version' : '2.5'},
    'es' : { 'name' : 'Spain',
	     'url'  : 'http://es.creativecommons.org/',
	     'version' : '2.5'},
    'scotland' : {
	'name' : 'UK: Scotland',
	'url'  : 'http://www.creativecommons.org.uk',
	'version' : '2.5'},
    'se' : { 'name' : 'Sweden',
	     'url'  : 'http://creativecommons.org/worldwide/se/',
	     'version' : '2.5'},
    'tw' : { 'name' : 'Taiwan',
	     'url'  : 'http://www.creativecommons.org.tw',
	     'version' : '2.5',
	     'sampling' : '1.0'},
    'uk' : { 'name' : 'UK: England &amp; Wales',
	     'url'  : 'http://www.creativecommons.org.uk',
	     'version' : '2.0'},
    'us' : { 'name' : 'United States',
	     'url'  : 'http://creativecommons.org/worldwide/us/',
	     'version' : '3.0'}
};

// ]]>
