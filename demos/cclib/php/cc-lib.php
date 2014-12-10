<?php
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
 * This is code that will develop into cclib for php.
 */

// $CC_LIB_GLOBALS = array();

if ( ! CC_LIB )
    define('CC_LIB', 'cclib');

define('CC_LIB_PHP', CC_LIB . '/php');
define('CC_LIB_JS', CC_LIB . '/js');

require_once( CC_LIB_PHP . '/cc-license-jurisdictions.php' );

    /**
     * This code interacts with cc-tooltip.js and is responsible for
     * generating tooltips simply in html.
     */
    function get_more_info ($msg, $img = 'images/information.png', $window_name = 'characteristic_help')
    {
        $info_text = '';
        $class_text = '';
        if ( !empty($img) ) {
            $info_text = 
                '<img src="' . $img . '" alt="info" class="info" />';
            $class_text = 'infobox';
        } else {
            $info_text = '?';
            $class_text = 'questionbox';
        }

        return "<span class=\"" . $class_text . 
               "\" onmouseover=\"on_tooltip_html(event,'" . 
               htmlspecialchars($msg) . 
               "');\" onmouseout=\"hide_tip()\">" . $info_text . "</span>";
    }

    /**
     * This code prints tooltip info and relies on cc-tooltip.js in an
     * html file.
     */
    function print_more_info ($msg, $img = 'images/information.png', 
                              $window_name = 'characteristic_help')
    {
        echo get_more_info($msg, $img, $window_name);
    }

    /**
     * This gets tooltip javascript and is not standalone and is for part of
     * another html element.
     */
    function get_tooltip_js ($msg)
    {
        return "class=\"question\" onmouseover=\"on_tooltip_html(event,'"
                      . htmlspecialchars($msg) . 
                      "');\" onmouseout=\"hide_tip()\"";
    }

    /**
     * This actually prints out the tooltip javascript to html.
     */
    function print_tooltip_js ($msg, $url = '')
    {
        echo get_tooltip_js($msg, $url);
    }

    if ( !function_exists( 'gettext' ) )
    {

        // alias to gettext and what we prefer
        function _($t)
        {
            return $t;
        }

        // call for gettext plurals
        function ngettext($t1,$t2,$num)
        {
            return $num == 1 ? $t1 : $t2;
        }

        function bindtextdomain()
        {
        }

        function textdomain()
        {
        }

    }

?>
