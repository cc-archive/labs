

<?php

include('include/header.php');


$filter = $_GET['by'];



//If they did not enter a search term we give them an error
if ($filter == "") {
	echo "Please try another category.<br><br>";
	include('include/browse_list.php');
	include('include/footer.php');
	exit;
}

if ($filter == "search") {

	include('include/search_form.php');
	include('include/footer.php');
	exit;
}
if ($filter == "browse") {

	include('include/browse_list.php');
	include('include/footer.php');
	exit;
}

	
echo "<h2>Results</h2><p>";


$queryAll = "SELECT * FROM mbdb";
$queryCompliant = "SELECT * FROM mbdb WHERE technical_openness='1' AND legal_pd='1' AND technical_needs_registration='0' AND legal_policy_avail='1' AND legal_by!='1' AND legal_nc!='1' AND legal_nd!='1' AND legal_sa!='1'";
$queryOpen = "SELECT * FROM mbdb WHERE technical_openness='1'";
$queryLimited = "SELECT * FROM mbdb WHERE technical_limited_openness='1'";
$queryRestricted = "SELECT * FROM mbdb WHERE technical_restriction='1'";
$queryNeedsReg = "SELECT * FROM mbdb WHERE technical_needs_registration='0'";
$queryNA = "SELECT * FROM mbdb WHERE technical_openness='N/A' OR technical_openness='N/D' OR technical_limited_openness='N/A' OR technical_limited_openness='N/D' OR technical_restriction='N/A' OR technical_restriction='N/D' OR technical_needs_registration='N/A' OR technical_needs_registration='N/D'";

$queryPolicyAvail = "SELECT * FROM mbdb WHERE legal_policy_avail='1'";
$queryPublicDomain = "SELECT * FROM mbdb WHERE legal_pd='1'";

// KEEP FILTERS FOR BY ND NC SA
$queryBY = "SELECT * FROM mbdb WHERE legal_by='1'";
$queryND = "SELECT * FROM mbdb WHERE legal_nd='1'";
$queryNC = "SELECT * FROM mbdb WHERE legal_nc='1'";
$querySA = "SELECT * FROM mbdb WHERE legal_sa='1'";

$queryOther = "SELECT * FROM mbdb WHERE legal_by='N/C' OR legal_by='N/A' OR legal_by='N/D' OR legal_nd='N/C' OR legal_nd='N/A' OR legal_nd='N/D' OR legal_nc='N/C' OR legal_nc='N/A' OR legal_nc='N/D' OR legal_sa='N/C' OR legal_sa='N/A' OR legal_sa='N/D' OR legal_pd='N/C' OR legal_pd='N/A' OR legal_pd='N/D' OR legal_policy_avail='N/C' OR legal_policy_avail='N/A' OR legal_policy_avail='N/D' OR";
// SHOULD I INCLUDE POLICY NOT AVAILABLE? //



//Now we filter for our search term, in the field the user specified
// TECHNICAL ACCESSIBLITY FILTERS
if ($filter == 'all') {
	$data = query($queryAll);
	$datatab = query($queryAll);
	$find = 'Showing All Database Policies In List Format';
} else if ($filter == 'alltab') {
	$data = query($queryAll);
	$datatab = query($queryAll);
	$find = 'Showing All Database Policies At a Glance';
} else if ($filter == 'findall') {
	$data = query($queryAll);
	$datatab = query($queryAll);
	$find = 'Showing All Database Policies';
} else if ($filter == 'open') {
	$data = query($queryOpen);
	$datatab = query($queryOpen);
	//$find = 'Technical Accessibility: Open Access';
	$find = 'Technical Accessibility: Downloadable in Whole';
} else if ($filter == 'compliant') {
	$data = query($queryCompliant);
	$datatab = query($queryCompliant);
	$find = 'Databases that are Science Commons Open Data Access Protocol Compliant';
} else if ($filter == "limited") {
	$data = query($queryLimited);
	$datatab = query($queryLimited);
	//$find = 'Technical Accessibility: Limited Open Access';
	$find = 'Technical Accessibility: Offers Batch Processing';
} else if ($filter == "restricted") {
	$data = query($queryRestricted);
	$datatab = query($queryRestricted);
	//$find = 'Technical Accessibility: Restricted Access';
	$find = 'Technical Accessibility: Offers a Query Interface';
} else if ($filter == "needsreg") {
	$data = query($queryNeedsReg);
	$datatab = query($queryNeedsReg);
	$find = 'Technical Accessibility: No Registration Required';
// deprecated
/*
} else if ($filter == "techother") {
$data = query($queryNA);
$find = 'Technical Accessibility: Other';
*/
// LEGAL ACCESSIBILITY FILTERS
} else if ($filter == "policyavail") {
	$data = query($queryPolicyAvail);
	$datatab = query($queryPolicyAvail);
	$find = 'Legal Accessibility: Policy Available';
} else if ($filter == "publicdomain") {
	$data = query($queryPublicDomain);
	$datatab = query($queryPublicDomain);
	$find = 'Technical Accessibility: Public Domain';

} else if ($filter == "by") { 
	$data = query($queryBY);
	$datatab = query($queryBY);
	$find = 'Legal Accessibility: Attribution (by) <a href="#" onmouseover="Tip(\'<strong>Attribution</strong>. You let others copy, distribute, and display <br> your copyrighted database -- and derivative databases <br> based upon it -- but only if they give credit the way you <br>request.\')" onmouseout="UnTip()"><img alt="tooltip" src="img/tooltip.gif"></a>';
} else if ($filter == "nd") { 
	$data = query($queryND);
	$datatab = query($queryND);
	$find = 'Legal Accessibility: No Derivatives (nd) <a href="#" onmouseover="Tip(\'<strong>No Derivative Works</strong>.  You let others copy, distribute, and display <br>only exact copies of your database, not derivative databases based <br> upon it.\')" onmouseout="UnTip()"><img alt="tooltip" src="img/tooltip.gif"></a>';
} else if ($filter == "nc") { 
	$data = query($queryNC);
	$datatab = query($queryNC);
	$find = 'Legal Accessibility: Non-commercial (nc) <a href="#" onmouseover="Tip(\'<strong>Noncommercial</strong>. You let others copy, distribute, and display<br> your database -- and derivative databases based upon it -- but <br> for noncommercial purposes only.\')" onmouseout="UnTip()"><img alt="tooltip" src="img/tooltip.gif"></a>';
} else if ($filter == "sa") { 
	$data = query($querySA);
	$datatab = query($querySA);
	$find = 'Legal Accessibility: Share Alike (sa) <a href="#" onmouseover="Tip(\'<strong>Share Alike</strong>.  You allow others to distribute derivative databases <br> only under a license identical to the license that governs your <br>database.\')" onmouseout="UnTip()"><img alt="tooltip" src="img/tooltip.gif"></a>';
// deprecated
/*
} else if ($filter == "legalother") {
	$data = query($queryOther);
	$find = 'Legal Accessibility: Other';
*/
} else {
	echo "No filter specifed, please try another filter.";
	include('include/browse_list.php');
}


//And we remind them what they filtered for
echo "<h3>".$find."</h3>";


//This counts the number or results - and if there wasn't any it gives them a little message explaining that
$anymatches = mysql_num_rows($data);

if ($anymatches == 0) {
	echo "Sorry, but we can not find an entry under this category. Please try another category.<br><br>";
	include('include/browse_list.php');
} else {

	echo "<i>".$anymatches." databases found.</i><br><br>";
}


//And we display the results

if ($filter == "alltab") {
	echo "<p align='left'>The following is a list of database categorized as of July 2008. To see a list
	of databases that are compliant with the <a href='http://sciencecommons.org/projects/publishing/open-access-data-protocol/' target='_blank'>Science 
	Commons Open Access Data Protocol</a>, click <a href='filter.php?by=compliant'>here</a>.</p>";
	display_data_tabular($datatab);
} else if ($filter == "findall") {
	echo "<p align='left'>The following is a list of database categorized as of July 2008. To see a list
	of databases that are compliant with the <a href='http://sciencecommons.org/projects/publishing/open-access-data-protocol/' target='_blank'>Science 
	Commons Open Access Data Protocol</a>, click <a href='filter.php?by=compliant'>here</a>.</p>";
	display_data_tabular($datatab);

} else {
	if ($filter == "compliant") {
		echo "<p align='left'>The following list of databases meets the requirements listed in the <a href='http://sciencecommons.org/projects/publishing/open-access-data-protocol/' target='_blank'>Science 
	Commons Open Access Data Protocol</a>. The databases listed below are:
		<ul>
			<li>In the public domain with a published terms of use policy, and </li>
			<li>Downloadable in whole without registration. </li>
		</ul>
		</p>";
	}
	if ($filter != "all") {
		//And we display the results
		echo "<p align='right'><a href='#detailed'>Click here to see databases in a detailed list</a></p>";
		display_data_tabular($datatab);
	} else {
		echo "<p align='left'>The following is a list of database categorized as of July 2008. To see a list
	of databases that are compliant with the <a href='http://sciencecommons.org/projects/publishing/open-access-data-protocol/' target='_blank'>Science 
	Commons Open Access Data Protocol</a>, click <a href='filter.php?by=compliant'>here</a>.</p>";
	}
	echo "<a name='detailed'></a>";
	display_data_detailed($data);
}

include('include/search_form.php');
include('include/footer.php');


?>


