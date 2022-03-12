
<!DOCTYPE html>
<html>
    <!--HEAD TAG CONTAINS ALL INFO ABOUT THE WEBSITE -->
    <head> 
        <!--Title of website shown in the tab-->
        <title> MyDateList | Forgot Password</title>
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
                
                <p> Enter your username and answer</p> 
                <p> the security questions correctly to reset password.</p> 
            </div>
            <div class="forgot">
                <form action ="includes/verifyusername.inc.php" method="post">
                <!--Placeholder is the text in the box you see -->
                <input type = "text" name="username" id ="text" placeholder="username"> <br/> <br/>
                <input type = "submit" name="submit" id ="loginButton" value="Next">
                <br/> <br/>
            </form>
            
         <?php
         if(isset($_GET["error"])){
             if($_GET["error"] == "nousername"){
                 echo "<p style='color:black'> Username does not exist!</p>";
             } else if($_GET["error"] == "emptyInput"){
                echo "<p style='color:black'> Enter a username!</p>";
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