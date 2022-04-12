<?php
require_once('includes/dbh.inc.php');
include_once 'header.php';


if(isset($_GET["ID"])){
    $postID =$_GET["ID"];
   
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE posts.postID='$postID'";
            $result = mysqli_query($conn, $sql);
            $post = mysqli_fetch_assoc($result);
            $usersID=$post['usersID'];
            $username=$post['usersUID'];
            $title=$post['title'];
            $location=$post['location'];
            $type=$post['type'];
            $description=$post['description'];
            $date=$post['date'];
            /** 
                  echo "postID:". $postID . "\n";
                  echo "usersID:". $usersID . "\n";
                  echo "username:". $username . "\n";
                  echo "title:". $title . "\n";
                  echo "location:". $location . "\n";
                  echo "type:". $type . "\n";
                  echo "description:". $description . "\n";
                  echo "date:". $date . "\n";
           */
      $sql = "SELECT * FROM `imgs` WHERE postID='$postID'; ";
      $result = mysqli_query($conn, $sql);
      //fetch the resulting rows as an array
      $images = mysqli_fetch_all($result, MYSQLI_ASSOC);

}
?>


<div class="postBox" >
      <div class="imgBox" id="imgBox" >
            <!---loops through each row in the img table for this post and create a a div for it to store its images---->
            <?php foreach ($images as $image) : ?>
            <div class="carousel__item " > 
               <div class = "imgDropZone" style="border:none; cursor:default;">

                  <div class ="drop-zone-thumb2" style="background-image:url('<?php echo $image['img_dir'];?>')"></div>
            
               </div>
            </div>

            <?php endforeach; ?>
            

            <!---loops through each row in the img table for this post and create a radio button for each image---->
            <div class="carousel__nav">
               <?php foreach ($images as $image) : ?>
                  <span class="carousel__button"></span>
               <?php endforeach; ?>
            </div>
      
      </div>

      <div class="textBox">
                  <div class="post-desc">
                     <div style="display:flex; position:relative;">
                     <h2 id="postTitle" style="text-decoration: underline;"><?php echo $title; ?></h2>

                    
                     <?php 
                     // Checks if user is logged in or not
                     if(isset($_SESSION["usersUID"])){
        
                        require_once('./includes/dbh.inc.php'); 
                                          
                        $usersUID=$_SESSION["usersUID"];
                        $sql = "SELECT usersID FROM users WHERE usersUID='$usersUID'";
                        $result = mysqli_query($conn, $sql);
                        $usersID = mysqli_fetch_assoc($result);
                        $usersIDNum=$usersID['usersID']; // the userID of the current user 
                                             
                        $sql = "SELECT* FROM fav WHERE postID='$postID' AND usersID='$usersIDNum'";
                        $result = mysqli_query($conn, $sql);
                        $postNum = mysqli_num_rows($result); //gets the amount of rows==NUM OF POST the user has
                        
                           if($postNum === 0){
                              echo '<span id="heartIcon"><i  class="fa-regular fa-heart heart-btn" data-id="'. $postID.'"></i></span>';
                           } else {
                              echo '<span id="heartIcon"><i  class="fa-solid fa-heart heart-btn" data-id="'. $postID.'"></i></span>';
                           }
                     
                    
                      } ?>
                     </div>
                     <a href ="userPage.php?user=<?php echo $username; ?>" id="post-Username"><?php echo $username; ?></a>
                        
                     <span> <?php echo "Date Type: ". $type; ?></span>
                     <span id="postLocation">Location: <?php echo $location; ?></span>
                        
                     <hr>

                     <div id ="description-Box"> <!--the post description is to be printed in this div box-->
                        <?php echo nl2br($description); //nl tags will get converted into breaks- should get line breaks now?> 
                        
                     </div>
                 
                  </div> 
               
      </div> <!--"textBox div-->
      
<div id="load_data_message"></div>
     
   </div> <!--"viewPost-postBox div--> 

   <!---THE JS TO MANUALLY SELECT THE BUTTON AND POP UP THE PHOTOS-->
   <script>
      document.querySelectorAll(".imgBox").forEach((carousel) => {
         const items = carousel.querySelectorAll(".carousel__item");
         const buttons = carousel.querySelectorAll(".carousel__button");
         
         buttons.forEach((button, i) => {
            button.addEventListener("click", () => {
               //(1)unselect all the items if selected (if it exist)
               items.forEach((item) =>
                  item.classList.remove("carousel__item--selected")
               );
               buttons.forEach((button) =>
                  button.classList.remove("carousel__button--selected")
               );

               items[i].classList.add("carousel__item--selected");
               button.classList.add("carousel__button--selected");
               
            });
         });

         //select first item to display at first
         items[0].classList.add("carousel__item--selected");
         button[0].button.classList.add("carousel__button--selected");
      });

  </script>
 
<section id="post-gallery" class="wrapper-post">

</section>
<div id="load_data_message"></div>
<script>

    $(document).ready(function(){
      const heart_btn = document.querySelector('.heart-btn');

      //gets the id value from the data attribute in the <i>
      var postID=heart_btn.dataset.id; 
      //alert(postID); //used to check the postID is recieved
      

    
      $(".heart-btn").on("click", function () {
               $clicked_btn = $(this);
            //  can only either save the post or unsave it
            if ($clicked_btn.hasClass("fa-regular")) {
               //if clicked on the outlined heart-
               action = "save";
            } else if ($clicked_btn.hasClass("fa-solid")) {
               // if clicked the solid filled heart
               action = "unsave";
            }
            //alert(action);


            $.ajax({
            url:"./includes/fav.inc.php",
            method:"POST",
            data:{ 
               postID:postID, 
                action:action
            },
            cache:false,
            success:function(data)
            {
               $('#post-gallery').append(data);
               if (action == "save") {
                  $clicked_btn.removeClass("fa-regular"); // remove the regular outlined heart
                  $clicked_btn.addClass("fa-solid"); //add in the solid heart
               } else if (action == "unsave") {
                  $clicked_btn.removeClass("fa-solid"); // remove the solid filled heart
                  $clicked_btn.addClass("fa-regular"); //add in the regular outlined  heart
               }
               
            }
            });




         });

            
            
            
            

    
    });
</script>
<?php
include_once 'footer.php';
?>