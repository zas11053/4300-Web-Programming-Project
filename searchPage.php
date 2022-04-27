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
        <div class="search-container">
          <form action="./searchPage.php" method="get" id="searchFilter">
            <div class="searchBar">
                <input type="text"  class ="searchBar_input" name="search" placeholder="Search..">
                <button type="submit" class="searchBar_button"> <i class='material-icons'> search </i></button>
            </div>
            <select name ="filter" id="filter">
             <option value="recent"  <?php if( !empty(($_GET['filter'])) && ($_GET['filter']) == "recent") echo ' selected';?> >  Most Recent </option> 
                <option value="fav" <?php if( !empty(($_GET['filter']))&& ($_GET['filter']) == "fav") echo ' selected';?>>Most Favorited</option>
                <option value="oldest" <?php if( !empty(($_GET['filter']))&& ($_GET['filter']) == "oldest") echo ' selected';?>>Oldest to Newest</option>
                <option value="casual" <?php if( !empty(($_GET['filter']))&& ($_GET['filter'])== "casual") echo ' selected';?>>Casual</option>
                <option value="fancy" <?php if(!empty(($_GET['filter']))&& ($_GET['filter']) == "fancy") echo ' selected';?>>Fancy</option>
                <option value="home" <?php if( !empty(($_GET['filter']))&& ($_GET['filter']) == "home") echo ' selected';?>>Home</option>
        </select>
        </form>
        </div>
        <!-- END of search bar code -->
        



<section id="post-gallery" class="wrapper-post">
    

</section>
<div id="load_data_message"></div>

<!--the following script it to implemetn lazy scrolling to view the posts by appending to the post-gallery -->
<script>
    const params = new URLSearchParams(window.location.search); //gets the current url
    var search = params.get('search'); // gets the value of the 'search' key
    var filter = params.get('filter'); // gets the value of the 'user' key
    
    $(document).ready(function(){
    
    var limit = 18;
    var start = 0;
    var action = 'inactive';
    var none = false;
    var noPost = true;
    function load_post_data(limit, start)
    {
    $.ajax({
    url:"./includes/search.inc.php",
    method:"POST",
    data:{ 
        limit:limit, 
        start:start,
        search:search,
        filter:filter
    },
    cache:false,
    success:function(data)
    {
        if (data == "none"){
            none = true;
        } else {
        $('#post-gallery').append(data);
        }
        
        if (none && noPost){ // if there absolutely no post for this query will print out an message
            $('#post-gallery').html("<div id='noPost'><p>No post queries. Try a different search! </p> </div>");
        action = 'active';
        }
        else if(data == "none")
        {
        $('#load_data_message').html("<a href='#'> Back to Top </a>");
        action = 'active';
        }
        else
        {
         $('#load_data_message').html("<a href='#'> Back to Top </a>");
        noPost=false;

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
