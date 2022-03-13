-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 09:55 AM
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
-- Database: `sia2`
--

-- --------------------------------------------------------

--
-- Table structure for table `siatest`
--

CREATE TABLE `siatest` (
  `email` varchar(40) NOT NULL,
  `pass` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `created_by` varchar(40) DEFAULT NULL,
  `updated_by` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` varchar(36) NOT NULL,
  `author_id` varchar(36) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_is_complete` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `author_id`, `task_name`, `task_is_complete`, `created_at`, `updated_at`, `status`) VALUES
('577e1da7-9f85-11ec-8e25-08606e6e0e8b', 'b3a751d9-9f84-11ec-8e25-08606e6e0e8b', 'new meta ni boss dogs \'to', 1, '2022-03-09 16:45:58', '2022-03-09 16:52:22', 1),
('5ada088d-9f85-11ec-8e25-08606e6e0e8b', 'b3a751d9-9f84-11ec-8e25-08606e6e0e8b', 'new meta ni boss dogs', 0, '2022-03-09 16:46:04', '2022-03-09 16:54:14', 0),
('72efd95c-9f81-11ec-8e25-08606e6e0e8b', '0dde6367-9f69-11ec-abab-08606e6e0e8b', 'new meta ni boss dogs \'to', 1, '2022-03-09 16:18:06', '2022-03-09 16:23:17', 1),
('971d9c22-9f80-11ec-8e25-08606e6e0e8b', '0dde6367-9f69-11ec-abab-08606e6e0e8b', 'omcm boss dogs', 0, '2022-03-09 16:11:58', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(36) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `created_at`, `updated_at`, `status`) VALUES
('0dde6367-9f69-11ec-abab-08606e6e0e8b', 'bossbaylesystem123@gmail.com', '$2b$12$sVQtoE5cwvTOeqDLWn7juOu5TtEQav3JYlKen0E2Aso2FR1Az8sT2', '2022-03-09 13:23:29', '2022-03-09 16:42:17', 0),
('b3a751d9-9f84-11ec-8e25-08606e6e0e8b', 'bossbaylesystem@gmail.com', '$2b$12$UqEZTIGKXxn/0SbAnDT1p.8hA9XYF5eAnFfYaMVFEW9rJB5dgUm1W', '2022-03-09 16:41:24', NULL, 1),
('cfedb11f-9ee7-11ec-a31e-08606e6e0e8b', 'turoni', '$2b$12$jrDSO1SwAl6W375V52S50uiRbRIa/udm9SGoTfFHP5zEJoZVS0Osy', '2022-03-08 21:58:20', '2022-03-09 16:29:59', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siatest`
--
ALTER TABLE `siatest`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
