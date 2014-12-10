<?php
include('include/header.php');
?>

<h2>Submit Your Database Policy:</h2>
<b>Technical Accessibility</b>

<form action='submit_policy.php' method="POST">
<ol>
	<li>Does the database provide a link to download the whole database?<br>
		<input name='download' type='radio' value='yes'> Yes<br>
			<ul class='questionnaire'>
			If "Yes", please provide the download URL<br>
			<input name='dl' type='text' size='70' maxlength='200'>
			</ul>
		<input name='download' type='radio' value='no' CHECKED> No
	</li>
	<li>Is it possible to access the data through batch feature?<br>
		<input name='batch' type='radio' value='yes'> Yes<br>
		<input name='batch' type='radio' value='no' CHECKED> No
	</li>
	<li>Is it possible to access the data through a query-based system?<br>
		<input name='query' type='radio' value='yes'> Yes<br>
		<input name='query' type='radio' value='no' CHECKED> No
	</li>
	<li>Finally, is registration compulsory before downloading or accessing data in the ways described above?<br>
		<input name='reg' type='radio' value='yes'> Yes<br>
		<input name='reg' type='radio' value='no' CHECKED> No
	</li>
</ol>

<b>Legal Accessibility</b>

<ol>
	<li>Does the database have a policy?<br>
		<input name='policy' type='radio' value='yes'> Yes, there is a published terms of use<br>
			<ul class='questionnaire'>
			If "Yes", please provide the terms of Use URL (if applicable)<br>
			<input name='tou' type='text' size='70' maxlength='200'><br>
			Does it use the National Center for Biotechnology Information (NCBI) policy?<Br>
			<input name='ncbi' type='radio' value='yes'> Yes<br>
			<input name='ncbi' type='radio' value='no' CHECKED> No
			</ul>
		<input name='policy' type='radio' value='no' CHECKED> No, there is NO published terms of use
	</li>
	<li>Are there any restrictions to the right of reformatting and redistributing?<br>
		<input name='restrict' type='radio' value='no'> No, there are no restrictions, and the data is in the public domain.<br>
		<input name='restrict' type='radio' value='yes' CHECKED> Yes, the terms of use impose contractual restrictions, such as heavy
contractual requirements for attribution, limitation to non-commercial usages, prohibition to
modify data, or other constraints on their redistribution or modification. 
		
	</li>

</ol>
<hr>
<p>Provide the following additional information about your database:</p>
<ol>
	<li>
		Life Science Resource Name (LSRN)<br>
		<input name='acronym' type='text' size='70' maxlength='200'>
	</li>
	<li>
		Database Name<br>
		<input name='name' type='text' size='70' maxlength='200'>
	</li>
	<li>
		Database Web Site<br>
		<input name='url' type='text' size='70' maxlength='200'>
	</li>
</ol>
	

<p align='right'><input type='submit' value='Submit Policy'></p>



</form>

<?php
include('include/footer.php');
?>