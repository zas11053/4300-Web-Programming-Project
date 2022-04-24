<?php

// Starts the user's session
session_start();

?>

<!DOCTYPE html>
<html>
    <!-- HEAD TAG CONTAINS ALL THE INFO ABOUT THE WEBSITE -->
    <head>
        <title> MyDateList </title>
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/post.css">
        <link rel="stylesheet" href="css/settings.css">
        <link rel="stylesheet" href="css/myPage.css">
        <link rel ="stylesheet" href ="css/home.css">
        <link rel="stylesheet" href="css/viewPost.css">
        <link rel="stylesheet" href="css/fav.css">
        <script src="https://cdn.ckeditor.com/4.18.0/full/ckeditor.js"></script> <!--script for ckeditor-->
      
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Old+Standard+TT&family=Satisfy&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/05fc4fce4b.js" crossorigin="anonymous"></script>
    </head>

    <!-- BODY CONTAINS ALL THE INFO THE USER SEES -->
    <body >
         <header>
             <!-- Left side of the navigation bar links -->
             <div class="navbar" id="myHeader">
             
                <div class="left">
                    <ul>
                        <li id="home"> <a href ="./home.php"> Home </a></li>

                        <li id="about_header"> <a href ="./about.php"> About </a></li>
                    </ul>
                </div>

                <!-- Center 'MyDateList' cursive picture -->
                <div class="center">
                    <ul>
                     <li class ="titleImage"><a href ="./home.php"><img src="./images/MyDateList.png" alt="title font image"></a></li>
                    </ul>
                </div>
                   
                <!-- Right side of the navigation bar links -->
                <div class="right">
                 <ul>
                     <?php
                     // Checks if user is logged in or not
                     if(isset($_SESSION["usersUID"])){
                        require_once('includes/dbh.inc.php');
                        $username=$_SESSION["usersUID"];
                        $sql = "SELECT pfp_img_dir FROM users WHERE usersUID='$username'";
                        $result = mysqli_query($conn, $sql);
                        $image_dir = mysqli_fetch_assoc($result);
                        
                        $img=$image_dir['pfp_img_dir'];
                       // echo "<img src= '$img'>";

                       //Make cookie for 30 days for each user {Z.S | 3.22.2022}
                       $cookie_name = "user";
                       $cookie_value = "userID";
                       // Check if Cookie is set for user so multiple are not set {Z.S | 3.22.2022}
                       if(count($_COOKIE) > 0) {
                           //echo "Cookies are enabled.";
                       } else {
                           //echo "Cookies are disabled";
                           // Create cookie {Z.S | 3.22.2022}
                           setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); //30 days
                           //echo "Cookies are now enabled";
                       }

                       // Links that a logged-in user will see
                       echo "<li ><a href ='#'> <img class='nav_avatar' src= '$img' alt ='profile_pic'> </a>
                                <ul>
                                <li> <a href ='mypage.php'> My Page </a></li>
                                <li> <a href ='settings.php'> Settings </a></li>
                                <li> <a href = 'includes/logout.inc.php'> Log Out </a></li>
                                </ul>
                       
                            </li>";
                            
                       echo "<li id = fav><a href ='favorites.php'> <i class='material-icons'> favorite_border </i></a></li>";
                        
                       echo "<li id=post><a href ='post.php'> <i class='material-icons'> add_to_photos </i></a> </li>";

                       // Links that a guest or someone not logged in will see
                     } else {
                        echo" <li id=login> <a href ='login.php'> Login </a></li>";

                        echo" <li id=signup> <a href ='signup.php'> Sign Up </a></li>";
                          
                     }
                    ?>
                    </ul>
                </div>
          
            </div>
        </header>
