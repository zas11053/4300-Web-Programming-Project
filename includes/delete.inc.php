<?php 

require_once('dbh.inc.php');
// if pressed the delete button, will delete the info from database 
if(isset($_POST["postID"])) {

    mysqli_query($conn, "DELETE FROM `posts` WHERE postID= $_POST[postID]"); //delete post from database!!
    mysqli_query($conn, "DELETE FROM `imgs` WHERE postID= $_POST[postID]"); //delete all imgs related to that post from database!!
    header("Location: ../mypage.php?deleted");
}