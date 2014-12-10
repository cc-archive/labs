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
    define('CC_LIB', '../cclib');
    require_once( CC_LIB . '/php/cc-lib.php' );

    $pagetitle = "Freedoms License Generator";
    $include = "flg-five.css?445333445";
    $head_extra = '<script type="text/javascript" language="javascript" src="' .
    CC_LIB_JS . '/prototype.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . 
    '/cc-tooltip.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . 
    '/cc-jurisdictions.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . 
    '/cc-license.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . 
    '/cc-lib-freedoms.js"></script>
    
    <script type="text/javascript" language="javascript" src="chooser.js"></script>
    
    <script type="text/javascript" language="javascript">
    <!--
    var freedoms;
    
    var init_freedoms = function()
    {
        freedoms = new CCLibFreedoms(); // in cc-lib-freedoms.js
        // the next two are in cc-license.js
        init(); 
        modify(this);
            
        init_tip();
        
        // init the chooser
    	  FreedomsChooser = new FreedomsChooserClass("Freedoms_");
    	  FreedomsChooser.selectLicense("by");
    	  FreedomsChooser.setupEventListeners();

    }
    
    // -->
    </script>
    <!--[if lt IE 7]>
    		<script type="text/javascript" language="javascript" src="iepngfix2.js"></script>
    		<script type="text/javascript" language="javascript">
            var $PNGFIX=true;
        </script>
    <![endif]-->
<script language="javascript" type="text/javascript">

var share = false;
var remix = false;
var sa_cond = false;
var nc_cond = false;
var sa_on = false;
var nc_on = false;


function freedoms_update (license) {

	license["share"] ? share = 1 : share = 0;
	license["remix"] ? remix = 1 : remix = 0;
	license["nc"] ? nc = 1 : nc = 0;
	license["sa"] ? sa = 1 : sa = 0;

	update_hack( license.data[2], license.data[0], license.data[1] );
	
}

</script>



';
    $onload = "init_freedoms();";

    include_once "../_header.php"; 

    require_once CC_LIB_PHP . '/cc-license-jurisdictions.php';

?>


<div id="flg-sidebar">
  <h2>Freedoms License Generator</h2>
  <p>
  Creative Commons licenses mark creative work with the freedoms the  
  author wants it to carry. This license engine helps make those  
  freedoms, and limits, clear. Begin by selecting whether to enable the 
  freedom to Remix, by clicking on the green Remix puzzle piece &mdash; 
  Sharing is always permitted. Then select which conditions, if any, you'd  
  like to impose &mdash; either NonCommercial, or ShareAlike, or both. Not  
  all combinations are possible, but as you experiment with the selections,
  you can see the different licenses that result.
  </p>
  <p>
    <small>
      This project requires <em>Javascript</em>. It has been tested 
      and works with Firefox 1.5+, Safari, and IE6.
    </small>
  </p>
</div>
<div id="nc-ad"></div>
<div id="dn"></div>

<div id="flg-container">

  <div id="Freedoms_container" style="">

  	<img src="images/sa-shadow.png" id="Freedoms_image_sa-shadow" alt="" style="display: none;">
  	<img src="images/share-shadow.png" id="Freedoms_image_share-shadow" alt="" style="display: none;">
  	<img src="images/nc-shadow.png" id="Freedoms_image_nc-shadow" alt="" style="display: none;">
  	<img src="images/remix-shadow.png" id="Freedoms_image_remix-shadow" alt="" style="display: none;">

  	<img src="images/nc-piece.png" id="Freedoms_image_nc-piece-normal" alt="" style="position: absolute; left: 0px; top: 172px; display: none;">
  	<img src="images/sa-piece.png" id="Freedoms_image_sa-piece-normal" alt="" style="position: absolute; left: 172px; top: 238px; display: none;">
  	<img src="images/share-piece.png" id="Freedoms_image_share-piece-normal" alt="" style="position: absolute; left: 20px; top: 20px;">
  	<img src="images/remix-piece.png" id="Freedoms_image_remix-piece-normal" alt="" style="position: absolute; left: 239px; top: 0px;">

  	<img src="images/sa-piece-grey.png" id="Freedoms_image_sa-piece-grey" alt="" style="position: absolute; left: 172px; top: 238px;">
  	<img src="images/nc-piece-grey.png" id="Freedoms_image_nc-piece-grey" alt="" style="position: absolute; left: 0px; top: 172px;">

  	<img src="images/off-x.png" id="Freedoms_image_nc-off-x" alt="" style="position: absolute; left: 9px; top: 372px;">
  	<img src="images/off-x.png" id="Freedoms_image_sa-off-x" alt="" style="position: absolute; left: 388px; top: 372px;">

  	<img src="images/button-shadow-clean.png" id="Freedoms_image_button-shadow-clean" alt="" style="position: absolute; left: 163px; top: 182px;">

  	<div style="position: absolute; left: 175px; top: 202px;" id="Freedoms_centerLicense"></div>
  </div>

</div>

<hr class="spacer" />

<div id="content">
<div id="get_the_code">

<?php 
    // print_jurisdictions_box($jurisdiction);
?>
                    <div id="jurisdiction_box">
                    <?php $jurisdiction_tooltip = '<p><strong>' . _('Jurisdiction') . '</strong> ' .
                                        _('If you desire a license governed by the Copyright Law of a specific jurisdiction, please select the appropriate jurisdiction.') . '</p>' ?>
                    <p><strong <?= get_tooltip_js($jurisdiction_tooltip) ?>><?= _('Jurisdiction of your license') ;?></strong> <?= print_more_info($jurisdiction_tooltip) ?> </p>
                    <script language="javascript" type="text/javascript">

                    // hardwiring the jurisdiction passed in, right into
                    // js
                    var jurisdiction_code = "<?= ( $jurisdiction ? $jurisdiction : '') ?>";
                    print_jurisdictions_option( jurisdiction_code );
                    </script>
                    </div>
<br clear="both" />
<h4>More Information About Your Work (Optional)</h4>
<div id="more_info">
<?php
    include CC_LIB_PHP . '/cc-license-more-info.php';
?>
<br />
</div>
<br/>
<h4>Get the Code</h4>
<?php
    include CC_LIB_PHP . '/cc-license-result.php';

?>
</div>

  <h2><a name="feedback"></a>Feedback</h2>
    <div class="blurb">
      <p>What do you think of this license chooser concept? How can it be improved? How does it compare to our <a href="http://creativecommons.org/license/">current license chooser</a> or other experimental concepts here at CC Labs?</p>
        <p>We want your feedback on CC Labs projects.  Send an email to <a href="mailto:labs@creativecommons.org">labs@creativecommons.org</a>, join and post to our <a href="http://lists.ibiblio.org/mailman/listinfo/cc-devel">developer mailing list</a>, or edit the <a href="http://wiki.creativecommons.org/Labs">CC Labs wiki</a>.</p>

    </div>

   <div id="tip_cloak" style="position:absolute; visibility:hidden; z-index:100">hidden tip</div> 

</div>


<? include_once "../_footer.php"; ?>
<? /*
    </div>    <div id="footer"><?php include_once '../_sidebar.php'; ?><p><a href="http://creativecommons.org/licenses/by/2.5/"><img src="http://i.creativecommons.org/l/by/2.5/88x31.png" border="0" alt="Creative Commons" /></a><br />
Except where otherwise <a href="http://creativecommons.org/policies#license">noted</a>, content on this site is<br />
licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/2.5/">Creative Commons Attribution 2.5 License</a></p>
    
  <p><a href="http://creativecommons.org/">Creative Commons</a> | <a href="http://creativecommons.org/contact">Contact</a></p>
    </div>
  </div>
  <!-- Crazyegg.com heatmap, user click tracking, test. -->
  <script type="text/javascript" src="http://cetrk.com/pages/scripts/0004/4424.js"> </script>

</body>
</html>
*/ ?>
