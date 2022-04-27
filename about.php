
<?php
include_once 'header.php';
?>
<!---
<h1 style="margin-left: 50px; margin-top: 10px;"> About Us! </h1><hr style="border-top: 3px solid #dcdcdc; margin-top: 10px; margin-bottom: 50px;">-->

<div class="aboutUs", style="display: flex; gap: 20px;">
    
    <!---contains the img for the about us- group pic--->
    <section id="post-gallery" class="wrapper-post ">
        
        <div class="card" style="position:relative;">


                <!---div where the img is at--img is set as an background img  -->
                <div class="post-img"  style="background-image: url('./images/groupPhoto.jpeg');">
                </div>
                
                <div class="caption">
                    <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                    text-overflow: ellipsis;">Web Dev Group</h2>
                    <p style="font-size:20px">Casual</p>
                    <div style="display: inline-flex">
                        <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                        <p style="font-size:12px">MLC</p>
                    </div>
                </div>
            
        </div>
    </section>

    <div class="aboutUsInfo">
            
        <h1 style = "font-size: 50px;"> About Us! </h1>

        <p style =" text-align: center; line-height: 35px;"> Over at MyDateList we love seeing couples and friends alike come together to make long lasting experiences. Now a days it seems 
            that it's harder to get young adults out of the house. With all of the technology out there, why would you? It seems easier to just stay in the house right? Wrong! Using MyDateList gives you a plethora of options to pick from, with the ability to not only to
            explore new date ideas, save others' dates by favoriting it,
            but also the ability to filter date ideas by date type, recent post, oldest post, and most favorites post. This website
            allows for even the worlds most indecisive people to quickly find something to do! 
        </p>
    </div>

</div>
  
<?php
include_once 'footer.php';
?>
