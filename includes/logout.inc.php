<?php
//gotta start a session to delete one
session_start();
session_unset();
session_destroy();

header("location: ../header.php"); 
    exit(); //stops the script