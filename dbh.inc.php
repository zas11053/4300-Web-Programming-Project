<?php
    //sets up a database called myDateList
    $dsn = 'localhost';
    $uname = 'root';
    $password = '';
    $dbname = 'myDateList';

    $conn = mysqli_connect($dsn, $uname, $password, $dbname);
    
    if(!$conn) {
        die("Connection to the database failed: " . mysqli_connect_error());
    }
?>