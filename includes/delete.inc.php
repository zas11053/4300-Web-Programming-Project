<?php 

require_once('dbh.inc.php');
// if pressed the delete button, will delete the info from database 
if(isset($_POST["postID"])) {
    $postID =$_POST["postID"];

    $sql = "SELECT * FROM `imgs` WHERE postID='$postID' ";
    $result = mysqli_query($conn, $sql);
    //fetch the resulting rows as an array
    $images = mysqli_fetch_all($result, MYSQLI_ASSOC);
    
     foreach ($images as $image){
         $img =  ".".$image['img_dir'];
         echo "THE IMG IS". $img;
        if(unlink($img)){
            echo "deleted img";
        }
     }
     

    mysqli_query($conn, "DELETE FROM `posts` WHERE postID= $_POST[postID]"); //delete post from database!!
    mysqli_query($conn, "DELETE FROM `imgs` WHERE postID= $_POST[postID]"); //delete all imgs related to that post from database!!
    header("Location: ../mypage.php?deleted");
}