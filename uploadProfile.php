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
    $fileSize = $_FILES['file']['size'];
    $fileError = $_FILES['file']['error'];
    $fileType = $_FILES['file']['type'];

//explode is like a string split, split string at '.' (string id the $fileName)
// gives an associative array where [0]=filename [1]=extention type
$fileExt = explode('.', $fileName);
print_r($fileExt);

/**important to make it lowercase cuz sometimes it uppercase
 end() gets the last pieec of data from array ==>[1]*/
$fileActualExt = strtolower(end($fileExt));

//array of the files that will be accepted 
$allowed = array('jpg', 'jpeg', 'png');

//check if our file extension is in our allowed array
if(in_array($fileActualExt,$allowed)){
    //no error===0
    if($fileError===0){
        if($fileSize<1000000){ 
            //use file a unique code (won't repeat) so each image file name is different and wont have cases where 2 images have same name 
            $fileNameNew = uniqid('',true).".".$fileActualExt;
            $fileDestination = './uploads/'.$fileNameNew;
            //copies/movies over the image and store in the uploads folder
            move_uploaded_file($fileTmpName,$fileDestination);
            
        
            $sql = "UPDATE users SET pfp_img_dir = ? WHERE usersUID= ?";
            $stmt = mysqli_stmt_init($conn);
            if(!mysqli_stmt_prepare($stmt,$sql)){
                echo "There was an error!";
                exit();
        
            } else {
                $username=$_SESSION["usersUID"];
                echo $username;
                mysqli_stmt_bind_param($stmt, "ss", $fileDestination,$username);
                mysqli_stmt_execute($stmt);
                header("Location: account.php?uploadsuccess");
                
                exit();
            }
            
           




            
        } else {
            echo "You file is too big!";
        }

    } else {
        echo "There was an error uploading your file!";
    }

} else {
    echo "You cannot upload files of this type!";
}
}