<?php

$serverName = "localhost"; // because using xxamp
//$dBUsername = 'root'; //default
$dBUsername = 'mydatelist'; //default
//$dBPassword = "";
$dBPassword = "Date123456!!";
$dBName = "mydatelist"; // depend on what we call our database in mysql

$conn = mysqli_connect($serverName, $dBUsername, $dBPassword, $dBName);

if(!$conn) {
    //kills it and prints error message 
    die("Connection failed" . mysql_connect_error());
}
?>