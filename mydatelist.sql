-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 08:44 AM
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
(16, 48, 1),
(21, 46, 2),
(22, 45, 2),
(23, 44, 2),
(24, 43, 2),
(25, 42, 2),
(26, 39, 2),
(27, 19, 2),
(28, 17, 2),
(31, 48, 2);

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
(6, 1, 4, './uploads/3_0_1790.jpg'),
(7, 1, 4, './uploads/3_0_1790.jpg'),
(8, 2, 5, './uploads/3_0_1790.jpg'),
(9, 1, 6, './uploads/3_0_1790.jpg'),
(10, 1, 7, './uploads/3_0_1790.jpg'),
(11, 1, 8, './uploads/3_0_1790.jpg'),
(12, 1, 9, './uploads/3_0_1790.jpg'),
(13, 1, 10, './uploads/3_0_1790.jpg'),
(14, 1, 11, './uploads/3_0_1790.jpg'),
(15, 1, 12, './uploads/3_0_1790.jpg'),
(16, 1, 13, './uploads/3_0_1790.jpg'),
(17, 1, 14, './uploads/3_0_1790.jpg'),
(18, 1, 15, './uploads/3_0_1790.jpg'),
(19, 1, 16, './uploads/3_0_1790.jpg'),
(20, 1, 17, './uploads/3_0_1790.jpg'),
(21, 1, 18, './uploads/18_0_1790.jpg'),
(22, 1, 19, './uploads/19_0_1790.jpg'),
(23, 1, 20, './uploads/20_0_aflawlesssilence.JPG'),
(24, 1, 21, './uploads/21_0_tinaGradPhoto_1.jpg'),
(25, 1, 22, './uploads/22_0_aflawlesssilence.JPG'),
(26, 1, 23, './uploads/23_0_odinkey..PNG'),
(27, 1, 23, './uploads/23_1_oracle_commandTwice.JPG'),
(28, 1, 23, './uploads/23_2_shiba inu.jpg'),
(29, 1, 24, './uploads/24_0_1790.jpg'),
(30, 1, 25, './uploads/24_0_1790.jpg'),
(39, 1, 29, './uploads/29_0_1790.jpg'),
(40, 1, 29, './uploads/29_1_aflawlesssilence.JPG'),
(41, 1, 29, './uploads/29_2_color.JPG'),
(42, 1, 29, './uploads/29_3_cryingbear.png'),
(43, 1, 30, './uploads/30_0_1790.jpg'),
(44, 1, 30, './uploads/30_1_aflawlesssilence.JPG'),
(45, 1, 30, './uploads/30_2_color.JPG'),
(46, 1, 30, './uploads/30_3_cryingbear.png'),
(55, 1, 33, './uploads/33_0_1790.jpg'),
(56, 1, 34, './uploads/34_0_1790.jpg'),
(57, 1, 34, './uploads/34_1_aflawlesssilence.JPG'),
(58, 1, 34, './uploads/34_2_color.JPG'),
(59, 1, 34, './uploads/34_3_cryingbear.png'),
(60, 1, 35, './uploads/35_0_1790.jpg'),
(61, 1, 35, './uploads/35_1_aflawlesssilence.JPG'),
(62, 1, 35, './uploads/35_2_color.JPG'),
(63, 1, 35, './uploads/35_3_cryingbear.png'),
(64, 1, 36, './uploads/36_0_1790.jpg'),
(65, 1, 36, './uploads/36_1_aflawlesssilence.JPG'),
(66, 1, 36, './uploads/36_2_color.JPG'),
(67, 1, 36, './uploads/36_3_cryingbear.png'),
(68, 1, 37, './uploads/37_0_1790.jpg'),
(69, 1, 37, './uploads/37_1_aflawlesssilence.JPG'),
(70, 1, 37, './uploads/37_2_color.JPG'),
(71, 1, 37, './uploads/37_3_cryingbear.png'),
(72, 1, 38, './uploads/38_0_1790.jpg'),
(73, 1, 38, './uploads/38_1_aflawlesssilence.JPG'),
(74, 1, 38, './uploads/38_2_color.JPG'),
(75, 1, 38, './uploads/38_3_cryingbear.png'),
(76, 1, 39, './uploads/39_0_1790.jpg'),
(77, 1, 39, './uploads/39_1_aflawlesssilence.JPG'),
(78, 1, 39, './uploads/39_2_color.JPG'),
(79, 1, 39, './uploads/39_3_cryingbear.png'),
(80, 1, 40, './uploads/40_0_1790.jpg'),
(81, 1, 40, './uploads/40_1_aflawlesssilence.JPG'),
(82, 1, 40, './uploads/40_2_color.JPG'),
(83, 1, 40, './uploads/40_3_cryingbear.png'),
(84, 1, 41, './uploads/41_0_1790.jpg'),
(85, 1, 41, './uploads/41_1_aflawlesssilence.JPG'),
(86, 1, 41, './uploads/41_2_color.JPG'),
(87, 1, 41, './uploads/41_3_cryingbear.png'),
(88, 1, 42, './uploads/42_0_1790.jpg'),
(89, 1, 42, './uploads/42_1_aflawlesssilence.JPG'),
(90, 1, 42, './uploads/42_2_color.JPG'),
(91, 1, 42, './uploads/42_3_cryingbear.png'),
(92, 1, 43, './uploads/43_0_1790.jpg'),
(93, 1, 43, './uploads/43_1_aflawlesssilence.JPG'),
(94, 1, 43, './uploads/43_2_color.JPG'),
(95, 1, 43, './uploads/43_3_cryingbear.png'),
(96, 1, 44, './uploads/44_0_1790.jpg'),
(97, 1, 44, './uploads/44_1_aflawlesssilence.JPG'),
(98, 1, 44, './uploads/44_2_color.JPG'),
(99, 1, 44, './uploads/44_3_cryingbear.png'),
(100, 1, 45, './uploads/45_0_1790.jpg'),
(101, 1, 45, './uploads/45_1_aflawlesssilence.JPG'),
(102, 1, 45, './uploads/45_2_color.JPG'),
(103, 1, 45, './uploads/45_3_cryingbear.png'),
(104, 1, 46, './uploads/46_0_1790.jpg'),
(105, 1, 46, './uploads/46_1_aflawlesssilence.JPG'),
(106, 1, 46, './uploads/46_2_color.JPG'),
(107, 1, 46, './uploads/46_3_cryingbear.png'),
(112, 1, 48, './uploads/48_0_DSC_0032.JPG'),
(113, 1, 48, './uploads/48_1_DSC_0033.JPG'),
(114, 1, 48, './uploads/48_2_DSC_0034.JPG'),
(115, 1, 48, './uploads/48_3_DSC_0035.JPG');

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
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `usersID`, `title`, `location`, `type`, `description`, `date`) VALUES
(4, 1, 'Working', 'Home', 'home2', '<p>Hello. <strong>Testinging 1 </strong>2 3</p>\r\n', '2022-04-08 17:32:12'),
(5, 2, 'hello 4', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina&nbsp;</p>\r\n', '2022-04-08 17:32:12'),
(6, 1, 'hello 4', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina&nbsp;</p>\r\n', '2022-04-08 17:32:12'),
(7, 1, 'hello 4', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina 5</p>\r\n', '2022-04-08 17:32:12'),
(8, 1, 'hello 4 for real', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina 5</p>\r\n', '2022-04-08 17:32:12'),
(9, 1, 'hello 4 for real', 'HOME', 'casual', '<p>whats <span style=\"color:#27ae60\">uus </span>tina 5 whas us&nbsp;</p>\r\n', '2022-04-08 17:32:12'),
(10, 1, 'bye for real', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(11, 1, 'love you', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(12, 1, '9', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(13, 1, '8', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(14, 1, '7', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(15, 1, '6', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(16, 1, '5', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(17, 1, '4', 'HOME', 'casual', '<p>1234&nbsp;<s>sss</s></p>\r\n', '2022-04-08 17:32:12'),
(18, 1, 'hello', 'd', 'home', '<p>dddddddddddd<s>dddddddddddd</s></p>\r\n', '2022-04-08 19:36:19'),
(19, 1, 's', 's', 'casual', '<p>s</p>\r\n', '2022-04-08 19:38:54'),
(20, 1, 'hello', 'stil', 'casual', '<p>still work</p>\r\n', '2022-04-08 19:43:00'),
(21, 1, 'is there pic', 'hi', 'casual', '<p>e</p>\r\n', '2022-04-09 04:25:50'),
(22, 1, 's', 's', 'fancy', '<p>s</p>\r\n', '2022-04-09 04:40:52'),
(23, 1, 'multi pic check', 's', 'casual', '<p>s</p>\r\n', '2022-04-09 05:01:24'),
(24, 1, 's', 's', 'fancy', '<p>s</p>\r\n', '2022-04-09 05:59:45'),
(25, 1, 'hello', 'h', 'casual', '<p>q</p>\r\n', '2022-04-09 06:20:41'),
(29, 1, 'hello', 'w', 'casual', '<p>ww</p>\r\n', '2022-04-10 06:36:34'),
(30, 1, 'hello', 'w', 'casual', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n', '2022-04-10 06:40:35'),
(33, 1, 'home2?', 's', 'home', '<p>s</p>\r\n', '2022-04-10 21:47:58'),
(34, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:43:20'),
(35, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:44:22'),
(36, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:45:48'),
(37, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:46:29'),
(38, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:48:29'),
(39, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:48:41'),
(40, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:20'),
(41, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:26'),
(42, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:30'),
(43, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:49:54'),
(44, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Loremt. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:50:04'),
(45, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:50:10'),
(46, 1, 'VIEW PAGE ', 'HOME', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Lectus arcu bibendum at varius vel pharetra vel turpis. Proin fermentum leo vel orci porta non pulvinar neque laoreet. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Magnis dis parturient montes nascetur ridiculus mus. Urna neque viverra justo nec ultrices. Accumsan tortor posuere ac ut consequat semper. Commodo nulla facilisi nullam vehicula ipsum a. At quis risus sed vulputate odio. Lorem sed risus ultricies tristique. Nullam eget felis eget nunc lobortis mattis aliquam. Arcu non sodales neque sodales ut etiam sit amet.</p>\r\n\r\n<p>Lacus luctus accumsan tortor posuere ac ut consequat semper. Viverra suspendisse potenti nullam ac. Auctor eu augue ut lectus arcu bibendum at varius. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Nisi quis eleifend quam adipiscing vitae proin sagittis. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Cursus turpis massa tincidunt dui ut ornare. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Dignissim diam quis enim lobortis scelerisque fermentum. Pharetra diam sit amet nisl suscipit adipiscing bibendum. In hendrerit gravida rutrum quisque non tellus. Scelerisque in dictum non consectetur a erat nam at. Ullamcorper a lacus vestibulum sed arcu. Sed euismod nisi porta lorem mollis aliquam ut.</p>\r\n\r\n<p>Quis varius quam quisque id diam vel. Dui faucibus in ornare quam viverra orci sagittis eu. Et netus et malesuada fames. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sapien pellentesque habitant morbi tristique senectus et. Scelerisque fermentum dui faucibus in. Odio ut sem nulla pharetra diam sit amet nisl suscipit. Donec ultrices tincidunt arcu non sodales neque sodales ut. Sit amet porttitor eget dolor morbi non arcu risus quis. Nulla pharetra diam sit amet nisl. Nunc lobortis mattis aliquam faucibus purus in massa tempor. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Risus feugiat in ante metus dictum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elementum eu facilisis sed odio morbi. Eget duis at tellus at urna condimentum mattis pellentesque. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Amet cursus sit amet dictum sit amet. Ut etiam sit amet nisl purus in mollis nunc.</p>\r\n\r\n<p>Donec enim diam vulputate ut pharetra sit amet aliquam. Ac odio tempor orci dapibus. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien. Non diam phasellus vestibulum lorem sed. Sit amet volutpat consequat mauris nunc congue nisi. Sodales ut eu sem integer vitae justo. Vel risus commodo viverra maecenas accumsan lacus vel. Lectus sit amet est placerat in. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Pretium quam vulputate dignissim suspendisse in est ante in. Ultricies leo integer malesuada nunc vel risus commodo. Velit egestas dui id ornare. Ultrices in iaculis nunc sed. Malesuada fames ac turpis egestas sed.</p>\r\n\r\n<p>Turpis in eu mi bibendum neque egestas congue. Ut sem nulla pharetra diam sit amet nisl. Netus et malesuada fames ac turpis egestas. Dui accumsan sit amet nulla. Amet venenatis urna cursus eget nunc. Non consectetur a erat nam at lectus urna duis. Placerat duis ultricies lacus sed turpis tincidunt id. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna. Turpis egestas pretium aenean pharetra. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Blandit turpis cursus in hac habitasse platea.</p>\r\n', '2022-04-11 21:50:29'),
(48, 1, 'South Carolina Vaca', 'South Carolina , Myrtle Beach  ', 'casual', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada fames ac turpis egestas. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Viverra nibh cras pulvinar mattis nunc sed. Tincidunt dui ut ornare lectus sit amet. Ac turpis egestas sed tempus. Gravida rutrum quisque non tellus orci. Purus sit amet luctus venenatis. Semper auctor neque vitae tempus quam pellentesque. Venenatis cras sed felis eget. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Integer quis auctor elit sed. Nunc mi ipsum faucibus vitae aliquet nec. Orci eu lobortis elementum nibh tellus molestie nunc.</p>\r\n\r\n<p>Orci ac auctor augue mauris augue neque gravida in. Condimentum id venenatis a condimentum vitae sapien pellentesque. Ultrices neque ornare aenean euismod elementum nisi. Neque sodales ut etiam sit amet nisl. Felis imperdiet proin fermentum leo vel orci porta non. Porttitor massa id neque aliquam vestibulum morbi. Aliquam ultrices sagittis orci a scelerisque purus semper eget. Ut lectus arcu bibendum at varius vel pharetra vel turpis. Pellentesque massa placerat duis ultricies lacus. Nulla porttitor massa id neque aliquam vestibulum. Ut etiam sit amet nisl purus in mollis nunc. Id cursus metus aliquam eleifend. Est ullamcorper eget nulla facilisi etiam dignissim diam quis. Duis ut diam quam nulla porttitor massa id neque. Dolor sit amet consectetur adipiscing elit duis tristique. Laoreet non curabitur gravida arcu ac. In est ante in nibh mauris cursus mattis molestie a. Risus feugiat in ante metus dictum at.</p>\r\n\r\n<p>Proin sed libero enim sed faucibus turpis in eu mi. Odio facilisis mauris sit amet massa vitae tortor. Pretium viverra suspendisse potenti nullam ac tortor. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Viverra nibh cras pulvinar mattis nunc sed blandit libero volutpat. Libero nunc consequat interdum varius sit amet mattis vulputate. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Donec et odio pellentesque diam volutpat commodo sed. A condimentum vitae sapien pellentesque. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Egestas quis ipsum suspendisse ultrices gravida. Volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim. Nec feugiat nisl pretium fusce id velit. Dui accumsan sit amet nulla facilisi morbi tempus. Proin libero nunc consequat interdum.</p>\r\n\r\n<p>Risus viverra adipiscing at in tellus integer feugiat. Sem integer vitae justo eget magna fermentum iaculis eu non. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque. Donec et odio pellentesque diam volutpat. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Sed lectus vestibulum mattis ullamcorper. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Pharetra massa massa ultricies mi quis hendrerit. In pellentesque massa placerat duis ultricies lacus. Sociis natoque penatibus et magnis dis parturient. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra. In vitae turpis massa sed elementum tempus. Turpis egestas pretium aenean pharetra magna.</p>\r\n\r\n<p>Mauris rhoncus aenean vel elit scelerisque mauris. Sed vulputate odio ut enim blandit volutpat maecenas volutpat. Proin nibh nisl condimentum id venenatis a. Pretium viverra suspendisse potenti nullam ac tortor vitae. In fermentum et sollicitudin ac. Ullamcorper morbi tincidunt ornare massa. Dictumst vestibulum rhoncus est pellentesque elit. Consectetur a erat nam at. Facilisi etiam dignissim diam quis enim lobortis. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin. Quis vel eros donec ac.</p>\r\n', '2022-04-12 01:02:48');

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
(1, 'Tina Liu', 'MochaBear', '$2y$10$.l8tQuIYacdXxlNegiKBuuiByTI9CshRvLHvJgiRtYuKvtWWEz6zG', '123', '123', '123', './uploads/1_pfp.jpg'),
(2, 'Tina Liu', 'Tina', '$2y$10$Gjz3nWB4w40q44/D9MLobOlwM9jKG8hckwlYYQicWVHitW3DXLXqe', '123', '123', '123', './uploads/3_0_1790.jpg');

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
  MODIFY `favID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `imgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
