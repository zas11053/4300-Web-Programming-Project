<?php
    include_once 'header.php'
?>

<section class="signup-form">
    <h2>Log In</h2>
    <div class="signup-form-form">
        <form action="includes/login.inc.php" method="post">
            <input type="text" name="uid" placeholder="Username...">
            <input type="password" name="pwd" placeholder="Password...">
            <button type="submit" name="submit">Log In!</button>
        </form>

        <p>Don't have an account? Click <a href="signup.php">here</a> to make one!</p>
    </div>
    <?php
    if (isset($_GET["error"])) {
        if ($_GET["error"] == "emptyInput") {
            echo "<p>Fill in all fields!</p>";
        } else if ($_GET["error"] == "wrongLogin") {
            echo "<p>Incorrect login information!</p>";
        } 
    }
    ?>
</section>

<?php
    include_once 'footer.php'
?>