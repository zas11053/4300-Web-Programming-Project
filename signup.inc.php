<?php
    if (isset($_POST["submit"])) {
        
        $name = $_POST["name"];
        $username = $_POST["uid"];
        $pwd = $_POST["pwd"];
        $pwdRepeat = $_POST["pwdRepeat"];

        require_once('dbh.inc.php');
        require_once('functions.inc.php');

        if (emptyInputSignup($name, $username, $pwd, $pwdRepeat) !== false) {
            header("location: ../signup.php?error=emptyInput");
            exit();
        }
        if (invalidUID($username) !== false) {
            header("location: ../signup.php?error=invalidUID");
            exit();
        }
        if (passwordMatch($pwd, $pwdRepeat) !== false) {
            header("location: ../signup.php?error=passwordsDontMatch");
            exit();
        }
        if (uidExists($conn, $username) !== false) {
            header("location: ../signup.php?error=usernameTaken");
            exit();
        }

        createUser($conn, $name, $username, $pwd);

    } else {
        header("location: ../signup.php");
        exit();
    }