<?php
    require_once('includes/dbh.inc.php');
    include_once 'header.php';
?>

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
