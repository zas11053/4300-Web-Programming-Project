<?php
if(isset($_POST["submit"])) { //user had submitted thur login page 
    $username = $_POST["username"];
    $password = $_POST["password"];
    $verify_password = $_POST["verify_password"];

    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

    //checks for empty fields 
    if( (emptyField($username )!== false)||(emptyField($password) !== false) || (emptyField($verify_password) !== false)){
        header("location: ../newPassword.php?error=emptyInput&user=".$username); 
        exit(); //stops the script
    }

    //check if pwd matches
    if(pwdMatch($password , $verify_password) !== false){
        header("location: ../newPassword.php?error=passwordsdontmatch&user=".$username);  
        exit(); //stops the script
    }

    //sets the new password -> updating databse 
    newPassword ($conn, $username, $password);


} else {
    header("location: ../login.php"); 
    exit(); 
}
