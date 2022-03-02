<?php
    include_once 'header.php'
?>

<section class="signup-form">
    <h2>Sign Up</h2>
    <div class="signup-form-form">
        <form action="includes/signup.inc.php" method="post">
            <input type="text" name="name" placeholder="Full Name...">
            <input type="text" name="uid" placeholder="Username...">
            <input type="password" name="pwd" placeholder="Password...">
            <input type="password" name="pwdRepeat" placeholder="Repeat Password...">
            <button type="submit" name="submit">Sign Up!</button>
        </form>
    </div>
    <?php
    if (isset($_GET["error"])) {
        if ($_GET["error"] == "emptyInput") {
            echo "<p>Fill in all fields!</p>";
        } else if ($_GET["error"] == "invalidUID") {
            echo "<p>Choose a proper username!</p>";
        } else if ($_GET["error"] == "passwordsDontMatch") {
            echo "<p>Passwords don't match!</p>";
        } else if ($_GET["error"] == "stmtFailed") {
            echo "<p>Something went wrong!</p>";
        } else if ($_GET["error"] == "usernameTaken") {
            echo "<p>Username already taken!</p>";
        } else if ($_GET["error"] == "none") {
            echo "<p>You are signed up!</p>";
        }
    }
    ?>
</section>

<?php
    include_once 'footer.php'
?>