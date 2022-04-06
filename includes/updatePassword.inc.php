<?php

if(isset($_POST["submit"])) {
    $username = $_POST["username"];
    $cpassword = $_POST["cpassword"]; // current password
    $npassword = $_POST["npassword"]; // new password
    $vpassword = $_POST["vpassword"]; // verify password
    echo $cpassword;
    echo $npassword;
    
    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

    
    if((emptyField($username) !== false)){ //check if any of the textfields are empty
        header("location: ../settings.php?error=empty"); 
        exit(); //stops the script
    }

    if(pwdMatch($npassword, $vpassword) !== false){ //check if the new password and the verify password are the same
        header("location: ../settings.php?error=invalidUID"); 
        exit(); //stops the script
    }

    //Need to include an error message if the textboxes are left empty or does isset do this?

    // Should we make one for if the password exists already??
    /**if(uidExists($conn, $username) !== false){
        header("location: ../settings.php?error=usernametaken"); 
        exit(); //stops the script
    } **/

    newPassword($conn, $username, $vpassword); //updates user's password to new/verified password

} 

?>