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
 * This is what generates the dhtml license chooser. It uses a hodge-podge
 * of different languages and is always under work.
 */

    define('CC_LIB', '../cclib');
    require_once( CC_LIB . '/php/cc-lib.php' );

    $pagetitle  = _('CC DHTML License');
    $include    = 'style.css';
    $head_extra = 
    '<script type="text/javascript" language="javascript" src="' . CC_LIB_JS . '/prototype.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . '/cc-tooltip.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . '/cc-jurisdictions.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . '/cc-license.js"></script>
    <script type="text/javascript" language="javascript" src="' . CC_LIB_JS . '/cc-lib-freedoms.js"></script>
    <script type="text/javascript" language="javascript" charset="utf-8">
    // <![CDATA[
        // var freedoms = new CCLibFreedoms();

        function pageInit() {
            init();
            modify(this);
            init_tip();
        }
    // ]]>
    </script>';
    $onload = 'pageInit()';
    include_once '../_header.php';
?>
    <div id="content">
      <div id="main">
        <div class="block">
          <h2><?= _('DHTML License Chooser'); ?></h2>
          <p>
            <?= sprintf(_('With a Creative Commons license, <strong>you keep your copyright</strong> but allow people to %scopy and distribute your work%s provided they %sgive you credit%s &mdash; and only on the conditions you specify here.'), 
            '<a href="http://creativecommons.org/learn/licenses/fullrights">', 
            '</a>', 
            '<span ' . get_tooltip_js('<p><img src="http://creativecommons.org/icon/by/standard.gif" alt="by" class="icon" /><strong>' . _('Attribution') . '</strong> ' . _('You must attribute the work in the manner specified by the author or licensor.') . '</p>',  'http://a2.creativecommons.org/characteristic/by?lang=' . $lang) . '>', '</span> ' ) . 
            sprintf(_("For those new to Creative Commons licensing, we've prepared %sa list of things to think about%s."), 
            '<a href="http://creativecommons.org/about/think">', '</a>') . ' ' .
            sprintf(_('If you want to offer your work with no conditions, choose the %spublic domain%s'), 
            '<a href="http://creativecommons.org/license/publicdomain-2">', '</a>') ?>
          </p>
          <p><small><em>Notice</em><br/>This is a <strong>demonstration</strong> of developmental code. Do <strong>not</strong> use any generated code from this generator.</small></p>
        </div>
            
        <div id="lic-menu" class="block">
          <h1>1. <?= _('Choose License Options'); ?></h1>
          <div id="required">
            <div class="choose">
              <input type="hidden" name="share" id="share" value="1"/>
              <div class="choose-btn">
                <input type="checkbox" name="__share" checked id="__share" disabled />
              </div>
              <div class="choose-icon"><label for="share"><img src="images/share.png" border="0"/></label></div>
              <div class="choose-txt">
                <label for="share"><strong><?= _('Allow Sharing'); ?></strong></label><br/>
                <?= _('The licensor permits others to copy, distribute, display, and perform the work.'); ?>
              </div>
            </div>
            <div class="choose">
              <div class="choose-btn"><input type="checkbox" onchange="modify(this);" name="remix" value="" id="remix" /></div>
              <div class="choose-icon"><label for="remix"><img src="images/remix.png" border="0"/></label></div>
              <div class="choose-txt">
                <label for="remix"><strong><?= _('Allow Remixing'); ?></strong></label><br/>
                <?=  _('Licensor permits others to make derivative works.'); ?>
              </div>
            </div>
            <div class="choose">
              <div class="choose-btn"><input type="checkbox" onchange="modify(this);" name="nc" value="" id="nc" /></div>
              <div class="choose-icon"><label for="nc"><img src="images/nc.png" border="0"/></label></div>
              <div class="choose-txt">
                <label for="nc" id="nc-label" class="option_on"><strong><?= _('Prohibit Commercial Use'); ?></strong></label><br/>
                <?=  _('The licensor permits others to copy, distribute, display, and perform the work. In return, licensees may not use the work for commercial purposes &mdash; unless they get the permission of the licensor.'); ?>
              </div>
            </div>
            <div class="choose">
              <div class="choose-btn"><input type="checkbox" onchange="modify(this);" name="sa" value="" id="sa" /></div>
              <div class="choose-icon"><label for="sa"><img src="images/sa.png" border="0"/></label></div>
              <div class="choose-txt">
                <label for="sa" id="sa-label" class="option_on"><strong><?= _('Require others to Share-Alike'); ?></strong></label><br/>
                <?=  _('The licensor permits others to distribute derivative works only under a license identical to the one that governs the work of the licensor.'); ?>
              </div>
            </div>

	    <input type="hidden" name="dn" value="" id="dn" />

            <div class="choose">
              <div class="choose-jurisdiction">
                <script language="javascript" type="text/javascript">
                  // hardwiring the jurisdiction passed in, right into
                  // js
                  var jurisdiction_code = "<?= ( $jurisdiction ? $jurisdiction : '') ?>";
                  print_jurisdictions_option( jurisdiction_code );
                </script>
              </div>
              <div class="choose-txt">
                <strong><?= _('Jurisdiction of your License'); ?></strong><br/>
                <?= _('If you desire a license governed by the Copyright Law of a specific jurisdiction, please select the appropriate jurisdiction.'); ?>
              </div>
            </div>
            <div class="choose">&nbsp;</div>
 
          </div>
          <div class="options">
            <img src="images/arrow_down.gif" alt="Add"/> 
            <strong><a href="#optional">Add optional information</a>, or <a href="#mylicense">get the license code now</a>.</strong>
          </div>

          
          <a name="optional"></a>
          <h1>2. <?= _('Add Optional Information') ?></h1>
          <div id="more_info">
            <?php include CC_LIB_PHP . '/cc-license-more-info.php'; ?>
            <div class="optional">
              <div class="optional-name">
                <?= _('Where are you going to apply this license?') ?>&nbsp;
              </div>
              <div class="optional-content">
                <div id="location">
                  <p>
                    <input type="radio" onchange="modify(this)" name="using" value="webpage" id="using_webpage" checked="checked" />
                    <label for="using_webpage" <?= print_tooltip_js( _('The generator will make html that is ready to be inserted into an html-based webpage.')) ?>><?= _('Webpage'); ?></label> 
                    <br/>

                    <input type="radio" onchange="modify(this)" name="using" value="myspace" id="using_myspace" />
                    <label for="using_myspace" <?= print_tooltip_js( _("The generator will make html that may be inserted into the popular social networking site\'s, http://myspace.com, <em>Who I\'d Like To Meet</em> box")) ?>><?= _('MySpace'); ?></label><br/>
                  
                    <input type="radio" onchange="modify(this)" name="using" value="youtube" id="using_youtube" />
                    <label for="using_youtube" <?= print_tooltip_js( _("The generator will make text and a url which you can place in a youtube video submission\'s description form field.")) ?>><?= _('YouTube'); ?></label><br/>
                  </p> 

                  <!-- <p><strong><?= _('What type of button would you like?') ;?></strong></p>
                  <p>
                    <input type="radio" onchange="modify(this)" name="button_style" value="version2" id="button_style_version2" checked="checked" />
                    <label for="button_style_version2" <?= print_tooltip_js( _('The old style buttons that are generic for all licenses.')) ?>><?= _('Version 2.0 Generic'); ?></label> -->
                    <input type="radio" onchange="modify(this)" name="button_style" value="version3" id="button_style_version3" checked="checked" style="display:none" />
                    <!-- <label for="button_style_version3" <?= print_tooltip_js( _('The new more specific version 3.0 license buttons.')) ?>><?= _('Version 3.0 Specific'); ?></label>
                  </p> -->

                  <!-- MySpace centric style module. You know, for the kids. -->
                  <div id="myspace_style" style="display: none"> 
                    <p><strong><?= _('Style') ?></strong></p>
                    <label><input type="radio" name="style" value="silver" id="style_silver" checked="checked" onchange="modify(this)" /> <?= _('Silver') ?>&nbsp;</label>
                    <label><input type="radio" name="style" value="red" id="style_red" onchange="modify(this)" /> <?= _('Red') ?>&nbsp;</label>
                    <label><input type="radio" name="style" value="green" id="style_green" onchange="modify(this)" /> <?= _('Green') ?>&nbsp;</label>
                    <label><input type="radio" name="style" value="blue" id="style_blue" onchange="modify(this)" /> <?= _('Blue') ?>&nbsp;</label>
                    <label><input type="radio" name="style" value="black" id="style_black" onchange="modify(this)" /> <?= _('Black') ?>&nbsp;</label>
                    <!-- <label><input type="radio" name="style" value="white" id="style_white" onchange="modify(this)" /> <?= _('White') ?>&nbsp;</label> -->
                    <label><input type="radio" name="style" value="none" id="style_none" onchange="modify(this)" /> <?= _('None') ?>&nbsp;</label>
                  </div>

                  <div id="myspace_position" style="display: none">
                    <p><strong><?= _('Position') ?></strong></p>
                    <label onmouseover="doTooltip(event,'floating.png');" onmouseout="hide_tip()"><input type="radio" name="pos" value="floating" id="pos_float" onchange="modify(this)" /> <?= _('Floating') ?>&nbsp;</label>
                    <label onmouseover="doTooltip(event,'profile.png')" onmouseout="hide_tip()"><input type="radio" name="pos" value="fixed" id="pos_fixed" checked="checked" onchange="modify(this)" /> <?= _('Profile') ?>&nbsp;</label>
                  </div>
                </div>
                    
              </div>
            </div>
          </div>
          <br clear="all"/>

                    
          <!-- <p><input type="button" name="submit" value="<?= _('Create Code!'); ?>" id="submit" onClick="testSub();"/></p> -->
                    
          <!-- <p id="lic-result">
          <?= _("Now paste the following code into your <em>Who I'd Like To Meet</em> box. It may look scary and confusing, but don't worry, it's full of useful information that keeps your creativity free!") ?> -->
          <a name="mylicense"></a>
          <h1>3. <?= _('Get the Code') ?></h1>
          <!-- <h4><?= _('Currently Selected License'); ?> : <em><span id="by">by</span><span id="nc" style="display: none">-nc</span><span id="nd" style="display:none">-nd</span><span id="sa" style="display:none;">-sa</span></em></h4> -->
          <!-- <p class="note"><a href="#result">Get the Code</a></p>-->
          <p><strong>This is how the license will appear on your website.</strong></p>
          <div id="license_selected">
            <div id="license_example"></div>
          </div>
          <?php include CC_LIB_PHP . '/cc-license-result.php' ?>
            
        </div>
      </div>
      <h2><a name="feedback"></a>Feedback</h2>
      <div class="blurb">
        <p>What do you think of this license chooser concept? How can it be improved? How does it compare to our <a href="http://creativecommons.org/license/">current license chooser</a> or other experimental concepts here at CC Labs?</p>
        <p>We want your feedback on CC Labs projects.  Send an email to <a href="mailto:labs@creativecommons.org">labs@creativecommons.org</a>, join and post to our <a href="http://lists.ibiblio.org/mailman/listinfo/cc-devel">developer mailing list</a>, or edit the <a href="http://wiki.creativecommons.org/Labs">CC Labs wiki</a>.</p>
      </div>
    </div>
    <div id="tip_cloak" style="position:absolute; visibility:hidden; z-index:100">hidden tip</div> 

<?php
    include_once '../_footer.php';
?>
