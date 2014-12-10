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

	var by;
	var nc;
	var nd;
	var sa;
	var was;

    var license_array;

    var license_root_url        = 'http://creativecommons.org/licenses';
    var license_version         = '2.5';

    var warning_text            = '';

    var share_label_orig_class  = '';
    var share_label_orig_color  = '';

	/**
	 * Initialise our license codes, and reset the UI
	 */
	function init() {
		/* default: by */
		by = true;
		nc = false;
		nd = false;
		sa = false;
		
        if ( $("mod") && $("com") ) {
		    $("mod").checked = true;
		    $("com").checked = true;
        }

		// no_share();
        if ( $("share") ) {
            $("share").disabled = false;
            share_label_orig_class = $('share-label').className;
            share_label_orig_color = $('share-label').style.color;
        }
		
		was = false;
	}
	
	/**
	 * Disable everything related to ShareAlike
	 */
	function no_share() {
		sa = false;
		$("share").disabled = true;
		$("share").checked = false;
	}
	
	/**
	 * Main logic
	 * Checks what the user pressed, sets licensing options based on it.
	 */
	function modify(obj) {
        warning_text = '';

        try
        {

		if (obj.id == "mod") {
			if (obj.checked) {
				$('share').disabled = false;
                $('share-label').className = share_label_orig_class;
                $('share-label').style.color = share_label_orig_color;
                
				if (was){
					 $('share').checked = true;
					 sa = true;
				}
				
				nd = false;
			} else {
                $('share-label').style.color = 'gray'
				
				/* remember if the user wanted to share */
				$('share').checked ? was = true : was = false;

				no_share();
			
				nd = true;
			}
		}
		
		if (obj.id == "com") {
			obj.checked ? nc = false : nc = true;
		}
		
		if (obj.id == "share") {
			obj.checked ? sa = true : sa = false;
		}

        if (obj.id == "using_myspace")
        {
            $('myspace_style').style.display = 'block';
            $('myspace_position').style.display = 'block';
        } else if ( obj.id == 'using_webpage' ) 
        {
            $('myspace_style').style.display = 'none';
            $('myspace_position').style.display = 'none';
        } 

        if ( $F('pos_float') && $F('using_myspace') && 
             $F('pos_float') == 'floating' )
            warning_text = 
                '<p class="alert">Check the bottom of your browser.</p>';
        } catch (err) {};

        update();
	}

	
    function comment_out (str)
    {
        return ("<!-- " + str + "-->");
    }
	
	/**
	 * Retreive the selected style option
	 */
	function style() {
		var styles = document.getElementsByName('style');
	
		for (i = 0; i < styles.length; i++) {
			if (styles[i].checked) {
				return styles[i].value + ".png";
			}
		}
		
		/* we shouldn't reach here... */
		return "error";
	}
	
	function position() {
		var pos = document.getElementsByName('pos');
		
		for (i = 0; i < pos.length; i++) {
			if ((pos[i].value == "floating") && (pos[i].checked)) return "position: fixed;";
		}
		return "margin-top:20px;";
	}

    function build_license_url ()
    {
        var license_url = license_root_url + "/" + license_array['code'] + 
                          "/" + license_array['version'] + "/" ;
        try {
            if ( $F('jurisdiction') && ! license_array['generic'] )
                license_url += $F('jurisdiction') + "/" ;
        } catch (err) {}

        license_array['url'] = license_url;
    }

    /**
     * Builds the nicely formatted test about the work
     */
    function build_license_text ()
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
        try
        {

        // set if we need any type support
        if ( $F('info_format') && $F('info_format') != '' && 
             $F('info_format') != '-' )
            info_format_text = 
                'rel="dc:type" href="http://purl.org/dc/dcmitype/' + 
                $F('info_format') + '"';


        if ( $F('info_title') ) {
            if ( info_format_text == "" )
                work_title = '<span id="work_title" property="dc:title">' + 
                    $F('info_title') + '</span>';
            else
                work_title = '<span id="work_title" ' + info_format_text + ' property="dc:title">' + $F('info_title') + '</span>';

            use_namespace_dc = true;
        } else {
            // if we need format support, please add it
            if ( info_format_text == "" )
                work_title = 'This Work';
            else {
                work_title = '<span ' + info_format_text + 
                '>This Work</span>';
                use_namespace_dc = true;
            }
        }

        if ( $F('info_attribute_to_name') && $F('info_attribute_to_url') ) {
            work_by = '<a rel="cc:attributionURL" property="cc:attributionName" href="' + $F('info_attribute_to_url') + '">' + $F('info_attribute_to_name') + '</a>' ;
            use_namespace_cc = true;
        } else if ( $F('info_attribute_to_name') && 
                    ! $F('info_attribute_to_url') ) {
            work_by = '<span property="cc:attributionName">' + 
            $F('info_attribute_to_name') + 
            '</span>';
            use_namespace_cc = true;
        } else if ( ! $F('info_attribute_to_name') && 
                    $F('info_attribute_to_url') ) {
            work_by = '<a rel="cc:attributionURL" href="' + 
            $F('info_attribute_to_url') + '">' + 
            $F('info_attribute_to_url') + '</a>';
            use_namespace_cc = true;
        }

        if ( work_by )
            work_by = ' by ' + work_by;

        if ( $F('info_source_work_url') ) {
            license_text += '<span rel="dc:source" href="' + 
                $F('info_source_work_url') + '"/>';
            use_namespace_dc = true;
        }

        if ( $F('info_more_permissions_url') ) {
            var domain = 
              $F('info_more_permissions_url').match( /:\/\/(www\.)?([^\/:]+)/ );
            // set this to either just the domain or the full url if
            // the domain can't be extracted...yep, lame for now...
            if ( domain != null && domain[2] > "" )
                domain = domain[2];
            else 
                domain = $F('info_more_permissions_url');

            license_text += 
                'Permissions beyond the scope of this license may be available at <a rel="cc:morePermissions" href="' + $F('info_more_permissions_url') + 
                '">' + domain + '</a>.' + "\n";
            use_namespace_cc = true;
        }

        } catch (err) {}

        // The main bit of text including or not, jurisdiction love
        if ( license_array['jurisdiction'] && ! license_array['generic'] )
            license_text = work_title + work_by + ' is licensed under a <a rel="license" href="' + license_array['url'] + '">Creative Commons ' + license_array['full_name'] + ' ' + license_array['version'] + ' ' + ( license_array['jurisdiction'] ? license_array['jurisdiction'] : license_array['jurisdiction'].toUpperCase() ) + ' License</a>.' + ' ' + license_text;
        else 
            license_text = work_title + work_by + ' is licensed under a <a rel="license" href="' + license_array['url'] + '">Creative Commons ' + license_array['full_name'] + ' ' + license_array['version'] + ' License</a>.' + ' ' + license_text;
        
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
        license_array['text'] = license_text;
    }
	
    function build_license_image ()
    {
            try {
                license_array['img'] = 
                    'http://i.creativecommons.org/l/' + license_array['code'] + 
                    "/" + license_array['version'] + "/" + 
                    ( license_array['generic']  ? '' : $F('jurisdiction') + 
                    "/" ) + '88x31.png';
            } catch (err) {}
    }

    /**
     * Builds the jurisdictions and sets things up properly...
     */
    function build_jurisdictions ()
    {
        // TODO: The following is not working in internet explorer on wine

        // THIS fixes the generic being the default selection...
        var current_jurisdiction = '';
        
        try {
            if ( $F('jurisdiction') )
                current_jurisdiction = $F('jurisdiction');
            else
                current_jurisdiction = 'generic';
        } catch (err) {
            current_jurisdiction = 'generic';
        }

        license_array['jurisdiction'] = 
            jurisdictions_array[current_jurisdiction]['name'];
        license_array['generic'] = 
            jurisdictions_array[current_jurisdiction]['generic'];

        license_array['sampling'] = 
            jurisdictions_array[current_jurisdiction]['sampling'];

        // NOTE: This is all a bit hacky to get around that there are
        // only 2 customized jurisdictions with sampling licenses
        // If current jurisdiction doesn't have, then we just set
        // to generic sampling...cool?
        if ( license_array['code'] == 'sampling' ) {
            if ( jurisdictions_array[current_jurisdiction]['sampling'] ) {  
                license_array['version'] = 
                    jurisdictions_array[current_jurisdiction]['sampling'];
            } else {
                license_array['version'] =
                    jurisdictions_array['generic']['sampling'];
                license_array['generic'] = true;
            }
        } else
            license_array['version'] = 
                jurisdictions_array[current_jurisdiction]['version'];


        if ( ! license_array['version'] )
            license_array['version'] = license_version;
    }
    
    function build_license_details ()
    {
        /* BY */
		if ((!nd) && (!nc) && (!sa)) {
		    license_array['code'] = "by"; 
            license_array['full_name'] = "Attribution"; 
        }
		
        /* BY-SA */
		else if ((!nd) && (!nc) && ( sa)) {
		    license_array['code'] = "by-sa"; 
            license_array['full_name'] = "Attribution-ShareAlike";
        }
		
        /* BY-ND */
		else if (( nd) && (!nc) && (!sa)) {
		    license_array['code'] = "by-nd"; 
            license_array['full_name'] = "Attribution-NoDerivatives"; 
        }
		
        /* BY-NC */
		else if ((!nd) && ( nc) && (!sa)) {
		    license_array['code'] = "by-nc"; 
            license_array['full_name'] = "Attribution-NonCommercial";
        }
		
        /* BY-NC-SA */
		else if ((!nd) && ( nc) && ( sa)) {
	        license_array['code'] = "by-nc-sa"; 
            license_array['full_name'] = "Attribution-NonCommercial-ShareAlike"; 
        }
		
        /* BY-NC-ND */
		else if (( nd) && ( nc) && (!sa)) {
		    license_array['code'] = "by-nc-nd"; 
            license_array['full_name'] = "Attribution-NonCommercial-NoDerivatives"; 
        }
    }

    /**
     * Builds an array of our license options from global variables...scary!
     * Here is what we are putting in this (its basically an object):
        license_array['code']     = '';
        license_array['version']  = '';
        license_array['full_name']     = ''; // 'name' is reserved
        license_array['text']     = '';
        license_array['img'] = '';
        license_array['jurisdiction'] = '';
        license_array['generic'] = '';
     */
	function build_license_array () 
    {
        // the following is global and we want to reset it definitely...
        license_array = Array;

        build_jurisdictions();
        build_license_details();
        build_license_url();
        build_license_text();
        build_license_image();
    }


    /**
     * This inserts html into an html element with the given insertion_id. 
     */
    function insert_html (output, insertion_id)
    {
        try {
            $(insertion_id).innerHTML = output;
        } catch (err) {};
        return true;
    }

    /**
     * This builds our custom html license code using various refactored 
     * functions for handling all the nastiness...
     */
    function output_license_html ()
    {
		var output = '<a rel="license" href="' + license_array['url'] + '"><img alt="Creative Commons License" border="0" src="' + license_array['img'] + '" class="cc-button"/></a><div class="cc-info">' + license_array['text'] + '</div>';

        try {
            if ( $F('using_myspace') )
            {
		        output = '<style type="text/css">body { padding-bottom: 50px;} div.cc-bar { width:100%; height: 40px; ' + position() + ' bottom: 0px; left: 0px; background:url(http://mirrors.creativecommons.org/myspace/'+ style() +') repeat-x; } img.cc-button { float: left; border:0; margin: 5px 0 0 15px; } div.cc-info { float: right; padding: 0.3%; width: 400px; margin: auto; vertical-align: middle; font-size: 90%;} </style> <div class="cc-bar">' + output + '</div>';
            }
        } catch (err) {}

        insert_html( warning_text + output, 'license_example');
        return output;
	}

	/**
	 * Checks what options the user has set and spits out license code based on the values
     * There are several global variables which need to be set to get this
     * update to work right.
	 */
    function update ()
    {
        // warning_text is a global variable as well as license_array.
        build_license_array(); // This does a lot of magic for us...

        // our insert_html function also does some modifications on 
        var output = output_license_html();
        if ( $('result') )
		    $('result').value = "<!--Creative Commons License-->\n" + output;
    }

    function update_hack(code, version, full_name)
    {
        license_array = Array;

        license_array['code']       = code;
        license_array['version']    = version;
        license_array['full_name']  = full_name;
        build_jurisdictions();

        // build_license_details();
        build_license_url();
        build_license_text();
        build_license_image();

        // our insert_html function also does some modifications on 
        var output = output_license_html();
        if ( $('result') )
		    $('result').value = "<!--Creative Commons License-->\n" + output;

    }

// ]]>
