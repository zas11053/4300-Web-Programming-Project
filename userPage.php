<?php
require_once('includes/dbh.inc.php');
include_once 'header.php';
?>

<?php

if(isset($_GET["user"])){
     $username=$_GET["user"];
     
     $sql = "SELECT* FROM users WHERE usersUID='$username'";
     $result = mysqli_query($conn, $sql);
     $userExists= mysqli_num_rows($result); //gets the amount of rows == if 1== user exist else user doesn't not exist
     if ($userExists <1){ // mean there no such user in database -- will redirect 
        header("Location: home.php?noSuchUser"); // can remove the ?uploadsuccess later if want
                        
        exit();

     }
     $usersTable = mysqli_fetch_assoc($result);

     // their name (not their username)
     $usersName = $usersTable['usersName'];

     // gets the img_dir 
     $img=$usersTable['pfp_img_dir'];
   
   $sql = "SELECT usersID FROM users WHERE usersUID='$username'";
   $result = mysqli_query($conn, $sql);
   $usersID = mysqli_fetch_assoc($result);
   $usersIDNum=$usersID['usersID']; // the userID of the current user 

   $sql = "SELECT* FROM posts WHERE usersID='$usersIDNum'";
   $result = mysqli_query($conn, $sql);
   $postNum = mysqli_num_rows($result); //gets the amount of rows==NUM OF POST the user has 
}
?>

<!----------------------------------------------------------------------------------------------->
   
<div class="userProfileHeader">
        
    <?php //the following to print pfp
        echo "<img style='width:150px; height: 150px;border-radius:50%; border:solid 2px grey' src= '$img'>";
    ?>

    <div style="display:flex; flex-direction:column; gap: 25px;"> <!----text next to pfp----------->

        <div class ="profileHeader-userID-edit" >
            <h2 style ="font-weight: lighter;font-size: x-large;"><?php echo $username?></h2>
        </div>

        <p class="postNum"><?php echo $postNum ?></p>
        <p style ="font-weight:bold; white-space: nowrap;"><?php echo $usersName ?> </p>

    </div>

</div>


<section id="post-gallery" class="wrapper-post">

</section>
<div id="load_data_message"></div>
<script>
    const params = new URLSearchParams(window.location.search); //gets the current url
    var username = params.get('user'); // gets the value of the 'user' key
   
    console.log(username);
    $(document).ready(function(){
    
    var limit = 18;
    var start = 0;
    var action = 'inactive';
    function load_post_data(limit, start)
    {
    $.ajax({
    url:"./includes/usersPagePostData.inc.php",
    method:"POST",
    data:{ 
        limit:limit, 
        start:start,
        username:username
    },
    cache:false,
    success:function(data)
    {
        $('#post-gallery').append(data);
        if(data == '')
        {
        $('#load_data_message').html("<a href='#'> Back to Top </a>");
        action = 'active';
        }
        else
        {
       $('#load_data_message').html("<a href='#'> Back to Top </a>");
        action = "inactive";
        }
    }
    });
    }

    if(action == 'inactive')
    {
    action = 'active';
    load_post_data(limit, start);
    }
    $(window).scroll(function(){
    if($(window).scrollTop() + $(window).height() > $("#post-gallery").height() && action == 'inactive')
    {
    action = 'active';
    start = start + limit;
    setTimeout(function(){
        load_post_data(limit, start);
    }, 1000);
    }
    });
    
    });
</script>

<?php
include_once 'footer.php';
?>
