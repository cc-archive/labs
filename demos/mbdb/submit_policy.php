
<?php
include('include/header.php');

$download = ($_POST['download'] == "yes") ? '1' : '0';;
$downloadURL = $_POST['dl'];
$batch = ($_POST['batch'] == "yes") ? '1' : '0';;
$query = ($_POST['query'] == "yes") ? '1' : '0';;
$needsreg = ($_POST['reg'] == "yes") ? '1' : '0';;

$policyavail = ($_POST['policy'] == "yes") ? '1' : '0';
$touURL = $_POST['tou'];
$ncbi = ($_POST['ncbi'] == "yes") ? '1' : '0';
// no need to save "restrict"

$pd = ($_POST['restrict'] == "no" && $_POST['download'] == "yes" && $_POST['policy'] == "yes" && $_POST['reg'] == "no") ? '1' : '0';

//$by = ($_POST['by'] == "yes") ? '1' : '0';
//$nd = ($_POST['nd'] == "yes") ? '1' : '0';
//$nc = ($_POST['nc'] == "yes") ? '1' : '0';
//$sa = ($_POST['sa'] == "yes") ? '1' : '0';

$by = "N/A";
$nd = "N/A";
$nc = "N/A";
$sa = "N/A";


$acronym = $_POST['acronym'];
$name = $_POST['name'];
$URL = $_POST['url'];


query("INSERT INTO `mbdb`.`mbdb_submitted` (
`timestamp` ,
`acronym` ,
`name` ,
`database_url` ,
`download_url` ,
`tou_url` ,
`tou_extract_ncbi` ,
`tou_extract_other` ,
`technical_openness` ,
`technical_limited_openness` ,
`technical_restriction` ,
`technical_needs_registration` ,
`legal_policy_avail` ,
`legal_pd` ,
`legal_by` ,
`legal_nd` ,
`legal_nc` ,
`legal_sa` ,
`comments` ,
`article` ,
`votes`
)
VALUES (
NOW( ) , '$acronym', '$name', '$URL', '$downloadURL', '$touURL', '$ncbi', '', '$download', '$batch', '$query', '$needsreg', '$policyavail', '$pd', '$by', '$nd', '$nc', '$sa', '', '', '0'
);");

echo '<h2>The database policy has been submitted!</h2>
<p>
Reviewers will be reviewing the submission to verify its accuracy.
</p>
';



/*
if ($q1=='yes' && $q2=='yes' && $q3=='no') {
	echo '
	Yes, your database:
	<ul>
		<li>Converges on the public domain by waiving all rights based on intellectual property
		<li>Converges on the public domain by waiving other statutory or intellectual property rights.
		<li>Converges on the public domain by imposing no contractual controls.</li>
	</ul>
	<br>
	Include the following metadata on the Website of your database:<br><br>
	<textarea cols="83" rows="4">
<policy ref:about=\'http:// \'>
	<compliant_with rdf:resource=\'http://web.resource.org/cc/OpenAccessDataProtocol\'>
</policy>
	</textarea>
	';
} else if ($q1=='no' || $q2=='no' || $q3=='yes') {
	echo '
	No, your database does not:
	<ul>
	';
	if ($q1=='no') {
		echo '<li>Converge on the public domain by waiving all rights based on intellectual property';
	}
	if ($q2=='no') {
		echo '<li>Converge on the public domain by waiving other statutory or intellectual property rights.';
	}
	if ($q3=='yes') {
		echo '<li>Converge on the public domain by imposing no contractual controls.</li>';
	}
	echo '</ul>
	
	<p>Refer to the the following resources and tools to comply and get the mark and metadats:
	<ul>
		<li><a href="http://sciencecommons.org/projects/publishing/open-access-data-protocol/" target="_blank">Science Commons Open Access Data Protocol</a></li>
		<li><a href="http://labs.creativecommons.org/license/zero" target="_blank">CCZero - can be used to waive all copyrights</li>
		<li><a href="http://www.opendatacommons.org/odc-public-domain-dedication-and-licence/" target="_blank">Open Data Commons: Public Domain Dedication and License</a></li>
	</ul>
	
	If you cannot comply, use the <a href="license.php">licensing tool</a> to license your work under our system to facilitate interoperability.

	';
}*/
?>


<?php
include('include/footer.php');
?>
