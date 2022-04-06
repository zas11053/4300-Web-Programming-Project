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
    </body>
</html>      
<?php
include_once 'footer.php';
?>
