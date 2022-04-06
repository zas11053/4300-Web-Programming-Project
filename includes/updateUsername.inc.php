<?php

if(isset($_POST["submit"])) {
    $username = $_POST["username"];
    $usersID = $_POST["userID"];
    echo $username;
    echo $usersID;
    
    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

    
    if( (emptyField($username)!== false)){
        header("location: ../settings.php?error=empty"); 
        exit(); //stops the script
    }

    if(invalidUID($username) !== false){
        header("location: ../settings.php?error=invalidUID"); 
        exit(); //stops the script
    }

    if(uidExists($conn, $username) !== false){
        header("location: ../settings.php?error=usernametaken"); 
        exit(); //stops the script
    }
    updateUsername($conn,$username, $usersID);

} 

?>