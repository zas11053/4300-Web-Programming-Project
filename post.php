<?php
include_once 'header.php';
?>

<script>
   let parameters = new URLSearchParams(window.location.search); //gets the url [the stuff after this page's name]

   //if there is a GET method of error 
   if(parameters.get("error")){
      alert("You need to fill in all fields to post! Can only upload Images!");
      window.history.go(-1); //go back to previous page === the page you clicked submit button on-therefore, have all ur input saved beside the photo part
   }
</script>

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

         const dropZoneElement = document.getElementById("imgDropZone");
         const inputElement = document.getElementById("imgFile");
         const imgBox = document.getElementById("imgBox");
         // checks if the input=file field already has a vlue
       var img = $('#imgFile').val();
      
       if(img){ // means has value -- if have value, display the images 
        
         //alert(inputElement.files.length); //print out the total length in alert boc
         if (inputElement.files.length)  {
            //------THE FOLLLOW IS THE SAME PIECE OF CODE USED IN postImgPreview.js---------------------------------------------------

            updateThumbnail(dropZoneElement, inputElement.files[0]);
            document.getElementById("imgDropZone").style.border = "none"; // removed the border once there's a file in
           document.getElementById("imgDropZone").style.cursor = "default"; //changes cursor back to default
           hasDroppedBoolean(true);
           
         }

            if (inputElement.files.length >= 1) {
               length = inputElement.files.length;

               for (let i = 1; i < inputElement.files.length; i++) {
               var divC = document.createElement("div"); //create a new div
               divC.className = "carousel__item"; // give new div class name
               imgBox.appendChild(divC); //new div is now a child of imgBox div

               var div = document.createElement("div"); //create a new div
               div.className = "imgDropZone"; // give new div class name

               divC.appendChild(div); // add new div to the imgBox class div

               div.style.border = "none"; // removed the border once there's a file in
               div.style.cursor = "default"; //changes cursor back to default

               updateThumbnail(div, inputElement.files[i]); //getthumbnail for [i] file
               }

               //grab all the div that are .carousel__item under the imgBox div
               const items = imgBox.querySelectorAll(".carousel__item");
               console.log(items);

               //for each item in items list, return a span
               const buttonsHTML = Array.from(items, () => {
               return `<span class ="carousel__button"></span>`;
               });
               console.log(buttonsHTML);

               //NOW needa insert the buttons
               //the .join=>joined all the HTML string (<span class..) together
               imgBox.insertAdjacentHTML(
               "beforeend",
               `
               <div class ="carousel__nav">
               ${buttonsHTML.join("")}
               </div>
               `
               );
               //Now needa activate those buttons

               const buttons = imgBox.querySelectorAll(".carousel__button");

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
            } // if(e.dataTransfer.files.length > 1)
                     
            //----------------------
           // alert(inputElement.files[i].name);// this code gets each name of the file
         }

     });

   </script>
  
   <script src="./js/postImgPreview.js" defer></script>
   
<?php
include_once 'footer.php';
?>

