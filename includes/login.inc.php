<?php
if(isset($_POST["submit"])) { //user had submitted thur login page 
    $username = $_POST["username"];
    $password = $_POST["password"];
    
    require_once('dbh.inc.php');
    require_once('functions.inc.php');

      //if users left anything empty
    // any thing beside a false -->error
    if( emptyInputLogin($username, $password) !== false) {
    header("location: ../login.php?error=emptyInput"); 
    exit(); //stops the script
    }


    loginUser($conn, $username, $password);

    /** I am not sure if the cookie should be in this file or the myProfile.php file, but I will change when I ask Dr. Mario */
    if(!isset($_COOKIE[$cookie_name])) {
      echo "Cookie named '". $cookie_name . "' is not set!";        
    } else {
      echo "Cookie '" . $cookie_name . "' is set! <br>";
      echo "Value is: " . $_COOKIE[$cookie_name];
    }
    
    $cookie_name = "user";
    $cookie_value = "user ID";
    if(count($_COOKIE) > 0) {
        echo "Cookies are enabled.";
    } else {
        echo "Cookies are disabled";
        setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); //30 days
        echo "Cookies are now enabled";
    }

} else {
    header("location: ../login.php"); 
    exit(); 
}


    
