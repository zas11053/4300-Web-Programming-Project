<?php
session_start();
require_once('includes/dbh.inc.php');

if(isset($_POST['submit'])){
    //$_FILEs is a super variable that get all info on files. ['file' b'c name=file ]
    $file = $_FILES['file']; //gives an assoc array of info of the file

    print_r($file);
    /**THE FOLLOWING VARIABLES IS TO EXTRACT ALL THE INFO FROM THE FILE ASSOC ARRAY  */
    $fileName= $_FILES['file']['name'];
    //temp location of the file
    $fileTmpName = $_FILES['file']['tmp_name'];
    //remove all the spacing in the file name--- in some brower- img won't show if img name has space
    $fileTmpName = str_replace(' ', '', $fileTmpName);
    $fileSize = $_FILES['file']['size'];
    $fileError = $_FILES['file']['error'];
    $fileType = $_FILES['file']['type'];

    //explode is like a string split, split string at '.' (string id the $fileName)
    // gives an associative array where [0]=filename [1]=extention type
    $fileExt = explode('.', $fileName);
    print_r($fileExt);

    /**important to make it lowercase cuz sometimes it uppercase
     end() gets the last piece of data from array ==>[1]*/
    $fileActualExt = strtolower(end($fileExt));

    //array of the files that will be accepted 
    $allowed = array('jpg', 'jpeg', 'png');

    //check if our file extension is in our allowed array
    if(in_array($fileActualExt,$allowed)){
        //no error===0
        if($fileError===0){
            if($fileSize<1000000){ 
                
                $username=$_SESSION["usersUID"];
                $sql = "SELECT usersID FROM users WHERE usersUID='$username'";
                $result = mysqli_query($conn, $sql);
                $usersID = mysqli_fetch_assoc($result);
                $usersIDNum=$usersID['usersID'];
                //profile pic will be labeled [userID]_pfp.unique#.[fileExtention]
                $fileNameNew = $usersIDNum."_"."pfp".uniqid('',true).".".$fileActualExt;
                $fileDestination = './uploads/'.$fileNameNew;
            
                
                //GET THE CURRENT PROFILE PICTURE IF IT'S NOT DEFAULT SO IT CAN BE DELETED FROM THE FOLDER 
                $oldImgDir;
            $sql = "SELECT `pfp_img_dir` FROM `users` WHERE usersUID =?";
            $stmt = mysqli_stmt_init($conn);
                if(!mysqli_stmt_prepare($stmt,$sql)){
                    echo "SQL FAILED!";
                // exit();
                
                } else {
                    mysqli_stmt_bind_param($stmt, "s",$username);
                    mysqli_stmt_execute($stmt);
                    $result = mysqli_stmt_get_result($stmt);
                    $userpfp = mysqli_fetch_all($result, MYSQLI_ASSOC);
                    //echo $userpfp[0]['pfp_img_dir']; // print out 1st available ID
                    $old_pfp_dir = $userpfp[0]['pfp_img_dir'];//gets current pfp 

                    // ONLY DELETE IF THE PFP IS NOT THE DEFAULT IMG
                    if($old_pfp_dir !== "./images/DEFAULT.jpg"){
                        if(unlink($old_pfp_dir)){ //delete the current picture from the uploads folder if 
                            echo "file was deleted";
                        }
                    }
                }

                $sql = "UPDATE users SET pfp_img_dir = ? WHERE usersUID= ?";
                $stmt = mysqli_stmt_init($conn);
                if(!mysqli_stmt_prepare($stmt,$sql)){
                    echo "There was an error!";
                    exit();

                } else {
                    // echo $username;
                    mysqli_stmt_bind_param($stmt, "ss", $fileDestination,$username);
                    mysqli_stmt_execute($stmt);
                        
                    //copies/movies over the image and store in the uploads folder
                    move_uploaded_file($fileTmpName,$fileDestination);

                    header("Location: settings.php?error=uploadsuccess"); // can remove the ?uploadsuccess later if want
                        
                    exit();
                }
            
            } else {
                header("Location: settings.php?error=toobig");
            }

        } else {
            header("Location: settings.php?error=empty");
        }

    } else {
        header("Location: settings.php?error=wrongtype");
    }
}else {
    header("Location: home.php");
}