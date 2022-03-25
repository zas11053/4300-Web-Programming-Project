
<!DOCTYPE html>
<html>
    <!-- HEAD TAG CONTAINS ALL THE INFO ABOUT THE WEBSITE -->
    <head> 
        <!-- Title of website shown in the tab -->
        <title> MyDateList | Sign Up </title>
        <link rel ="stylesheet" href ="css/login.css">
    </head>

    <!-- BODY CONTAINS ALL THE INFO THE USER SEES -->
    <body> 
        <!-- Image code -->
        <div class="box">
            <div class="titleImage">
                <img src="./images/MyDateList.png" alt="title font image">
            </div> <!--DIV CLASS=TITLEIMAGE-->

            <!-- Prompts user to enter information -->
            <div class="login">
                <form action ="includes/signup.inc.php" method="post">
                <!--Placeholder is the text in the box you see -->
                <input type = "text" name="name" id ="text" placeholder="Full Name"> <br/> <br/>
                <input type = "text" name="username" id ="text" placeholder="Username"> <br/> <br/>
                <input type ="password" name="password" id="text" placeholder="Password "> <br/> <br/>
                <input type ="password" name="verify_password" id="text" placeholder="Verify Password "> <br/> <br/>
                <input type = "text" name="question1" id ="text" placeholder="Q1: What's your childhood nickname?"> <br/> <br/>
                <input type = "text" name="question2" id ="text" placeholder="Q2: What's your favorite movie?"> <br/> <br/>
                <input type = "text" name="question3" id ="text" placeholder="Q3: What city did you grow up in"> <br/> <br/>
                <input type = "submit" name="submit" id ="loginButton" value="Sign Up">
                <br/> <br/>
            </form>
            
         <!-- Checks for invalid information or empty fields -->   
         <?php
         if(isset($_GET["error"])){
             if($_GET["error"] == "emptyInput"){
                 echo "<p> Fill in all fields! </p>";
             } else if ($_GET["error"] == "invalidUID"){
                echo "<p>Not a proper username! Only letters and numbers </p>";
             }else if ($_GET["error"] == "passwordsdontmatch"){
                echo "<p>Passwords need to match! </p>";
             } else if ($_GET["error"] == "usernametaken"){
                echo "<p>Username taken. Pick a different one! </p>";
             } 
         }
         ?>

        </div>
            
        </div> <!--DIV CLASS=BOX--->

         <!-- Link to go to log in page -->
         <div class="box2">
             <p> Have an account? <a href ="./login.php"> Log In </a> </p>
         </div>
    </body>
</html>