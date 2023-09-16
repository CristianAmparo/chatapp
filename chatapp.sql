-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220811.d237752642
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 12:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `read_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `timestamp`, `read_status`) VALUES
(1, 476154715, 681038845, 'Hell juwel', '2023-09-16 09:49:23', 1),
(2, 476154715, 681038845, 'Hi juwel', '2023-09-16 09:49:23', 1),
(3, 476154715, 681038845, 'ovi', '2023-09-16 09:49:23', 1),
(4, 681038845, 476154715, 'ki khobor?', '2023-09-16 09:49:23', 1),
(5, 476154715, 681038845, 'eito valo.tor ki khobor?', '2023-09-16 09:49:23', 1),
(6, 476154715, 681038845, 'hey', '2023-09-16 09:49:23', 1),
(7, 681038845, 476154715, 'This is my house & you are not part of that house.', '2023-09-16 09:49:23', 1),
(8, 476154715, 681038845, 'nice.', '2023-09-16 09:49:23', 1),
(9, 476154715, 681038845, 'he', '2023-09-16 09:49:23', 1),
(10, 476154715, 681038845, 'you are nice', '2023-09-16 09:49:23', 1),
(11, 476154715, 681038845, 'your hair is good', '2023-09-16 09:49:23', 1),
(19, 1548656227, 661750899, 'hi hahaha', '2023-09-16 09:49:23', 0),
(20, 1548656227, 661750899, 'asdasdasd', '2023-09-16 09:49:23', 0),
(21, 1548656227, 661750899, 'asdasdasd', '2023-09-16 09:49:23', 0),
(22, 1548656227, 661750899, 'asdasda', '2023-09-16 09:49:23', 0),
(23, 681038845, 661750899, 'asfasfas', '2023-09-16 09:49:23', 0),
(25, 661750899, 661750899, 'baliw kaba', '2023-09-16 09:49:23', 0),
(26, 661750899, 1548656227, 'lol', '2023-09-16 09:49:23', 0),
(27, 661750899, 1548656227, 'hahaha', '2023-09-16 09:49:23', 0),
(28, 1548656227, 661750899, 'baliw kaba', '2023-09-16 09:49:23', 0),
(29, 607444104, 661750899, 'Hi admin hehe', '2023-09-16 09:49:23', 0),
(30, 661750899, 607444104, 'hello', '2023-09-16 09:49:23', 0),
(31, 607444104, 661750899, 'whatsup', '2023-09-16 09:49:23', 0),
(32, 607444104, 1548656227, 'hi maam', '2023-09-16 09:49:23', 0),
(33, 1548656227, 607444104, 'why', '2023-08-16 09:49:23', 0),
(34, 607444104, 490235952, 'asdasdasd', '2023-09-16 09:49:23', 0),
(35, 607444104, 368558200, 'sample', '2023-09-16 09:49:23', 0),
(36, 607444104, 350855711, 'asdasd', '2023-09-16 09:49:23', 0),
(37, 607444104, 299092906, 'asda', '2023-09-16 09:49:23', 0),
(38, 607444104, 378841321, 'asdasd', '2023-09-16 09:49:23', 0),
(39, 378841321, 607444104, '212123', '2023-09-16 09:49:23', 0),
(40, 607444104, 490235952, 'sdasdasd', '2023-09-16 09:49:23', 0),
(41, 490235952, 607444104, 'asdasd', '2023-09-16 09:49:23', 0),
(42, 607444104, 490235952, 'asdasd', '2023-09-16 09:49:23', 0),
(43, 1548656227, 607444104, 'im admin', '2023-09-16 09:49:23', 0),
(44, 607444104, 1548656227, 'my name is cristian', '2023-09-16 09:49:23', 0),
(45, 607444104, 1548656227, 'hi admin can you assist me', '2023-09-16 09:49:23', 0),
(46, 1548656227, 607444104, 'hello cristian how can i help you?', '2023-09-16 09:49:23', 0),
(47, 1548656227, 607444104, 'asdasdas', '2023-09-16 09:49:23', 0),
(48, 607444104, 613221240, 'good day po1', '2023-09-16 09:49:23', 0),
(49, 613221240, 607444104, 'yas?', '2023-09-16 09:49:23', 0),
(50, 661750899, 607444104, 'asdasd', '2023-09-16 09:49:23', 0),
(51, 1548656227, 607444104, 'zxc', '2023-09-16 09:49:23', 0),
(52, 490235952, 607444104, 'asdasd', '2023-09-16 09:49:47', 0),
(53, 607444104, 535836777, 'ads', '2023-09-16 10:10:39', 0),
(54, 535836777, 607444104, 'asdasd', '2023-09-16 10:23:00', 0),
(55, 350855711, 607444104, 'asdasd', '2023-09-16 10:59:00', 0),
(56, 607444104, 535836777, 'ads', '2023-09-16 11:16:49', 0),
(57, 661750899, 607444104, 'hi', '2023-09-15 11:38:14', 0),
(58, 1548656227, 607444104, 'asdasd', '2023-09-16 12:09:02', 0),
(59, 1645026420, 607444104, 'asdasd', '2023-09-16 12:13:57', 0),
(60, 661750899, 607444104, 'asdasd', '2023-09-16 12:14:37', 0),
(61, 535836777, 607444104, 'asdasd', '2023-09-16 12:15:54', 0),
(62, 368558200, 607444104, 'hi', '2023-09-16 12:16:03', 0),
(63, 607444104, 661750899, 'what can i do for you', '2023-09-16 12:16:27', 0),
(64, 1645026420, 607444104, 'hi sample 8', '2023-09-16 12:16:36', 0),
(65, 1645026420, 607444104, 'hhaha', '2023-09-16 15:12:31', 0),
(66, 661750899, 607444104, 'nothing', '2023-09-16 15:22:02', 0),
(67, 661750899, 607444104, 'sample chat', '2023-09-16 15:22:54', 0),
(68, 607444104, 661750899, 'hi', '2023-09-16 15:23:05', 0),
(69, 661750899, 607444104, 'lol', '2023-09-16 15:24:25', 0),
(70, 661750899, 607444104, 'hi', '2023-09-16 15:24:51', 0),
(71, 661750899, 607444104, 'helllo', '2023-09-16 15:27:00', 0),
(72, 607444104, 661750899, 'hii', '2023-09-16 15:27:37', 0),
(73, 661750899, 607444104, 'hello', '2023-09-16 15:29:01', 0),
(74, 607444104, 661750899, 'hi din', '2023-09-16 15:31:04', 0),
(75, 607444104, 661750899, 'hi maam', '2023-09-16 15:31:49', 0),
(76, 661750899, 607444104, 'asd', '2023-09-16 15:49:53', 0),
(77, 661750899, 607444104, 'asdasd', '2023-09-16 15:52:38', 0),
(78, 607444104, 661750899, 'asdasdasd', '2023-09-16 15:52:44', 0),
(79, 661750899, 607444104, 'asdasd', '2023-09-16 15:52:52', 0),
(80, 607444104, 661750899, 'asdasd', '2023-09-16 15:53:55', 0),
(81, 661750899, 607444104, 'asdasd', '2023-09-16 15:54:03', 0),
(82, 607444104, 661750899, 'hi', '2023-09-16 17:53:25', 0),
(83, 661750899, 607444104, 'well', '2023-09-16 18:08:09', 0),
(84, 607444104, 661750899, 'hi', '2023-09-16 18:10:29', 0),
(85, 661750899, 607444104, 'bakitttt problema mo', '2023-09-16 18:10:49', 0),
(86, 607444104, 661750899, 'hi admin', '2023-09-16 18:18:48', 0),
(87, 661750899, 607444104, 'bakit nanaman', '2023-09-16 18:19:05', 0),
(88, 607444104, 661750899, 'wala lang pakyu', '2023-09-16 18:19:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(3, 1548656227, 'cristian', 'amparo', 'christianamparo132@gmail.com', 'sample', '1690769939channel-1.jpeg', 'Offline now'),
(4, 535836777, 'sample', 'sample1', 'sample@gmail.com', 'sample', '1690769998my-channel.jpeg', 'Offline now'),
(5, 661750899, 'cristian', 'amparo', 'cristianamparo132@gmail.com', 'luna0121', '1694581705profile.png', 'Active now'),
(6, 607444104, 'Admin', 'CvSU', 'Admin@cvsu.edu.ph', 'admin123', '1694755582admin.png', 'Active now'),
(7, 490235952, 'sample', '1', 'sample1@gmail.com', 'sample123', '1694764140breakfast.png', 'Offline now'),
(8, 299092906, 'sample', '3', 'sample3@gmail.com', 'sample', '1694767503close.png', 'Offline now'),
(9, 350855711, 'sample', '4', 'sample4@gmail.com', 'sample', '1694767524darkMode.png', 'Offline now'),
(10, 368558200, 'sample', '5', 'sample5@gmail.com', 'sample', '1694767552arrowdown.png', 'Offline now'),
(11, 378841321, 'sample', '6', 'sample6@gmail.com', 'sample', '1694767916hamburger.png', 'Offline now'),
(12, 613221240, 'sample', '7', 'sample7@gmail.com', 'sample', '1694770869bestsellers.png', 'Offline now'),
(13, 1645026420, 'sample', '8', 'sample8@gmail.com', 'sample', '1694772503breakfast.png', 'Offline now'),
(14, 1465266157, 'sample', '12', 'sample12@gmail.com', 'sample', '1694831226bestsellers.png', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
