<?php

if(isset($_POST["submit"])) {

    if(invalidUID($username) !== false){
        header("location: ../settings.php?error=invalidUID"); 
        exit(); //stops the script
    }

    if(uidExists($conn, $username) !== false){
        header("location: ../settings.php?error=usernametaken"); 
        exit(); //stops the script
    }
} 

?>