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
 */
 $pagetitle = "Welcome to the labs";

include_once "_header.php"; 
?>

<div id="content">
  <p class="blurb"><img src="/images/dev.png" class="dev" alt="[ Development ]" /> Featured here are projects currently under development at <a href="http://creativecommons.org">Creative Commons</a>. All projects are prone to change and are unsupported. Comments and <a href="#feedback">feedback</a> welcome.</p>
  <h2>Current Projects</h2>
  <div class="blurb">
    <h3><a href="freedomslicense/"><em>Freedoms</em> License Chooser</a></h3>
    <p>An experimental take on the licensing concept. Playing with the idea of licensing components as puzzle pieces, to allow you to figuratively bolt together and customize the CC license of your choice.</p>
  </div>
  <div class="blurb">
    <h3><a href="dhtmllicense/">DHTML License Chooser</a></h3>
    <p>A simplified licensing engine, building from our current server-side implementation, and turning it into a responsive client-side javascript application.</p>
  </div>
  <div class="blurb">
    <h3><a href="metadata/">Metadata Lab</a></h3>
    <p>The license choosers above generate experimental metadata.  Read all about it.</p>
  </div>
  <div class="blurb end">
    <h3><a href="termination/">Termination of Transfer Tool</a></h3>
    <p>The U.S. Congress decided that it was important to provide a mechanism under which previously sold or licensed rights under copyright could be returned to the original author or their family members.  This tool is Creative Commons' attempt at simplifying that process to make it more author-friendly and accessible.  Please take a look at the <a href="termination/faq.php">FAQ</a>, and the tool itself, for more information.</p>
  </div>
  <h2><a name="feedback"></a>Feedback</h2>
  <div class="blurb">
  <p>We want your feedback on CC Labs projects.  Send an email to <a href="mailto:labs@creativecommons.org">labs@creativecommons.org</a>, join and post to our <a href="http://lists.ibiblio.org/mailman/listinfo/cc-devel">developer mailing list</a>, or edit the <a href="http://wiki.creativecommons.org/Labs">CC Labs wiki</a>.</p>
  </div>
  <h2>Developers</h2>
  <div class="blurb">
  <p>Want to help develop the code behind this site or CC-enable your application? Visit the <a href="http://wiki.creativecommons.org/Developer">CC Developer Community</a> for a wiki, lists, IRC, project ideas ... and code.</p>
  </div>
</div>

<?php include_once "_footer.php"; ?>
