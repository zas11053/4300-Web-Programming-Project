<?php
session_start();
//IN THESE FUNCTIONS, RETURN TRUE MEANS THERE IS AN ERROR !

/**This function is to see if all fields were answered  */
function emptyInputSignup($name, $username, $password , $verify_password, $question1, $question2, $question3){
    $result; // will return if it true or false

    // check whether there is data or nah isempty()is a built in php 
    if(empty($name) || empty($username) || empty($password) || empty($verify_password)) { 
        $result = true;

    } else {
        $result=false;
    }
    return $result;
} // emptyInputSignup

// checks if the username is correctly formatted 
function invalidUID($username) {
    $result;

    /** 
     * search algorithm
     *  preg_match is a built in php -- basically we are having it look through the conditons
     * in the [] , looking to see it it contains letters a-z, A-Z, 0-9 (only accepting these characters for username)
    */
    if (!preg_match("/^[a-zA-Z0-9]*$/", $username)) {
        $result = true;

    } else {
        $result=false;
    }
    return $result;


} //invalidUID

// check if the password matches 
function pwdMatch($password , $verify_password) {
    $result;
    if($password !== $verify_password){
        $result = true;

    } else {
        $result=false;
    }
    return $result;
}

// check if the username already exists or nah
// do so, by checking the database 
function uidExists($conn, $username){
    //1st ';' is to close off sql statement, 2nd ';' is for php code
    $sql = "SELECT *  FROM users WHERE usersUid = ?;"; 
    //our prepared statement 
    $stmt = mysqli_stmt_init($conn);

    //USING PREPARED STATEMENTS TO BE MORE SECURE AND PREVENT SQL INJECTIONS

    if(!mysqli_stmt_prepare( $stmt,$sql)) {
        header("location: ../signup.php?error=stmtfailed"); 
        exit(); //stops the script
    }

    // "ss" means submiting 2 strings ("SSS" if submit 3 strings)
    mysqli_stmt_bind_param($stmt, "s", $username );
    mysqli_stmt_execute($stmt);

    $resultData = mysqli_stmt_get_result($stmt);

    // if we are able to get a result back, means that it already exists in the database 
    if($row = mysqli_fetch_assoc($resultData)){ // create variable row while checking true/false
        return $row; // can use this for the login form later 

    } else {
        $result = false;
        return $result;
    }

    mysqli_stmt_close($stmt);
    
} //UIDexists


function createUser($conn,$name, $username, $password, $question1, $question2, $question3){
    //1st ';' is to close off sql statement, 2nd ';' is for php code
    $sql = "INSERT INTO `users`( `usersName`, `usersUID`, `usersPWD`, `securityQuestion1`, `securityQuestion2`, `securityQuestion3`,`pfp_img_dir`) VALUES (?,?,?,?,?,?,?);"; //'?' ARE PLACEHOLDERS FOR DATA 
    //our prepared statement 
    $stmt = mysqli_stmt_init($conn);

    //USING PREPARED STATEMENTS TO BE MORE SECURE AND PREVENT SQL INJECTIONS

    if(!mysqli_stmt_prepare( $stmt,$sql)) {
        header("location: ../signup.php?error=stmtfailed"); 
        exit(); //stops the script
    }

    // hashs the password to make it more secure 
    $hashedPwd = password_hash($password, PASSWORD_DEFAULT);
    $default_img ='./images/DEFAULT.jpg';


    // BINDING = REPLACING THSOE ? WITH VALUES 
    mysqli_stmt_bind_param($stmt, "sssssss", $name, $username, $hashedPwd, $question1, $question2, $question3, $default_img);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
   
    header("location: ../login.php?error=none"); 
    exit(); //stops the script
    
    
}


/**This function is to see if all fields were answered  */
function emptyInputLogin( $username, $password ){
    $result; // will return if it true or false

    // check whether there is data or nah isempty()is a built in php 
    if(empty($username) || empty($password) ) { 
        $result = true;

    } else {
        $result=false;
    }
    return $result;
} // emptyInputSignup

function loginUser($conn, $username, $password){
    // can use username twice as param cuz itll either be username 
    $uidExists = uidExists($conn, $username, $username);

    if($uidExists === false){
        header("location: ../login.php?error=wronglogin"); 
        exit(); //stops the script
    }

    $hashedPwd = $uidExists["usersPWD"];

    //if two password matches== ok can login
    $checkPwd = password_verify($password,$hashedPwd);

    if ($checkPwd=== false ){
        header("location: ../login.php?error=wronglogin"); 
        exit(); //stops the script
    } else  if ($checkPwd=== true ){
        session_start(); //start sessions and session variable are lso super globals
        $_SESSION["usersid"] = $uidExists["usersid"];
        $_SESSION["usersUID"] = $uidExists["usersUID"];
        header("location: ../home.php"); 
        exit(); //stops the script
    }



}

/**verify the security questions answers */
function verifyAnswers($conn, $username, $question1,$question2, $question3){
    // can use username twice as param cuz itll either be username
    $uidExists = uidExists($conn, $username, $username);

    $q1 = $uidExists["securityQuestion1"];
    $q2 = $uidExists["securityQuestion2"];
    $q3 = $uidExists["securityQuestion3"];

    if ($q1 === $question1 &&$q2 === $question2 &&$q3 === $question3  ){
        header("location: ../newPassword.php?user=" . $username); 
        exit();
    } else {
        header("location: ../login.php?error=Unable_to_verify_account"); 
        exit();
    }



}

function emptyField($username){
    $result; // will return if it true or false

    // check whether there is data or nah isempty() is a built in php 
    if(empty($username)) { 
        $result = true;

    } else {
        $result=false;
    }
    return $result;
} // emptyInputSignup

function newPassword ($conn,$username, $password){
    $sql = "UPDATE `users` SET usersPWD = ? WHERE usersUID= ?";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        echo "There was an error!";
        exit();

    } else {
        $newHashedPWD = password_hash($password, PASSWORD_DEFAULT);
        mysqli_stmt_bind_param($stmt, "ss", $newHashedPWD,$username);
        mysqli_stmt_execute($stmt);
        header("location: ../login.php"); 
        exit();
    }

}


function updateUsername($conn,$username, $usersID){
    $sql = "UPDATE `users` SET usersUID = ? WHERE usersID= ?";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt,$sql)){
        echo "There was an error!";
        exit();

    } else {
        mysqli_stmt_bind_param($stmt, "ss", $username,$usersID);
        mysqli_stmt_execute($stmt);
        $_SESSION["usersUID"]=$username; // need to update the sessions array or else will have null array errors
        header("location: ../settings.php?error=none"); 
        exit();
    }

}


