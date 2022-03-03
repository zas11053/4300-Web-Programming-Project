<?php
    function emptyInputSignup($name, $username, $pwd, $pwdRepeat) {
        $result;
        if (empty($name) || empty($username) || empty($pwd) || empty($pwdRepeat)) {
            $result = true;
        } else {
            $result = false;
        }
        return $result;
    }

    function invalidUID($username) {
        $result;
        if (!preg_match("/^[a-zA-Z0-9]*$/", $username)) {
            $result = true;
        } else {
            $result = false;
        }
        return $result;
    }

    function passwordMatch($pwd, $pwdRepeat) {
        $result;
        if ($pwd !== $pwdRepeat) {
            $result = true;
        } else {
            $result = false;
        }
        return $result;
    }

    function uidExists($conn, $username) {
        $sql = "SELECT * FROM users WHERE usersUID = ?;";
        $stmt = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("location: ../signup.php?error=stmtFailed");
            exit();
        }

        mysqli_stmt_bind_param($stmt, "s", $username);
        mysqli_stmt_execute($stmt);

        $resultData = mysqli_stmt_get_result($stmt);

        if ($row = mysqli_fetch_assoc($resultData)) {
            return $row;
        } else {
            $result = false;
            return $result;
        }

        mysqli_stmt_close($stmt);
    }

    function createUser($conn, $name, $username, $pwd) {
        $sql = "INSERT INTO users (usersName, usersUID, usersPWD) VALUES (?, ?, ?);";
        $stmt = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("location: ../signup.php?error=stmtFailed");
            exit();
        }

        $hashedPWD = password_hash($pwd, PASSWORD_DEFAULT);

        mysqli_stmt_bind_param($stmt, "sss", $name, $username, $hashedPWD);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
        header("location: ../signup.php?error=none");
        exit();
    }

    function emptyInputLogin($username, $pwd) {
        $result;
        if (empty($username) || empty($pwd)) {
            $result = true;
        } else {
            $result = false;
        }
        return $result;
    }

    function loginUser($conn, $username, $pwd) {
        $uidExists = uidExists($conn, $username);

        if ($uidExists === false) {
            header("location: ../login.php?error=wrongLogin");
            exit();
        }

        $pwdHashed = $uidExists["usersPWD"];
        $checkPWD = password_verify($pwd, $pwdHashed);

        if ($chechPWD === false) {
            header("location: ../login.php?error=wrongLogin");
            exit();
        } else if ($checkPWD === true) {
            session_start();
            $_SESSION["usersID"] = $uidExists["usersID"];
            $_SESSION["usersUID"] = $uidExists["usersUID"];
            header("location: ../index.php");
            exit();
        }
    }