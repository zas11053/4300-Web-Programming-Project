# 4300-Web-Programming-Project
Zaharia Selman, Blake Laczynski, Tina Liu, Mary Grace Tippett

## What is MyDateList?
MyDateList is an interactive, informative website for all romantics. Guest users may search for and view various date posts, and registered users may do these things in addition to favoriting and creating a post. Date posts give the user information on how to have the perfect date, such as location, price, food, pictures, and much more.

## The Starting Point
Once you follow the instructions below on downloading the source code, importing the SQL data into your mySQL database, and navigating to our website on your localhost, you will find yourself on the MyDateList homepage, called home.php. This PHP file is our website's version of a traditional index.html file, as it is the starting point and the central page for any guest on our website. It displays all kinds of date ideas from other users.

## Starting MyDateList
1 - Drag the web project directory to the htdocs/test sub-directory in your XAMPP file

2 - Import the SQL tables and data to MySQL using the mydatelist.sql file provided

3 - Start Apache and MySQL in the XAMPP Control Panel

4 - Go to your localhost url and click on this newly added folder; you should be taken to the homepage

5 - Log In with the below credentials OR Sign Up and create your own username and password

   * Valid Username: zselman3
   * Valid Password: Pa$$word2

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
MyDateList has functions including but not limited to:
<ul>
    <li>Account Functionality</li>
    1. Creating a new account</br>
    2. Logging in to an existing account</br>
    3. Logging out from the website</br>
    4. Saving login sessions</br>
    5. Updating username and password from settings</br>
    <li>Profile/Post Management</li>
    1. Creating a new profile</br>
    2. Editing an existing profile</br>
    3. Adding a profile picture</br>
    4. Creating a new post</br>
    5. Favoriting an existing post</br>
    6. Commenting on an existing post</br>
    <li>Application Security</li>
    1. Input validation of all fields</br>
    2. Error handling of all fields</br>
</ul>

## Libararies/Frameworks Used
MyDateList was built using HTML, CSS, MySQL, PHP, and JavaScript.

## Code
No starter code was used for this project. All source code, files, and images are open-source and can be found at this project's [GitHub Repository](https://github.com/zas11053/4300-Web-Programming-Project).
