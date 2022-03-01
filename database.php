<?php
    //sets up a database called myDateList
    $dsn = 'mysql:host=localhost;dbname=myDateList';
    $username = 'root';
    $password = '';
    $dbname = 'myDateList';

    //catches PDOException if the database does not work
    try {
        $db = new PDO($dsn, $username, $password, $dbname); //maybe use mysqli instead?
    } catch (PDOException $e) {
        $error_message = $e -> getMessage();
        echo '<p> Unable to connect to the database: ' .$error;
        exit();
    }
?>