<?php
    require_once('includes/dbh.inc.php');
    include_once 'header.php';
?>



    <div class="slideshow-container">
            <!-- big sliding picture code -->
            <?php
                $sql1 = "SELECT * FROM imgs INNER JOIN posts ON posts.postID = imgs.postID GROUP BY posts.postID"; // select everything from the imgs table to display on homepage
                $result1 = mysqli_query($conn, $sql1);
                $resultsCheck = mysqli_num_rows($result1); // error handling to make sure you're selecting something

                if ($resultsCheck > 0) {
                    $slideshowNum = 0;
                    while ($row = mysqli_fetch_assoc($result1)) {
                        $imgLink = $row['img_dir'];
                        $slideshowNum++;
                        if ($slideshowNum < 11) {
                            ?>
                        
                                <div class="mySlides fade">
                                    <div class="numbertext"><?php echo $slideshowNum ?>/ 10</div>
                                    <img src=<?php echo $imgLink;?> alt="<?php echo $imgLink;?>">
                                </div>
                            <?php
                        }
                    }
                }
            ?>
    </div>

        <!-- search bar code -->
            <div class="search-container">
            <form action="./searchPage.php" method="get">
                <div class="searchBar">
                
                    <input type="text"  class ="searchBar_input" name="search" placeholder="Search..">
                    <button type="submit" class="searchBar_button"> <i class='material-icons'> search </i></button>
                </div>
            </form>
            </div>
        <!-- END of search bar code -->
     
<section id="post-gallery" class="wrapper-post ">
  
</section>
<div id="load_data_message"></div>
<script>

    $(document).ready(function(){
    
    var limit = 18;
    var start = 0;
    var action = 'inactive';
    function load_post_data(limit, start)
    {
    $.ajax({
    url:"./includes/HomePostData2.inc.php",
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

        


        

       
        <script type="text/javascript">
            let slideIndex = 0;
            showSlides();

            function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}
            slides[slideIndex-1].style.display = "block";
            setTimeout(showSlides, 5000); // Change image every 5 seconds
            }
        </script>







<?php
include_once 'footer.php';
?>
