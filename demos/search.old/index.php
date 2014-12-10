<?php

// Randomly redirect to either search site

//$i = rand(1, 2);

// 2010-08-30 -- Beta testing Search 2 only.
$i = 2;

/*
if (!$_COOKIE['__ccSearchBetaVersion']) {
	// save cookie for future search loading
	setcookie('__ccSearchBetaVersion', $i, mktime(1, 0, 0, 1, 1, 2020), "labs.creativecommons.org");
} else {
	$i = $_COOKIE['__ccSearchBetaVersion'];
}
*/

header("Location: /demos/search/search" . $i . "?q=" . htmlspecialchars($_GET['q']));

?>
