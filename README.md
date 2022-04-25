# 4300-Web-Programming-Project

Zaharia Selman, Blake Laczynski, Tina Liu, Mary Grace Tippett

## What is MyDateList?

MyDateList is an interactive, informative website for all romantics. Guest users may search for and view various date posts, and registered users may do these things in addition to favoriting and creating a post. Date posts give the user information on how to have the perfect date, such as location, price, food, pictures, and much more.

## The Entry Point

Once you follow the instructions below on downloading the source code, importing the SQL data into your mySQL database, and navigating to our website on your localhost, you will find yourself on the MyDateList homepage, called home.php. This PHP file is our website's version of a traditional index.html file, as it is the starting point and the central page for any guest on our website. It displays all kinds of date ideas from other users.

## Starting MyDateList

1 - Drag the web project directory to the htdocs/test sub-directory in your XAMPP file

2 - Import the SQL tables and data to MySQL using the mydatelist.sql file provided

3 - Start Apache and MySQL in the XAMPP Control Panel

4 - Go to your localhost url and click on this newly added folder; you should be taken to the homepage

5 - Sign Up and create your own username and password

6 - Explore our interactive website. Enjoy!

### XAMPP

XAMPP should be used to run MyDateList since it is built using HTML, CSS, JavaScript, MySQL, and PHP. The servers that are mentioned above, Apache and MySQL, are the only ones necessary to run MyDateList. To start these servers, just click the 'Start' button under the 'Actions' category of your XAMPP Control Panel.

### Copying Source Files

All work to create and update MyDateList was done on GitHub. You can download the source files for this project as a ZIP file, or you can go to the [GitHub Repository](https://github.com/zas11053/4300-Web-Programming-Project) and clone the repository onto your computer. Remember, the source code must be downloaded or cloned into the htdocs directory inside your XAMPP folder.

### Setting up MyDateList's Database

As mentioned above, all SQL needed to run MyDateList can be found in the mydatelist.sql file that is provided. To import this data, first enter the following command to create your database.

CREATE TABLE mydatelist;

Then, import the mydatelist.sql file. The rest will be done automatically!

### Opening MyDateList

To open MyDateList, go to your chosen web browser and type the following URL: '''localhost/mydatelist'''. This URL may be different if you are running localhost on a different port. For example, if your localhost is running on port 8080, your URL would look like this: '''localhost:8080/mydatelist'''. Remember, you must have Apache and MySQL servers up and running for this URL to work. After entering this URL, the MyDateList homepage should appear, and you should be able to navigate about our website.

## Functionality

MyDateList has functions including:

<ul>
    <li>Account Functionality</li>
    1. Creating a new account</br>
    2. Logging in to an existing account</br>
    3. Logging out from the website</br>
    4. Saving login sessions</br>
    5. Updating username and password from settings</br>
    <li>Profile/Post Management</li>
    1. Editing an existing profile</br>
    2. Adding a profile picture</br>
    3. Creating a new post</br>
    4. Favoriting an existing post</br>
    <li>Application Security</li>
    1. Input validation of all fields</br>
    2. Error handling of all fields</br>
</ul>

## Libararies/Frameworks Used

MyDateList was built using HTML, CSS, MySQL, PHP, and JavaScript. The framework that was used is CKeditor4. This allowed us to have a rich WYSIWYG Editor.

## Browsers

Our website has been tested and works on Chrome and Windows Edge for Windows Operating Systems.
For better viewing experience, best to view on an laptop at least 15". If on a smaller laptop, can optimze screen
display by zooming out:) ENJOY BROWSING!

## Folder Structure

C:.<br>
│ .DS_Store <br>
│ about.php<br>
│ answer.php<br>
│ editPost.php<br>
│ favorites.php<br>
│ footer.php<br>
│ forgotPassword.php<br>
│ header.php<br>
│ home.php<br>
│ login.php<br>
│ mydatelist.sql<br>
│ mypage.php<br>
│ newPassword.php<br>
│ post.php<br>
│ README.md<br>
│ searchPage.php<br>
│ settings.php<br>
│ signup.php<br>
│ uploadProfile.php<br>
│ userPage.php<br>
│ viewPost.php<br>
│<br>
├───css<br>
│ fav.css<br>
│ header.css<br>
│ home.css<br>
│ login.css<br>
│ myPage.css<br>
│ post.css<br>
│ settings.css<br>
│ viewPost.css<br>
│<br>
├───documentation<br>
│ USER GUIDE.pdf<br>
| FINAL DELIVERABLE.pdf <br>
├───images<br>
│ DEFAULT.jpg<br>
│ MyDateList.png<br>
│ group.jpg<br>
│<br>
├───includes<br>
│ dbh.inc.php<br>
│ delete.inc.php<br>
│ fav.inc.php<br>
│ favPostData.inc.php<br>
│ functions.inc.php<br>
│ HomePostData2.inc.php<br>
│ login.inc.php<br>
│ logout.inc.php<br>
│ myPagePostData.inc.php<br>
│ newPassword.inc.php<br>
│ post-update.inc.php<br>
│ post-upload.inc.php<br>
│ search.inc.php<br>
│ signup.inc.php<br>
│ top-fav.inc.php<br>
│ update.inc.php<br>
│ updatePassword.inc.php<br>
│ updateUsername.inc.php<br>
│ usersPagePostData.inc.php<br>
│ verifyquestions.inc.php<br>
│ verifyusername.inc.php<br>
│<br>
└───uploads<br>
19_0_1790.jpg<br>
1_pfp.jpg<br>
26_0_mochaBear.jpg<br>
27_0_color.JPG<br>
27_1_cryingbear.png<br>
2_pfp.jpg<br>
3_0_1790.jpg<br>
3_pfp.jpg<br>
47_0_DSC_0032.JPG<br>
47_1_DSC_0033.JPG<br>
47_2_DSC_0034.JPG<br>
47_3_DSC_0035.JPG<br>
48_0_DSC_0032.JPG<br>
48_1_DSC_0033.JPG<br>
48_2_DSC_0034.JPG<br>
48_3_DSC_0035.JPG<br>
4_pfp.jpg<br>
51_0_Scanner_issue_project1.JPG<br>
54_0**DSC0651.JPG<br>
5_0_Chastain-Park.jpg<br>
6_0_last resort.jpg<br>
6_0**DSC0651.JPG<br>
7_0_last resort.jpg<br>
8_0_last resort.jpg<br>
9_0_test.jpg<br>
<br>

## Code

No starter code was used for this project. All source code, files, and images are open-source and can be found at this project's [GitHub Repository](https://github.com/zas11053/4300-Web-Programming-Project).
