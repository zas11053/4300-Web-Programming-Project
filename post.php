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
              <form action ="includes/post-upload.inc.php" method ="POST" enctype="multipart/form-data">
               <!--<div class="drop-zone-thumb" data-label="myFile.txt"> </div>-created by js-->
               
               <!--the name is technically "imgFile ; [] is used to store array of images else it'll only post 1 file-->
               <input type ="file" name="imgFile[]" id="imgFile" class="drop-zone-input" multiple>
            </div> 

         </div>

         <!---BELOW WILL BE PROVIDED BY JS
         <div class="carousel__nav">
            <span class="carousel__button"></span>

         </div>
         --->
         
      </div>
      <div class="textBox">
     
              <!---        
         <form action ="includes/post-upload.inc.php" method ="POST" enctype="multipart/form-data"> -->
                  <input type="hidden" name ="username" value = "<?php echo $_SESSION["usersUID"];?>" >
                  <div class="post-desc">
                        <input type ="text" name="postTitle" id="postTitle" placeholder = "Post Title">
                        
                        <input type ="text"  name="postLocation" placeholder = "Location">
                        
                        <select name ="type">
                           <option value="0">Date type:</option>
                           <option value="casual"> Casual</option>
                           <option value="fancy"> Fancy</option>
                           <option value="home"> Home</option>

                        </select>   
                        
                     <textarea name="editor1"></textarea>
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
                           editorplaceholder: 'Start typing here...'
                           
                     });

                   </script>
      
                  </div> 
                  <button  type="submit" name="submit"> POST </button>
                  </form>
      </div> <!--"textBox div-->
      
     
   </div> <!--"postBox div--> 
   <script>
      //waits for page to load 
      $(document).ready(function(){  

         // checks if the input=file field already has a vlue
      var img = $('#imgFile').val();
      if(img){ // means has value 
      alert(img);
      $('#imgFile').val(""); //clears it 
      } 

});
   </script>
   <script src="./js/postImgPreview.js" defer></script>
<?php
include_once 'footer.php';
?>

