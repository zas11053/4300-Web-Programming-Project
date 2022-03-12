
<!DOCTYPE html>
<html>
    <!--HEAD TAG CONTAINS ALL INFO ABOUT THE WEBSITE -->
    <head> 
        <!--Title of website shown in the tab-->
        <title> MyDateList | Log In</title>
        <link rel ="stylesheet" href ="css/login.css">
    </head>
    <!---BODY CONTAIN ALL INFO USER SEE -->
    <body> 
        <div class="box">
            <div class="titleImage">
                <img src="./images/MyDateList.png" alt="title font image">
            </div> <!--DIV CLASS=TITLEIMAGE-->


            <div class="login">
                <form action ="includes/login.inc.php" method="post">
                <!--Placeholder is the text in the box you see -->
                <input type = "text" name="username" id ="text" placeholder="Username "> <br/> <br/>
                <input type ="password" name="password" id="text" placeholder="Password "> <br/> <br/>
                <input type = "submit" name="submit" id ="loginButton" value="Log In">
                <br/> <br/>
            </form>

              
         <?php
         if(isset($_GET["error"])){
             if($_GET["error"] == "emptyInput"){
                 echo "<p> Fill in all fields! </p>";
             } else if ($_GET["error"] == "wronglogin"){
                echo "<p> Incorrect username or password </p>";
             } else if ($_GET["error"] =="Unable_to_verify_account"){
                echo "<p> Unable to change password.</p>";
             }else if ($_GET["error"] == "none"){
                echo "<p> You have signed up </p>";
             }
         }
         ?>


            </div>
            
            <div class="lineOr">
               <h3><span style="background-color:white;">OR </span></h3>
            </div>

            <br/>
            <h4><a href ="./forgotPassword.php"> Forgot Password?</a></h4>

         </div> <!--DIV CLASS=BOX--->

         <div class="box2">
             <p> Don't have an account? <a href ="./signup.php"> Sign up </a> </p>
         </div>
   

    


    </body>
</html>