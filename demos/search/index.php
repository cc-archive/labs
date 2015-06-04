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
 * You may use the ccSearch software in accordance with the
 * terms of that license. You agree that you are solely 
 * responsible for your use of the ccSearch software and you
 * represent and warrant to Creative Commons that your use
 * of the ccSearch software will comply with the CC-GNU-GPL.
 *
 * Copyright 2006, Creative Commons.
 *
 * $Id: index.php 4296 2006-09-21 01:45:18Z kidproto $
 *
 * Creative Commons Search Interface
 *
 */
header("X-UA-Compatible: IE=EmulateIE7");

// turn off i18n for now.
$use_i18n = true;

require_once('cc-defines.php');
require_once('cc-language.php');
require_once('cc-language-ui.php');

//language stuff--------------
if ($use_i18n) {
  session_start();

  // This nastiness handles session storage 
  $cc_lang = &$_SESSION['lang'];
  if (DEBUG) {
    echo "<pre>";
    print_r($_SESSION);
    echo "</pre>";
  }

  if ( ! isset($cc_lang) || isset($_REQUEST['update'] ) ) {
    $cc_lang = new CCLanguage($_REQUEST['lang']);
      if (DEBUG) echo "<p>created new object</p>";
  }
  else 
  {
      if (DEBUG) echo "<p>Using session language</p>";

      if ( isset($_REQUEST['localepref']) ) {
          $cc_lang->SetLocalePref($_REQUEST['localepref']);
          if (DEBUG) echo "<p>set new locale pref</p>";
      }

      if ( isset($_REQUEST['lang']) ) {
          $cc_lang->SetLanguage($_REQUEST['lang']);
          if (DEBUG) echo "<p>set new language</p>";
      }
  }

  $cc_lang->Init();
  $cc_lang_selector = 
      new CCLanguageUISelector(&$cc_lang, 
                               "<div id=\"language_selector\">", 
                               "</div>", true, false);

}

//$cc_lang->DebugLanguages();
//echo "<h4>" . $_REQUEST['lang'] . "</h4>";
//echo "<pre>";
//print_r($cc_lang_selector);
//print_r($_COOKIE);
//print_r($_REQUEST);
//echo "</pre>";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<? if ($use_i18n) { ?>
<html lang="<?php echo $cc_lang->get('_language_xml') ?>" xml:lang="<?php echo $cc_lang->get('_language_xml') ?>" xmlns="http://www.w3.org/1999/xhtml">
<? } else { ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<? } ?>
  <head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title><?php echo _('Creative Commons') . " " . _('Search') ?></title>
    <meta name="keywords" content="creativecommons, ccsearch, search, 
                                   engine, searchengine, license, find" />
    <meta name="description" content="A Creative Commons-based search
                                      search engine of search engines." />
    <meta name="robots" content="index, follow" />

      <!--this is all for the help.js tooltip boxes-->
      <script type="text/javascript" src="http://yui.yahooapis.com/2.6.0/build/yahoo-dom-event/yahoo-dom-event.js"></script> 
      <script type="text/javascript" src="http://yui.yahooapis.com/2.6.0/build/container/container-min.js"></script>
      <script type="text/javascript" src="http://creativecommons.org/@@/cc/includes/help.js"></script>
      <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.6.0/build/container/assets/skins/sam/container.css" /> 

    <script type="text/javascript">
    /* <![CDATA[ */
    var d = "<?php echo _('Enter search query');?>";
    /* ]]> */
    </script> 
    <script type="text/javascript" src="search.js"></script>
    <style type="text/css" media="screen">
      @import "search.css";
    </style>

	<link href="progress.css" rel="stylesheet" type="text/css" />
	<link href="http://creativecommons.org/includes/total.css?<?= rand()?>" rel="stylesheet" type="text/css" />

    <!--[if IE]><link rel="stylesheet" type="text/css" media="screen" href="search-ie.css" /><![endif]-->
    
  </head>
  <body onload="setupQuery()" class="yui-skin-sam">
      <div id="header">
	
<p id="remove-frame-button">
<a href="#" onclick="window.location=url" title="<?php echo _('Only show search results') ?>">
          X
</a>
</p>

        <div id="title">
            <a href="./"><img src="images/cc-search-2.png" alt="<?php echo _('ccSearch') ?>" width="183" height="52" border="0" class="png" /></a>
	      </div>
	         <span id="title-by"><?php echo _('by <a href="http://creativecommons.org/">Creative Commons</a>'); ?></span>

        <form onsubmit="return doSearch()">
         <fieldset id="search_form">
          <fieldset id="left">
            <input type="text" name="q" id="q" class="inactive" size="35" onclick="wakeQuery()" onblur="resetQuery()" />
            <input type="submit" name="some_name" value="<?php echo _('Go'); ?>" id="qsubmit" />

<span id="info">
<a href="#" title="<?php echo _('Understand your search results') ?>" id="aboutsearch" class="helpLink">
          <!-- info icon from: http://www.famfamfam.com/lab/icons/silk/ (cc-by 2.5)  -->
          <img src="images/information.png" id="subNFO" border="0" class="png" width="16" height="16" alt="<?php echo _('(info)')?>" />
          <?php echo _('Understand Your Search Results') ?>
        </a>
</span> 

          </fieldset>

          <fieldset id="right">
            <legend><?php echo _('I want something that I can...') ?></legend>
	    <div>
              <input type="checkbox" name="comm" value="" id="comm" checked="checked" onclick="setCommDeriv()" />
              <label for="comm"  onclick="setCommDeriv()"><?php echo _('use for <em>commercial purposes</em>') ?></label><br/>
	    </div>
	    <div>
              <input type="checkbox" name="deriv" value="" id="deriv" checked="checked"  onclick="setCommDeriv()" />
              <label for="deriv" onclick="setCommDeriv()"><?php echo _('<em>modify</em>, <em>adapt</em>, or <em>build upon</em>') ?></label><br/>
	    </div>
	  </fieldset>
   </fieldset>
	</form>


<!--(this is hidden by default)-->
<div id="help_aboutsearch" class="help_panel">
   <div class="hd"><?php echo _('Understand Your Search Results') ?></div>
      <div class="bd">
         <p><?php echo _('<em>You should always verify that the work you are re-using has a Creative Commmons license attached to it</em>.  Search.creativecommons.org offers convenient access to search services provided by other independent organizations. Selecting
different search options within the result list&mdash;particularly Image
search for Google and Yahoo&mdash;may lead to the inclusion of results
which are not Creative Commons licensed.  <a href="http://wiki.creativecommons.org/CcSearch">Learn more &raquo</a>.') ?>
         <p>
         <?php echo _('<em>Can\'t find what you\'re looking for?</em>  This search tool is not exhaustive&mdash;there are plenty more <a href="http://wiki.creativecommons.org/Content_Curators">Creative Commons Content Directories &raquo</a>') ?>
         </p>
      </div>
   </div>
</p>

<div id="subheader">

            <p id="ffx-search-bar-info">
               <a href="http://wiki.creativecommons.org/Firefox"><?php echo _('Learn about setting your Firefox search engine') ?> &raquo;</a>
            </p>
<?php if ($use_i18n) $cc_lang_selector->output(); ?>

            <span id="contact-support">
               <a href="http://translate.creativecommons.org/projects/ccsearch">
                  <?php echo _('Help Translate') ?>
               </a>
               | 
               <a href="http://creativecommons.org/contact">
                  <?php echo _('Contact') ?>
               </a>
               |
               <a href="http://support.creativecommons.org/">
                  <?php echo _('Support CC'); ?>
               </a>
               |
               <a href="http://creativecommons.org/policies">
                  <?php echo _('Policies') ?>
               </a>
               |
               <a href="http://creativecommons.org/privacy">
                  <?php echo _('Privacy') ?>
               </a>
               |
               <a href="http://creativecommons.org/terms">
                  <?php echo _('Terms of Use') ?>
               </a>
               <img id ="stat" src="transparent.gif?init"/>
            </span>

</div>

</div>

      <div id="menu">
      
	<ul class="tabs">
          <li id="google" class="inactive"><a href="#" onclick="setEngine('google')" title="<?php echo _('Google Web Search') ?>"><img src="images/cc-google.gif" class="google" border="0" alt="<?php echo _('Google') ?>" /><span>(<?php echo _('Web') ?>)</span></a></li>
          <li id="googleimg" class="inactive"><a href="#" onclick="setEngine('googleimg')" title="<?php echo _('Google Image Search') ?>"><img src="images/cc-google.gif" class="google" border="0" alt="<?php echo _('Google') ?>" /><span>(<?php echo _('Image') ?>)</span></a></li>
          <li id="yahoo"  class="inactive"><a href="#" onclick="setEngine('yahoo')" title="<?php echo _('Web Search') ?>"><img src="images/cc-yahoo.gif" border="0" alt="<?php echo _('Yahoo') ?>" /><span>(<?php echo _('Web') ?>)</span></a></li>
          <li id="flickr" class="inactive"><a href="#" onclick="setEngine('flickr')" title="<?php echo _('Flickr Image Search') ?>"><img src="images/cc-flickr.png" border="0" class="png" width="48" height="18" alt="<?php echo _('flickr') ?>" /><span>(<?php echo _('Image') ?>)</span></a></li>
          <li id="blip" class="inactive"><a href="#" onclick="setEngine('blip')" title="<?php echo _('Blip.tv Video Search') ?>"><img src="images/cc-blip.png" border="0" class="png" width="42" height="20" alt="<?php echo _('blip.tv') ?>" /><span>(<?php echo _('Video') ?>)</span></a></li>
          <li id="jamendo" class="inactive"><a href="#" onclick="setEngine('jamendo')" title="<?php echo _('Jamendo Music Search') ?>"><img src="images/cc-jamendo.png" border="0" class="png" alt="<?php echo _('jamendo') ?>" /><span>(<?php echo _('Music') ?>)</span></a></li>
	       <li id="spin" class="inactive"><a href="#" onclick="setEngine('spin')" title="<?php echo _('Spin Xpress Media Search') ?>"><img src="images/cc-spinxpress.png" border="0" class="png"/><span>(<?php echo _('Media') ?>)</span></a></li>
	       <li id="wikimediacommons" class="inactive"><a href="#" onclick="setEngine('wikimediacommons')" title="<?php echo _('Wikimedia Commons Media Search') ?>">
	       <div id="wmcimg">WIKIMEDIA <br />COMMONS</div><!--<img src="images/cc-wikimediacommons.png" border="0" class="png"/>-->
	       <span>(<?php echo _('Media') ?>)</span></a></li>
<!--
	<li id="ccmixter" class="inactive"><a href="#" onclick="setEngine('ccmixter')" title="<?php echo _('Music Search') ?>"><img src="images/cc-ccmixter.png" border="0" class="png" alt="<?php echo _('ccMixter') ?>" /></a></li>
          <li id="openclipart" class="inactive"><a href="#" onclick="setEngine('openclipart')" title="<?php echo _('Clip Art Search') ?>"><img src="#" border="0" class="png" alt="<?php echo _('Open Clip Art Library') ?>" /></a></li>
	  <li id="owlmm" class="inactive"><a href="#" onclick="setEngine('owlmm')" title="<?php echo _('Music Search') ?>"><img src="images/cc-owlmm.png" border="0" class="png" /></a></li>  
-->
	</ul>
	
      </div>

    <div id="results-box">
      <iframe src="no-script.php" id="results" name="results" frameborder="0" border="0"><p><?php echo _('CCSEARCH REQUIRES A BROWSER WHICH SUPPORTS IFRAMES.') ?></p></iframe>
    </div>
    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
    <script type="text/javascript">_uacct = "UA-2010376-3";  urchinTracker(); </script>

  </body>
</html>
