<?php
    require_once('includes/dbh.inc.php');
    include_once 'header.php';
?>

<div class ="whole-home">

    <div class="slideshow-container">
            <!-- big sliding picture code -->
            <?php
                $sql1 = "SELECT * FROM imgs INNER JOIN posts ON posts.postID = imgs.postID"; // select everything from the imgs table to display on homepage
                $result1 = mysqli_query($conn, $sql1);
                $resultsCheck = mysqli_num_rows($result1); // error handling to make sure you're selecting something

                if ($resultsCheck > 0) {
                    $slideshowNum = 0;
                    while ($row = mysqli_fetch_assoc($result1)) {
                        $imgLink = $row['img_dir'];
                        $slideshowNum++;
                        if ($slideshowNum < 4) {
                            ?>
                        
                                <div class="mySlides fade">
                                    <div class="numbertext"><?php echo $slideshowNum ?>/ 3</div>
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
        
    <div> <!---TOP FAV CATEGORY MULTI SLIDE -->
        <h2 class="title-category">Top Favorites:</h2>
            <div class ="top-post-slider">
                <section id="post-gallery-home" class="wrapper-post">
                    <?php

                    $sql = "SELECT* FROM fav INNER JOIN posts ON posts.postID = fav.postID GROUP BY posts.postID
                    ORDER BY posts.savedAmount DESC LIMIT 10;";
                            
                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
                    
                    //loops through each post
                    foreach ($posts as $post){
                        $sql = "SELECT img_dir FROM imgs WHERE postID='$post[postID]'";

                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $img_dir = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        
                        //print out the first img related to that post== cover pic
                        $coverImg = $img_dir[0]["img_dir"]; ?>
                                    
                            <div class="card" style="position:relative; width:320px">

                                <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
                                <a href="./viewPost.php?ID=<?php echo $post['postID']?>">
                                    <!---div where the img is at--img is set as an background img  -->
                                    <div class="post-img"  style="background-image: url('<?php echo $coverImg?>');"></div>
                                    
                                    <div class="caption">
                                        <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                                        text-overflow: ellipsis;"> <?php echo $post['title']?> </h2>
                                        <p style="font-size:20px"><?php echo $post['type']?></p>
                                        <div style="display: inline-flex">
                                            <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                                            <p style="font-size:12px"><?php echo $post['location']?></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <?php
                    }?>
                </section>
            </div>
        </div> <!---TOP FAV CATEGORY MULTI SLIDE -->

           
    <div> <!---casual CATEGORY MULTI SLIDE -->

        <h2 class="title-category">Casual:</h2>
            <div class ="top-post-slider">
                <section id="post-gallery-home" class="wrapper-post">
                    <?php

                    $sql = "SELECT* FROM posts WHERE posts.type='casual'
                    ORDER BY posts.postID DESC LIMIT 10;";
                            
                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
                    
                    //loops through each post
                    foreach ($posts as $post){
                        $sql = "SELECT img_dir FROM imgs WHERE postID='$post[postID]'";

                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $img_dir = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        
                        //print out the first img related to that post== cover pic
                        $coverImg = $img_dir[0]["img_dir"]; ?>
                                    
                            <div class="card" style="position:relative; width:320px">

                                <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
                                <a href="./viewPost.php?ID=<?php echo $post['postID']?>">
                                    <!---div where the img is at--img is set as an background img  -->
                                    <div class="post-img"  style="background-image: url('<?php echo $coverImg?>');"></div>
                                    
                                    <div class="caption">
                                        <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                                        text-overflow: ellipsis;"> <?php echo $post['title']?> </h2>
                                        <p style="font-size:20px"><?php echo $post['type']?></p>
                                        <div style="display: inline-flex">
                                            <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                                            <p style="font-size:12px"><?php echo $post['location']?></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <?php
                    }?>
                </section>
            </div>
        </div> <!---casual CATEGORY MULTI SLIDE -->

                
      <div> <!---Fancy CATEGORY MULTI SLIDE -->

         <h2 class="title-category">Fancy:</h2>
            <div class ="top-post-slider">
                <section id="post-gallery-home" class="wrapper-post">
                    <?php

                    $sql = "SELECT* FROM posts WHERE posts.type='fancy'
                    ORDER BY posts.postID DESC LIMIT 10;";
                            
                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
                    
                    //loops through each post
                    foreach ($posts as $post){
                        $sql = "SELECT img_dir FROM imgs WHERE postID='$post[postID]'";

                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $img_dir = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        
                        //print out the first img related to that post== cover pic
                        $coverImg = $img_dir[0]["img_dir"]; ?>
                                    
                            <div class="card" style="position:relative; width:320px">

                                <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
                                <a href="./viewPost.php?ID=<?php echo $post['postID']?>">
                                    <!---div where the img is at--img is set as an background img  -->
                                    <div class="post-img"  style="background-image: url('<?php echo $coverImg?>');"></div>
                                    
                                    <div class="caption">
                                        <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                                        text-overflow: ellipsis;"> <?php echo $post['title']?> </h2>
                                        <p style="font-size:20px"><?php echo $post['type']?></p>
                                        <div style="display: inline-flex">
                                            <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                                            <p style="font-size:12px"><?php echo $post['location']?></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <?php
                    }?>
                </section>
            </div>
     </div> <!---fancy CATEGORY MULTI SLIDE -->

             
     <div> <!---Fancy CATEGORY MULTI SLIDE -->

        <h2 class="title-category">Home:</h2>
            <div class ="top-post-slider">
                <section id="post-gallery-home" class="wrapper-post">
                    <?php

                    $sql = "SELECT* FROM posts WHERE posts.type='home'
                    ORDER BY posts.postID DESC LIMIT 10;";
                            
                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
                    
                    //loops through each post
                    foreach ($posts as $post){
                        $sql = "SELECT img_dir FROM imgs WHERE postID='$post[postID]'";

                        //make query & get result
                        $result = mysqli_query($conn, $sql);

                        //fetch the resulting rows as an array
                        $img_dir = mysqli_fetch_all($result, MYSQLI_ASSOC);
                        
                        //print out the first img related to that post== cover pic
                        $coverImg = $img_dir[0]["img_dir"]; ?>
                                    
                            <div class="card" style="position:relative; width:320px">

                                <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
                                <a href="./viewPost.php?ID=<?php echo $post['postID']?>">
                                    <!---div where the img is at--img is set as an background img  -->
                                    <div class="post-img"  style="background-image: url('<?php echo $coverImg?>');"></div>
                                    
                                    <div class="caption">
                                        <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                                        text-overflow: ellipsis;"> <?php echo $post['title']?> </h2>
                                        <p style="font-size:20px"><?php echo $post['type']?></p>
                                        <div style="display: inline-flex">
                                            <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                                            <p style="font-size:12px"><?php echo $post['location']?></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <?php
                    }?>
                </section>
            </div>
        </div> <!---fancy CATEGORY MULTI SLIDE -->

        


        

       
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






</div>
<?php
include_once 'footer.php';
?>
