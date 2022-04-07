<?php
    require_once 'includes/dbh.inc.php';
    include_once 'header.php';
?>

<?php
?>

<!DOCTYPE html>
<html>
    <body>
        <section class="index-form">
            <?php
                if (isset($_SESSION["usersUID"])) {
                    echo "<p>Hello there " . $_SESSION["usersUID"] . "!</p>";
                }
            ?>

            <h1> Welcome to MyDateList. This is the homepage.</h1>
        </section>

        <!-- big sliding picture code -->
        
        <!-- search bar code -->
        <div class="nav">
            <input type="text" placeholder="Search..">
            <button type="submit"><i class="fa fa-search"></i></button>
        </div>

        <h4> DATE IDEAS </h4>
        <!-- individual sliding posts code -->
        
        <?php 
            $sql = "SELECT * FROM posts INNER JOIN users ON users.usersID = posts.usersID"; // select everything from the post table to display on homepage
            $result = mysqli_query($conn, $sql);
            $resultsCheck = mysqli_num_rows($result); // error handling to make sure you're selecting something
            
            echo "<br><br> Printing all the rows from the post table <br> <br>";
            if ($resultsCheck > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "PostID: " . $row['postID'] .  "<br>";
                    echo "UsersName: " . $row['usersUID'] . "<br>";
                    echo "Date Idea Title: " . $row['title'] . "<br>";
                    echo "Location: " . $row['location'] . "<br>";
                    echo "Type: " . $row['type'] . "<br>";
                    echo "Description: " . $row['description'] . "<br>";
                }
            }
        ?>
    </body>
</html>      
<?php
include_once 'footer.php';
?>
