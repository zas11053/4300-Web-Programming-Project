-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 11:49 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `usersName` varchar(255) NOT NULL,
  `usersUID` varchar(255) NOT NULL,
  `usersPWD` varchar(255) NOT NULL,
  `secuirtyQuestion1` varchar(255) DEFAULT NULL,
  `secuirtyQuestion2` varchar(255) DEFAULT NULL,
  `secuirtyQuestion3` varchar(255) DEFAULT NULL,
  `pfp_img_dir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `usersName`, `usersUID`, `usersPWD`, `secuirtyQuestion1`, `secuirtyQuestion2`, `secuirtyQuestion3`, `pfp_img_dir`) VALUES
(1, 'Tina Liu', 'tinybear101', '$2y$10$1nsOWhL.oXL19uu4WY7kB.vr40WZyIHj.Zmaa2N9B6MUy0CzZ2cFG', '123', '123', '123', './uploads/622f05c7466353.58478069.png'),
(2, 'Tina Liu', 'tinybear102', '$2y$10$5BNVH4GxgilHu26Znfd/8eax5W5bikrfg5b2DaGBUkH0DT3htFi0i', '123', '123', '123', './images/DEFAULT.jpg'),
(3, 'tina liu', 'cutecutebear', '$2y$10$F1tq60HgA0gSqpqp6k7awOw2jGgcn1tgb96KUhf9QDb.DDtORkt7S', '123', '123', '123', './images/DEFAULT.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
