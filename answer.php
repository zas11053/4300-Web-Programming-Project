


<!DOCTYPE html>
<html>
    <!--HEAD TAG CONTAINS ALL THE INFO ABOUT THE WEBSITE -->
    <head> 
        <!-- Title of website shown in the tab -->
        <title> MyDateList | Forgot Password</title>
        <link rel ="stylesheet" href ="css/login.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    
    <!-- BODY CONTAINS ALL THE INFO THE USER SEES -->
    <body> 
        <!-- Image code -->
        <div class="box">
            <div  class="lockImg">
            <i class='material-icons' style="font-size:150px; background-color:white"> lock_reset </i>
            <h2> Trouble Logging In? </h2>
            </div> <!--DIV CLASS=TITLEIMAGE-->

            <!-- Prompts user to enter information -->
            <div class="forgot">
                <p> Enter your username and answer</p> 
                <p> the security questions correctly to reset password.</p> 
            </div>

            <!-- Code for the verification questions -->
            <div class="forgot">
                <form action ="includes/verifyquestions.inc.php" method="post">
                <!-- Placeholder is the text in the box you see -->
                <input type ="hidden" name="username" value ="<?php echo $_GET["user"];?>">
                <input type = "text" name="question1" id ="text" placeholder="Q1: What's your childhood nickname?"> <br/> <br/>
                <input type = "text" name="question2" id ="text" placeholder="Q2: What's your favorite movie?"> <br/> <br/>
                <input type = "text" name="question3" id ="text" placeholder="Q3: What city did you grow up in"> <br/> <br/>
                <input type = "submit" name="submit" id ="loginButton" value="Next">
                <br/> <br/>
            </form>
        
            <!-- Checks for invalid information or empty fields -->
            <?php
            if(isset($_GET["error"])){
                if($_GET["error"] == "incorrect"){
                    echo "<p style='color:black'> Sorry. Unable to change your password</p>";
                } else if($_GET["error"] == "emptyInput"){
                    echo "<p style='color:black'> Fill in all fields!</p>";
                } 
            } 
            ?>
          
            <!-- Code for the content below the verification questions -->
            </div>
            <div class="lineOr">
               <h3><span style="background-color:white;">OR </span></h3>
            </div>

            <br/>

            <!-- Link to create a new account -->
            <h4><a href ="./signup.php"> Create New Account</a></h4>

        </div> <!-- DIV CLASS=BOX --->

        <!-- Link to go back to login page -->
        <div class="box2">
            <a href ="./login.php"> Back To Login  </a> 
        </div>
    </body>
</html>