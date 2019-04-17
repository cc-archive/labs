<?php
include_once "header.php";
echo('<h3 align="center">');

$ref = $_SERVER["HTTP_REFERER"];

// echo '<pre>';
// print_r($_REQUEST);
// echo '<pre>';

if ( ( strpos($ref,'http://labs.creativecommons.org/') === 0
     || strpos($ref,'http://labt.creativecommons.org/') === 0 )
     &&
     !empty($_REQUEST['compare']) || !empty($_REQUEST['understandable']) ||
     !empty($_REQUEST['comments']) )
{
    if ( empty($_REQUEST['email'] ) )
        $email = 'noreply@creativecommons.org';
    else 
        $email = $_REQUEST['email']; 

    $mailto     = "labs@creativecommons.org";
    // $mailto     = "jon@creativecommons.org";
    $mailsubj   = "Labs Feedback";
    $mailhead   = "From: $email\n";
    
    $mailbody   = "Submitted from $ref \n";
    
    while (list ($key, $val) = each ($HTTP_POST_VARS)) 
    { 
    	$mailbody .= "$key : $val\n"; 
    }

    if (!eregi("\n",$HTTP_POST_VARS[email])) 
    { 
        mail($mailto, $mailsubj, $mailbody, $mailhead); 
    }
    echo('Thanks for your feedback!');
} 
else 
{
    echo('<span style="color:red">' . 
         'Use must give feedback to submit this form. ' . 
         'Please use your browser\'s back arrow to fill out required fields.' .
         '</span>');
}
echo('</h3>');

include_once "footer.php";
?>
