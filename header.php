<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<body>
    <section class="header-form">
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="about.php">About</a></li>
            <li><h2> MyDateList </h2></li>
            
            <?php
                if (isset($_SESSION["usersUID"])) {
                    echo "<li><a href='myProfile.php'>My Profile</a></li>";
                } else {
                    echo "<li><a href='login.php'>Login</a></li>";
                }
            ?>

            <li><a href="favorites.php">Favorites</a></li>
        </ul>
    </section>
</body>
</html>