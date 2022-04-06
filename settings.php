<?php
include_once 'header.php';
require_once('includes/dbh.inc.php');
?>
<div class="settingBody">
    <div class="myAccount">


        <div class="settingLinks">
            <h1> MY ACCOUNT </h1><br/>
            
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
                        //echo "<img class='pfpPic'style='width:100px; height: 100px; border-radius: 50%;' src= '$img'>";
                       // echo `<div class='pfpPic' style='background-image: url('$img')'>`;
                    ?>
                    <div id="pfpPic" style="background-image:url('<?php echo $img;?>');"></div>
                    <div> <!--print out text next to pfp-->
                        <?php
                            // prints out the userID
                            echo $_SESSION["usersUID"];
                        ?>
                         
                        <form action ="uploadProfile.php" method ="POST" enctype="multipart/form-data">
                            <input type ="file" name="file" id="pfpFile" style="display:none" >
                           
                            <button type="submit" id="submitPFP" name="submit" style="display:none"> UPLOAD </button>
                        </form>
                        <button id="settingPFPButton" style = "background-color:transparent;border:none; font-weight:bolder;color:#a93b3b;cursor:pointer">Change Profile Photo</button>
                    </div>
             </div>



                    <form action ="includes/updateUsername.inc.php" method="post">
                        
                        <label> USERNAME*:</label><br>
                        <input type = "text" name="username" id ="text"> <br/> <br/>
                        <input type = "submit" name="submit" id="settingButton" value="Update My Username">
                        <br/> <br/>
                    </form>
                </div>

                <div class="passwordSettings">
                    <form action ="includes/updatePassword.inc.php" method="post">
                        
                        <label>CURRENT PASSWORD*:</label><br>
                        <input type = "text" name="password" id ="text"> <br/> <br/>
                        <label>NEW PASSWORD*:</label><br>
                        <input type = "password" name="password" id ="text" > <br/> <br/>
                        <label>VERIFY PASSWORD*:</label><br>
                        <input type = "password" name="password" id ="text" > <br/> <br/>
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
        submitPFP.click();
     } else {
        alert("hello, no file");
     }
    });

     



</script>
<?php
include_once 'footer.php';
?>

