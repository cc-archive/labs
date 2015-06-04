<?php
require_once 'facebook.php';
require_once 'cc_logic.php';

require 'keys.php';

$facebook = new Facebook($appapikey, $appsecret);
$user_id = $facebook->require_login();
// Debug Dump of variables
/*
echo "<pre>";
print_r($_GET); // or var_dump()
echo "</pre><br>";
*/
?>

<?php
$license_chosen = determineLicense();
?>
<div style="width:400px; margin-left: auto; margin-right: auto;">
<center>
<img src="http://mirrors.creativecommons.org/presskit/logos/cc.logo.png">
</center>
<br><h1>Here's a preview of your selected license:</h1>
<br>
<div style="border:#cccccc;border-style:dashed;padding:10px;">


<?php

$license_html = renderHTML($license_chosen);

echo $license_html;

$license_html = $license_html . '<br><br><a href="http://www.facebook.com/apps/application.php?id=78186376044"><small>More about CC Licenses on Facebook.</a></small>';
		

$facebook->api_client->call_method('facebook.profile.setFBML', array(
	'api_key' => $appapikey,
	'v' => '1.0',
	'uid' => $user_id,
	'profile' => '<fb:narrow><fb:ref handle="' . $fb_box_handle . '" />' . $license_html . '</fb:narrow>',
	'profile_main' => '<fb:ref handle="' . $fb_box_handle . '" />' . $license_html,
	)
);

 $template_bundle_id = 79078351044; 
 
 $tokens = array(
  'license'=> 'Creative Commons ' . returnLicenseName($license_chosen) . ' 3.0 License',
  'content'  => '' . contentType()  ); 
  
   	$target_ids = array();
    $body_general = ''; 
    $facebook->api_client->feed_publishUserAction($template_bundle_id, $tokens , implode(',', $target_ids), $body_general);
    
    if ($facebook->api_client->users_hasAppPermission('status_update',''))	 // User gave permission to publish to the stream.
    {
    	//echo "User gave permission.";
	    $message = 'just chose a Creative Commons ' . returnLicenseName($license_chosen) . ' 3.0 License for my ' . contentType() . '.';
	    $facebook->api_client->stream_publish($message);
	   
    }
?>
</div>
<br>
<br><fb:add-section-button section="profile" /> 
<br><a href="http:/apps.facebook.com/creativecommons/">Or go back and choose another license.</a> 
  </div>
