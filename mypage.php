<?php
include_once 'header.php';
?>

<h1> IN "MY PAGE page" </h1>
 
<h2><a href =includes/logout.inc.php> Log Out </a></h2>

<!-----NEW CODE MONDAY 3/14/2022------------>
<?php
require_once('includes/dbh.inc.php');
$username=$_SESSION["usersUID"];
echo $_SESSION["usersUID"];
$sql = "SELECT pfp_img_dir FROM users WHERE usersUID='$username'";
$result = mysqli_query($conn, $sql);
$image_dir = mysqli_fetch_assoc($result);
print_r($image_dir);
echo $image_dir['pfp_img_dir'];
$img=$image_dir['pfp_img_dir'];
echo "<img style='width:100px; height: 100px' src= '$img'>";


?>

<form action ="uploadProfile.php" method ="POST" enctype="multipart/form-data">
    <input type ="file" name="file">
    <button type="submit" name="submit"> UPLOAD </button>
</form>

<!----------------------------------------------------------------------------------------------->
   
<?php
include_once 'footer.php';
?>
