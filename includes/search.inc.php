<?php
session_start();
 require_once('dbh.inc.php');
 if(isset($_POST["limit"], $_POST["start"])){
    
    $start = $_POST['start']; //starting value for the SQL LIMIT 
    $limit = $_POST['limit']; // how many Post to load 
    $search = mysqli_real_escape_string($conn,$_POST['search']);
    $filter = $_POST['filter']; // how many Post to load 
 

    


if (empty($filter) || $filter == "recent"){
    //SQL: LIMIT #1, #2 == start from index[#1] and get #2 amount of rows 
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE users.usersUID LIKE '%{$search}%' OR posts.title LIKE '%{$search}%' 
    OR posts.location LIKE '%{$search}%' OR  posts.type LIKE '%{$search}%' OR posts.description LIKE '%{$search}%' ORDER BY `postID`  DESC LIMIT ".$start.",".$limit."";
} else if ($filter == "fav"){
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE users.usersUID LIKE '%{$search}%' OR posts.title LIKE '%{$search}%' 
    OR posts.location LIKE '%{$search}%' OR  posts.type LIKE '%{$search}%' OR posts.description LIKE '%{$search}%' ORDER BY `savedAmount`  DESC LIMIT ".$start.",".$limit."";
}else if ($filter == "oldest"){
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE users.usersUID LIKE '%{$search}%' OR posts.title LIKE '%{$search}%' 
    OR posts.location LIKE '%{$search}%' OR  posts.type LIKE '%{$search}%' OR posts.description LIKE '%{$search}%' ORDER BY `postID`  ASC LIMIT ".$start.",".$limit."";
}else if ($filter == "casual"){
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE( (users.usersUID LIKE '%{$search}%' OR posts.title LIKE '%{$search}%' 
    OR posts.location LIKE '%{$search}%' OR  posts.type LIKE '%{$search}%' OR posts.description LIKE '%{$search}%') AND (posts.type ='casual')) ORDER BY `postID`  DESC LIMIT ".$start.",".$limit."";
}else if ($filter == "fancy"){
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE( (users.usersUID LIKE '%{$search}%' OR posts.title LIKE '%{$search}%' 
    OR posts.location LIKE '%{$search}%' OR  posts.type LIKE '%{$search}%' OR posts.description LIKE '%{$search}%') AND (posts.type ='fancy')) ORDER BY `postID`  DESC LIMIT ".$start.",".$limit."";
}else if ($filter == "home"){
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE( (users.usersUID LIKE '%{$search}%' OR posts.title LIKE '%{$search}%' 
    OR posts.location LIKE '%{$search}%' OR  posts.type LIKE '%{$search}%' OR posts.description LIKE '%{$search}%') AND (posts.type ='home')) ORDER BY `postID`  DESC LIMIT ".$start.",".$limit."";
} else {
    $sql = "SELECT * FROM posts INNER JOIN users ON posts.usersID = users.usersID WHERE users.usersUID LIKE '%{$search}%' OR posts.title LIKE '%{$search}%' 
    OR posts.location LIKE '%{$search}%' OR  posts.type LIKE '%{$search}%' OR posts.description LIKE '%{$search}%' ORDER BY `postID`  DESC LIMIT ".$start.",".$limit."";
}
    //make query & get result
    $result = mysqli_query($conn, $sql);

    //gets the number of rows in post table= amount of posts=should equal $limit
    $postAmount = mysqli_num_rows($result);

    //fetch the resulting rows as an array
    $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
    if ($postAmount >0){
    
        //loops through each post
        foreach ($posts as $post){
          
               
                $sql = "SELECT img_dir FROM imgs WHERE postID='$post[postID]'";

                //make query & get result
                $result = mysqli_query($conn, $sql);

                //fetch the resulting rows as an array
                $img_dir = mysqli_fetch_all($result, MYSQLI_ASSOC);
              
               //print out the first img related to that post== cover pic
               $coverImg = $img_dir[0]["img_dir"];

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

    } else {
        exit('none'); // no post left 
    }
    } 

?>
