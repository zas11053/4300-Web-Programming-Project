<?php

session_start();
require_once('dbh.inc.php');


if(isset($_POST["submit"])) { // user has submit its signup thru edit page
   
    
    $postID = $_POST["postID"];
    $postTitle = $_POST["postTitle"];
    $postLocation = $_POST["postLocation"];
    $type = $_POST["type"];
    $description = $_POST["editor1"];
/*
    echo "postID:". $postID . "\n";
    echo "title:". $postTitle . "\n";
    echo "location:". $postLocation . "\n";
    echo "type:". $type . "\n";
    echo "description:". $description . "\n";
    */

    $sql="UPDATE `posts` SET `title`= '$postTitle',`location`= '$postLocation',`type`= '$type' ,`description`= '$description'  WHERE postID='$postID' ;";
    mysqli_query($conn, $sql);
    //go to the post view page
    header("location: ../viewPost.php?ID=$postID"); //change this later 
   


} else {
    header("location: ../myPage.php"); //change this later 
}