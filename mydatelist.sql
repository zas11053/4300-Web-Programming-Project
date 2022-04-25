-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 02:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatelist`
--

-- --------------------------------------------------------

--
-- Table structure for table `fav`
--

CREATE TABLE `fav` (
  `favID` int(11) NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `usersIDS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fav`
--

INSERT INTO `fav` (`favID`, `postID`, `usersIDS`) VALUES
(37, 56, 5),
(38, 59, 5);

-- --------------------------------------------------------

--
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `imgID` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `img_dir` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`imgID`, `usersID`, `postID`, `img_dir`) VALUES
(125, 5, 56, './uploads/56_0__DSC0651.JPG'),
(126, 5, 57, './uploads/57_0_image7.jpeg'),
(127, 5, 58, './uploads/58_0_image.jpg'),
(128, 5, 59, './uploads/59_0_movie.jpg'),
(129, 5, 59, './uploads/59_1_pelican.jpg'),
(130, 5, 60, './uploads/60_0_IMG_0004.JPG'),
(131, 7, 61, './uploads/61_0_AtlantaBeltLine.jpeg'),
(132, 7, 62, './uploads/62_0_HoustonsAtlanta.jpeg'),
(133, 7, 63, './uploads/63_0_EscapeRoomAtlanta.jpeg'),
(134, 7, 64, './uploads/64_0_LittleFivePointsAtlanta.jpeg'),
(135, 7, 65, './uploads/65_0_TopDraftAtlanta.jpeg'),
(136, 8, 66, './uploads/66_0_harrypoter3.jpeg'),
(137, 8, 66, './uploads/66_1_harrypotter1.jpg'),
(138, 8, 66, './uploads/66_2_harryPotter2.jpg'),
(139, 8, 67, './uploads/67_0_cafe1.jpg'),
(140, 8, 67, './uploads/67_1_cafe2.jpg'),
(141, 8, 67, './uploads/67_2_cafe3.jpg'),
(142, 8, 67, './uploads/67_3_cafe4.jpg'),
(143, 8, 68, './uploads/68_0_mellowmushroomathens.png'),
(144, 8, 68, './uploads/68_1_mushroom1.jpg'),
(145, 8, 68, './uploads/68_2_mushroom4.jpeg'),
(146, 8, 68, './uploads/68_3_pizza3.jpg'),
(147, 8, 69, './uploads/69_0_beach2.webp'),
(148, 8, 69, './uploads/69_1_beach3.jpg'),
(149, 8, 69, './uploads/69_2_picnic1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `location` longtext NOT NULL,
  `type` text NOT NULL,
  `description` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `savedAmount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `usersID`, `title`, `location`, `type`, `description`, `date`, `savedAmount`) VALUES
(56, 5, 'IM Fields', 'Athens, GA', 'casual', '<p>All of this time we have lived in Athens, we did not know that there was a trail behind the IM fields. We enjoyed an amazing walk through the trail and then had a nice picnic as we watched the sunset. What a beautiful day we had!&nbsp;</p>\r\n', '2022-04-24 22:15:32', 1),
(57, 5, 'Day-trip', 'Anywhere', 'casual', '<p>We hopped in the car and saw where a tank of gas got us. We ended up making it to the next town and had an adventure exploring the shops and restaurants. It was so fun doing this, especially with one of my favorite people.</p>\r\n', '2022-04-24 22:20:54', 0),
(58, 5, 'UGA Museum of Art', 'Athens, GA', 'casual', '<p>If you haven&#39;t been to your nearest museum since your class field trip, it&#39;s time to make a trip! This museum has so much to offer from art that changes monthly to pieces that stay. Being a college student, it was nice to have something close and on campus to explore.&nbsp;</p>\r\n', '2022-04-24 22:25:45', 0),
(59, 5, 'Pelicans and a Movie', 'Athens, GA', 'fancy', '<p>This was a chill but classic date night.</p>\r\n\r\n<p>We spiced it up and dressed up too!</p>\r\n\r\n<p>We watched Turning Red and then snuck into another movie (shhhhhh).</p>\r\n\r\n<p><img alt=\"\" src=\"http://photos.cinematreasures.org/production/photos/23746/1314480966/large.jpg?1314480966\" style=\"height:220px; width:300px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://lumiere-a.akamaihd.net/v1/images/p_turningred_v2_21513_76ff27f6.png\" style=\"height:300px; width:200px\" /></p>\r\n\r\n<p>We then went out to dinner and got Pelicans snowballs afterward.&nbsp;&nbsp;<img alt=\"cheeky\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" /></p>\r\n', '2022-04-24 23:01:45', 1),
(60, 5, 'Game Night', 'Athens, GA', 'home', '<p>We invited friends over and played Blank Slate, Never Have I Ever, and Pictionary. It was a blast!</p>\r\n', '2022-04-24 23:08:23', 0),
(61, 7, 'Atlanta Belt Line', 'Atlanta', 'casual', '<p>Wanted to go get a good walk in, see the sun set, or see great views of the city? The belt line has it all! With multiple bars and resturaunts on the way, very great starting date.&nbsp;</p>\r\n', '2022-04-24 23:12:02', 0),
(62, 7, 'Houstons', 'Atlanta', 'fancy', '<p>Exquisite dining, fine food, and a great atmosphere, an all-around amazing restaurant!</p>\r\n', '2022-04-24 23:13:07', 0),
(63, 7, 'Escape Room', 'Atlanta', 'casual', '<p>A great way to see your partner&#39;s critical thinking skills! A very enjoyable experience that involves lots of fun problem-solving puzzles.&nbsp;</p>\r\n', '2022-04-24 23:14:26', 0),
(64, 7, 'Little Five Points', 'Atlanta ', 'casual', '<p>From bars to restaurants to unique and special shopping, little five points is a great casual date.</p>\r\n', '2022-04-24 23:16:23', 0),
(65, 7, 'Top Draft ', 'Atlanta', 'casual', '<p>A perfect spot for sport&#39;s lover&#39;s alike! Unlike a TacoMac or a Buffalo Wild Wings, the top draft has a much more modern approach, as well as shows off Atlanta&#39;s most stunning views from its rooftop!</p>\r\n', '2022-04-24 23:18:09', 0),
(66, 8, 'Harry Potter Movie Marathon ', 'Home', 'home', '<p>Felt like rewatching Harry Potter movies.</p>\r\n\r\n<p>Spent the whole 2 days rewatching all the Harry Potter Movies !!</p>\r\n\r\n<p>GO&nbsp;<strong>Gryffindor!!!!!</strong></p>\r\n', '2022-04-24 23:57:38', 0),
(67, 8, 'Cafe Hopping ', 'Seoul, South Korea', 'casual', '<p>Just felt like eating sweets.</p>\r\n\r\n<p>Jumped from cafe to cafe.</p>\r\n', '2022-04-25 00:00:12', 0),
(68, 8, 'Mellow Mushroom Splurge', 'Athens, GA', 'casual', '<ul>\r\n	<li>ordered a bunch of different pizza and food from mellow mushroom</li>\r\n	<li>never tried it before&nbsp;</li>\r\n	<li>the price was okay</li>\r\n	<li>it was pretty good</li>\r\n	<li>I ate a whole bunch.&nbsp;</li>\r\n	<li>the crust &nbsp;so thin, my pizza was gonna slide off. Cry Cry<img alt=\"crying\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/cry_smile.png\" style=\"height:23px; width:23px\" title=\"crying\" /></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2022-04-25 00:05:17', 0),
(69, 8, 'Beach time Picnic ', 'Gangwon-do, South Korea', 'casual', '<p>Vaca in South Korea and decided to hit up the Beach in Sampo.</p>\r\n\r\n<p>Had a picnic and then some friends joined afterward .</p>\r\n\r\n<p>Got to see some purple sky. It was so pretty.<img alt=\"heart\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\r\n\r\n<p>It was some nice memories.</p>\r\n', '2022-04-25 00:11:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `usersName` varchar(255) NOT NULL,
  `usersUID` varchar(255) NOT NULL,
  `usersPWD` varchar(255) NOT NULL,
  `securityQuestion1` varchar(255) DEFAULT NULL,
  `securityQuestion2` varchar(255) DEFAULT NULL,
  `securityQuestion3` varchar(255) DEFAULT NULL,
  `pfp_img_dir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `usersName`, `usersUID`, `usersPWD`, `securityQuestion1`, `securityQuestion2`, `securityQuestion3`, `pfp_img_dir`) VALUES
(5, 'Zaharia', 'zsel', '$2y$10$uHWwOh20Yoz4du9yy24aR.pPxmlB2/ESDtgLTAhiZV4x2tV4p8rTC', 'Z', 'idk', 'idk', './uploads/5_pfp6265cc3d5ddd77.22501211.jpeg'),
(6, 'blake laczynski', 'blakelaz', '$2y$10$eS6qI8IQcNwaZAQtsWKEceHCIeJYLr37ueOkTO.t4HhC0pglPvB.W', 'laz', 'laz', 'laz', './images/DEFAULT.jpg'),
(7, 'blake laczynski', 'blakeL', '$2y$10$mNc2M5Bu9UrVcwjT5JPw7.7O5JyPbv0dTzcnNbYX92H9AN3rOjvTW', 'LAKS', 'ksk', 'skk', './images/DEFAULT.jpg'),
(8, 'tina', 'Tina', '$2y$10$XUhDtgHE4Ag/mYIrEseXj.QFZDTb2mou0847j/v3FxKa3SWSiuRj.', '123', '123', '123', './images/DEFAULT.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fav`
--
ALTER TABLE `fav`
  ADD PRIMARY KEY (`favID`);

--
-- Indexes for table `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`imgID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fav`
--
ALTER TABLE `fav`
  MODIFY `favID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `imgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
