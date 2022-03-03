<?php
    require_once 'includes/dbh.inc.php';
    include_once 'header.php';
?>

<section class="index-form">
    <?php
        if (isset($_SESSION["usersUID"])) {
            echo "<p>Hello there " . $_SESSION["usersUID"] . "</p>";
        }
    ?>

    <h1>Welcome to MyDateList. This is the homepage.</h1>
</section>

<?php
    include_once 'footer.php';
?>