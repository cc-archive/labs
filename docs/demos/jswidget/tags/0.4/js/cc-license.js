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
 * This is code that is used to generate licenses.
 *
 */

function cc_js_$(id) {
    return document.getElementById("cc_js_" + id);
}

/* A wrapper to get Elements By ID
 * Really used for grabbing translations.
 * Unfortunately, having spaces is not valid in IDs, so
 * in the future this should base64 encode the IDs.
 *
 * Also, I should really join all the text children rather than just getting
 * the first.
 */
function cc_js_t(s) {
    return cc_js_$('text_' + s).firstChild.data;
}

// NOTE we have the object freedoms for dealing with freedom style choosing
var cc_js_share, cc_js_remix, cc_js_nc, cc_js_sa;

var cc_js_reset_jurisdiction_array = false;

var cc_js_license_array;

var cc_js_license_root_url        = 'http://creativecommons.org/licenses';

var cc_js_warning_text            = '';

/**
 * Initialise our license codes, and reset the UI
 */
function cc_js_init() {
    /* default: by */
    
    
    cc_js_share = true;
    cc_js_remix = true;
    cc_js_nc    = false;
    cc_js_sa    = false;
    if ( cc_js_$("share") && cc_js_$("remix") ) {
	cc_js_$("share").checked = true;
	cc_js_$("remix").checked = true;
    }
    
    
    
    // But if there's a hidden form field telling us what to do,
    // then by Jove let's do that!
    cc_js_license_array = new Array();
    if (cc_js_$('seed_uri')) {
	cc_js_license_url_to_attributes(cc_js_$('seed_uri').value);
    }
    
    else {
	// Otherwise, init this from scratch
	cc_js_modify(this);
    }
    
    
}

/**
 * Disable everything related to ShareAlike
 */
function cc_js_no_share() {
    cc_js_sa = false;
    cc_js_$("share").disabled = true;
    cc_js_$("share").checked = false;
}

/**
 * TODO: Something here is broken! Please fix so we are really
 * getting the classnames!
 */
function cc_js_option_on (option) {
    var short_label_name = option + '-label';
    var label_name = 'cc_js_' + short_label_name;
    
    cc_js_$(option).disabled = false;
    
    if (option != 'share') 
	cc_js_$(short_label_name).style.color = 'black';
    
}

function cc_js_option_off (option) {
    var short_label_name = option + '-label';
    var label_name = 'cc_js_' + short_label_name;

    /** Commented-out code is removed because we have no share checkbox.
    	if ( cc_js_$(label_name).className )
	//    share_label_orig_class[label_name] = cc_js_$(label_name).className;
	
	//share_label_orig_color[label_name] = cc_js_$(label_name).style.color;
    */
    
    cc_js_$(option).disabled = true;
    cc_js_$(option).checked = false;
    cc_js_$(short_label_name).style.color = 'gray';
}

function cc_js_update_checkboxes_based_on_variables() {
    cc_js_$('share').checked = cc_js_share;
    cc_js_$('remix').checked = cc_js_remix;
    cc_js_$('nc').checked = cc_js_nc;
    cc_js_$('sa').checked = cc_js_sa;
}

function cc_js_update_variables_based_on_checkboxes() {	
    cc_js_share = cc_js_$('share').checked;
    cc_js_remix = cc_js_$('remix').checked;
    cc_js_nc = cc_js_$('nc').checked;
    cc_js_sa = cc_js_$('sa').checked;
}

/**
 * Main logic
 * Checks what the user pressed, sets licensing options based on it.
 */
function cc_js_modify(obj) {
    cc_js_warning_text = '';
    
    
    if ( cc_js_reset_jurisdiction_array ) {
	cc_js_reset_jurisdiction_list();
	cc_js_reset_jurisdiction_array = false;
    }
    
    cc_js_update_variables_based_on_checkboxes();
    cc_js_rest_of_modify();
}

function cc_js_rest_of_modify() {
    if ( cc_js_share && cc_js_remix ) {
	cc_js_option_on('share');
	cc_js_option_on('remix');
	cc_js_option_on('nc');
	cc_js_option_on('sa');
	
    } else if ( cc_js_share && !cc_js_remix ) {
	cc_js_option_on('share');
	cc_js_option_on('remix');
	cc_js_option_on('nc');
	cc_js_option_off('sa');
    } else if ( !cc_js_share && cc_js_remix ) {
	cc_js_option_on('share');
	cc_js_option_on('remix');
	cc_js_option_off('nc');
	cc_js_option_off('sa');
	
	// This next little block checks to see which 
	// jurisdictions support sampling and hides the ones
	// that don't
	// OH! You have to convert a list to an array object...
	var jurisdiction_options = $A( cc_js_$('jurisdiction').options );
	jurisdiction_options.each( function(item) {
		if (item.value in cc_js_jurisdictions_array) {
		    if ('sampling' in cc_js_jurisdictions_array[item.value]) {
			if ( ! cc_js_jurisdictions_array[ item.value ]['sampling'] )
			    item.style.display = 'none';
		    }}
	    });
	
	cc_js_reset_jurisdiction_array = true;
	
    } else {
	// This is when nothing is selected
	cc_js_option_on('share');
	cc_js_option_on('remix');
	cc_js_option_off('nc');
	cc_js_option_off('sa');
    }
    
    // in this hacked version, it just calls update_hack direct
    cc_js_build_license_details();
    
    // Plus, update the hidden form fields with the name and uri
    cc_js_$('result_uri').value = cc_js_license_array['url'];
    cc_js_$('result_img').value = cc_js_license_array['img'];
    cc_js_$('result_name').value = 'Creative Commons ' + cc_js_license_array['full_name'] + ' ' + cc_js_license_array['version'] + ' ' + cc_js_license_array['jurisdiction'];
}

/**
 * This resets the jurisdiction selection menu options' styles
 */
function cc_js_reset_jurisdiction_list ()
{
    var jurisdiction_options = $A( cc_js_$('jurisdiction').options );
    jurisdiction_options.each( function(item) {
            item.style.display = 'block';
        });
    
}
/**
 * This is a hack to set the share value outside the modify for]
 * use by freedoms license.
 */
function cc_js_set_share (value)
{
    cc_js_share = value;
    cc_js_modify();
}

/**
 * This is a hack to set the remix value outside the modify for]
 * use by freedoms license.
 */
function cc_js_set_remix (value)
{
    cc_js_remix = value;
    cc_js_modify();
}

function cc_js_comment_out (str)
{
    return ("<!-- " + str + "-->");
}

/**
 * Retreive the selected style option
 */
function cc_js_style() {
    var styles = document.getElementsByName('style');
    
    for (i = 0; i < styles.length; i++) {
	if (styles[i].checked) {
	    return styles[i].value + ".png";
	}
    }
    
    /* we shouldn't reach here... */
    return "error";
}

function cc_js_position() {
    var pos = document.getElementsByName('pos');
    
    for (i = 0; i < pos.length; i++) {
	if ((pos[i].value == "floating") && (pos[i].checked)) return "position: fixed;";
    }
    return "margin-top:20px;";
}

function cc_js_license_url_to_attributes(url) {
    // this is not specified to work with sampling licenses
    // First assert that the root URL is at the start
    
    // This could be cleaned up a little.
    if (url.substr(0, cc_js_license_root_url.length) != cc_js_license_root_url)
	return;
    var remainder = url.substr(cc_js_license_root_url.length);
    
    if (remainder.substr(0, 1) != "/")
	return;
    remainder = remainder.substr(1);
    var parts = remainder.split("/");
    cc_js_set_attribs(parts[0]);
    if (parts.length > 1) {
	cc_js_set_version(parts[1]);
    }
    if (parts.length > 2) {
	cc_js_set_jurisdiction(parts[2]);
    }
    cc_js_rest_of_modify();
    if (parts[1] != cc_js_license_array['version']) {
	// if the versions are different, tell the user we upgraded his
	// license to the most recent license available for that jurisdiction
	var strong_warning = document.createElement('strong');
	
	if (cc_js_license_array['jurisdiction'] != "") {
	    // if they selected a jurisdiction:
	    strong_warning.appendChild(document.createTextNode(cc_js_t('We have updated the version of your license to the most recent one available in your jurisdiction.')));
	} else {
	    // if they selected no jurisdiction:
	    strong_warning.appendChild(document.createTextNode(cc_js_t('We have updated the version of your license to the most recent one available.')));
	}
	
	cc_js_$('license_example').appendChild(strong_warning);
    }
}

function cc_js_set_attribs(attrs) {
    var attrs_ra = attrs.split("-");
    attrs_ra.each( function(attr) {
	    if (attr == 'sa') {
		cc_js_share = true;
		cc_js_sa = true;
	    }
	    else if (attr == 'nc') {
		cc_js_nc = true;
	    }
	    else if (attr == 'nd') {
		cc_js_share = false;
		cc_js_sa = false;
	    }
	});
    cc_js_update_checkboxes_based_on_variables();
}

function cc_js_set_version(ver) {
    // I do set the 'version', but during sanity-checking it is
    // overwritten by the latest version for the jurisdiction.  If
    // these disagree, we do alert the user.
    cc_js_license_array['version'] = ver;
}

function cc_js_set_jurisdiction(juri) {
    var juri_select = cc_js_$('jurisdiction');
    if (juri_select) {
	for (var i = 0 ; i < juri_select.childNodes.length; i++) {
	    kid = juri_select.childNodes[i];
	    if (kid.value == juri) {
		kid.selected = 'selected';
	    }
	    else {
		kid.selected = '';
	    }
	}
    }
}


function cc_js_build_license_url ()
{
    var license_url = cc_js_license_root_url + "/" + cc_js_license_array['code'] + 
	"/" + cc_js_license_array['version'] + "/" ;
    if ( $F('cc_js_jurisdiction') && ! cc_js_license_array['generic'] )
	license_url += $F('cc_js_jurisdiction') + "/" ;
    
    cc_js_license_array['url'] = license_url;
}

/**
 * Builds the nicely formatted test about the work
 */
function cc_js_build_license_text ()
{
    var license_text     = '';
    var work_title       = '';
    var work_by          = '';
    var namespaces_array = new Array();
    
    var use_namespace_dc = false;
    var use_namespace_cc = false;
    
    var info_format_text = '';
    
    // I had to put this big try block around all the
    // prototype.js attempts to access nonexistent form fields...
    
    // The main bit of text including or not, jurisdiction love
    if ( cc_js_license_array['jurisdiction'] && ! cc_js_license_array['generic'] )
	license_text = 'You have chosen a <a class="cs_js_a" rel="license" href="' + cc_js_license_array['url'] + '">Creative Commons ' + cc_js_license_array['full_name'] + ' ' + cc_js_license_array['version'] + ' ' + ( cc_js_license_array['jurisdiction'] ? cc_js_license_array['jurisdiction'] : cc_js_license_array['jurisdiction'].toUpperCase() ) + ' License</a>.' + ' ' + license_text;
    else 
	license_text = 'You have chosen a <a class="cs_js_a" rel="license" href="' + cc_js_license_array['url'] + '">Creative Commons ' + cc_js_license_array['full_name'] + ' ' + cc_js_license_array['version'] + ' License</a>.' + ' ' + license_text;
    
    // Lets set some namespaces if they are needed
    var namespace_text = '';
    if ( use_namespace_cc )
	namespaces_array.push('xmlns:cc="http://creativecommons.org/ns#"');
    
    if ( use_namespace_dc )
	namespaces_array.push('xmlns:dc="http://purl.org/dc/elements/1.1/"');
    if ( namespaces_array.length > 0 ) {
	namespace_text = '<span';
	namespaces_array.each( function(ns) { 
                namespace_text += ' ' + ns; });
	namespace_text += '>';
	
	license_text = namespace_text + license_text + '</span>';
    }
    
    
    
    
    // set the array container here
    cc_js_license_array['text'] = license_text;
}

function cc_js_build_license_image ()
{
    cc_js_license_array['img'] = 
	'http://i.creativecommons.org/l/' + cc_js_license_array['code'] + 
	"/" + cc_js_license_array['version'] + "/" + 
	( cc_js_license_array['generic']  ? '' : $F('cc_js_jurisdiction') + 
	  "/" ) + '88x31.png';
}

/**
 * Builds the jurisdictions and sets things up properly...
 */
function cc_js_build_jurisdictions ()
{
    
    
    // TODO: The following is not working in internet explorer on wine
    
    // THIS fixes the generic being the default selection...
    var current_jurisdiction = '';
    
    if ( $F('cc_js_jurisdiction') )
	current_jurisdiction = $F('cc_js_jurisdiction');
    else
	current_jurisdiction = 'generic';
    
    cc_js_license_array['jurisdiction'] = 
	cc_js_jurisdictions_array[current_jurisdiction]['name'];
    cc_js_license_array['generic'] = 
	cc_js_jurisdictions_array[current_jurisdiction]['generic'];
    
    cc_js_license_array['sampling'] = 
	cc_js_jurisdictions_array[current_jurisdiction]['sampling'];
    
    // NOTE: This is all a bit hacky to get around that there are
    // only 2 customized jurisdictions with sampling licenses
    // If current jurisdiction doesn't have, then we just set
    // to generic sampling...cool?
    if ( cc_js_license_array['code'] == 'sampling' ) {
	if ( cc_js_jurisdictions_array[current_jurisdiction]['sampling'] ) {  
	    cc_js_license_array['version'] = 
		cc_js_jurisdictions_array[current_jurisdiction]['sampling'];
	} else {
	    cc_js_license_array['version'] =
		cc_js_jurisdictions_array['generic']['sampling'];
	    cc_js_license_array['generic'] = true;
	}
    } else
	cc_js_license_array['version'] = 
	    cc_js_jurisdictions_array[current_jurisdiction]['version'];
    
    
    if ( ! cc_js_license_array['version'] )
	cc_js_license_array['version'] = cc_js_default_version_number;
}

function cc_js_no_license_selection () {
    cc_js_$('license_selected').style.display = 'none';
}

function cc_js_some_license_selection () {
    cc_js_$('license_selected').style.display = 'block';
}

function cc_js_build_license_details ()
{
    cc_js_some_license_selection(); // This is purely cosmetic.
    
    if (!cc_js_share) {
	if (!cc_js_remix) {
	    cc_js_no_license_selection();
	    return;
	} else {
	    cc_js_update_hack('sampling', '1.0', 'Sampling', 'Remix');
	}
    } else {
	if (!cc_js_remix) {
	    if (cc_js_nc) {
		cc_js_update_hack('by-nc-nd', '2.5', 
				  'Attribution-NonCommercial-NoDerivs', 
				  'Share:NC:ND');
	    } else {
		cc_js_update_hack('by-nd', '2.5', 'Attribution-NoDerivs', 
				  'Share:ND');
	    }
	} else {
	    if (cc_js_nc) {
		if (cc_js_sa) {
		    cc_js_update_hack('by-nc-sa', '2.5', 
				      'Attribution-NonCommercial-ShareAlike', 
				      'Remix&Share:NC:SA');
		} else {
		    cc_js_update_hack('by-nc', '2.5', 
				      'Attribution-NonCommercial', 
				      'Remix&Share:NC');
		}
	    } else if (cc_js_sa) {
		cc_js_update_hack('by-sa', '2.5', 'Attribution-ShareAlike', 
				  'Remix&Share:SA');
	    } else {
		cc_js_update_hack('by', '2.5', 'Attribution', 'Remix&Share');
	    }
	}
    }
}

/**
 * Builds an array of our license options from global variables...scary!
 * Here is what we are putting in this (its basically an object):
 cc_js_license_array['code']     = '';
 cc_js_license_array['version']  = '';
 cc_js_license_array['full_name']     = ''; // 'name' is reserved
 cc_js_license_array['text']     = '';
 cc_js_license_array['img'] = '';
 cc_js_license_array['jurisdiction'] = '';
 cc_js_license_array['generic'] = '';
*/
function cc_js_build_license_array () 
{
    // the following is global and we want to reset it definitely...
    cc_js_license_array = new Array();
    
    cc_js_build_jurisdictions();
    cc_js_build_license_details();
    cc_js_build_license_url();
    cc_js_build_license_text();
    cc_js_build_license_image();
}


/**
 * This inserts html into an html element with the given insertion_id. 
 */
function cc_js_insert_html (output, insertion_id)
{
    cc_js_$(insertion_id).innerHTML = output;
    return true;
}

function cc_js_get_comment_code (msg)
{
    if ( ! msg )
	msg = "Creative Commonts License";
    
    return "<!-- " + msg + " -->\n";
}

/**
 * This builds our custom html license code using various refactored 
 * functions for handling all the nastiness...
 */
function cc_js_output_license_html ()
{
    var output = cc_js_get_comment_code() + '<a class="cc_js_a" rel="license" href="' + cc_js_license_array['url'] + '"><img alt="Creative Commons License" width="88" height="31" border="0" src="' + cc_js_license_array['img'] + '" class="cc_js_cc-button"/></a><div class="cc_js_cc-info">' + cc_js_license_array['text'] + '</div>';
    
    cc_js_insert_html( cc_js_warning_text + output, 'license_example');
    return output;
}

/**
 * Checks what options the user has set and spits out license code based on the values
 * There are several global variables which need to be set to get this
 * update to work right.
 */
function cc_js_update ()
{
    // cc_js_warning_text is a global variable as well as cc_js_license_array.
    cc_js_build_cc_js_license_array(); // This does a lot of magic for us...
    
    // our insert_html function also does some modifications on 
    var output = cc_js_output_license_html();
    if ( cc_js_$('result') )
	cc_js_$('result').value = output;
}

function cc_js_update_hack(code, version, full_name)
{
    cc_js_license_array = Array;
    
    cc_js_license_array['code']       = code;
    cc_js_license_array['version']    = version;
    cc_js_license_array['full_name']  = full_name;
    cc_js_build_jurisdictions();
    
    // build_license_details();
    cc_js_build_license_url();
    cc_js_build_license_text();
    cc_js_build_license_image();
    
    // our insert_html function also does some modifications on 
    var output = cc_js_output_license_html();
    if ( cc_js_$('result') )
	cc_js_$('result').value = output;
    
}

// ]]>
