<?php
include('include/header.php');
?>

<h2>License your database:</h2>

<form action='license_database.php' method="POST">
<b>Legal Accessibility</b>
<ol>
	<li>Does your database use the National Center for Biotechnology Information (NCBI) policy?<br>
		<input name='q1' type='radio' value='yes'> Yes<br>
		<input name='q1' type='radio' value='no' CHECKED> No
	</li>
	<li>xxxx<br>
		<input name='q2' type='radio' value='yes'> Yes<br>
		<input name='q2' type='radio' value='no' CHECKED> No
	</li>
	<li>xxxxx<br>
		<input name='q3' type='radio' value='yes'> Yes<br>
		<input name='q3' type='radio' value='no' CHECKED> No
	</li>
	<li>xxxxx<br>
		<input name='q4' type='radio' value='yes'> Yes<br>
		<input name='q4' type='radio' value='no' CHECKED> No
	</li>
	<li>xxxxx<br>
		<input name='q5' type='radio' value='yes'> Yes<br>
		<input name='q5' type='radio' value='no' CHECKED> No
	</li>
	<li>xxxxx<br>
		<input name='q5' type='radio' value='yes'> Yes<br>
		<input name='q5' type='radio' value='no' CHECKED> No
	</li>
</ol>
<b>Technical Accessibility</b>
<ol>
	<li>Do you provide ............<br>
		<input name='q6' type='radio' value='yes'> Yes<br>
		<input name='q6' type='radio' value='no' CHECKED> No
	</li>
	<li>xxxxx<br>
		<input name='q7' type='radio' value='yes'> Yes<br>
		<input name='q7' type='radio' value='no' CHECKED> No
	</li>
	<li>xxxxx<br>
		<input name='q8' type='radio' value='yes' CHECKED> Yes<br>
		<input name='q8' type='radio' value='no'> No
	</li>
</ol>

<p align='right'><input type='submit' value='License Database'></p>

</form>

<?php
include('include/footer.php');
?>