<?php
ob_start("ob_gzhandler");
/**
 * NOTE: Don't be fooled by the extension.  This gets intepreted by the PHP
 * interpreter.  That way I can dispatch based on the query string.
 *
 * See .htaccess for how to configure it for php5.
 */
header("content-type: text/javascript");
?>

<?php
/* Figure out our base path. */
$me = $_SERVER['SCRIPT_NAME']; // 
$parsed = parse_url($me);
$dirname = dirname($parsed['path']);
$base = 'http://' . $_SERVER['HTTP_HOST'] . $dirname;

/* Load the prerequisite JS files */
$pre_reqs = array('js/safari-label-fix.js', 'js/cc-tooltip.js', 'js/cc-jurisdictions.js', 'js/cc-license.js', 'js/init.js');
foreach ($pre_reqs as $pre_req) {
	echo file_get_contents($pre_req);
}

/* NOTE: I do not include the CSS stylesheet
   and instead I let others style our boxes the way they want. */

/* Insert the template */

/* First check if we were called with ?locale=XX and dispatch accordingly */
    if (array_key_exists('locale', $_GET) &&
	// valid locales are lower or upper case alphas plus _ or -
	preg_match('/^([a-zA-Z-_]+)$/', $_GET['locale']))
	{
	    $template_url = $base . '/template.js.' . $_GET['locale'];
	}

/* Else, do the generic one and hope they either like English or will
 * do their own language negotiation */
    else {
	$template_url = $base . '/template.js.var';
    }
?>

document.write('<script type="text/javascript" src="<?php echo $template_url ?>" /></script>\n');
