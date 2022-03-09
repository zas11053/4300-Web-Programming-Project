<?php
    require_once 'includes/dbh.inc.php';
    include_once 'header.php';
?>

<!DOCTYPE html>
<?php
    /** I am not sure if the cookie should be in this file or the myProfile.php file, but I will change when I ask Dr. Mario */
    $cookie_name = "user";
    $cookie_value = "user ID";
    if(count($_COOKIE) > 0) {
        echo "Cookies are enabled.";
    } else {
        echo "Cookies are disabled";
        setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); //30 days
        echo "Cookies are now enabled";
    }
?>

<html>
    <?php
        if(!isset($_COOKIE[$cookie_name])) {
            echo "Cookie named '". $cookie_name . "' is not set!";        
        } else {
            echo "Cookie '" . $cookie_name . "' is set! <br>";
            echo "Value is: " . $_COOKIE[$cookie_name];
        }
    ?>
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
    <?php
        include_once 'footer.php';
    ?>
</html>