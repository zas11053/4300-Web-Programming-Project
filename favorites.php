<?php
require_once('includes/dbh.inc.php');
include_once 'header.php';
if(!isset($_SESSION["usersUID"])){

    header("Location: ./home.php?notLoggedIn");
 }
?>

<?php
    $username=$_SESSION["usersUID"];
   $sql = "SELECT usersID FROM users WHERE usersUID='$username'";
   $result = mysqli_query($conn, $sql);
   $usersID = mysqli_fetch_assoc($result);
   $usersIDNum=$usersID['usersID']; // the userID of the current user 

   $sql = "SELECT* FROM fav WHERE usersIDS='$usersIDNum'";
   $result = mysqli_query($conn, $sql);
   $favNum = mysqli_num_rows($result); //gets the amount of rows==NUM OF POST the user has 

?>

<!----------------------------------------------------------------------------------------------->
 <h2 id="myFav-header">My Favorites:</h2>

<section id="post-gallery" class="wrapper-post">
    

</section>
<div id="load_data_message"></div>

<!--the following script it to implemetn lazy scrolling to view the posts by appending to the post-gallery -->
<script>

    $(document).ready(function(){
    
    var limit = 18;
    var start = 0;
    var action = 'inactive';
    function load_post_data(limit, start)
    {
        //ajax command to ascyn load data into our div-- 
    $.ajax({
    url:"./includes/favPostData.inc.php",
    method:"POST",
    data:{ 
        limit:limit, 
        start:start
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
    // if window scroll bar reaches ned of page, then load more content
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