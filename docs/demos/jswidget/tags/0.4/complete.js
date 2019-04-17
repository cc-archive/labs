<?php
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

?>

/* Load the prerequisite JS files */
document.write('<script type="text/javascript" src="<?php echo $base . '/js/prototype.js'; ?>"></script>');
document.write('<script type="text/javascript" src="<?php echo $base . '/js/safari-label-fix.js'; ?>"></script>');
document.write('<script type="text/javascript" src="<?php echo $base . '/js/cc-tooltip.js'; ?>"></script>');
document.write('<script type="text/javascript" src="<?php echo $base . '/js/cc-jurisdictions.js'; ?>"></script>');
document.write('<script type="text/javascript" src="<?php echo $base . '/js/cc-license.js'; ?>"></script>');
document.write('<script type="text/javascript" src="<?php echo $base . '/js/init.js'; ?>"></script>');

/* NOTE: I do not include the CSS stylesheet
   and instead I let others style our boxes the way they want. */

/* Insert the template */

<?php
/* First check if we were called with ?locale=XX and dispatch accordingly */
    if (array_key_exists('locale', $_GET) &&
	// valid locales are lower or upper case alphas plus _ or -
	preg_match('/^([a-zA-Z-_]*)$/', $_GET['locale']))
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
