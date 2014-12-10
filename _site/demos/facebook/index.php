<?php
// Copyright 2007 Facebook Corp.  All Rights Reserved. 
// 
// Application: Creative Commons
// File: 'index.php' 
// 

require_once 'facebook.php';

require 'keys.php';

$facebook = new Facebook($appapikey, $appsecret);
$user_id = $facebook->require_login();

// Greet the currently logged-in user!
//echo "<p>Hello, <fb:name uid=\"$user_id\" useyou=\"false\" />!</p>";

// Print out at most 25 of the logged-in user's friends,
// using the friends.get API method
/*
echo "<p>Friends:";
$friends = $facebook->api_client->friends_get();
$friends = array_slice($friends, 0, 25);
foreach ($friends as $friend) {
  echo "<br>$friend";
  }
  echo "</p>";

*/
/*
try { 
	$facebook->api_client->Profile_getInfo();
	echo "User does have app installed.";
	}
	
	catch (Exception $e) 
	{
		echo "User does not have app installed";
		echo $e->getMessage();
	}
	*/
	
?>


<style type="text/css">

li 
{
	list-style:none;
	margin-left:-39px;	
}

div.more-metadata-container {
	width:500px;
-moz-border-radius-bottomleft:10px;
-moz-border-radius-bottomright:10px;
-moz-border-radius-topleft:10px;
-moz-border-radius-topright:10px;
background-color:#FAFAFA;
font-size:0.9em;
margin-bottom:1.75em;
margin-top:1.75em;
padding:0.75em;
}
</style>


<div style="width:400px; margin-left: auto; margin-right: auto;">
<center>
<img src="http://mirrors.creativecommons.org/presskit/logos/cc.logo.png">
</center>
<p>
Welcome to the Creative Commons License application on Facebook.</p>
<p>The intent of this application is to help you choose a license that will identify to your friends and the public how you want your work to be used in the world. Once you answer the couple of questions questions below, we'll recommend one of our six licenses and you'll have the opportunity to place it directly on your Facebook profile.</p>
<p>You can learn more about the six different <a href="http://creativecommons.org/about/licenses">Creative Commons Licenses here</a>, or read <a href="http://wiki.creativecommons.org/FFAQ">some frequently asked questions</a> here.</p>


<form method="get" action="./results.php">

<div style="color:red;"><strong>Note:</strong> If you've already chosen a CC license and applied it to your profile, selecting a license again will change the license. <a href="http://wiki.creativecommons.org/FAQ#What_if_I_change_my_mind.3F">You're allowed to do this</a>, but it is inconvenient for users of your content.</div>

   <p><strong>What content do you want to license?</strong></p>

<input type="checkbox" name="photos" value="y" checked>Photos<br>
<input type="checkbox" name="text" value="y" checked>Profile Text & Status Updates<br>
<input type="checkbox" name="video" value="y" checked>Videos<br>
<p>
	  <strong>Allow commercial uses of your work?</strong>
	</p>
	  <ul class="choices">
	    <li>
	  <input type="radio" checked="checked" name="field_commercial" value="yes" id="question_2-3" /> <label
    for="question_2-3">Yes</label> 
	    </li>
		  
			<li>
	  <input type="radio" name="field_commercial" value="n" id="question_2-4" /> <label
    for="question_2-4">No</label>
		  </li>
	</ul>

	<p>
	  <strong>Allow modifications of your work?</strong>
	</p>
		
		<ul class="choices">
		  <li>
	  <input type="radio" checked="checked" name="field_derivatives" value="yes" id="question_3-5" />  
	  <label for="question_3-5">Yes</label>
	  <a href="" id="derivatives" class="helpLink">

	   </a>
	    </li>
	    
		  <li>
	  <input type="radio" name="field_derivatives" value="sa" id="question_3-6" /> 
	  <label for="question_3-6">
	    <span>Yes, as long as others share alike</span>
	  </label>

      </li>
			
			<li>
	  <input type="radio" name="field_derivatives" value="n" id="question_3-7" /> 
	  <label for="question_3-7">No</label>
	  <a href="" id="noderivatives" class="helpLink">
	   </a>
  	  </li>
	</ul>
	    <? if (!$facebook->api_client->users_hasAppPermission('status_update',''))	 // User gave permission to publish to the stream.
    {
    	?>
    	    Click <fb:prompt-permission perms="status_update">here to allow Creative Commons to post a status update</fb:prompt-permission> letting your friends know you've chosen a CC license.
    		<br> <br> 
    <?php
    }
    ?>
    
    <input type="submit" value="Select a License" class="submit"/>
    </form>
    


     
    <br>  
  </div>
 
