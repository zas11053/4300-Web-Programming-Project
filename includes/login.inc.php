<?php
if(isset($_POST["submit"])) { //user had submitted their login page 
    $username = $_POST["username"];
    $password = $_POST["password"];
    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

      //if users left anything empty
    // any thing beside a false --> error
    if( emptyInputLogin($username, $password) !== false) {
    header("location: ../login.php?error=emptyInput"); 
    exit(); //stops the script
    }


    loginUser($conn, $username, $password);

} else {
    header("location: ../login.php"); 
    exit(); 
}


    
