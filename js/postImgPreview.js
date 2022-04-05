var hasDropped = false;

document.querySelectorAll(".imgBox").forEach((carousel) => {
  //carousel = the <input type="imgBox"> element
  const dropZoneElement = document.getElementById("imgDropZone");
  //3/20 11PM NOT SURE------------------
  const imgBox = document.getElementById("imgBox");
  const inputElement = document.getElementById("imgFile");

  //----------------------------------

  //when click on it can get file
  dropZoneElement.addEventListener("click", (e) => {
    if (hasDropped == false) {
      inputElement.click();
    }
  });

  // if there a change== file added
  inputElement.addEventListener("change", (e) => {
    if (inputElement.files.length) {
      hasDropped = true;
      updateThumbnail(dropZoneElement, inputElement.files[0]);
      document.getElementById("imgDropZone").style.border = "none"; // removed the border once there's a file in
      document.getElementById("imgDropZone").style.cursor = "default"; //changes cursor back to default
    }

    if (inputElement.files.length > 1) {
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
      const items = carousel.querySelectorAll(".carousel__item");
      console.log(items);

      //for each item in items list, return a span
      const buttonsHTML = Array.from(items, () => {
        return `<span class ="carousel__button"></span>`;
      });
      console.log(buttonsHTML);

      //NOW needa insert the buttons
      //the .join=>joined all the HTML string (<span class..) together
      carousel.insertAdjacentHTML(
        "beforeend",
        `
      <div class ="carousel__nav">
      ${buttonsHTML.join("")}
      </div>
      `
      );
      //Now needa activate those buttons

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
    } // if(e.dataTransfer.files.length > 1)
  });

  //runs whenever a user drags over an image or file to change the outline look
  dropZoneElement.addEventListener("dragover", (e) => {
    e.preventDefault();
    //adding a drop over zone class-- this it to change the border when there a dragging over from dashed to solid
    dropZoneElement.classList.add("imgDropZone-Over");
  });

  /**2 events happen at same time
   * type refers to one of the 2 events
   */
  ["dragleave", "dragend"].forEach((type) => {
    dropZoneElement.addEventListener(type, (e) => {
      //remove the class to go back to the dashed border
      dropZoneElement.classList.remove("imgDropZone-Over");
    });
  });

  dropZoneElement.addEventListener("drop", (e) => {
    if (hasDropped == false) {
      //with this if statement, once there's already an image in the drop, can drop again to replace
      e.preventDefault();
      console.log("first");
      console.log(e.dataTransfer.files); //can see file info in console

      // if have at least one file dropped in
      if (e.dataTransfer.files.length) {
        console.log(e.dataTransfer.files.length);
        hasDropped = true;
        inputElement.files = e.dataTransfer.files;
        console.log(inputElement);

        updateThumbnail(dropZoneElement, e.dataTransfer.files[0]); //getthumbnail for first img

        document.getElementById("imgDropZone").style.border = "none"; // removed the border once there's a file in
        document.getElementById("imgDropZone").style.cursor = "default"; //changes cursor back to default
        if (e.dataTransfer.files.length > 1) {
          length = e.dataTransfer.files.length;
          for (let i = 1; i < e.dataTransfer.files.length; i++) {
            var divC = document.createElement("div"); //create a new div
            divC.className = "carousel__item"; // give new div class name
            imgBox.appendChild(divC); //make new div a child of imgBox div

            var div = document.createElement("div"); //create a new div
            div.className = "imgDropZone"; // give new div class name
            divC.appendChild(div); // add new div to the imgBox class div

            updateThumbnail(div, e.dataTransfer.files[i]); //getthumbnail for [i] file
            div.style.border = "none"; // removed the border once there's a file in
            div.style.cursor = "default"; //changes cursor back to default
          }
        } // if(e.dataTransfer.files.length > 1)

        //grab all the div that are .carousel__item under the imgBox div
        const items = carousel.querySelectorAll(".carousel__item");
        console.log(items);

        //for each item in items list, return a span
        const buttonsHTML = Array.from(items, () => {
          return `<span class ="carousel__button"></span>`;
        });
        console.log(buttonsHTML);

        //NOW needa insert the buttons
        //the .join=>joined all the HTML string (<span class..) together
        carousel.insertAdjacentHTML(
          "beforeend",
          `
      <div class ="carousel__nav">
      ${buttonsHTML.join("")}
      </div>
      `
        );
        //Now needa activate those buttons

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

        //================================================
      } // if there is a file
      dropZoneElement.classList.remove("imgDropZone-Over");
    } //boolean hasDropped
  }); //event listner drop
}); //document query selector for .drop-zone-input

function updateThumbnail(dropZoneElement, file) {
  console.log(dropZoneElement);
  console.log(file);
  console.log("hello");

  let thumbnailElement = dropZoneElement.querySelector(".drop-zone-thumb");
  console.log(file);

  //if the default promp is there, remove it
  if (dropZoneElement.querySelector(".drop_prompt")) {
    dropZoneElement.querySelector(".drop_prompt").remove();
  }

  // when called first time, gonna be undefined -no thumbnail Element-gotta create it
  if (!thumbnailElement) {
    thumbnailElement = document.createElement("div");
    thumbnailElement.classList.add("drop-zone-thumb");

    //append the thumbnail div to the <div class="imgDropZone">
    dropZoneElement.appendChild(thumbnailElement);
  }

  // get the name property by the file object
  thumbnailElement.dataset.label = file.name;

  //show thumbnail for image files
  if (file.type.startsWith("image/")) {
    const reader = new FileReader();

    reader.readAsDataURL(file); // async call
    reader.onload = () => {
      //reader.result gonna contain the base 64 dataURL that represents the img; gonna be available once reader is fonish reading the file
      thumbnailElement.style.backgroundImage = `url('${reader.result}')`;
    };
  } else {
    // if file is not an image
    thumbnailElement.style.backgroundImage = null;

    //dropZoneElement.querySelector(".drop-zone-thumb").remove();
  }
}

/** 
console.log("in carousel ");
//for each imgBox on the webpage
//"carousel" parameter references one of div=imgBox
document.querySelectorAll(".imgBox").forEach((carousel) => {
  //items a list of all the div with class carousel__item
  const items = carousel.querySelectorAll(".carousel__item");
  console.log(items);
  //gonna create a new Array from an array like object
  //it gonna run for each item in the items list
  const buttomsHTML = Array.from(items, () => {
    return `<span class="carousel__button"></span>`;
  });
  console.log(buttonHTML);
});
*/
