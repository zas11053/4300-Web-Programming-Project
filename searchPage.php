<?php
include_once 'header.php';
/* 
  require_once('includes/dbh.inc.php');
  include_once 'header.php';
if(isset($_GET["search"]) ){
    $search = $_GET["search"];
    echo $search;
    echo ' <h2>hi tina</h2>';
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE 
            users.usersUID OR posts.title OR posts.location OR posts.type OR  posts.description LIKE '{$input}%' ";

            $result = mysqli_query($conn, $query);

            if (mysqli_num_rows($result)>0){?>

            <?php 
            } else {
                echo '<h3>No data Found. Search Again!</h3>';
            }
} 

*/
?>


<!----------------------------------------------------------------------------------------------->
 
        <!-- search bar code -->
        <form action="./searchPage.php" method="get">
            <div class="searchBar">
            
                <input type="text"  class ="searchBar_input" name="search" placeholder="Search..">
                <button type="submit" class="searchBar_button"> <i class='material-icons'> search </i></button>
           
            </div>
        </form>
        <!-- END of search bar code -->

<section id="post-gallery" class="wrapper-post">
    

</section>
<div id="load_data_message"></div>
<script>
    const params = new URLSearchParams(window.location.search); //gets the current url
    var search = params.get('search'); // gets the value of the 'user' key
   // alert(search);
    $(document).ready(function(){
    
    var limit = 9;
    var start = 0;
    var action = 'inactive';
    function load_country_data(limit, start)
    {
    $.ajax({
    url:"./includes/search.inc.php",
    method:"POST",
    data:{ 
        limit:limit, 
        start:start,
        search:search
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
        $('#load_data_message').html("<button type='button' class='btn btn-warning'>Please Wait....</button>");
        action = "inactive";
        }
        
    }
    });
    }

    if(action == 'inactive')
    {
    action = 'active';
    load_country_data(limit, start);
    }
    $(window).scroll(function(){
    if($(window).scrollTop() + $(window).height() > $("#post-gallery").height() && action == 'inactive')
    {
    action = 'active';
    start = start + limit;
    setTimeout(function(){
        load_country_data(limit, start);
    }, 1000);
    }
    });
    
    });
</script>
