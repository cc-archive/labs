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
 */

/**
 * This function grabs the current php page name and path, minus the domain
 * and spits out a simple version appended to the current cc wiki page.
 * This is a cheap hack. Oh, if there is a page name as a parameter, then it
 * prints that. Also, if at the basic root-url, then redirects to the labs
 * wiki page...
 *
 * @param string $page_name The short wikified name for a page.
 */
function print_wiki_page_name ($page_name = '')
{
    $root_url = 'http://wiki.creativecommons.org/';
    if ( empty($page_name ) )
    {
        if ( $_SERVER['PHP_SELF'] == '/index.php' ||
             $_SERVER['PHP_SELF'] == '/' ) {
            echo $root_url . "labs";
            return;
        }
        echo $root_url . 
            preg_replace('/^\/(.+)\/+.*/', '\\1', $_SERVER['PHP_SELF']);
    }
    else
        echo $root_url . $page_name;
}

?>

      <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
      <html>
       <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title><?= (($pagetitle) ? "$pagetitle —" : ""); ?> Creative Commons Labs</title>

        <style type="text/css" media="screen">
          @import url(/demos/style.css);
          <?= (($include) ? "@import url($include);\n" : ""); ?>
      	</style>
      	<!--[if IE]> <link rel="stylesheet" type="text/css" media="screen" href="/demos/style-ie.css"/><![endif]-->

        <?= (($head_extra) ? "$head_extra\n" : "\n"); ?>

        <script src="/includes/icommons.js" type="text/javascript"></script>
       </head>
       <body <?= (($onload) ? "onload=\"$onload\"" : ""); ?>>
          <div id="header-wrapper">
            <div id="header-main">
              <a href="http://wiki.creativecommons.org/Labs" class="cc-actions"><img src="http://creativecommons.org/images/publish.png" border="0" class="publish"/> <h4>Feedback</h4>On The CC Wiki</a>
              <a href="http://search.creativecommons.org/" class="cc-actions"><img src="http://creativecommons.org/images/find.png" border="0"/> <h4>Find</h4>CC Licensed Work</a>
              <a href="/"><img src="/demos/images/cc-labs.png" alt="ccLabs"/></a>
            </div>
          </div>
          <div id="wrapper"><div id="wrapper-ie">

          <div class="jurisdictions">
            <h4><a href="/worldwide">Worldwide</a>&nbsp;</h4>
            <select name="sortby" onchange="orderby(this)">
              <option value="">Select a jurisdiction</option>
              <script type="text/javascript" src="http://creativecommons.org/includes/jurisdictions.js"></script>
            </select>
          </div>
          <div class="clear">&nbsp;</div>

          <div id="body">
            <div id="splash">
              <h1><?= (($pagetitle) ? $pagetitle : ""); ?><br/>&nbsp;</h1>
              <div id="splash-menu">
              </div>
            </div>

            <div id="content">
              <div id="main-content">
                <div id="page">
                  <div class="post">
                    
