<?php
include_once 'header.php';
?>


     <div class="postBox">
        <div class="imgBox">
        <input type="file" name="imgFile" id ="imgFile">
        <div class="image-preview" id="image-preview">
            <img src="" alt="Image Preview" class="image-preview-img">
            <span class="image-preview-default-text">Image Preview</span>
        </div>
        <script>
            const imgFile = document.getElementById("imgFile");
            const previewDiv= document.getElementById("image-preview");

            //this one goes into the parent and gets the child image tag 
            const previewImage = previewDiv.querySelector(".image-preview-img")
            const previewDefaultText=previewDiv.querySelector(".image-preview-default-text");

            // when a file is selected ['change'] will run the function
            imgFile.addEventListener("change", function(){
                //get file object for select object
                const file = this.files[0]; //in case of single file select, index[0] is the only file

                console.log(file);// open console and should see file object printed out 

                //if have a file, create a new file reader that reads the file as a DATAURL
                // then can set the source img tag as the data URL
                if(file){
                    const reader = new FileReader(); //let you read file off user file system

                    //since img was selected, want to hide img preview text
                    previewDefaultText.style.display="none";
                    previewImage.style.display="block"; // showing the img

                    //once reader finish loading, will do the function 
                    reader.addEventListener("load",function(){
                        console.log(this);

                        //setting the img src to be the dataURL
                        //"this" refer to the fileReader [has prpperty called result that contains dataURL]
                        previewImage.setAttribute("src", this.result)
                    });

                    reader.readAsDataURL(file);

                    //==============================================================

                    // need ajax object to send to server
                    var ajax = new XMLHttpRequest();

                    //created Form Object
                    var stuff = new FormData();

                    //added files to that form object
                    for(var i=0; i <files.length;i++ ){
                        stuff.append("file"+i,  files[i]);
                    }

                    //once open,need to tell it what file to access
                    ajax.open("POST","./includes/uploadIMG.inc.php",true);
                    //need to send some data 
                    ajax.send(stuff);
//================================================================================================
                } else { // no files selected 
                    // null mak eit go back to the default css 
                    previewDefaultText.style.display=null;
                    previewImage.style.display=null;
                }
            });
        </script>

        </div> 
        <div class="textBox">
        <h1> in text </h1>
        </div>
     </div>
<?php
include_once 'footer.php';
?>

