<?php
include_once 'header.php';
?>

<div class="myAccount">

<div class="settingLinks">

<ul style="list-style: none; line-height: 300%;">
<li><h1> MY ACCOUNT </h1></li>
<li><a href =settings.php> Edit Profile </a></li>
<li><a href =mypage.php> My Page </a></li>
<li><a href =post.php> Create Post </a></li>
<li><a href =favorites.php> Favorites </a></li>
<li><a href =includes/logout.inc.php> Log Out </a></li>
</ul>
</div>

<div class="editProfile">
<h2> Edit Profile </h2><hr style="border-top: 3px solid #dcdcdc; margin-top: 10px; margin-bottom: 10px;">

<h2> CHANGE YOUR ACCOUNT DETAILS </h2>

<div class="settingsBox">
<div class="usernameSettings">
<form action ="includes/updateUsername.inc.php" method="post">
    <!-- Placeholder is the text in the box you see -->
    <input type = "text" name="username" id ="text" placeholder="New Username"> <br/> <br/>
    <input type = "submit" name="submit" value="Update Username">
    <br/> <br/>
</form>
</div>

<div class="passwordSettings">
<form action ="includes/updatePassword.inc.php" method="post">
    <!-- Placeholder is the text in the box you see -->
    <input type = "text" name="password" id ="text" placeholder="Current Password"> <br/> <br/>
    <input type = "text" name="password" id ="text" placeholder="New Password"> <br/> <br/>
    <input type = "text" name="password" id ="text" placeholder="Verify New Password"> <br/> <br/>
    <input type = "submit" name="submit" value="Update Password">
    <br/> <br/>
</form>
</div>
</div>
</div>

</div>
<?php
include_once 'footer.php';
?>

