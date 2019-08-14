-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 03:50 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_07_06_095614_student_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `rollno` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `rollno`, `created_at`, `updated_at`) VALUES
(1, 'Musawer', 0, '2019-07-03 10:36:32', '0000-00-00 00:00:00'),
(2, 'Musawer', 0, '2019-07-03 10:36:32', '0000-00-00 00:00:00'),
(3, 'Musawer', 43, '2019-07-03 10:36:32', '0000-00-00 00:00:00'),
(4, 'Musawer', 43, '2019-07-03 05:36:56', '2019-07-03 05:36:56'),
(5, 'Musawer', 32, '2019-07-03 05:58:52', '2019-07-03 05:58:52'),
(6, 'Musawer', NULL, '2019-07-03 06:04:44', '2019-07-03 06:04:44'),
(7, 'Musawer', 32, '2019-07-03 06:05:00', '2019-07-03 06:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_tables`
--

CREATE TABLE `student_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_tables`
--

INSERT INTO `student_tables` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(3, 'Musawer', 'Ali', '2019-07-07 05:02:46', '2019-07-07 05:02:46'),
(4, 'Musawer', 'Ali', '2019-07-07 05:03:33', '2019-07-07 05:03:33'),
(5, 'Musawer', 'Ali', '2019-07-07 05:04:01', '2019-07-07 05:04:01'),
(6, 'Musawer', 'Ali', '2019-07-07 05:04:11', '2019-07-07 05:04:11'),
(7, 'Musawer', 'Ali', '2019-07-07 05:04:32', '2019-07-07 05:04:32'),
(9, 'Musawer', 'Ali', '2019-07-07 05:13:06', '2019-07-10 03:12:53'),
(10, 'Musawer', 'Ali', '2019-07-07 10:23:36', '2019-07-07 10:23:36'),
(11, 'Musawer', 'Ali', '2019-07-07 10:29:53', '2019-07-07 10:29:53'),
(12, 'Musawer', 'Ali', '2019-07-07 10:30:03', '2019-07-07 10:30:03'),
(13, 'Musawer', 'Ali', '2019-07-07 10:36:11', '2019-07-07 10:36:11'),
(14, 'Musawer', 'Ali', '2019-07-07 10:36:54', '2019-07-07 10:36:54'),
(15, 'Musawer', 'Ali', '2019-07-07 10:37:55', '2019-07-07 10:37:55'),
(16, 'Musawer', 'Ali', '2019-07-07 10:38:13', '2019-07-07 10:38:13'),
(17, 'Musawer', 'Ali', '2019-07-07 10:39:40', '2019-07-07 10:39:40'),
(20, 'Musawer', 'Ali', '2019-07-08 22:05:00', '2019-07-08 22:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_tables`
--
ALTER TABLE `student_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `student_tables`
--
ALTER TABLE `student_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
