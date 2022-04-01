<?php
include_once 'header.php';
?>


   <div class="postBox">
      <div class="imgBox" id="imgBox">
         <div class="carousel__item carousel__item--selected">

            <div class="imgDropZone" id="imgDropZone">
              <!-- <span class="drop_prompt"> Drop file here or click to upload</span>-->
              <div class="drop_prompt">
              <span> Drop file here or click to upload</span> <br>
              <i class='material-icons'style="font-size: 100px;"> add_photo_alternate </i>

              </div>
               <!--<div class="drop-zone-thumb" data-label="myFile.txt"> </div>-created by js-->
               <input type ="file" name="imgFile" id="imgFile" class="drop-zone-input" multiple>
            </div> 

         </div>

         <!---BELOW WILL BE PROVIDED BY JS
         <div class="carousel__nav">
            <span class="carousel__button"></span>

         </div>
         --->
      </div> 

      <div class="textBox">
        
                      
         <form action ="includes/post-upload.inc.php" method ="POST" enctype="multipart/form-data">
                <input type="hidden" name ="username" value = "<?php echo $_SESSION["usersUID"];?>" >
                <div class="post-desc">
                <input type ="text" name="postTitle" id="postTitle" placeholder = "Post Title">
               
                <input type ="text" name="postLocation" placeholder = "Location">
                <select name ="type">
                    <option value="0">Date type:</option>
                    <option value="casual"> Casual</option>
                    <option value="fancy"> Fancy</option>
                    <option value="home"> Home</option>

                </select>   
                  
                <div id="editor" placeholder="write something"></div> <!--placeholdee for the ckeditor-->
                </div>   

                
                
                <button type="submit" name="submit"> POST </button>
            </form>




      </div>
   </div>

 <!--CKEDITOR is an WYSIWYG rich text editor framework connected to textarea-->
<script src="./ckeditor/build/ckeditor.js"></script>
<script>
 ClassicEditor
	.create( document.querySelector( '#editor' ), {
		placeholder: 'Type information here....'
     
	} )
	.then( editor => {
		console.log( 'Editor was initialized', editor );
	} )
	.catch( err => {
		console.error( err.stack );
	} );

  
 </script>
     <script src="./js/postImgPreview.js" defer></script>


<?php
include_once 'footer.php';
?>

