-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2025 at 05:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaushaltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive','available','borrowed') NOT NULL DEFAULT 'available',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookname`, `author`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 'A Century is not enough', 'Saurav Ganguly', 'Indian Cricketer\'s Biopic', 'borrowed', '2025-08-26 10:42:35', '2025-08-26 05:18:06'),
(2, 'A Century is not enough', 'Saurav Ganguly', 'Indian Cricketer\'s Biopic', 'available', '2025-08-26 05:18:06', '2025-08-26 05:18:06'),
(3, 'A Century is not enough', 'Saurav Ganguly', 'Indian Cricketer\'s Biopic', 'available', '2025-08-26 05:18:06', '2025-08-26 05:18:06'),
(4, 'A Century is not enough', 'Saurav Ganguly', 'Indian Cricketer\'s Biopic', 'available', '2025-08-26 05:18:06', '2025-08-26 05:18:06'),
(6, 'newbook 2', NULL, NULL, 'available', '2025-08-26 13:31:54', '2025-08-26 13:31:54'),
(7, 'Book 1', NULL, 'This is a description for Book 1', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(8, 'Book 2', NULL, 'This is a description for Book 2', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(9, 'Book 3', NULL, 'This is a description for Book 3', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(10, 'Book 4', NULL, 'This is a description for Book 4', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(11, 'Book 5', NULL, 'This is a description for Book 5', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(12, 'Book 6', NULL, 'This is a description for Book 6', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(13, 'Book 7', NULL, 'This is a description for Book 7', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(14, 'Book 8', NULL, 'This is a description for Book 8', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(15, 'Book 9', NULL, 'This is a description for Book 9', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(16, 'Book 10', NULL, 'This is a description for Book 10', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(17, 'Book 11', NULL, 'This is a description for Book 11', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(18, 'Book 12', NULL, 'This is a description for Book 12', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(19, 'Book 13', NULL, 'This is a description for Book 13', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(20, 'Book 14', NULL, 'This is a description for Book 14', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(21, 'Book 15', NULL, 'This is a description for Book 15', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(22, 'Book 16', NULL, 'This is a description for Book 16', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(23, 'Book 17', NULL, 'This is a description for Book 17', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(24, 'Book 18', NULL, 'This is a description for Book 18', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(25, 'Book 19', NULL, 'This is a description for Book 19', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(26, 'Book 20', NULL, 'This is a description for Book 20', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(27, 'Book 21', NULL, 'This is a description for Book 21', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(28, 'Book 22', NULL, 'This is a description for Book 22', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(29, 'Book 23', NULL, 'This is a description for Book 23', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(30, 'Book 24', NULL, 'This is a description for Book 24', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26'),
(31, 'Book 25', NULL, 'This is a description for Book 25', 'available', '2025-08-27 09:47:26', '2025-08-27 09:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `books_borrowings`
--

CREATE TABLE `books_borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrowed_at` date NOT NULL DEFAULT curdate(),
  `due_date` date DEFAULT NULL,
  `returned_at` date DEFAULT NULL,
  `status` enum('borrowed','returned','overdue') NOT NULL DEFAULT 'borrowed',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_borrowings`
--

INSERT INTO `books_borrowings` (`id`, `user_id`, `book_id`, `borrowed_at`, `due_date`, `returned_at`, `status`, `updated_at`, `created_at`) VALUES
(19, 57, 1, '2025-08-26', NULL, '2025-08-26', 'returned', '2025-08-26 10:39:51', '2025-08-26 09:18:47'),
(20, 57, 1, '2025-08-26', NULL, '2025-08-26', 'returned', '2025-08-26 10:42:00', '2025-08-26 10:40:20'),
(21, 57, 1, '2025-08-26', NULL, NULL, 'borrowed', '2025-08-26 10:42:35', '2025-08-26 10:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_18_082127_create_jobs_table', 2),
(7, '2025_06_28_065245_create_user_files_table', 3),
(8, '2025_08_25_181028_create_books_table', 4),
(9, '2025_08_26_101441_create_books_borrowings_table', 5),
(10, '2025_08_26_180838_create_permission_tables', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view books', 'web', '2025-08-26 12:43:35', '2025-08-26 12:43:35'),
(2, 'create books', 'web', '2025-08-26 12:43:36', '2025-08-26 12:43:36'),
(3, 'edit books', 'web', '2025-08-26 12:43:36', '2025-08-26 12:43:36'),
(4, 'delete books', 'web', '2025-08-26 12:43:36', '2025-08-26 12:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(14, 'App\\Models\\User', 3, 'vito t1 5g', '9cab2f82aa2e366fce08da40bfd5fb7cc04cd8ec92768ee87d9698e604fbfb00', '[\"*\"]', '2024-11-01 13:21:14', '2024-11-01 14:21:01', '2024-11-01 13:21:01', '2024-11-01 13:21:14'),
(15, 'App\\Models\\User', 3, 'vito t1 5g', 'ceb29f7cc868aee495afc6f136e92710469027e3f1c95009fedfb0e67fee5941', '[\"*\"]', '2025-01-20 07:31:08', '2025-01-20 08:30:21', '2025-01-20 07:30:22', '2025-01-20 07:31:08'),
(16, 'App\\Models\\User', 57, '', '17ce4113ba7daf20581f2d618b1bd65588d1828dbae5e903ab6c1185558be0e8', '[\"*\"]', NULL, NULL, '2025-08-25 13:07:58', '2025-08-25 13:07:58'),
(17, 'App\\Models\\User', 57, '', 'fac952ecd1bc28cded6498957bafaeb6d2587606d5e3dac1b19a00f59be06c97', '[\"*\"]', '2025-08-26 00:51:27', NULL, '2025-08-25 23:53:55', '2025-08-26 00:51:27'),
(18, 'App\\Models\\User', 57, '', 'b16c2a17b553d9c867b02aaa0997acd1d157c366078785647cff3f3d4fcbd474', '[\"*\"]', '2025-08-26 01:52:52', NULL, '2025-08-26 01:50:32', '2025-08-26 01:52:52'),
(19, 'App\\Models\\User', 57, '', 'ee10458d8153a8f3a7d82193e9aa9b848d8a1bac3424c45e10584b5e40885b1a', '[\"*\"]', '2025-08-26 05:11:42', NULL, '2025-08-26 04:15:59', '2025-08-26 05:11:42'),
(20, 'App\\Models\\User', 57, '', 'df9dd5cc48376f05e49ed6b1543a3f7850b9650f3b6dda0ee99a5c077b01664c', '[\"*\"]', '2025-08-26 05:47:56', NULL, '2025-08-26 05:17:01', '2025-08-26 05:47:56'),
(21, 'App\\Models\\User', 57, '', 'cdf8522e4190adae0ecda38e01508a92a862d7d217be167b5141768d8eddbc58', '[\"*\"]', '2025-08-26 08:13:28', NULL, '2025-08-26 07:49:26', '2025-08-26 08:13:28'),
(22, 'App\\Models\\User', 57, '', 'd6b3903571fd98081695153829a501265f2f9f6496837d8ffd647ed373303a83', '[\"*\"]', '2025-08-26 09:18:47', NULL, '2025-08-26 09:03:06', '2025-08-26 09:18:47'),
(23, 'App\\Models\\User', 57, '', 'faec80d7e71135998d8267e5b8401a8f052ed4872b2658ed6d8f9cb45e4cc9e5', '[\"*\"]', '2025-08-26 11:07:06', NULL, '2025-08-26 10:39:33', '2025-08-26 11:07:06'),
(24, 'App\\Models\\User', 57, '', '697c21be886887cccb28b9e599d5745115510c4370e74ca40e0c19b2e2e768c3', '[\"*\"]', NULL, '2025-08-26 14:08:57', '2025-08-26 11:08:57', '2025-08-26 11:08:57'),
(25, 'App\\Models\\User', 57, '', '1ac7f8c2949a390f9fe25db1fb8581c1ad17871b8e9b80a87e4c2c417983bb88', '[\"*\"]', '2025-08-26 13:30:13', '2025-08-26 16:22:56', '2025-08-26 13:22:56', '2025-08-26 13:30:13'),
(26, 'App\\Models\\User', 1, '', '60614ce6edb10e86e2bb8df483482907ed1eaeb86d8645aff580890157fd76ca', '[\"*\"]', '2025-08-26 13:31:54', '2025-08-26 16:31:35', '2025-08-26 13:31:35', '2025-08-26 13:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-08-26 12:43:36', '2025-08-26 12:43:36'),
(2, 'User', 'web', '2025-08-26 12:43:36', '2025-08-26 12:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `phone` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `gender`, `phone`, `updated_at`, `created_at`) VALUES
(1, 'Kaushal', 'Kapadiya', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(2, 'Dharmik', 'Kapadiya', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(3, 'Rohit', 'Sharma', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(4, 'Anushka', 'Sharma', 'kaushal@gmail.com', 'f', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(5, 'Virat', 'Kohli', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(6, 'Amisha', 'Patel', 'kaushal@gmail.com', 'f', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(7, 'Urvashi', 'Routela', 'kaushal@gmail.com', 'f', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(8, 'Kaushal', 'Kapadiya', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(9, 'Kaushal', 'Kapadiya', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(10, 'Kaushal', 'Kapadiya', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(11, 'Kaushal', 'Kapadiya', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45'),
(12, 'Kaushal', 'Kapadiya', 'kaushal@gmail.com', 'm', '9505458058', '2024-08-27 06:27:45', '2024-08-27 06:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_type` enum('superadmin','admin','user') NOT NULL DEFAULT 'user',
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `profile_photo` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `user_type`, `firstname`, `lastname`, `email`, `email_verified_at`, `profile_photo`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'superadmin', 'Admin', '', 'admin@adminmail.com', NULL, '', '$2y$10$SR0iaz6Fc5Xn6g9nXXuf5./J5QfKIlIfFCOert1cNyHSDz10KiWea', NULL, NULL, '2025-01-26 17:56:33', '2025-08-03 08:35:55'),
(57, NULL, NULL, 'user', 'Kaushal', 'Kapadiya', 'kaushal@gmail.com', NULL, NULL, '$2a$12$25ii38VBYuo9YznCtqKbMeZZmM3r8snnQCU/3q2eOYju0tMqjjETC', NULL, NULL, '2025-08-25 13:05:03', '2025-08-25 13:05:03'),
(58, NULL, NULL, 'user', 'Kaushal', 'Kapadiya', 'kaushal2@gmail.com', NULL, NULL, '$2a$12$25ii38VBYuo9YznCtqKbMeZZmM3r8snnQCU/3q2eOYju0tMqjjETC', NULL, NULL, '2025-08-26 12:47:25', '2025-08-26 12:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_files`
--

CREATE TABLE `user_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `filename` varchar(255) NOT NULL,
  `filepath` text DEFAULT NULL,
  `fileurl` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_files`
--

INSERT INTO `user_files` (`id`, `uuid`, `user_id`, `filename`, `filepath`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 5, 'resume.pdf', NULL, NULL, 0, '2025-06-28 08:27:01', '2025-06-28 08:27:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_borrowings`
--
ALTER TABLE `books_borrowings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_borrowings_user_id_foreign` (`user_id`),
  ADD KEY `books_borrowings_book_id_foreign` (`book_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_files`
--
ALTER TABLE `user_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `books_borrowings`
--
ALTER TABLE `books_borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user_files`
--
ALTER TABLE `user_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books_borrowings`
--
ALTER TABLE `books_borrowings`
  ADD CONSTRAINT `books_borrowings_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_borrowings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
