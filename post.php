<?php
include_once 'header.php';
?>


   <div class="postBox">
      <div class="imgBox" id="imgBox">
         <div class="carousel__item carousel__item--selected">

            <div class="imgDropZone" id="imgDropZone">
               <span class="drop_prompt"> Drop file here or click to upload</span>
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
         <h1> in text </h1>
      </div>
   </div>
<!--
     <script src="./js/imagePost.js" ></script>
-->
     <script src="./js/postImgPreview.js" defer></script>


<?php
include_once 'footer.php';
?>

