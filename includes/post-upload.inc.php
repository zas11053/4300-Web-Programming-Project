<?php

session_start();
require_once('dbh.inc.php');


if(isset($_POST["submit"])) { // user has submit its signup thru sign-up page
    $file = $_FILES['imgFile']; //gives an assoc array of info of the file
    print_r($file);
    $username = $_POST["username"];
    $postTitle = $_POST["postTitle"];
    $postLocation = $_POST["postLocation"];
    $type = $_POST["type"];
    $description = $_POST["editor1"];

    // will only have a 4 error (meaning no files) if index [0] has error
    $fileError = $_FILES['imgFile']['error'][0];
    echo "fileError[0]:".$fileError;
    echo " username : ".$username;
    echo " Post Title: ".$postTitle;
    echo " post location :".$postLocation;
    echo " post type:" . $type;
    echo " postDescription". $description;


    //count how many ["name"] arrays there are in the $FILES['imgFile]
    $fileCount = count ($_FILES['imgFile']['name']);
    echo "file count : " . $fileCount;

    
    if($fileError===0){ // if no errors== has selected img
        

        if(empty($postTitle)|| empty($postLocation) || empty($description)|| ($type == 0)){
            header("location: ../post.php?error=empty"); 
           //echo "some fields are empty";
            exit();
        } else { // if input not empty --> insert into database 

            //------------------------gets the usersID from database users table
            $sql = "SELECT usersID FROM users WHERE usersUID='$username'";
            $result = mysqli_query($conn, $sql);
            $usersID = mysqli_fetch_assoc($result);
            
            $usersIDNum=$usersID['usersID'];
            echo($usersIDNum); //print out the user'sID
            //---------------------------------------
                    
            $sql = "INSERT INTO `posts`( `usersID`, `title`, `location`, `type`, `description`) VALUES(?,?,?,?,?);";
            $stmt = mysqli_stmt_init($conn);

            if(!mysqli_stmt_prepare($stmt,$sql)){
                echo "SQL FAILED!";
            // exit();
        
            } else {
                mysqli_stmt_bind_param($stmt, "sssss",$usersIDNum,$postTitle, $postLocation, $type,$description);
                mysqli_stmt_execute($stmt);
            }

            //NOW TO INSERT THE IMGS INTO THE DATABASE
            
            // this selects the latest post# which would == to the same post number just entered to database above for title,location,etc
            $sql = "SELECT postID FROM `posts` 
            WHERE usersID =?
            ORDER BY `posts`.`postID`  DESC
            LIMIT 1;";

            if(!mysqli_stmt_prepare($stmt,$sql)){
                echo "SQL FAILED!";
            // exit();

            } else {
                echo "sql not failed--on to uploading imgs to database";
                
                mysqli_stmt_bind_param($stmt, "s",$usersIDNum);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                $postID = mysqli_fetch_all($result, MYSQLI_ASSOC);
                //echo" postID:". $postID[0]['postID']; // print out 1st available ID
                

                
                for($i=0; $i <$fileCount; $i++){

                    //fileName = postID#_img#(i)_name
                    $fileName = $postID[0]['postID']."_".$i."_".$_FILES['imgFile']['name'][$i];
                    $fileDestination = '../uploads/'.$fileName;
                    echo " filename :". $fileName;

                     //INSERTING INTO TABLE THAT HOLD ALL IMAGES FOR THE POST
                     $sql = "INSERT INTO `imgs`( `usersID`, `postID`, `img_dir`) VALUES (?,?,?);";
                     //$stmt = mysqli_stmt_init($conn);

                     if(!mysqli_stmt_prepare($stmt,$sql)){
                         echo "SQL FAILED!";
                     // exit();
                     
                    } else {
                        $fileDestination1 = './uploads/'.$fileName;
                        mysqli_stmt_bind_param($stmt, "sss",$usersIDNum,$postID[0]['postID'], $fileDestination1);
                        mysqli_stmt_execute($stmt);
                        $fileTmpName = $_FILES['imgFile']['tmp_name'][$i];
                            //copies/movies over the image and store in the uploads folder
                        move_uploaded_file($fileTmpName,$fileDestination);
                        echo $fileDestination;
                        echo $fileTmpName;
                    }

                } // for loop of img
                
                header("location: ../mypage.php?uploadsuccess"); // can remove the ?uploadsuccess later if want
                                        
                exit();
                
            }

        } // else in entering stuff into database

    } else {
        //echo "There was an error uploading your file!";
        header("location: ../post.php?error=file");
    }
}