<?php

session_start();

?>

<!DOCTYPE html>
<html>
    <head>
        <title> MyDateList </title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Old+Standard+TT&display=swap" rel="stylesheet">
    </head>
    <body>
         <header>
             <div class="navbar" id="myHeader">
             
                <div class="left">
                    <ul>
                        <li id="home"> <a href ="./home.php"> Home </a></li>

                        <li> <a href ="./about.php"> About </a></li>
                    </ul>
                </div>

                <div class="center">
                    <ul>
                     <li class ="titleImage"><a href ="./home.php"><img src="./images/MyDateList.png" alt="title font image"></a></li>
                    </ul>
                </div>
                   
                <div class="right">
                 <ul>
                     <?php
                     // check if user is logged in or nah
                     if(isset($_SESSION["usersUID"])){
                        require_once('includes/dbh.inc.php');
                        $username=$_SESSION["usersUID"];
                        $sql = "SELECT pfp_img_dir FROM users WHERE usersUID='$username'";
                        $result = mysqli_query($conn, $sql);
                        $image_dir = mysqli_fetch_assoc($result);
                        
                        $img=$image_dir['pfp_img_dir'];
                       // echo "<img src= '$img'>";

                       //Set cookie for user
                       $cookie_name = "user";
                       $cookie_value = "userID";
                       if(count($_COOKIE) > 0) {
                           //echo "Cookies are enabled.";
                       } else {
                           //echo "Cookies are disabled";
                           setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); //30 days
                           //echo "Cookies are now enabled";
                       }
                       echo "<li ><a href ='#'> <img class='nav_avatar' src= '$img' alt ='profile_pic'> </a>
                                <ul>
                                <li> <a href ='mypage.php'> My Page </a></li>
                                <li> <a href ='settings.php'> Settings </a></li>
                                <li> <a href = 'includes/logout.inc.php'> Log Out </a></li>
                                </ul>
                       
                            </li>";
                            
                       echo "<li id = fav><a href ='favorites.php'> <i class='material-icons'> favorite_border </i></a></li>";
                        
                       echo "<li id=post><a href ='post.php'> <i class='material-icons'> add_to_photos </i></a> </li>";

                     } else {
                        echo" <li id=login> <a href ='login.php'> Login </a></li>";

                        echo" <li id=signup> <a href ='signup.php'> Sign Up </a></li>";
                          
                     }
                    ?>
                    </ul>
                </div>
          
            </div>
        </header>
