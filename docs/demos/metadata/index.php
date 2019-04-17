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

    $pagetitle = "Metadata Lab";
    include_once "../_header.php"; 

?>


<p>Using the experimental license choosers at <a href="/">CC Labs</a>
you can provide some optional information about your work, including a
URL to be used for attribution and a URL where rights beyond the scope
of the public Creative Commons license may be obtained.</p>

<p>If you provide any optional information it will be included in the
license notice HTML generated for your site. The optional information
will also be annotated so that a computer may discern, e.g., the URL
you want used for attribution purposes.</p>

<h3 id="demo">Demo</h3>

<div id="metadata-demo" style="border: 1px solid #ddd; padding: 25px 25px 28px 25px; text-align: center; margin: 15px; width: 75%;"><small>
  
  <!-- Creative Commons License -->
  <span xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#">
    <a rel="license" href="http://creativecommons.org/licenses/by-nc/3.0/">
      <img alt="Creative Commons License" border="0" src="http://i.creativecommons.org/l/by-nc/3.0/88x31.png" class="cc-button"/>
    </a>
    <div class="cc-info">
      <span xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/">
        <span id="work_title" property="dc:title">Metadata Lab</span> by <a rel="cc:attributionURL" property="cc:attributionName" href="http://labs.creativecommons.org/">CC Labs</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/3.0/">Creative Commons Attribution-NonCommercial 3.0 License</a>. Permissions beyond the scope of this license may be available at <a rel="cc:morePermissions" href="http://labs.creativecommons.org/metadata/demo-beyond.php">labs.creativecommons.org</a>.
      </span>
    </div>
  </span>
  
</small></div>

<p>The HTML rendered in the box above includes metadata.  Click on
the license button and the license deed will update itself to display
metadata scraped from this page after a few moments.</p>

<p>If you're using Firefox or Safari (patches welcome for IE), you can see the metadata revealed without leaving this page by clicking <a href="javascript:__RDFA_BASE='http://www.w3.org/2001/sw/BestPractices/HTML/rdfa-bookmarklet/';(function(){if(document.getElementById('rdfa_highlight_bm ')){alert('only once!');}else{s=document.createElement('script');s.type='text/javascript';s.id='rdfa_highlight_bm';s.src='http://www.w3.org/2001/sw/BestPractices/HTML/rdfa-bookmarklet/2006-10-08/highlight-metadata.js';document.getElementsByTagName('head')[0].appendChild(s);}})();">this RDFa bookmarklet link</a> (right click to bookmark the link and use on other pages).</p>

<p><a href="http://wiki.creativecommons.org/MozCC">MozCC</a> (also for Firefox) can also reveal this metadata.</p>

<h3 id="backgroound">Background</h3>

<p>Note that the bookmarklet above reveals that text and links intended
for human use are annotated directly.  This is a big improvement over
our use of RDF/XML embedded in HTML comments for extra metadata, which
is hard for both humans and computers to see and understand.</p>

<p>Colocation of metadata and viewable content is accomplished above
with <a href="http://wiki.creativecommons.org/RDFa">RDFa</a>, which uses
attributes to annotate HTML elements.</p>

<p>There are some obstacles to RDFa adoption (it uses attributes
that do not validate in current versions of [X]HTML) and <a
href="http://wiki.creativecommons.org/Microformats">microformats</a>
have lots of momentum, so we're also exploring a microformat
or microformats for work information and other annotations that
complement CC licensing. (But RDFa was easier to get up and running
for this demo because we didn't need to write a parser.)</p>

<p>One of the strengths of the microformats process is
an emphasis on documenting use cases in the wild before
attempting to standardize. We've begun doing just this on a <a
href="http://microformats.org/wiki/licensing-examples">licensing examples
page on the microformats wiki</a>, which is an excellent place to get
a feel for the range of uses that could be enhanced by metadata in the
near future.</p>

<p>See <a href="http://mirrors.creativecommons.org/google-20061026/">this
presentation</a> for a discussion of some of the issues
with various metadata options, especially starting at <a
href="http://mirrors.creativecommons.org/google-20061026/#(22)">slide
22</a>.</p>

<h3 id="examples">Examples</h3>

<p>There are a few early experimenters publishing extended metadata that
will work in the same fashion as the artificial demo above. Visit any of
these, click on a CC license button, and see how the metadata is added
to the CC license deed.</p>

<p><a href="http://www.magnatune.com">Magnatune</a> has long been an
innovator in this space.  Visit any album page, for example Anup's <em><a
href="http://magnatune.com/artists/albums/anup-embrace/">Embrace</a></em>.</p>

<p><a href="http://www.pumpaudio.com/">Pump Audio</a> is
a leader in commercial licensing of music and now offers
a CC option to interested musicians.  For an example see <a
<a href="http://www.myspace.com/garynewvision">Gary Robinson</a>.</p>

<p><a href="http://www.beatpick.com">BeatPick</a> is a "fair play" record label that offers music under a CC license and handles commercial licensing and sales for artists. Visit any artist page, for example <a href="http://www.beatpick.com/2-Seconds-Away">2 Seconds Away</a>.</p>

<p><a href="http://jamendo.com">Jamendo</a> is a "is a new model for artists to promote, publish, and be paid for their music." Nearly 2000 albums are streamable, downloadable via P2P, and many may be purchased via artists' sites, for example, Revolution Void's <em><a href="http://www.jamendo.com/us/album/2225/">Increase the Dosage</a></em>.</p>

<p><a href="http://www.scoopt.com">Scoopt</a> makes it easy to sell your
pictures and blog content to the press.  Like Pump Audio, they offer a
CC license option when a user gets a button for commercial licensing (<a
href="http://creativecommons.org/press-releases/entry/5969">press</a>).
One of the first blogs to get a Scoopt button with metadata that works
with this demo is <a href="http://kitchenlink.blogspot.com">Kitchen
Linker</a>.</p>

<h3 id="future">Contribute</h3>

<p>Send feedback directly to <a
href="mailto:labs@creativecommons.org">labs@creativecommons.org</a>,
join and post to the <a href="">cc-metadata</a> mailing list, or add
to the <a href="http://wiki.creativecommons.org/Metadata_lab">metadata
lab wiki</a>.</p>

<? include_once "../_footer.php"; ?>
