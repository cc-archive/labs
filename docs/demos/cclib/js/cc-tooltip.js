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
 * Copyright 2005-2006, Creative Commons, www.creativecommons.org.
 *
 * cc-tooltip.js
 *
 * This is a quick javascript to generate g_tooltips. Put this script in the
 * head or somewhere. Just make sure to call init_tip() first.
 *
 * Need to make sure to also add this to your html somewhere:
 * <div id="tip_cloak" style="position:absolute; visibility:hidden; z-index:100">hidden tip</div>
 *
 */

/* Browser specific checks */
var g_dom   = (document.getElementById) ? true : false;
var g_ns5   = ((navigator.userAgent.indexOf("Gecko")>-1) && g_dom) ? 
              true: false;
var g_ie5   = ((navigator.userAgent.indexOf("MSIE")>-1) && g_dom) ? 
              true : false;
var g_nodyn = (!g_ns5 && !g_ie5) ? true : false;

// NOTE: This avoids older error event in older browsers.
if (g_nodyn) { event = "no" }

/* GLOBAL VARIABLES have a g_ prefix for var names */

var g_tip_follow_mouse  = false;// if true then tip follows mouse
var tip_width           = 175;  // the generic width of a tip
var g_off_x             = 20;   // x-offset for tip
var g_off_y             = 10;   // y-offset for tip
var g_popup_timeout     = 500;  // popup timeout
var g_tooltip, g_tipcss;        // globals for tooltip and tip css
var g_timeout1, g_timeout2;     // for setting timeouts
var g_tip_on            = false;// check if over tooltip over link
var g_mouse_x, g_mouse_y;       // track the mouse coordinates

function initTip() { init_tip(); }
/**
 * This initializes the g_tooltip code. g_tooltip is a global variable. Also
 * this sets up mouse tracking with g_tip_follow_mouse if set to true.
 */
function init_tip() {
    if (g_nodyn) return;
    g_tooltip   = $('tip_cloak');
    g_tipcss    = g_tooltip.style;
    
    if (g_tooltip && g_tip_follow_mouse) {
        document.onmousemove = track_mouse;
    }
}

/**
 * This build the tooltip and makes it visible..
 */
function on_tooltip(evt, img) {
    if (!g_tooltip) return;
    if (g_timeout1) clearTimeout(g_timeout1);   
    if (g_timeout2) clearTimeout(g_timeout2);
    g_tip_on = true;
    
    var tip = '<div class="tooltipimage"><img src="' + img + 
              '" border="0"/></div>';
    g_tooltip.innerHTML = tip;

    if (!g_tip_follow_mouse) position_tip(evt);
    else g_timeout1 = setTimeout("g_tipcss.visibility='visible'", 
                                 g_popup_timeout);
}

/**
 * This is a generic g_tooltip for displaying any html inside of a box.
 */
function on_tooltip_html(evt, html) {
    if (!g_tooltip) return;
    if (g_timeout1) clearTimeout(g_timeout1);   
    if (g_timeout2) clearTimeout(g_timeout2);
    g_tip_on = true;
    
    var tip = '<div class="tooltip">' + html + '</div>';
    g_tooltip.innerHTML = tip;

    if (!g_tip_follow_mouse) 
        position_tip(evt);
    else 
        g_timeout1 = setTimeout("g_tipcss.visibility='visible'", 
                                g_popup_timeout);
}

function track_mouse(evt) {
    g_mouse_x = (g_ns5) ? evt.pageX : 
                          window.event.clientX + document.body.scrollLeft;
    g_mouse_y = (g_ns5) ? evt.pageY : 
                          window.event.clientY + document.body.scrollTop;
    if (g_tip_on) position_tip(evt);
}

/**
 * This function positions the tooltip.
 */
function position_tip(evt) {
    if (!g_tip_follow_mouse) {
        g_mouse_x = (g_ns5)? evt.pageX : window.event.clientX + 
                    document.body.scrollLeft;
        g_mouse_y = (g_ns5)? evt.pageY : window.event.clientY + 
                    document.body.scrollTop;
    }
    // tooltip width and height
    var tpWd = (g_ie5)? g_tooltip.clientWidth : g_tooltip.offsetWidth;
    var tpHt = (g_ie5)? g_tooltip.clientHeight : g_tooltip.offsetHeight;
    // document area in view (subtract scrollbar width for ns)
    var winWd = (g_ns5)? window.innerWidth - 20 + 
                window.pageXOffset : document.body.clientWidth + 
                                     document.body.scrollLeft;
    var winHt = (g_ns5)? window.innerHeight - 20 + window.pageYOffset : 
                document.body.clientHeight + document.body.scrollTop;
    // check mouse position against tip and window dimensions
    // and position the g_tooltip 
    if ((g_mouse_x + g_off_x + tpWd) > winWd) 
        g_tipcss.left = g_mouse_x - (tpWd + g_off_x) + "px";
    else g_tipcss.left = g_mouse_x + g_off_x + "px";
    if ((g_mouse_y + g_off_y + tpHt) > winHt) 
        g_tipcss.top = winHt - (tpHt + g_off_y) + "px";
    else g_tipcss.top = g_mouse_y + g_off_y + "px";
    if (!g_tip_follow_mouse) 
        g_timeout1 = setTimeout("g_tipcss.visibility='visible'", 
                                g_popup_timeout);
}

/**
 * Hides the tooltip.
 */
function hide_tip() {
    if (!g_tooltip) return;
    g_timeout2 = setTimeout("g_tipcss.visibility='hidden'", g_popup_timeout);
    g_tip_on = false;
}

//-->
