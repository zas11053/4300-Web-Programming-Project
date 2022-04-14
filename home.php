<?php
    require_once('includes/dbh.inc.php');
    include_once 'header.php';
?>

<div class ="whole-home">


       

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

        <div class ="top-post-slider">
        
    <section id="post-gallery" class="wrapper-post">
    <?php for ($i = 0; $i < 10; $i++){ ?>
                
            <div class="card" style="position:relative;">

                <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
                <a href="#">
                    <!---div where the img is at--img is set as an background img  -->
                    <div class="post-img"  style="background-image: url('./uploads/48_0_DSC_0032.JPG');">
                    </div>
                    
                    <div class="caption">
                        <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                        text-overflow: ellipsis;"> Parasailing </h2>
                        <p style="font-size:20px">Casaul</p>
                        <div style="display: inline-flex">
                            <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                            <p style="font-size:12px">South Carolina</p>
                        </div>
                    </div>
                </a>
            </div>
            <?php
        }?>
        </section>
        </div>

        

       
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
