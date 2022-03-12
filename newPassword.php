
<!DOCTYPE html>
<html>
    <!--HEAD TAG CONTAINS ALL INFO ABOUT THE WEBSITE -->
    <head> 
        <!--Title of website shown in the tab-->
        <title> MyDateList | New Password</title>
        <link rel ="stylesheet" href ="css/login.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <!---BODY CONTAIN ALL INFO USER SEE -->
    <body> 
        <div class="box">
            <div  class="lockImg">
            <i class='material-icons' style="font-size:150px; background-color:white"> lock_reset </i>
            <h2> Trouble Logging In? </h2>
            </div> <!--DIV CLASS=TITLEIMAGE-->

            <div class="forgot">
                
                <p>Enter new password</p> 
               
            </div>
            <div class="forgot">
                <form action ="includes/newPassword.inc.php" method="post">
                <!--Placeholder is the text in the box you see -->
                <input type ="hidden" name="username" value ="<?php echo $_GET["user"];?>">
                <input type ="password" name="password" id="text" placeholder="New Password "> <br/> <br/>
                <input type ="password" name="verify_password" id="text" placeholder="Verify Password "> <br/> <br/>
                <input type = "submit" name="submit" id ="loginButton" value="Login">
                <br/> <br/>
            </form>
            
         <?php
         if(isset($_GET["error"])){
             if($_GET["error"] == "emptyInput"){
                echo "<p style='color:black'> Fill in all fields!</p>";
            } else if ($_GET["error"] == "passwordsdontmatch"){
                echo "<p style='color:black'> Passwords need to match! </p>";
         }
        } 
         ?>
          



            </div>
            
            <div class="lineOr">
               <h3><span style="background-color:white;">OR </span></h3>
            </div>

            <br/>
            <h4><a href ="./signup.php"> Create New Account</a></h4>

         </div> <!--DIV CLASS=BOX--->

         <div class="box2">
             <a href ="./login.php"> Back To Login  </a> 
         </div>
   


    </body>
</html>