<?php
session_start();
 require_once('dbh.inc.php');
 if(isset($_POST["postID"])){
    
    $postID = $_POST['postID']; //starting value for the SQL LIMIT 
    $action = $_POST['action']; // how many Post to load 
    echo $postID;
    echo $action;
    echo "hi tina liu";

            
    $username=$_SESSION["usersUID"];
    $sql = "SELECT usersID FROM users WHERE usersUID='$username'";
    $result = mysqli_query($conn, $sql);
    $usersID = mysqli_fetch_assoc($result);
    $usersIDNum=$usersID['usersID']; // the userID of the current user 

    
    //SQL: LIMIT #1, #2 == start from index[#1] and get #2 amount of rows 
    $sql = "SELECT* FROM `posts`WHERE usersID = '$usersIDNum' 
    ORDER BY `posts`.`postID`";

    //make query & get result
    $result = mysqli_query($conn, $sql);

    //gets the number of rows in post table= amount of posts=should equal $limit
    $postAmount = mysqli_num_rows($result);

    //fetch the resulting rows as an array
    $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
    



    
    switch($action) {
        case 'save':
            $sql = "INSERT INTO `fav`( `postID`, `usersIDS`) VALUES ($postID,$usersIDNum)";
            $sql2 = "UPDATE `posts` SET `savedAmount`=savedAmount +1  WHERE postID=$postID"; //increment amount saved by 1
            break;
        case 'unsave':
            $sql = "DELETE FROM `fav` WHERE postID=$postID  AND usersIDS=$usersIDNum";
            $sql2 = "UPDATE `posts` SET `savedAmount`=savedAmount -1  WHERE postID=$postID"; //subtracted by 1 as the post is no longer saved 
            break;
        default:
            break;
    } //switch
    
    //exceute query
    mysqli_query($conn, $sql);
    mysqli_query($conn, $sql2);
    exit(0);


} 




?>
