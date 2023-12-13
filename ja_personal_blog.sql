-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 07:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ja_personal_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `title` varchar(512) NOT NULL,
  `body` text NOT NULL,
  `resource_url` text DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`title`, `body`, `resource_url`, `is_published`, `created_at`, `updated_at`, `category_id`, `_id`) VALUES
('Deployment of Node.js applications', 'Understand the different ways to deploy your Node.js applications, including on-premises, cloud, and container environments...', NULL, 0, '0000-00-00 00:00:00', '2023-12-11 19:23:46', NULL, 12),
('Authentication and Authorization in Node.js', 'Learn how to add authentication and authorization to your Node.js web applications using Passport.js or other authentication libraries.', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 13),
('Understand how to work with MongoDB and Mongoose', 'Understand how to work with MongoDB and Mongoose, an Object Data Modeling (ODM) library, in Node.js applications.', '', 1, '0000-00-00 00:00:00', '2023-12-11 22:11:11', NULL, 14),
('build real-time, event-driven applications in Node.js', 'Socket.io: Learn how to use Socket.io to build real-time, event-driven applications in Node.js.', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 15),
('Discover how to use Express.js', 'Discover how to use Express.js, a popular Node.js web framework, to build web applications.', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 16),
('Asynchronous Programming with Node.js', 'Asynchronous Programming with Node.js: Explore the asynchronous nature of Node.js and how it allows for non-blocking I/O operations.', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 17),
('Learn the basics of Node.js and its architecture', 'Learn the basics of Node.js and its architecture, how it works, and why it is popular among developers.', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 18),
('NodeJs Limiting Network Traffic', 'Learn how to limit netowrk traffic.', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 19),
('Learn Morgan - HTTP Request logger for NodeJs', 'Learn Morgan.', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 20),
('test ', 'test', 'https://drive.google.com/file/d/13XfmgkS_6ijIaH0sP-5y1UJz0e7Pb7TV/view?usp=drive_link', 1, '2023-12-11 19:42:12', '2023-12-11 21:53:51', NULL, 25),
('test 2', 'test', 'https://drive.google.com/file/d/13XfmgkS_6ijIaH0sP-5y1UJz0e7Pb7TV/view?usp=drive_link', 1, '2023-12-11 22:04:04', '2023-12-11 23:25:49', NULL, 26),
('test 3', 'test', 'https://drive.google.com/file/d/13XfmgkS_6ijIaH0sP-5y1UJz0e7Pb7TV/view?usp=drive_link', 1, '2023-12-11 22:04:16', '2023-12-11 23:26:31', NULL, 27),
('test 4', 'test', 'https://drive.google.com/file/d/13XfmgkS_6ijIaH0sP-5y1UJz0e7Pb7TV/view?usp=drive_link', 1, '2023-12-11 23:26:14', '0000-00-00 00:00:00', NULL, 28),
('test 5', 'test', 'https://drive.google.com/file/d/13XfmgkS_6ijIaH0sP-5y1UJz0e7Pb7TV/view?usp=drive_link', 1, '2023-12-11 23:38:25', '0000-00-00 00:00:00', NULL, 29);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `_id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`_id`, `username`, `password`) VALUES
(1, 'admin', '$2b$12$K/d92gL6.2zyTCinbf8Tt.gxgzK0w.xVeNtQ4jsODaWt6c950.fDe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `category_FK` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `category_FK` FOREIGN KEY (`category_id`) REFERENCES `categories` (`_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
