<!--
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

/**
 * This is the class for CCLibDefault which will handle the generic old
 * style license selection. 
 */


var CCLibDefault = Class.create();

/**
 * Define some events we will trigger.
 */

CCLibDefault.prototype = {

    /**
     * This is the constructor which defaults to BY (attribution).
     */
    initialize: function () {
	    this._by    = true;
	    this._nc    = false;
	    this._nd    = false;
	    this._sa    = false;
	    this._was   = false;

        // sharealike should be disabled at this point and grayed out
        this._license_array;

        this._license_root_url        = 'http://creativecommons.org/licenses';
        this._license_version         = '2.5';

        this._warning_text            = '';

        this._share_label_orig_class  = '';
        this._share_label_orig_color  = '';

        this._share     = true;
        this._remix     = true;
        this._sa_cond   = false;
        this._nc_cond   = false;
        this._sa_on     = false;
        this._nc_on     = false;

        this.redo();
    },

    modify: function (obj) {
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

        /*
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
        */
        update();

    },

    update: function () {

    }
    /*
    results: function () {
        try {
            some_license_selection(); // This is purely cosmetic.
        } catch (err) {}
        if (!this._share) {
            if (!this._remix) {
                try {
                    Element.update ("flg-result", "");
                    no_license_selection();
                } catch (err) {}
                return;
            } else {
                this.display('sampling', '1.0', 'Sampling', 'Remix');
            }
        } else {
            if (!this._remix) {
                if (this._nc_cond) {
                    this.display('by-nc-nd', '2.5', 
                                 'Attribution-NonCommercial-NoDerivs', 
                                 'Share:NC:ND');
                } else {
                    this.display('by-nd', '2.5', 'Attribution-NoDerivs', 
                                 'Share:ND');
                }
            } else {
                if (this._nc_cond) {
                    if (this._sa_cond) {
                        this.display('by-nc-sa', '2.5', 
                                     'Attribution-NonCommercial-ShareAlike', 
                                     'Remix&Share:NC:SA');
                    } else {
                        this.display('by-nc', '2.5', 
                                     'Attribution-NonCommercial', 
                                     'Remix&Share:NC');
                    }
                } else if (this._sa_cond) {
                    this.display('by-sa', '2.5', 'Attribution-ShareAlike', 
                                 'Remix&Share:SA');
                } else {
                    this.display('by', '2.5', 'Attribution', 'Remix&Share');
                }
            }
        }
    }, */
    display: function (code, version, name, aka) {
        try {
            update_hack(code, version, name);
            Element.update ("flg-result", "<img src='http://i.creativecommons.org/l/"+code+"/"+version+"/88x31.png'/><br/>" +
            '<br /><i><a href="#get_the_code">Get the Code!</a></i>'); 
        } catch (err) {}

        /*
        document.write( "<p>code: " + code + "</p>" );
        document.write( "<p>version: " + version + "</p>" );
        document.write( "<p>name: " + name + "</p>" );
        document.write( "<p>aka: " + aka + "</p>" );
        document.write( "<hr />" );
        */
    }
}

function comment_out (str)
{
    return ("<!-- " + str + "-->");
}

// var freedomsChooser = new CCLibFreedoms();

// freedomsChooser.redo('share');

/*
Event.initEvent();

try {
Event.observe( window, 'load', freedomsChooser.redo(), false );
}
catch (err)
{} */

// -->

