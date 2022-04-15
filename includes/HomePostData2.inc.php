<?php
session_start();
 require_once('dbh.inc.php');
 if(isset($_POST["limit"], $_POST["start"])){
    
    $start = $_POST['start']; //starting value for the SQL LIMIT 
    $limit = $_POST['limit']; // how many Post to load 

    
    //SQL: LIMIT #1, #2 == start from index[#1] and get #2 amount of rows 
    $sql = "SELECT* FROM `posts` ORDER BY `posts`.`postID` DESC LIMIT ".$start.",".$limit."";

    //make query & get result
    $result = mysqli_query($conn, $sql);

    //gets the number of rows in post table= amount of posts=should equal $limit
    $postAmount = mysqli_num_rows($result);

    //fetch the resulting rows as an array
    $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
    
    
        //loops through each post
        foreach ($posts as $post){
          
               
                $sql = "SELECT img_dir FROM imgs WHERE postID='$post[postID]'";

                //make query & get result
                $result = mysqli_query($conn, $sql);

                //fetch the resulting rows as an array
                $img_dir = mysqli_fetch_all($result, MYSQLI_ASSOC);
              
               //print out the first img related to that post== cover pic
               $coverImg = $img_dir[0]["img_dir"];
               
                //append to #post-gallery that HTML element to be displayed back to myPage.php == divs for the posts
            echo'
                
               
            <div class="card" style="position:relative;">


            <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
            <a href="./viewPost.php?ID='.$post['postID'].'">
                    <!---div where the img is at--img is set as an background img  -->
                    <div class="post-img"  style="background-image: url('.$coverImg.');">
                    </div>
                    
                    <div class="caption">
                        <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                        text-overflow: ellipsis;">'.$post['title'].' </h2>
                        <p style="font-size:20px">'.$post['type'].'</p>
                        <div style="display: inline-flex">
                            <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                            <p style="font-size:12px">'.$post['location'].'</p>
                        </div>
                    </div>
                </a>
        </div>
        
            ';
        }

} 

?>
