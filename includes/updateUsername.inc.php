<?php

if(isset($_POST["submit"])) {
    $username = $_POST["username"];
    $usersID = $_POST["userID"];
    echo $username;
    echo $usersID;
    
    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

    // check for empty fields
    if((emptyField($username)!== false)){
        header("location: ../settings.php?error=empty"); 
        exit(); //stops the script
    }

    //check if username is valid
    if(invalidUID($username) !== false){
        header("location: ../settings.php?error=invalidUID"); 
        exit(); //stops the script
    }

    //check if username already exisst 
    if(uidExists($conn, $username) !== false){
        header("location: ../settings.php?error=usernametaken"); 
        exit(); //stops the script
    }

    //if get down here, can successfuly update username
    updateUsername($conn,$username, $usersID);

} 

?>