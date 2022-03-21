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

        <h4> DATE IDEAS </h4>
    </body>
</html>      
<?php
include_once 'footer.php';
?>
