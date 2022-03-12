<?php

// check if accessed the sign up page the proper way, if not redirects to signupp age
if(isset($_POST["submit"])) { // user has submit its signup thru sign-up page
    $name = $_POST["name"];
    $username = $_POST["username"];
    $password = $_POST["password"];
    $verify_password = $_POST["verify_password"];
    $question1 = $_POST["question1"];
    $question2 = $_POST["question2"];
    $question3 = $_POST["question3"];

    require_once('dbh.inc.php');
    require_once('functions.inc.php');

    //if users left anything empty
// any thing beside a false -->error
    if( emptyInputSignup($name, $username, $password, $verify_password, $question1, $question2, $question3) !== false) {
        header("location: ../signup.php?error=emptyInput"); 
        exit(); //stops the script
    }

    if(invalidUID( $username) !== false){
        header("location: ../signup.php?error=invalidUID"); 
        exit(); //stops the script
    }

    

    if(pwdMatch($password , $verify_password) !== false){
        header("location: ../signup.php?error=passwordsdontmatch"); 
        exit(); //stops the script
    }

    if(uidExists($conn, $username) !== false){
        header("location: ../signup.php?error=usernametaken"); 
        exit(); //stops the script
    }

    // if make it down here, means it all ok to create acc

    createUser($conn,$name, $username, $password, $question1, $question2, $question3);






} else {
    header("location: ../signup.php"); 
    exit(); 
}
