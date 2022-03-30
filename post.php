<?php
include_once 'header.php';
?>


     <div class="postBox">
     <div class="imgBox">
        <div class="imgDropZone">
           <span class="drop_prompt"> Drop file here or click to upload</span>
          <!--<div class="drop-zone-thumb" data-label="myFile.txt"> </div>-created by js-->
          <input type ="file" name="imgFile" class="drop-zone-input" multiple>
        

        </div> 
    </div> 
        <div class="textBox">
        <h1> in text </h1>
        </div>
     </div>

     <script src="./includes/imagePost.js"></script>
<?php
include_once 'footer.php';
?>

