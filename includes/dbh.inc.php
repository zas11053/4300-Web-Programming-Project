<?php
//THIS IS THE DATABASE CONNECTION PAGE --- I'VE CONNECTED TO THE DATABASE WITH MY ACCOUNT, BUT 
// YOU CAN CONNECT WITH YOUR OWN ACCOUNT OR THROUGH THE DEFAULT PASSWORD AND USERNAME

$serverName = "localhost"; // because using xxamp
//$dBUsername = 'root'; //default
$dBUsername = 'mydatelist'; //myaccount 
//$dBPassword = "";
$dBPassword = "Date123456!!";
$dBName = "mydatelist"; // depend on what we call our database in mysql

$conn = mysqli_connect($serverName, $dBUsername, $dBPassword, $dBName);

if(!$conn) {
    //kills it and prints error message 
    die("Connection failed" . mysql_connect_error());
}
?>