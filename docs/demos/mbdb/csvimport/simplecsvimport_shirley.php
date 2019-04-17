<?
/* NOTES ON MAKING THE EXCEL DOC APPROPRIATE FOR IMPORT 
1. Take the Excel Doc, copy and paste the data (without the column headings) to a new sheet. Save as tab delimited MSDOS txt file. Open it with Notepad++.
2. Do a find on semicolons to see if they exist in the data, if so, delete them.
3. Do a replace/find on double quotes and remove them. 
4. Do a replace/find on the tabs to make them into semicolons. This creates the delimiters for the fields.
5. Use the following php script to generate the sql needed for the import!

*/


/********************************************************************************************/
/* Code at http://legend.ws/blog/tips-tricks/csv-php-mysql-import/
/* Edit the entries below to reflect the appropriate values
/********************************************************************************************/
$databasehost = "localhost";
$databasename = "development";

$databaseusername ="root";
$databasepassword = "glurban";
$fieldseparator = ";";
$lineseparator = "\n";

/// change here!
$databasetable = "mbdb";
//$databasetable = "suruga_expert_expert_posts";

$filename = "MBDB\\march_2008.txt";

$con = @mysql_connect($databasehost,$databaseusername,$databasepassword) or die(mysql_error());
@mysql_select_db($databasename) or die(mysql_error());
	
	$csvfile = $filename;


	/********************************************************************************************/
	/* Would you like to add an ampty field at the beginning of these records?
	/* This is useful if you have a table with the first field being an auto_increment integer
	/* and the csv file does not have such as empty field before the records.
	/* Set 1 for yes and 0 for no. ATTENTION: don't set to 1 if you are not sure.
	/* This can dump data in the wrong fields if this extra field does not exist in the table
	/********************************************************************************************/
	$addauto = 0;
	/********************************************************************************************/
	/* Would you like to save the mysql queries in a file? If yes set $save to 1.
	/* Permission on the file should be set to 777. Either upload a sample file through ftp and
	/* change the permissions, or execute at the prompt: touch output.sql && chmod 777 output.sql
	/********************************************************************************************/
	$save = 0;
	$outputfile = "output.sql";
	/********************************************************************************************/


	if(!file_exists($csvfile)) {
		echo $csvfile;
		echo "File not found. Make sure you specified the correct path.\n";
		exit;
	}

	$file = fopen($csvfile,"r");

	if(!$file) {
		echo "Error opening data file.\n";
		exit;
	}

	$size = filesize($csvfile);

	if(!$size) {
		echo "File is empty.\n";
		exit;
	}

	$csvcontent = fread($file,$size);

	fclose($file);



	$lines = 0;
	$queries = "";
	$linearray = array();
	
	echo "<b>This script is good for fields separated by semi colons, and new line indicates a new row entry. Copy and paste the following text to phpmyadmin as sql. Note that there may be some junk in the code that you gotta clean up before all the queries can execute nicely. Look for weird symbols and the last line that tries to insert nothing.</b><br>";

	foreach(split($lineseparator,$csvcontent) as $line) {

		$lines++;

		$line = trim($line," \t");
		
		$line = str_replace("\r","",$line);
		
		/************************************************************************************************************
		This line escapes the special character. remove it if entries are already escaped in the csv file
		************************************************************************************************************/
		$line = str_replace("'","\'",$line);
		/***********************************************************************************************************/
		
		$linearray = explode($fieldseparator,$line);
		
		$linemysql = implode("','",$linearray);
		
		if($addauto)
			$query = "insert into $databasetable values('','$linemysql');";
		else
			$query = "insert into $databasetable values('$linemysql');";
		
		$queries .= $query . "\n";

		//@mysql_query($query);
	}

	echo $queries; // RUN QUERIES BY COPY AND PASTING INTO PHPMYADMIN

	if($save) {
		
		if(!is_writable($outputfile)) {
			echo "File is not writable, check permissions.\n";
		}
		
		else {
			$file2 = fopen($outputfile,"w");
			
			if(!$file2) {
				echo "Error writing to the output file.\n";
			}
			else {
				fwrite($file2,$queries);
				fclose($file2);
			}
		}
		
	}

	echo "Found a total of $lines records in this csv file.\n";



@mysql_close($con);
?>