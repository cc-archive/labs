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
 * This is code that is used to generate jurisdictions in php.
 *
 */
    // The next few lines allow for basic interfacing with standard
    // CC website's handling of jurisdiction for jurisdiction shortname 
    // and for future language support, aka, local language strings...
    $jurisdiction   = $_REQUEST['jurisdiction'];
    $lang           = $_REQUEST['lang'];

    if ( empty($jurisdiction) && !empty($lang) )
        $jurisdiction = $lang;




    $jurisdictions = 
        Array( 'generic' => Array( 'name' => 'Generic',
                              'url'  => 'http://creativecommons.org',
                              'generic' => true,
                              'sampling' => true),
               'ar' => Array( 'name' => 'Argentina',
                              'url'  => 'http://creativecommons.org/worldwide/ar/'),
               'au' => Array( 'name' => 'Australia',
                              'url'  => 'http://www.creativecommons.org.au' ),
               'at' => Array( 'name' => 'Austria',
                              'url'  => 'http://www.creativecommons.at'),
               'be' => Array( 'name' => 'Belgium',
                              'url'  => 'http://creativecommons.org/worldwide/be/'),
               'br' => Array( 'name' => 'Brazil',
                              'url'  => 'http://creativecommons.org/worldwide/br/',
                              'sampling' => true),
               'bg' => Array( 'name' => 'Bulgaria',
                              'url'  => 'http://creativecommons.org/worldwide/bg/'),
               'ca' => Array( 'name' => 'Canada',
                              'url'  => 'http://creativecommons.ca'),
               'cl' => Array( 'name' => 'Chile',
                              'url'  => 'http://creativecommons.cl'),
               'cn' => Array( 'name' => 'Mainland China',
                              'url'  => 'http://cn.creativecommons.org'),
               'co' => Array( 'name' => 'Colombia',
                              'url'  => 'http://creativecommons.org/worldwide/co/'),
               'hr' => Array( 'name' => 'Croatia',
                              'url'  => 'http://creativecommons.org/worldwide/hr/'),
               'hu' => Array( 'name' => 'Hungary',
                              'http://creativecommons.org/worldwide/hu/'),
               'dk' => Array( 'name' => 'Denmark',
                              'url'  => 'http://creativecommons.org/worldwide/dk/'),
               'fi' => Array( 'name' => 'Finland',
                              'url'  => 'http://creativecommons.fi'),
               'fr' => Array( 'name' => 'France',
                              'url'  => 'http://fr.creativecommons.org'),
               'de' => Array( 'name' => 'Germany',
                              'url'  => 'http://de.creativecommons.org'),
               'il' => Array( 'name' => 'Israel',
                              'url'  => 'http://creativecommons.org.il'),
               'it' => Array( 'name' => 'Italy',
                              'url'  => 'http://www.creativecommons.it'),
               'jp' => Array( 'name' => 'Japan',
                              'url'  => 'http://www.creativecommons.jp'),
               'kr' => Array( 'name' => 'Korea',
                              'url'  => 'http://www.creativecommons.or.kr/'),
               'my' => Array( 'name' => 'Malaysia',
                              'url'  => 'http://creativecommons.org/worldwide/my/'),
               'mt' => Array( 'name' => 'Malta',
                              'url'  => 'http://creativecommons.org/worldwide/mt/'),
               'mx' => Array( 'name' => 'Mexico',
                              'url'  => 'http://creativecommons.org.mx'),
               'nl' => Array( 'name' => 'Netherlands',
                              'url'  => 'http://www.creativecommons.nl'),
               'pe' => Array( 'name' => 'Peru',
                              'url'  => 'http://pe.creativecommons.org'),
               'pl' => Array( 'name' => 'Poland',
                              'url'  => 'http://creativecommons.pl'),
               'pt' => Array( 'name' => 'Portugal',
                              'url'  => 'http://creativecommons.org/worldwide/pt/'),
               'si' => Array( 'name' => 'Slovenia',
                              'url'  => 'http://creativecommons.si'),
               'za' => Array( 'name' => 'South Africa',
                              'url'  => 'http://za.creativecommons.org'),
               'es' => Array( 'name' => 'Spain',
                              'url'  => 'http://es.creativecommons.org/'),
               'se' => Array( 'name' => 'Sweden',
                              'url'  => 'http://creativecommons.org/worldwide/se/'),
               'tw' => Array( 'name' => 'Taiwan',
                              'url'  => 'http://www.creativecommons.org.tw',
                              'sampling' => true),
               'uk' => Array( 'name' => 'UK: England &amp; Wales',
                              'url'  => 'http://www.creativecommons.org.uk'),
               'scotland' =>
                       Array( 'name' => 'UK: Scotland',
                              'url'  => 'http://www.creativecommons.org.uk')
               );

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

function print_jurisdictions_box( $jurisdiction = '', $lic_curr = '', 
                                  $js_on_change = 'modify(this);' ) 
{
    global $jurisdictions; // a global array of all jurisdictions

?>

                    <div id="jurisdiction_box">
                    <?php $jurisdiction_tooltip = '<p><strong>' . _('Jurisdiction') . '</strong> ' .
                                        _('If you desire a license governed by the Copyright Law of a specific jurisdiction, please select the appropriate jurisdiction.') . '</p>' ?>
                    <p><strong <?= get_tooltip_js($jurisdiction_tooltip) ?>><?= _('Jurisdiction of your license') ;?></strong> <?= print_more_info($jurisdiction_tooltip) ?> </p>

    <select name="jurisdiction" id="jurisdiction" onchange="<?= $js_on_change ?>">
<?php
    foreach ( $jurisdictions as $jkey => $jarray )
    {
        if ( $lic_curr == 'sampling' && ! $jarray['sampling'] )
            continue;

        $selected = '';
        if ( $jurisdiction == $jkey )
            $selected = ' selected="selected"';

        echo "<option value=\"$jkey\"$selected>" . 
             $jarray['name'] . "</option>\n";
    }
    ?>
    </select>
    </div>
    <?php
}
