<?php
//gotta start a session to delete one
session_start();
session_unset();
session_destroy();

header("location: ../home.php"); 
    exit(); //stops the script