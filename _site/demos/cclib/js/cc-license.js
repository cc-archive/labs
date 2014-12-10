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


    // NOTE we have the object freedoms for dealing with freedom style choosing
    var share, remix, nc, sa, dn;

    var reset_jurisdiction_array = false;

    var license_array;

    var license_root_url        = 'http://creativecommons.org/licenses';
    var license_version         = '3.0'; // For purposes
    var image_version           = '3.0'; // of demonstration

    var warning_text            = '';

    var label_orig_class        = Array;
    var label_orig_color        = Array;

    var share_label_orig_class  = '';
    var share_label_orig_color  = '';

    // control visibility of NC/Advertising clauses
    var show_nc_ad               = false;

  /**
   * Initialise our license codes, and reset the UI
   */
  function init() {
    /* default: by */
  
        
        share = true;
        remix = true;
        nc    = false;
        sa    = false;
        nc_ad = true;
        dn    = false;
        if ( $("share") && $("remix") ) {
          $("share").checked = true;
          $("remix").checked = true;
        }
  }
  
  /**
   * Disable everything related to ShareAlike
   */
  function no_share() {
    sa = false;
    $("share").disabled = true;
    $("share").checked = false;
  }


    function option_on (option) {
        var label_name = option + '-label';

        try {
        
            $(option).disabled = false;

            //if ( label_orig_class[label_name] ) 
               // $(label_name).className = label_orig_class[label_name];
            //else
            //   $(label_name).style.color = "black";
                

            //if ( share_label_orig_color[label_name] )
            //    $(label_name).style.color = share_label_orig_color[label_name];
            //else
            //    $(label_name).style.color = 'black';
            $(label_name).className = "option_on";
            $(label_name).parentNode.parentNode.style.opacity = 1.0;
        } catch (err) {}

    }

    function option_off (option) {
        var label_name = option + '-label';

        try {
          //  if ( $(label_name).className ) {
                //if (label_orig_class[label_name] != $(label_name).className)
                //  label_orig_class[label_name] = $(label_name).className;

                $(label_name).className = "option_off";
            //} //else {
            //    $(label_name).style.color = 'gray';
            //}
            
            $(label_name).parentNode.parentNode.style.opacity = 0.33;
            
            $(option).disabled = true;
            $(option).checked = false;

        } catch (err) {}
    }
  
  /**
   * Main logic
   * Checks what the user pressed, sets licensing options based on it.
   */
  function modify(obj) {
        warning_text = '';


        if ( reset_jurisdiction_array ) {
            reset_jurisdiction_list();
            reset_jurisdiction_array = false;
        }

        try {
            share = $('share').checked;
            remix = $('remix').checked;
            nc = $('nc').checked;
            /*nc_ad = $('nc-ad-allow').checked ? true : false;
            */sa = $('sa').checked;
            dn = $('dn').checked;
      
        } catch (err) {}

        if ( share && remix )
        {
            option_on('share');
            option_on('remix');
            option_on('nc');
            option_on('sa');
            
            if (nc || sa) 
            {
              option_on('dn');
            }
            else
            {
              option_off('dn');
            }
            dn = $('dn').checked;
        }
        else if ( share && !remix )
        {
            option_on('share');
            option_on('remix');
            option_on('nc');
            option_off('sa');
            option_on('dn');
        }
        else if ( !share && remix )
        {
            option_on('share');
            option_on('remix');
            option_off('nc');
            option_off('sa');
            option_on('dn');

            // This next little block checks to see which 
            // jurisdictions support sampling and hides the ones
            // that don't
            // OH! You have to convert a list to an array object...
            var jurisdiction_options = $A( $('jurisdiction').options );
           jurisdiction_options.each( function(item) {
               if ( ! jurisdictions_array[ item.value ]['sampling'] )
                   item.style.display = 'none';
            });

           reset_jurisdiction_array = true;
        
        } else {
            // This is when nothing is selected
            option_on('share');
            option_on('remix');
            option_off('nc');
            option_off('sa');
            option_off('dn');
        } 
        
      
        // display advertising usage options
        if (show_nc_ad) {
          if (!nc) {
            $('nc-ad').style.display = "none";
          } else {
            $('nc-ad').style.display = "block";
          }
        }
        try
        {

        if (obj.id == "using_myspace")
        {
            $('myspace_style').style.display = 'block';
            $('myspace_position').style.display = 'block';
        } else if ( obj.id == 'using_webpage' || obj.id == 'using_youtube' ) 
        {
            $('myspace_style').style.display = 'none';
            $('myspace_position').style.display = 'none';
        } 

        if ( $F('pos_float') && $F('using_myspace') && 
             $F('pos_float') == 'floating' )
            warning_text = 
                '<p class="alert">Check the bottom of your browser.</p>';
        } catch (err) {};

        // in this hacked version, it just calls update_hack direct
        build_license_details();
  }

    /**
     * This resets the jurisdiction selection menu options' styles
     */
    function reset_jurisdiction_list ()
    {
        var jurisdiction_options = $A( $('jurisdiction').options );
        jurisdiction_options.each( function(item) {
            item.style.display = 'block';
        });

    }
    /**
     * This is a hack to set the share value outside the modify for]
     * use by freedoms license.
     */
    function set_share (value)
    {
        share = value;
        modify();
    }

    /**
     * This is a hack to set the remix value outside the modify for]
     * use by freedoms license.
     */
    function set_remix (value)
    {
        remix = value;
        modify();
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
        
        // non-commercial w/ advertising 
        if (show_nc_ad) {
          if (nc) {
            if (nc_ad) {
              license_text += 'Using this work in advertising is <span rel="cc:allowed" href="http://creativecommons.org/ns#Advertising">allowed</span>.\n';
            } else {
              /* Use accompanied with -- Too legalese sounding, compared to the rest of the text in this block? */
              license_text += 'Using this work in advertising is <span rel="cc:prohibited" href="http://creativecommons.org/ns#Advertising">prohibited</span>.\n';
            }
          }
        }  
        if (dn) {
          license_text += 'In developing nations only this work may be used under terms equivalent to <span xmlns:cc="http://creativecommons.org/ns#" rel="cc:permission" href="http://creativecommons.org/ns#DevNations">Attribution 4.0</span>.';
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
        // FIXME: Danger Will Robinson! Image version demo hack.
            try {
                license_array['img'] = 
                    'http://i.creativecommons.org/l/' + license_array['code'] + 
                    "/" + ( license_array['generic']  ? image_version : license_array['version'] + "/" ) + "/" + 
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

    function no_license_selection () {
        $('license_selected').style.display = 'none';
    }

    function some_license_selection () {
        $('license_selected').style.display = 'block';
    }
    
    function build_license_details ()
    {
        try {
            some_license_selection(); // This is purely cosmetic.
        } catch (err) {}

        if (!share) {
            if (!remix) {
                try {
                    no_license_selection();
                } catch (err) {}
                return;
            } else {
                update_hack('sampling', '1.0', 'Sampling', 'Remix');
            }
        } else {
            if (!remix) {
                if (nc) {
                    update_hack('by-nc-nd', '2.5', 
                                 'Attribution-NonCommercial-NoDerivs', 
                                 'Share:NC:ND');
                } else {
                    update_hack('by-nd', '2.5', 'Attribution-NoDerivs', 
                                 'Share:ND');
                }
            } else {
                if (nc) {
                    if (sa) {
                        update_hack('by-nc-sa', '2.5', 
                                     'Attribution-NonCommercial-ShareAlike', 
                                     'Remix&Share:NC:SA');
                    } else {
                        update_hack('by-nc', '2.5', 
                                     'Attribution-NonCommercial', 
                                     'Remix&Share:NC');
                    }
                } else if (sa) {
                    update_hack('by-sa', '2.5', 'Attribution-ShareAlike', 
                                 'Remix&Share:SA');
                } else {
                    update_hack('by', '2.5', 'Attribution', 'Remix&Share');
                }
            }
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
        license_array = new Array();

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

    function get_comment_code (msg)
    {
        if ( ! msg )
            msg = "Creative Commons License";
        
        return "<!-- " + msg + " -->\n";
    }

    /**
     * This builds our custom html license code using various refactored 
     * functions for handling all the nastiness...
     */
    function output_license_html ()
    {
    var output = get_comment_code() + '<a rel="license" href="' + license_array['url'] + '"><img alt="Creative Commons License" border="0" src="' + license_array['img'] + '" class="cc-button"/></a><div class="cc-info">' + license_array['text'] + '</div>';

        try {
            if ( $F('using_myspace') )
            {
            output = '<style type="text/css">body { padding-bottom: 50px;} div.cc-bar { width:100%; height: 40px; ' + position() + ' bottom: 0px; left: 0px; background:url(http://mirrors.creativecommons.org/myspace/'+ style() +') repeat-x; } img.cc-button { float: left; border:0; margin: 5px 0 0 15px; } div.cc-info { float: right; padding: 0.3%; width: 400px; margin: auto; vertical-align: middle; font-size: 90%;} </style> <div class="cc-bar">' + output + '</div>';
            } else if ( $F('using_youtube') ) {
                output = license_array['url'];
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
        $('result').value = output;
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
        $('result').value = output;

    }

// ]]>
