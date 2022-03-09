<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="main.css" />
</head>
<body>
    <header>
        <ul>
            <h2> MyDateList </h2>
            <li><a class ="active" href="index.php">Home</a></li>
            <li><a href="about.php">About</a></li>
        
            <?php
                if (isset($_SESSION["usersUID"])) {
                    echo "<li><a href='myProfile.php'>My Profile</a></li>";
                } else {
                    echo "<li><a href='login.php'>Login</a></li>";
                }
            ?>

            <li><a href="favorites.php">Favorites</a></li>
        </ul>
    </header>
</body>
</html>