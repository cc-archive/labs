
<?php
include('include/header.php');

?>
<h2>Choose any of the options below to start:</h2>
<div id='centerColumnBox'>
	<table border='0' cellpadding="5" cellspacing="2">
	<tr height='125px'>
		<td width='50%'>
		<div id='centerColumnBar'>
		<a href='filter.php?by=compliant'>Find Open Data</a><br><Br>
		Browse a list of databases compliant with the <a href='http://sciencecommons.org/projects/publishing/open-access-data-protocol/' target='_blank'>Science Commons Open Access Data Protocol</a>
		</div>
		</td>
		
		<td width='50%'>
		<div id='centerColumnBar'>
		<a href='filter.php?by=browse'>Browse Policies</a><br><br>
		View databases categorized by their technical and legal accessibility regimes
		</div>
		</td>
	</tr>
	<tr height='125px'>
		
		<td width='50%'>
		<div id='centerColumnBar'>
		<a href='filter.php?by=alltab'>Classified Databases</a><br><Br>
		Find all the databases classified by the project. 
		You also may want to use the <a href='filter.php?by=browse'>"Browse Policies"</a> 
		section for a specific kinds of databases. 
		</div>
		</td>

		<td width='50%'>
		<div id='centerColumnBar'>
		<a href='submit.php'>Submit Policy</a><br><br>
		Use the questionnaire to submit a database policy to our system
		</div>
		</td>
	</tr>
	</table>
</div>



<?php

include('include/footer.php');
?>