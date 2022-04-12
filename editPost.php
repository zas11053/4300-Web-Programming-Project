<?php 

require_once('./includes/dbh.inc.php');
include_once 'header.php';
// if pressed the delete button, will delete the info from database 
if(isset($_POST["postID"])) {
    $postID = $_POST["postID"];
   
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
            
      $sql = "SELECT * FROM `imgs` WHERE postID='$postID'; ";
      $result = mysqli_query($conn, $sql);
      //fetch the resulting rows as an array
      $images = mysqli_fetch_all($result, MYSQLI_ASSOC);

} else {
    header("Location: ./home.php");
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
     
            
         <form action ="includes/post-update.inc.php" method ="POST"> 
            <input type="hidden" name ="postID" value = "<?php echo $postID;?>" >
            <div class="post-desc">
                  <!--set in the title of the post-->
                  <input type ="text" name="postTitle" id="postTitle" value ="<?php echo $title;?>" placeholder = "Post Title">
                  
                  <!--set in the location of the post-->
                  <input type ="text"  name="postLocation" value ="<?php echo $location;?>" placeholder = "Location">
                  
                  <!--set in the DateType of the post-->
                  <select name ="type" > 
                     <?php if($type == "casual") :?>
                     <option value="casual" selected> Casual</option>
                     <option value="fancy"> Fancy</option>
                     <option value="home"> Home</option>
                     <?php elseif($type == "fancy") :?>
                     <option value="casual"> Casual</option>
                     <option value="fancy" selected> Fancy</option>
                     <option value="home"> Home</option>
                     <?php else  :?>
                     <option value="casual"> Casual</option>
                     <option value="fancy" > Fancy</option>
                     <option value="home" selected> Home</option>
                     <?php endif ?>


                  </select>   
                  <!--set in the $description of the post-->
               <textarea name="editor1" ><?php echo($description); ?></textarea>
           
               <script>

                  CKEDITOR.replace( 'editor1', {
                  toolbar: [
                  
                  { name: 'clipboard', groups: [ 'clipboard', 'undo' ], items: [ 'Undo', 'Redo' ] },
                  { name: 'editing', groups: [ 'find', 'selection', 'spellchecker' ], items: [ 'Replace', '-', 'Scayt' ] },
                  
                  { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ] },
                  { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ], items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl', 'Language' ] },
                  { name: 'links', items: [ 'Link', 'Unlink', 'Anchor' ] },
                  { name: 'insert', items: [ 'Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar' ] },
                  '/',
                  { name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
                  { name: 'colors', items: [ 'TextColor', 'BGColor' ] },
                  { name: 'tools', items: [ 'Maximize', 'ShowBlocks' ] },
                  
                  
               ],
               height: 306,
                     resize_dir: 'none',
                     extraPlugins: 'editorplaceholder',
                     editorplaceholder: 'Start typing here...',
                     
               });

            </script>

            </div> 
            <button  type="submit" name="submit"> Update </button>
       </form>
</div> <!--"textBox div-->


</div> <!--"postBox div--> 

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
   
   <?php
   include_once './footer.php';
   ?>
   
   