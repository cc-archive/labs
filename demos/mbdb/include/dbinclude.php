<?php


$dbhost = 'localhost';
$dbuser = 'mbdbadmin';
$dbpass = 'Mbdbadmin.';
$dbname = 'mbdb';

$conn = mysql_connect($dbhost, $dbuser, $dbpass);
mysql_select_db($dbname, $conn);

function query($q) {
  global $conn;
  $result = mysql_query($q, $conn);
  if (!$result) {
    die("Invalid query -- $q -- " . mysql_error());
  }
  return $result;
}

?>
