<?php
if(isset($_POST["submit"])) { //user had submitted thur login page 
    $username = $_POST["username"];
    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

      //if users left anything empty
    // any thing beside a false -->error
    if( emptyField($username) !== false) {
        header("location: ../forgotPassword.php?error=emptyInput"); 
        exit(); //stops the script
        }

        // user gotta exists in order to continue to answer security question to reset password 
    if( uidExists($conn, $username, $username) === false) {
        header("location: ../forgotPassword.php?error=nousername"); 
        exit(); //stops the script
        
      }

      header("location: ../answer.php?user=".$username); 



} else {
    header("location: ../forgotPassword.php"); 
    exit(); 
}


    
