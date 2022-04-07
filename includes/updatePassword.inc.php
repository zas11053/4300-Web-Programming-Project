<?php

if(isset($_POST["submit"])) {
    $username = $_POST["username"];
    $cpassword = $_POST["cpassword"]; // current password
    $npassword = $_POST["npassword"]; // new password
    $vpassword = $_POST["vpassword"]; // verify password
    //echo $cpassword;
    //echo $npassword;
    
    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

    
    if((emptyField($cpassword) || emptyField($npassword) || emptyField($vpassword) !== false)){ //check if any of the textfields are empty
        header("location: ../settings.php?error=empty"); 
        exit(); //stops the script
    }

    //Need to check if current password is the actual current password

    setting_checkPWD($conn, $username, $cpassword, $npassword, $vpassword); //updates user's password to new/verified password

} 

?>