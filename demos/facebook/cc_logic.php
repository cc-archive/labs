<?php
require_once 'facebook.php';
require 'keys.php';

$facebook = new Facebook($appapikey, $appsecret);
$user_id = $facebook->require_login();

function determineLicense()
{
	$license_chosen = "";
	switch($_GET["field_commercial"]) // Check commercial field.
	{
		case "yes": // User allows commercial use
			switch($_GET["field_derivatives"])
			{	
			case "yes": // User allows derivatives and commercial use but does not ShareAlike (Attribution)
					$license_chosen= "by";
					break;
			case "sa": // User allows derivatives and commercial use but requires ShareAlike (Attribution-ShareAlike)
					$license_chosen= "by-sa";
					break;
			case "n": // User allows derivatives and commercial use but not derivatives (Attribution-NoDerivatives)
					$license_chosen = "by-nd";
					break;
			}		
			break;
			
		case "n":
			switch($_GET["field_derivatives"])
			{	
			case "yes": // User allows derivatives but not commercial use and does not require ShareAlike (Attribution-NonCommercial)
					$license_chosen = "by-nc";
					break;
			case "sa": // User allows derivatives but not commercial use and requires ShareAlike (Attribution-NonCommercial-ShareAlike)
					$license_chosen =  "by-nc-sa";
					break;
			case "n": // User does not allow derivatives or commercial use (Attribution-NonCommercial-NoDerivatives)
					$license_chosen = "by-nc-nd";
					break;
			}		
			break;
		}
	return $license_chosen;
}

function returnLicenseName($license_chosen) //Output non-abbreviated license name
{	
	switch($license_chosen)
	{
		case "by":
			return "Attribution";
			
		case "by-sa":
			return "Attribution-ShareAlike";
			
		case "by-nd":
			return "Attribution-NoDerivatives";
	
		case "by-nc":
			return "Attribution-NonCommercial";
			
		case "by-nc-sa":
			return "Attribution-NonCommercial-ShareAlike";
					
		case "by-nc-nd":
			return "Attribution-NonCommercial-NoDerivatives";		
	}
}

function renderHTML($license_chosen)
{
		global $user_id;
		$licenseHTML = "";
		
		$licenseHTML = $licenseHTML .  '<a rel="license" href="http://creativecommons.org/licenses/' . $license_chosen . '/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/' . $license_chosen . '/3.0/88x31.png" /></a><br />'; // Output License Badge
			
		$licenseHTML = $licenseHTML . 'Except where otherwise noted, <a xmlns:cc="http://creativecommons.org/ns#" href="http://www.facebook.com/profile.php?id=' . $_GET["fb_sig_user"] . '" property="cc:attributionName" rel="cc:attributionURL">'; //Create RDDFa pointing to Facebook Userpage for AttributionURL 
			
		$licenseHTML = $licenseHTML . "<fb:name uid=\"$user_id\" possessive=\"true\"  useyou=\"false\"/></a> "  ; // Use FBML to render Facebook username in the possessive.
		
		$licenseHTML = $licenseHTML . '<span xmlns:dc="http://purl.org/dc/elements/1.1/" property="dc:title">Facebook'; //Title RDFa
		
function contentType()
{
	
		$contentLicense = array(); // Render content chosen string based on checkboxes.
		
		$contentSlug = "";
		
		if($_GET["photos"] == 'y') // User wants photos licensed .. etc. 
		{
			array_push($contentLicense, "photos");
		}
		
		if($_GET["video"] == 'y') 
		{
			array_push($contentLicense, "videos");
		}
		
		if($_GET["text"] == 'y') 
		{
			array_push($contentLicense, "profile text (including status updates)");
		}
		
		if (count($contentLicense) > 1) // Check if user selected multiple content types, use proper grammar to create "and" at the end of the list.
		{
			for ( $i = 0; $i < count($contentLicense) - 1; $i++) //Iterate through content types.
			{
			$contentSlug = $contentSlug . " " . $contentLicense[$i] . ", ";
			}
			$contentSlug = $contentSlug . "and " . $contentLicense[$i++];
		}
		
		else  // Singular choice (e.g., photos only), no and required.
		{
			$contentSlug = $contentSlug . " " . array_pop($contentLicense) . " ";	
		}
		return $contentSlug;
}
		
		$licenseHTML = $licenseHTML . contentType();
		 
		$licenseHTML = $licenseHTML . '</span>'; // End title RDFa
		
		$licenseHTML = $licenseHTML . ' are licensed under a <a rel="license" href="http://creativecommons.org/licenses/' . $license_chosen . '/3.0/">Creative Commons ' . returnLicenseName($license_chosen) . ' 3.0 License</a>.'; //Output License name, etc.
		return $licenseHTML;
}

?>
