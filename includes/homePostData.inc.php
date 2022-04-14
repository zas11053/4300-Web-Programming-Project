<?php
 //session_start();
 require_once('dbh.inc.php');

    
    //SQL: LIMIT #1, #2 == start from index[#1] and get #2 amount of rows 
    $sql = "SELECT* FROM `posts` ORDER BY `posts`.`postID`";

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
                $img_dir = mysqli_fetch_assoc($result);
              
               //print out the first img related to that post== cover pic
               $coverImg = $img_dir['img_dir'];
               
                //append to #post-gallery that HTML element to be displayed back to myPage.php == divs for the posts
            /*echo' 
            <div class="card" style="position:relative;">
            <!---Makes the entire post a link, so when you click, takes you to the page to view the post-->
                <a href="#">
                    <!---div where the img is at--img is set as an background img  -->
                    
                    <div class="responsive">
                        <div class="gallery">
                            <a target="_blank" href="">
                                <img src="'.$coverImg.'">
                            </a>
                            <div class="desc">
                                <h2 style="font-size:25px;  font-family:satisfy, cursive;overflow: hidden;
                                text-overflow: ellipsis;">'.$post['title'].' </h2>
                                <p style="font-size:20px">'.$post['type'].'</p>
                                <div style="display: inline-flex">
                                    <i class="material-icons" style="font-size:12px; background-color:white"> place </i>
                                    <p style="font-size:12px">'.$post['location'].'</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
        </div>
        
            ';*/
        } 

?>

