-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 05:44 AM
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
(38, 59, 5),
(39, 78, 10),
(40, 79, 10),
(41, 83, 10),
(42, 73, 10),
(43, 70, 10),
(44, 66, 10),
(45, 69, 10),
(46, 67, 10),
(47, 56, 10);

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
(149, 8, 69, './uploads/69_2_picnic1.jpg'),
(150, 5, 70, './uploads/70_0_A5EE4CC2-0300-4ED4-91F1-A110B60D09C8_1_105_c.jpeg'),
(151, 5, 70, './uploads/70_1_C15C6AAF-D782-4369-9444-6FED92EA2DC3_1_105_c.jpeg'),
(152, 5, 71, './uploads/71_0_656C7C0B-C82D-4987-AE92-48326CCFBE85_1_105_c.jpeg'),
(153, 5, 72, './uploads/72_0_B93D32C9-88DB-4A57-BE5C-681035D99938_1_105_c.jpeg'),
(154, 5, 73, './uploads/73_0_55C7C396-3B5A-4939-9185-90415268138D_1_105_c.jpeg'),
(155, 5, 74, './uploads/74_0_E71AD28F-D068-4C8C-8AA9-A8C67326F54D_1_105_c.jpeg'),
(156, 10, 75, './uploads/75_0_aracde2.jpg'),
(157, 10, 75, './uploads/75_1_arcade1.jpeg'),
(158, 10, 76, './uploads/76_0_botanticalGarden2.jpg'),
(159, 10, 76, './uploads/76_1_botanticalGarden.jpg'),
(160, 10, 76, './uploads/76_2_20201105_163350.jpg'),
(161, 10, 76, './uploads/76_3_20201105_160944.jpg'),
(162, 10, 77, './uploads/77_0_iceskat2.jpg'),
(163, 10, 77, './uploads/77_1_ice1.jpg'),
(164, 10, 78, './uploads/78_0_fancy.jpg'),
(165, 10, 78, './uploads/78_1_sundial2.jpeg'),
(166, 10, 78, './uploads/78_2_sundial1.jpeg'),
(167, 10, 79, './uploads/79_0_cruise4.jpg'),
(168, 10, 79, './uploads/79_1_cruise3.jpg'),
(169, 10, 79, './uploads/79_2_cruise2.jpg'),
(170, 10, 79, './uploads/79_3_cruise.jpg'),
(171, 10, 80, './uploads/80_0_picnic2.jpg'),
(172, 10, 80, './uploads/80_1_picnic1.jpg'),
(173, 10, 81, './uploads/81_0_beach2.jpg'),
(174, 10, 81, './uploads/81_1_beach1.jpg'),
(175, 10, 82, './uploads/82_0_drink7.jpg'),
(176, 10, 82, './uploads/82_1_drink5.jpg'),
(177, 10, 82, './uploads/82_2_drink4.jpg'),
(178, 10, 82, './uploads/82_3_drink3.jpg'),
(179, 10, 82, './uploads/82_4_drink2.jpg'),
(180, 10, 82, './uploads/82_5_drink1.jpg'),
(181, 10, 83, './uploads/83_0_homedrink4.jpg'),
(182, 10, 83, './uploads/83_1_homedrink2.jpg'),
(183, 10, 83, './uploads/83_2_homedrink1.jpg'),
(184, 10, 83, './uploads/83_3_homedrink.jpg');

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
(56, 5, 'IM Fields', 'Athens, GA', 'casual', '<p>All of this time we have lived in Athens, we did not know that there was a trail behind the IM fields. We enjoyed an amazing walk through the trail and then had a nice picnic as we watched the sunset. What a beautiful day we had!&nbsp;</p>\r\n', '2022-04-24 22:15:32', 2),
(57, 5, 'Day-trip', 'Anywhere', 'casual', '<p>We hopped in the car and saw where a tank of gas got us. We ended up making it to the next town and had an adventure exploring the shops and restaurants. It was so fun doing this, especially with one of my favorite people.</p>\r\n', '2022-04-24 22:20:54', 0),
(58, 5, 'UGA Museum of Art', 'Athens, GA', 'casual', '<p>If you haven&#39;t been to your nearest museum since your class field trip, it&#39;s time to make a trip! This museum has so much to offer from art that changes monthly to pieces that stay. Being a college student, it was nice to have something close and on campus to explore.&nbsp;</p>\r\n', '2022-04-24 22:25:45', 0),
(59, 5, 'Pelicans and a Movie', 'Athens, GA', 'fancy', '<p>This was a chill but classic date night.</p>\r\n\r\n<p>We spiced it up and dressed up too!</p>\r\n\r\n<p>We watched Turning Red and then snuck into another movie (shhhhhh).</p>\r\n\r\n<p><img alt=\"\" src=\"http://photos.cinematreasures.org/production/photos/23746/1314480966/large.jpg?1314480966\" style=\"height:220px; width:300px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://lumiere-a.akamaihd.net/v1/images/p_turningred_v2_21513_76ff27f6.png\" style=\"height:300px; width:200px\" /></p>\r\n\r\n<p>We then went out to dinner and got Pelicans snowballs afterward.&nbsp;&nbsp;<img alt=\"cheeky\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" /></p>\r\n', '2022-04-24 23:01:45', 1),
(60, 5, 'Game Night', 'Athens, GA', 'home', '<p>We invited friends over and played Blank Slate, Never Have I Ever, and Pictionary. It was a blast!</p>\r\n', '2022-04-24 23:08:23', 0),
(61, 7, 'Atlanta Belt Line', 'Atlanta', 'casual', '<p>Wanted to go get a good walk in, see the sun set, or see great views of the city? The belt line has it all! With multiple bars and resturaunts on the way, very great starting date.&nbsp;</p>\r\n', '2022-04-24 23:12:02', 0),
(62, 7, 'Houstons', 'Atlanta', 'fancy', '<p>Exquisite dining, fine food, and a great atmosphere, an all-around amazing restaurant!</p>\r\n', '2022-04-24 23:13:07', 0),
(63, 7, 'Escape Room', 'Atlanta', 'casual', '<p>A great way to see your partner&#39;s critical thinking skills! A very enjoyable experience that involves lots of fun problem-solving puzzles.&nbsp;</p>\r\n', '2022-04-24 23:14:26', 0),
(64, 7, 'Little Five Points', 'Atlanta ', 'casual', '<p>From bars to restaurants to unique and special shopping, little five points is a great casual date.</p>\r\n', '2022-04-24 23:16:23', 0),
(65, 7, 'Top Draft ', 'Atlanta', 'casual', '<p>A perfect spot for sport&#39;s lover&#39;s alike! Unlike a TacoMac or a Buffalo Wild Wings, the top draft has a much more modern approach, as well as shows off Atlanta&#39;s most stunning views from its rooftop!</p>\r\n', '2022-04-24 23:18:09', 0),
(66, 8, 'Harry Potter Movie Marathon ', 'Home', 'home', '<p>Felt like rewatching Harry Potter movies.</p>\r\n\r\n<p>Spent the whole 2 days rewatching all the Harry Potter Movies !!</p>\r\n\r\n<p>GO&nbsp;<strong>Gryffindor!!!!!</strong></p>\r\n', '2022-04-24 23:57:38', 1),
(67, 8, 'Cafe Hopping ', 'Seoul, South Korea', 'casual', '<p>Just felt like eating sweets.</p>\r\n\r\n<p>Jumped from cafe to cafe.</p>\r\n', '2022-04-25 00:00:12', 1),
(68, 8, 'Mellow Mushroom Splurge', 'Athens, GA', 'casual', '<ul>\r\n	<li>ordered a bunch of different pizza and food from mellow mushroom</li>\r\n	<li>never tried it before&nbsp;</li>\r\n	<li>the price was okay</li>\r\n	<li>it was pretty good</li>\r\n	<li>I ate a whole bunch.&nbsp;</li>\r\n	<li>the crust &nbsp;so thin, my pizza was gonna slide off. Cry Cry<img alt=\"crying\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/cry_smile.png\" style=\"height:23px; width:23px\" title=\"crying\" /></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2022-04-25 00:05:17', 0),
(69, 8, 'Beach time Picnic ', 'Gangwon-do, South Korea', 'casual', '<p>Vaca in South Korea and decided to hit up the Beach in Sampo.</p>\r\n\r\n<p>Had a picnic and then some friends joined afterward .</p>\r\n\r\n<p>Got to see some purple sky. It was so pretty.<img alt=\"heart\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\r\n\r\n<p>It was some nice memories.</p>\r\n', '2022-04-25 00:11:07', 1),
(70, 5, 'SkyView Ferris Wheel', 'Atlanta, GA', 'casual', '<p>This was a great first date location and super fun to see downtown ATL! Would recommend to anyone. It&#39;s about $15 per person to go on the ferris wheel. If you want to make it even better, you can go to a concert at The Tabernacle in the same night, which is located right next to the ferris wheel.</p>\r\n', '2022-04-25 01:15:43', 1),
(71, 5, 'Cloudland Canyon Hike', 'Rising Fawn, GA', 'casual', '<p>An easy hike, and easy to talk with your date without having to make tons of eye contact (which is a plus). The hike is a&nbsp;6 mile loop, or&nbsp;you can just walk down the stairs to the waterfalls. Parking is free, and the views are amazing! Can&#39;t believe this is located in Georgia.</p>\r\n', '2022-04-25 01:16:57', 0),
(72, 5, 'High Museum of Art', 'Atlanta, GA', 'casual', '<p>I went for the Obama portraits exhibit, which was so cool! Very fun to walk around and see all the original art they have on display. I wouldn&#39;t recommend to anyone too chatty because the museum is pretty quiet, but it&#39;s a great way to learn about history while on your date.</p>\r\n', '2022-04-25 01:17:39', 0),
(73, 5, 'Beach day', 'Any beach!', 'casual', '<p>These pictures are from Turks and Caicos, but any beach will do for this date! If you&#39;re looking for a super casual and easy-going date, this one is it. The only downside I can think of is if weather turns bad or if you get sunburnt. So don&#39;t forget to put some sunscreen on before you go!</p>\r\n', '2022-04-25 01:18:16', 1),
(74, 5, 'Cali N Tito\'s Dinner', 'Athens, GA', 'casual', '<p>Cali N Tito&#39;s has the best vibe for a first date. I went on a Friday night, and it was super crowded, but the line moved fast and our food came out quickly. There were lots of other couples there for dinner too. Overall, one of my favorite restaurants in Athens just because of great atmosphere it creates.</p>\r\n', '2022-04-25 01:19:00', 0),
(75, 10, 'Funny Land Arcade Date ', 'Seoul, South Korea', 'casual', '<p>Skipped school and decided to go to a aracde in Funny Land.</p>\r\n\r\n<p>Won some plushies after 100 tries and then played games at arcade.<img alt=\"blush\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/embarrassed_smile.png\" style=\"height:23px; width:23px\" title=\"blush\" /><img alt=\"blush\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/embarrassed_smile.png\" style=\"height:23px; width:23px\" title=\"blush\" /><img alt=\"cheeky\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" /></p>\r\n', '2022-04-25 01:54:41', 0),
(76, 10, 'Botanical Garden', 'Athens, GA', 'casual', '<p>Visited UGA Botantical Garden.</p>\r\n\r\n<p>IT WAS SOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO PRETTY <span style=\"background-color:#e67e22\">UwU</span></p>\r\n\r\n<p><img alt=\"heart\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"yes\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /><img alt=\"kiss\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/kiss.png\" style=\"height:23px; width:23px\" title=\"kiss\" /></p>\r\n', '2022-04-25 02:02:03', 0),
(77, 10, 'Ice Skating @ Avalon', 'Alpharetta, GA', 'casual', '<p>Heard there was an ourdoor skating rink.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Wanted to enjoy the cold and skate with my boyfriend.</p>\r\n\r\n<p>Had to teach him ice skating. It was an eventful 1st date.<img alt=\"blush\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/embarrassed_smile.png\" style=\"height:23px; width:23px\" title=\"blush\" /></p>\r\n', '2022-04-25 02:05:41', 0),
(78, 10, 'Sundial ', 'Atlanta, GA', 'fancy', '<p>Decide to experience the Sun Dial down in Atlanta, GA for our<em><u> <span style=\"font-size:22px\"><span style=\"color:#4e5f70\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span class=\"marker\"><strong>10 year&nbsp;anniversary&nbsp;</strong></span></span></span></span></u></em></p>\r\n\r\n<p>Order a lot. Decided to treat myself!!</p>\r\n\r\n<ul>\r\n	<li>Appetizer:\r\n	<ul>\r\n		<li>Seafood Chowder</li>\r\n		<li>Classic Caesar</li>\r\n	</ul>\r\n	</li>\r\n	<li>Entre:\r\n	<ul>\r\n		<li>BBQ Pork Tomahwk&nbsp;</li>\r\n		<li>16 oz New York Strip</li>\r\n		<li>Briased 16oz Bone in Short Rib</li>\r\n		<li>8oz Filet Mignon</li>\r\n	</ul>\r\n	</li>\r\n	<li>Dessert:\r\n	<ul>\r\n		<li>Blood Orange Creme Burlee&nbsp;</li>\r\n		<li>Chef Selection of Fresh&nbsp;Berries</li>\r\n		<li>Lemon Cream Cake</li>\r\n	</ul>\r\n	</li>\r\n	<li>Drinks\r\n	<ul>\r\n		<li>merlot&nbsp;</li>\r\n		<li>sprite</li>\r\n	</ul>\r\n	</li>\r\n	<li>Location:&nbsp;<a href=\"https://www.google.com/maps/dir/?api=1&amp;destination=The%20Sun%20Dial%20Restaurant%2C%20Bar%20%26%20View%20210%20Peachtree%20St%20%20Atlanta%2C%20GA%2030303\" rel=\"noopener noreferrer\" target=\"_blank\">210 Peachtree St Atlanta, GA 30303</a></li>\r\n	<li><a href=\"https://www.sundialrestaurant.com/\">Sun Dial</a></li>\r\n</ul>\r\n\r\n<p>Probably spend over 1k. But it was worth it. NO LEFTOVERS!!!! Ate everything!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>\r\n', '2022-04-25 02:20:29', 1),
(79, 10, 'Hamilton Cruise ', 'East Caribbean ', 'fancy', '<p>Graduation trip with my Boo<img alt=\"kiss\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/kiss.png\" style=\"height:23px; width:23px\" title=\"kiss\" /><img alt=\"heart\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\r\n\r\n<p>Took a East Carribbean 2 week cruise.</p>\r\n\r\n<ul>\r\n	<li>went to St. Martin and St. Thomas</li>\r\n	<li>The cruise was so relaxing</li>\r\n	<li>I just ate and ate and drank at the bar</li>\r\n</ul>\r\n\r\n<p>Got to explore some really nice place.</p>\r\n\r\n<p>Totally recommended.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This experience made me feel even closer to my Boyfriend</p>\r\n', '2022-04-25 02:29:46', 1),
(80, 10, 'Picnic ', 'Piedmont, Atlanta ', 'casual', '<p>After class at Emory, met up with my boo at GSU and went to Piedmont Park for a relaxing afternoon.</p>\r\n\r\n<p>Had a picnic.</p>\r\n\r\n<p>Bought food at and wine at Kroger.</p>\r\n\r\n<p>Nice view and pretty me<img alt=\"cheeky\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" /></p>\r\n', '2022-04-25 02:35:37', 0),
(81, 10, 'Long Beach', 'Long Beach, LA', 'casual', '<p>Just got an convertible because we cool like that. Had to top it off with some Gentle Monster sunglasses.</p>\r\n\r\n<p>Had a cute picnic at the beach.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>took a nap</li>\r\n	<li>ate some food. brought grapes, onigiri, strawberries, and some tiramisu</li>\r\n	<li>layed and scrolled on tiktok</li>\r\n	<li>bathe in the sun</li>\r\n	<li>watched the sunset</li>\r\n	<li>played tag on the beach like we 5</li>\r\n	<li>and took a scroll<img alt=\"heart\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"blush\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/embarrassed_smile.png\" style=\"height:23px; width:23px\" title=\"blush\" /></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '2022-04-25 02:41:00', 0),
(82, 10, 'Drinking Party', 'Sunset Avenue, Los Angeles ', 'fancy', '<p>Last night in LA. Had to go partying. WHOP WHHOOOP. WOOOOOOOOOO<img alt=\"cheeky\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" /></p>\r\n\r\n<p>Bought a 1k dress at a shopping center just for tonight.</p>\r\n\r\n<p>Had to go all out for the photo.:)</p>\r\n\r\n<ul>\r\n	<li>went to a bar recommended by a stranger friend met at Mcdonals</li>\r\n	<li>Drank some wine and beer and rum and others........&nbsp;don&#39;t know name of&nbsp;</li>\r\n	<li>drank and drank and drank</li>\r\n	<li>passed out on middle of road</li>\r\n	<li>puked</li>\r\n	<li>ended up in nearby hotel</li>\r\n	<li>woke up and didn&#39;t remember anything</li>\r\n	<li>based on phone gallery.LOOKS LIKE WE HAD FUN. !!!</li>\r\n	<li>drank too much... might need a 1 weeek break:(((((((</li>\r\n</ul>\r\n', '2022-04-25 02:56:58', 0),
(83, 10, 'Drinking @ Home', 'Home', 'home', '<ul>\r\n	<li>Lazy to go out</li>\r\n	<li>Stayed home and did some netflix and chill with some alochol&nbsp;</li>\r\n	<li>popped open some Sangre deToro</li>\r\n	<li>Set up an Projector</li>\r\n	<li>did some karokee and watched some movies</li>\r\n	<li>watched :&nbsp;\r\n	<ul>\r\n		<li>High School Musical 1, 2, 3</li>\r\n		<li>made me cry<img alt=\"crying\" src=\"https://cdn.ckeditor.com/4.18.0/full/plugins/smiley/images/cry_smile.png\" style=\"height:23px; width:23px\" title=\"crying\" /></li>\r\n	</ul>\r\n	</li>\r\n	<li>passed out on couch&nbsp;</li>\r\n	<li>woke up because of bird chirpping .</li>\r\n	<li>chirp chirp chirp&nbsp;</li>\r\n</ul>\r\n', '2022-04-25 03:00:55', 1);

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
(5, 'Zaharia', 'zsel', '$2y$10$uHWwOh20Yoz4du9yy24aR.pPxmlB2/ESDtgLTAhiZV4x2tV4p8rTC', 'Z', 'idk', 'idk', './uploads/5_pfp6265ed289285a0.91647351.jpg'),
(6, 'blake laczynski', 'blakelaz', '$2y$10$eS6qI8IQcNwaZAQtsWKEceHCIeJYLr37ueOkTO.t4HhC0pglPvB.W', 'laz', 'laz', 'laz', './images/DEFAULT.jpg'),
(7, 'blake laczynski', 'blakeL', '$2y$10$mNc2M5Bu9UrVcwjT5JPw7.7O5JyPbv0dTzcnNbYX92H9AN3rOjvTW', 'LAKS', 'ksk', 'skk', './images/DEFAULT.jpg'),
(8, 'tina', 'Tina', '$2y$10$XUhDtgHE4Ag/mYIrEseXj.QFZDTb2mou0847j/v3FxKa3SWSiuRj.', '123', '123', '123', './images/DEFAULT.jpg'),
(9, 'Tina Liu', 'MochaBear', '$2y$10$0jXio1fD2AzZ0YFGEyuVeevkmy.XnWFBqbYUz68m.q7zYbrpzoq7G', '123', '123', '123', './images/DEFAULT.jpg'),
(10, 'Melon Change', 'MelonMelonMelon', '$2y$10$bQwBxiEsB/Vha8Aea7XhxO6Yu/xukG87nf9GqMoA.FpjwFTlbmR8S', '123', '123', '123', './uploads/10_pfp6265fde83f6e18.58518833.jpg');

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
  MODIFY `favID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `imgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
