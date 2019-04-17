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
 * This is code that is used to generate more info fields for licensing.
 *
 */

/* These function stubs are more of hacks around lack of support of the 
 * tooltips in the main chooser.
 */
if ( ! function_exists( 'print_tooltip_js' ) )
{
    function print_tooltip_js ($msg = '')
    {
        return 'title="' . $msg . '"';
    }
}

if ( ! function_exists( 'get_tooltip_js' ) )
{
    function get_tooltip_js ()
    {
        return;
    }
}

if ( ! function_exists( 'print_more_info' ) )
{
    function print_more_info ()
    {
        return;
    }
}
?>


                    <div class="optional first">
                    <div class="optional-name"><?= _('Format of your work') ;?></div>
                    
                    <div class="optional-content">
                    <select name="info_format" id="info_format" onchange="modify(this)">
                    <option value="-"><?= _('Other') ?></option>
                    <option value="Sound"><?= _('Audio') ?></option>
                    <option value="MovingImage"><?= _('Video') ?></option>
                    <option value="StillImage"><?= _('Image') ?></option>
                    <option value="Text"><?= _('Text') ?></option>
                    <option value="InteractiveResource"><?= _('Interactive') ?>
                    </option>
                    </select></div>
                    </div>
                    
                    <div class="optional">
                      <div class="optional-name">
                        <label for="info_title">
                        <?= _('Title of Work') ?></label>
                      </div>
                      <div class="optional-content">
                        <input type="text" name="info_title" id="info_title" onchange="modify(this)" />
                      </div>
                    </div>
                    
                    <div class="optional">
                      <div class="optional-name">
                        <label for="info_attribute_to_name">
                        <?= _('Attribute to Name') ?></label>
                      </div>
                      <div class="optional-content">
                        <input type="text" name="info_attribute_to_name" value="" id="info_attribute_to_name" onchange="modify(this)" />
                      </div>
                    </div>

                    <div class="optional">
                      <div class="optional-name">
                        <label for="info_attribute_to_url">
                        <?= _('Attribute to URL') ?></label>
                      </div>
                      <div class="optional-content">
                        <input type="text" name="info_attribute_to_url" value="" id="info_attribute_to_url" onchange="modify(this)" />
                      </div>
                    </div>

                    <div class="optional">
                      <div class="optional-name">
                        <label for="info_source_work_url">
                        <a <?= print_tooltip_js(_('A work another is derived from.'), 'http://a2.creativecommons.org/jargon/source_work')?>><?= _('Source Work') ?></a> <?= _('URL') ?></label>
                      </div>
                      <div class="optional-content">
                        <input type="text" name="info_source_work_url" value="" id="info_source_work_url" onchange="modify(this)" />
                      </div>
                    </div>

                    <div class="optional">
                      <div class="optional-name">
                        <label for="info_more_permissions_url"><?= _('More Permissions URL') ?>&nbsp;</label>
                      </div>
                      <div class="optional-content">
                        <input type="text" name="info_more_permissions_url" value="" id="info_more_permissions_url" onchange="modify(this)" />
                      </div>
                    </div>




