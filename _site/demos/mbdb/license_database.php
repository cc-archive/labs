
<?php
include('include/header.php');


$q1= $_POST['q1'];
$q2= $_POST['q2'];
$q3= $_POST['q3'];

echo '<h2>Is the database Open Access Data Protocol (OADP) compliant?</h2>';

if ($q1=='yes' && $q2=='yes' && $q3=='no') {
	echo '
	Yes, your database:
	<ul>
		<li>Converges on the public domain by waiving all rights based on intellectual property
		<li>Converges on the public domain by waiving other statutory or intellectual property rights.
		<li>Converges on the public domain by imposing no contractual controls.</li>
	</ul>
	
	Include the following metadata on the Website of your database:<br>
	<textarea cols="80">
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
		<li><a href="http://sciencecommons.org/projects/publishing/open-access-data-protocol/">Science Commons Open Access Data Protocol</a></li>
		<li><a href="http://labs.creativecommons.org/license/zero">CCZero - can be used to waive all copyrights</li>
		<li><a href="http://www.opendatacommons.org/odc-public-domain-dedication-and-licence/">Open Data Commons: Public Domain Dedication and License</li>
	<ul>
	
	If you cannot comply, use the <a href="license.php">licensing tool</a> to license your work under our system to facilitate interoperability.

	';
}
?>


<?php
include('include/footer.php');
?>