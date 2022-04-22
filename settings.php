<?php
    include_once 'header.php'; // includes the header
    require_once('includes/dbh.inc.php'); // includes the database

    // gets the username from phpmyadmin
    $username=$_SESSION["usersUID"]; 
    $sql = "SELECT usersID FROM users WHERE usersUID='$username'";
    $result = mysqli_query($conn, $sql);
    $usersID = mysqli_fetch_assoc($result);
    $usersIDNum=$usersID['usersID'];

?>

<div class="settingBody">
    <div class="myAccount">
        <div class="settingLinks">
            <h1> MY ACCOUNT </h1><br/> <!-- big title -->
            
            <!-- list of links -->
            <ul style="list-style: none; line-height: 300%;">
            <li><a href =settings.php style =" text-decoration-line: underline;text-decoration-style: solid; text-decoration-thickness: 1px;"> Edit Profile </a></li>
            <li><a href =mypage.php> My Page </a></li>
            <li><a href =post.php> Create Post </a></li>
            <li><a href =favorites.php> Favorites </a></li>
            <li><a href =includes/logout.inc.php> Log Out </a></li>
            </ul>
        </div>

        <div class="editProfile">
            <h2 style ="font-weight: lighter;"> Edit Profile </h2><hr style="border-top: 3px solid #dcdcdc; margin-top: 10px; margin-bottom: 10px;">

            <h2> CHANGE YOUR ACCOUNT DETAILS </h2>
            <p style ="font-size:10px;"> * denotes mandatory fields</p>

            <div class="settingsBox">
                <div class="usernameSettings">
                    <div class="updatedPfp" style="display:flex">
                    <?php // to print out the profile pic
                        $username=$_SESSION["usersUID"];
                        $sql = "SELECT pfp_img_dir FROM users WHERE usersUID='$username'";
                        $result = mysqli_query($conn, $sql);
                        $image_dir = mysqli_fetch_assoc($result);
                        $img=$image_dir['pfp_img_dir'];
                    ?>
                    <div id="pfpPic" style="background-image:url('<?php echo $img;?>');"></div>
                        <div class="settings_userPfp" > <!--print out text next to pfp-->
                            <?php
                                // prints out the userID
                                echo $_SESSION["usersUID"];
                            ?>
                            <!--This form is to update the profile pic-->
                            <form action ="uploadProfile.php" method ="POST" enctype="multipart/form-data">
                                <input type ="file" name="file" id="pfpFile" style="display:none" >
                            
                                <button type="submit" id="submitPFP" name="submit" style="display:none"> UPLOAD </button>
                            </form>
                            <button id="settingPFPButton" style = "background-color:transparent;border:none; font-weight:bolder;color:#a93b3b;cursor:pointer;padding:0">Change Profile Photo</button>
                           
                        </div>
             </div>

                    <!-- This form is to update the username -->
                    <form action ="includes/updateUsername.inc.php" method="post">
                        
                        <label> USERNAME*:</label><br>
                        <input type = "text" name="username" id ="text" placeholder="NEW USERNAME"> <br/> <br/>
                        <input type ="hidden" name="userID" value ="<?php echo $usersIDNum ?>">

                        <input type = "submit" name="submit" id="settingButton" value="Update My Username">
                        <br/> <br/>
                    </form>
                </div>

                <!-- This form is to update the password + error handling -->
                <div class="passwordSettings">
                <div style="margin-bottom: 3px; color: red; font-weight:bold;">
                    <?php
                        if(isset($_GET["error"])){
                            if($_GET["error"] == "empty"){
                                echo "<p> Fill in all fields! </p>";
                            } else if ($_GET["error"] == "wrongcurrentpassword"){
                                echo "<p> Incorrect current password </p>";
                            } else if ($_GET["error"] =="passwordsdontmatch"){
                                echo "<p> Unable to change password because passwords don't match.</p>";
                            }else if ($_GET["error"] == "updatedpassword"){
                                echo "<p style='color:green;'> You have changed your password :) </p>";
                            }
                        }
                    ?>
                </div>
                    <form action ="includes/updatePassword.inc.php" method="post">
                        <input type ="hidden" name="username" value ="<?php echo $username ?>">
                        <label>CURRENT PASSWORD*:</label><br>
                        <input type = "text" name="cpassword" placeholder="CURRENT PASSWORD"id ="text"> <br/> <br/>
                        <label>NEW PASSWORD*:</label><br>
                        <input type = "password" name="npassword" placeholder="NEW PASSWORD" id ="text" > <br/> <br/>
                        <label>VERIFY PASSWORD*:</label><br>
                        <input type = "password" name="vpassword" placeholder="VERIFY PASSWORD" id ="text" > <br/> <br/>
                        <input type = "submit" name="submit" id="settingButton" value="Update My Password">
                        <br/> <br/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script type = "text/javascript">
    //original file input
  const originalButton = document.getElementById("pfpFile"); //original
  
  //replacing file input button
  const newButton = document.getElementById("settingPFPButton"); // new button

  newButton.addEventListener("click", function(){
      originalButton.click();
      console.log(originalButton.files);
  });

  originalButton.addEventListener("change", function(){ //value changes when you choose a file -value =path to chosen file
     if(originalButton.value){
        const submitPFP = document.getElementById("submitPFP"); //submitButton
        submitPFP.click(); //press the submit button
     } else {
        alert("hello, no file");
     }
    });

</script>

<?php
include_once 'footer.php';
?>