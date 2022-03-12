<?php
if(isset($_POST["submit"])) { //user had submitted thur login page 
    $username =  $_POST["username"];
    $question1 = $_POST["question1"];
    $question2 = $_POST["question2"];
    $question3 = $_POST["question3"];

    require_once('dbh.inc.php');
    require_once('functions.inc.php');
    if( (emptyField($username )!== false)||(emptyField($question1) !== false) || (emptyField($question2) !== false)|| (emptyField($question3) !== false)){
        header("location: ../answer.php?error=emptyInput&user=".$username); 
        exit(); //stops the script
    }
    verifyAnswers($conn, $username, $question1,$question2, $question3);

   
}
