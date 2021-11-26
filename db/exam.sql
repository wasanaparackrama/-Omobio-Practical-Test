-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 08:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `pswdFailedAttempts` int(11) DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdUser` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updatedUser` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `createdTime` datetime NOT NULL,
  `updatedTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `auth_key`, `status`, `pswdFailedAttempts`, `password`, `password_hash`, `password_reset_token`, `email`, `verification_token`, `createdUser`, `updatedUser`, `createdTime`, `updatedTime`) VALUES
(1, 'admin', 'Lilja Lampinen', '007OojGHPBXwngl5UE8so5NBkUuyhKf_', 1, NULL, '96e79218965eb72c92a549dd5a330112', '$2y$13$6rHoTJhsber6KZ.Ny0p4A.R77cfliz6xwEFTea/jqrOsb7oC3hEpC', NULL, 'lilja@example.com', NULL, 'admin', 'admin', '2020-11-26 17:41:55', '2020-11-26 17:41:55'),
(2, 'heinz', 'Heinz Georg', '', 1, NULL, '96e79218965eb72c92a549dd5a330112', '$2y$13$6rHoTJhsber6KZ.Ny0p4A.R77cfliz6xwEFTea/jqrOsb7oC3hEpC', NULL, 'heinz@example.com', NULL, 'admin', 'admin', '2020-11-26 07:58:53', '2020-11-26 10:58:53'),
(3, 'katie', 'Katie Hughes', '', 1, NULL, '96e79218965eb72c92a549dd5a330112', '$2y$13$6rHoTJhsber6KZ.Ny0p4A.R77cfliz6xwEFTea/jqrOsb7oC3hEpC', NULL, 'katie@example.com', NULL, 'admin', 'admin', '2020-11-26 06:58:53', '2020-11-26 06:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(6, 'Wasana Parackrama', '12345@gmail.com', '$2y$10$FsvEIixsIPuq4D6S5Gb3y.6Ulw/O/3I7qg.Ge5vPucJSLc1meJ6N2'),
(7, 'rasa silva', 'heinz@example.com', '$2y$10$rV8.ppIS/2j2MppdbAmFYeEaUzCxi28TTsWLZTysO2BJaKJYK8O.u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_USERNAME` (`username`),
  ADD UNIQUE KEY `UK_EMAIL` (`email`),
  ADD UNIQUE KEY `UK_RESET_TOKEN` (`password_reset_token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
