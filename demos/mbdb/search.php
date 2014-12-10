

<?php

include('include/header.php');

$searching = $_POST['searching'];
$find = $_POST['find'];
$field = $_POST['field'];


//This is only displayed if they have submitted the form
if ($searching =="yes") {
	
	echo "<h2>Results</h2><p>";

	//If they did not enter a search term we give them an error
	if ($find == "") {
		echo "<p>Please provide a search term";
		include('include/search_form.php');
		exit;
	}

	// We preform a bit of cleaning
	$find = strtoupper($find);
	$find = strip_tags($find);
	$find = trim ($find); // trim of spaces

	//And we remind them what they searched for
	echo "<b>Searched for:</b> " .$find." in ".$field."<br>";
	
	//Now we search for our search term, in the field the user specified
	$data = query("SELECT * FROM mbdb WHERE upper($field) LIKE '%$find%'");



	//This counts the number or results - and if there wasn't any it gives them a little message explaining that
	$anymatches = mysql_num_rows($data);
	
	if ($anymatches == 0) {
		echo "Sorry, but we can not find an entry to match your query. Please try another search term.<br><br>";
	} else {
	
		echo "<i>".$anymatches." databases found.</i><br><br>";
	}
	
	//And we display the results
	echo "<p align='right'><a href='#detailed'>Click here to see databases in a detailed list</a></p>";
	display_data_tabular($data);
	
	//Now we search for our search term, in the field the user specified
	echo "<a name='detailed'></a>";
	$data = query("SELECT * FROM mbdb WHERE upper($field) LIKE '%$find%'");
	display_data_detailed($data);

}

include('include/search_form.php');
include('include/footer.php');


?>


