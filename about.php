
<?php
include_once 'header.php';
?>
<!---
<h1 style="margin-left: 50px; margin-top: 10px;"> About Us! </h1><hr style="border-top: 3px solid #dcdcdc; margin-top: 10px; margin-bottom: 50px;">-->

<div class="aboutUs", style="display: flex; gap: 20px;">
        
    <section id="post-gallery" class="wrapper-post ">
        
        <div class="card" style="position:relative;">


        <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
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
  
        <select name ="mySelect" id="mySelect">
<option value="recent">Most Recent</option>
                <option value="fav">Most Favorited</option>
                <option value="oldest">Oldest to Newest</option>
                <option value="casual">Casual</option>
                <option value="fancy">Fancy</option>
                <option value="home">Home</option>
</select>


<script type="text/javascript">
$(document).ready(function(){
    $('#mySelect').on('change', function(){
       

            const filterDrop = document.getElementById("mySelect");
            var filter = $(this).val();// the selction value
            var limit = 18;
            //alert(filter);
            var start = 0;
            var action = 'inactive';
            var none = false;
            var noPost = true;
            const params = new URLSearchParams(window.location.search); //gets the current url
             var search = params.get('search'); // gets the value of the 'user' key
            
            function load_post_data(limit, start){
            $.ajax({
            url:"./includes/search.inc.php",
            method:"POST",
            data:{ 
                limit:limit, 
                start:start,
                search:search,
                filter:filter
            },
            cache:false,
            success:function(data)
            {
                if (data == "none"){
                    none = true;
                } else {
                $('#post-gallery').append(data);
                }
                
                if (none && noPost){ // if there absolutely no post for this query will print out an message
                    $('#post-gallery').html("<div id='noPost'><p>No post queries. Try a different search! </p> </div>");
                action = 'active';
                }
                else if(data == "none")
                {
                $('#load_data_message').html("<a href='#'> Back to Top </a>");
                action = 'active';
                }
                else
                {
                $('#load_data_message').html("<a href='#'> Back to Top </a>");
                noPost=false;

                action = "inactive";
                }
                
            }
            });
        }
        
    if(action == 'inactive')
    {
    action = 'active';
    load_post_data(limit, start);
    }
    $(window).scroll(function(){
    if($(window).scrollTop() + $(window).height() > $("#post-gallery").height() && action == 'inactive')
    {
    action = 'active';
    start = start + limit;
    setTimeout(function(){
        load_post_data(limit, start);
    }, 1000);
    }
    });

        });
     });
        
</script>
<?php
include_once 'footer.php';
?>
