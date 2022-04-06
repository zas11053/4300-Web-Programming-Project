-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 11:06 AM
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
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `imgID` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `img_dir` longtext NOT NULL,
  `caption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`imgID`, `usersID`, `postID`, `img_dir`, `caption`) VALUES
(4, 1, 3, '../uploads/3_0_1790.jpg', ''),
(5, 1, 3, '../uploads/3_1_mochaBear.jpg', ''),
(6, 1, 4, '../uploads/4_0_1790.jpg', ''),
(7, 1, 4, '../uploads/4_1_mochaBear.jpg', '');

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
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `usersID`, `title`, `location`, `type`, `description`) VALUES
(3, 1, 'Working', 'Home', 'home', '<p>Hello. <strong>Testinging 1 </strong>2 3</p>\r\n'),
(4, 1, 'Working', 'Home', 'home', '<p>Hello. <strong>Testinging 1 </strong>2 3</p>\r\n');

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
(1, 'Tina Liu', 'MochaBear', '$2y$10$.l8tQuIYacdXxlNegiKBuuiByTI9CshRvLHvJgiRtYuKvtWWEz6zG', '123', '123', '123', './uploads/MochaBear_pfp.jpg'),
(2, 'Tina Liu', 'Tina', '$2y$10$Gjz3nWB4w40q44/D9MLobOlwM9jKG8hckwlYYQicWVHitW3DXLXqe', '123', '123', '123', './images/DEFAULT.jpg');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `imgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
