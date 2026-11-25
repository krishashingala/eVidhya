-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2026 at 12:40 PM
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
-- Database: `student_teacher`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_title` varchar(191) NOT NULL,
  `about_short_description` varchar(191) NOT NULL,
  `about_mission` varchar(191) NOT NULL,
  `about_vision` varchar(191) NOT NULL,
  `why_choose_title` varchar(191) NOT NULL,
  `why_choose_description` text NOT NULL,
  `why_choose_image` varchar(191) NOT NULL,
  `why_choose_video` varchar(191) NOT NULL,
  `why_choose_video_image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about_title`, `about_short_description`, `about_mission`, `about_vision`, `why_choose_title`, `why_choose_description`, `why_choose_image`, `why_choose_video`, `why_choose_video_image`, `created_at`, `updated_at`) VALUES
(1, 'The Place Where You Can Achieve', 'Welcome to eVidhya, where learning knows no bounds. Whether you\'re a student, professional, or lifelong learner...', 'To connect students and teachers for personalized learning through seamless chat and call interactions.', 'To revolutionize education with a platform that empowers students and enhances learning outcomes.', 'Our Commitment to Excellence, Learn, Grow & Success.', 'We are passionate about transforming lives through education. Founded with a vision to make learning accessible to all, we believe in the power. We are passionate about transforming lives through education. Founded with a vision to make learning accessible to all, we believe in the power.', '1743067147_about101.jpeg', '1743067771_All About Oil Activity Educational Video in Brown Beige Scrapbook Style.mp4', '', NULL, '2025-03-27 09:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `usercode` varchar(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `profile_picture` text DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `user_account_type_id` int(11) DEFAULT 0,
  `user_remark` text DEFAULT NULL,
  `user_position` enum('admin','supperadmin','staff') NOT NULL DEFAULT 'staff',
  `remember_token` varchar(100) DEFAULT NULL,
  `user_status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `registered_ip` varchar(50) DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL,
  `last_login_at` datetime DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `parent_id`, `usercode`, `username`, `name`, `profile_picture`, `mobile`, `email`, `email_verified_at`, `password`, `user_account_type_id`, `user_remark`, `user_position`, `remember_token`, `user_status`, `registered_ip`, `last_login_ip`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '6508481', 'admin', 'admin', '27122024110321676e3c2176c65.jpg', 's2VpaFNmaWptWHB4', '25Sem6F0nKOYoaVvpbKx', NULL, '$2y$10$yL6Py2OqEuLSNVi3c.UOY.XgI/V2tkBSTdwaC2hOn6US8qK8PEWb6', 0, NULL, 'supperadmin', NULL, 'active', NULL, '::1', '2025-05-05 16:00:17', '2023-09-01 06:49:49', '2025-05-05 10:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet`
--

CREATE TABLE `admin_wallet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallet`
--

INSERT INTO `admin_wallet` (`id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 18.60, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_transactions`
--

CREATE TABLE `admin_wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminwallet_id` bigint(20) UNSIGNED NOT NULL,
  `commission_amount` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallet_transactions`
--

INSERT INTO `admin_wallet_transactions` (`id`, `adminwallet_id`, `commission_amount`, `description`, `created_at`, `updated_at`) VALUES
(3, 1, 4.20, 'Commission from chat session', '2025-04-14 11:43:36', '2025-04-14 11:43:36'),
(4, 1, 4.80, 'Commission from chat session', '2025-04-14 11:46:56', '2025-04-14 11:46:56'),
(5, 1, 5.80, 'Commission from chat session', '2025-04-14 11:51:31', '2025-04-14 11:51:31'),
(6, 1, 2.20, 'Commission from chat session', '2025-05-01 11:17:11', '2025-05-01 11:17:11'),
(7, 1, 0.80, 'Commission from chat session', '2025-05-05 06:22:26', '2025-05-05 06:22:26'),
(8, 1, 0.80, 'Commission from chat session', '2025-05-05 06:42:25', '2025-05-05 06:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_title` varchar(191) DEFAULT NULL,
  `b_image` varchar(191) DEFAULT NULL,
  `b_contant` varchar(191) DEFAULT NULL,
  `b_status` varchar(11) NOT NULL DEFAULT 'active',
  `b_views` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcat_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `book_pdf` varchar(255) DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `book_pdf`, `status`, `created_at`, `updated_at`) VALUES
(6, 'demo', 'unit-1(cc).pdf', 'active', '2024-12-24 12:49:21', '2024-12-24 12:49:21'),
(8, 'Simple23', 'Amitbhai Requirment.pdf', 'active', '2024-12-25 06:42:01', '2024-12-25 07:41:01'),
(10, 'Simple1', 'Amitbhai Requirment.pdf', 'active', '2024-12-25 07:44:19', '2024-12-25 07:44:19'),
(11, 'Simple77', 'Amitbhai Requirment.pdf', 'active', '2024-12-25 07:45:28', '2024-12-25 07:45:28'),
(12, 'mkkmk', 'ISRO Edusat Registrations.pdf', 'active', '2025-01-02 09:04:39', '2025-01-02 09:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) DEFAULT NULL,
  `category_image` text DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL,
  `is_hot_mode` enum('active','deactive') NOT NULL DEFAULT 'active',
  `category_seq_no` int(11) NOT NULL DEFAULT 0,
  `category_status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_description`, `category_image`, `category_parent_id`, `is_hot_mode`, `category_seq_no`, `category_status`, `created_at`, `updated_at`) VALUES
(2, 'demo', 'dm', 'afsfdsfwefwe', '1734673474.png', 0, 'active', 0, 'active', '2024-12-19 15:52:45', '2024-12-20 11:14:34'),
(3, 'test', 'ts', 'dvsfsf', NULL, 2, 'active', 0, 'active', '2024-12-19 16:22:18', '2024-12-19 16:22:18'),
(4, 'demo2', 'dm2', 'afsasdasdasd', NULL, 0, 'active', 0, 'active', '2024-12-19 16:28:59', '2024-12-19 16:28:59'),
(5, 'test2', 'ts2', 'asdfsfasdasd', '1734673643.jpg', 4, 'active', 0, 'active', '2024-12-19 16:29:20', '2024-12-20 11:17:23'),
(6, 'ssss', 'sfsdf', 'ssdasdasd', '1734673629.png', 4, 'active', 0, 'active', '2024-12-20 11:09:48', '2024-12-20 11:17:09'),
(7, 'ggg', 'sdfs', 'dfgdfgdfg', '1734689343.jpg', 2, 'active', 0, 'active', '2024-12-20 15:39:03', '2024-12-20 15:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `teacher_post_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 51, 'mll', 'active', '2025-04-04 04:35:49', '2025-04-04 04:35:49'),
(4, 21, 78, 'very useful information!!😁', 'active', '2025-04-07 09:15:01', '2025-04-07 09:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `commision_rate`
--

CREATE TABLE `commision_rate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate_videocall` varchar(191) DEFAULT NULL,
  `rate_chat` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commision_rate`
--

INSERT INTO `commision_rate` (`id`, `teacher_id`, `rate_videocall`, `rate_chat`, `created_at`, `updated_at`) VALUES
(4, 60, '5', '4', '2025-04-11 06:18:38', '2025-04-11 06:21:50'),
(6, 58, '5', '4', '2025-04-11 06:29:41', '2025-04-11 06:29:41'),
(7, NULL, '5', '4', '2025-04-11 06:43:35', '2025-04-11 06:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) NOT NULL,
  `contact_message` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `contact_name`, `contact_email`, `contact_message`, `created_at`, `updated_at`) VALUES
(1, 'asad', 'admin@gmail.com', 'sadsf', '2025-01-26 08:56:42', '2025-01-26 08:56:42'),
(2, 'dsdf', 'admin@gmail.com', 'dsfd', '2025-01-27 05:01:20', '2025-01-27 05:01:20'),
(3, 'krisha', 'krishashingb111@gmail.com', 'zxZX', '2025-01-27 05:03:54', '2025-01-27 05:03:54'),
(4, 'mitali', 'mitali123@gmail.com', 'good!!!!', '2025-03-21 06:25:17', '2025-03-21 06:25:17'),
(5, 'Mitva Patel', 'mitva123@gmail.com', 'Report problems or get help through our contact channels.', '2025-04-04 06:14:34', '2025-04-04 06:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `earns`
--

CREATE TABLE `earns` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '9fbd6c06-1075-4bd5-ace1-1487b1e47f10', 'database', 'default', '{\"uuid\":\"9fbd6c06-1075-4bd5-ace1-1487b1e47f10\",\"displayName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"command\":\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:9001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:52:{i:0;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:10001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:1;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:11001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:2;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:12001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:3;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:13001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:4;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:14001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:5;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:15001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:6;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:16001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:7;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:17001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:8;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:18001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:9;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:19001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:10;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:20001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:11;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:21001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:12;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:22001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:13;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:23001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:14;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:24001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:15;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:25001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:16;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:26001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:17;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:27001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:18;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:28001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:19;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:29001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:20;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:30001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:21;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:31001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:22;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:32001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:23;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:33001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:24;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:34001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:25;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:35001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:26;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:36001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:27;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:37001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:28;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:38001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:29;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:39001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:30;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:40001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:31;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:41001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:32;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:42001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:33;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:43001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:34;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:44001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:35;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:45001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:36;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:46001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:37;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:47001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:38;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:48001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:39;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:49001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:40;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:50001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:41;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:51001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:42;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:52001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:43;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:53001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:44;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:54001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:45;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:55001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:46;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:56001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:47;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:57001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:48;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:58001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:49;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:59001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:50;s:2082:\\\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:60001;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\\\";i:51;s:2235:\\\"O:37:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\\":15:{s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":3:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;}s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000reader\\\";O:24:\\\"Maatwebsite\\\\Excel\\\\Reader\\\":5:{s:14:\\\"\\u0000*\\u0000spreadsheet\\\";N;s:15:\\\"\\u0000*\\u0000sheetImports\\\";a:0:{}s:14:\\\"\\u0000*\\u0000currentFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-jQlPGnXXqLYzx7wgnUjzJqxkbNvAcEAO.csv\\\";}s:23:\\\"\\u0000*\\u0000temporaryFileFactory\\\";O:44:\\\"Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\\":2:{s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryPath\\\";s:70:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\/cache\\/laravel-excel\\\";s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryDisk\\\";N;}s:9:\\\"\\u0000*\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}}s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000dependencyIds\\\";a:0:{}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000interval\\\";i:60;s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\\\";}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: Maatwebsite\\Excel\\Jobs\\ReadChunk has been attempted too many times or run too long. The job may have previously timed out. in C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:746\nStack trace:\n#0 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(505): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(414): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#12 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Command\\Command.php(291): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\xampp82\\htdocs\\ninja_exchange\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2024-01-09 07:30:24');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(2, 'd291b0b8-0298-405d-9034-d0a1e690c2fc', 'database', 'default', '{\"uuid\":\"d291b0b8-0298-405d-9034-d0a1e690c2fc\",\"displayName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\",\"command\":\"O:32:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\\":23:{s:7:\\\"timeout\\\";N;s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:5:\\\"queue\\\";N;s:10:\\\"connection\\\";N;s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":5:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;s:11:\\\"\\u0000*\\u0000failures\\\";a:0:{}s:9:\\\"\\u0000*\\u0000errors\\\";a:0:{}}s:40:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000temporaryFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-n6Tly6Mm6LTHCC8jfRMnFUgUOGOtS8wA.csv\\\";}s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetName\\\";s:9:\\\"Worksheet\\\";s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000sheetImport\\\";r:8;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000startRow\\\";i:2;s:43:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000chunkSize\\\";i:1000;s:42:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\ReadChunk\\u0000uniqueId\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:1:{i:0;s:2282:\\\"O:37:\\\"Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\\":15:{s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000import\\\";O:24:\\\"App\\\\Imports\\\\ScriptImport\\\":5:{s:9:\\\"error_msg\\\";s:0:\\\"\\\";s:9:\\\"\\u0000*\\u0000output\\\";N;s:12:\\\"\\u0000*\\u0000rowNumber\\\";N;s:11:\\\"\\u0000*\\u0000failures\\\";a:0:{}s:9:\\\"\\u0000*\\u0000errors\\\";a:0:{}}s:45:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000reader\\\";O:24:\\\"Maatwebsite\\\\Excel\\\\Reader\\\":5:{s:14:\\\"\\u0000*\\u0000spreadsheet\\\";N;s:15:\\\"\\u0000*\\u0000sheetImports\\\";a:0:{}s:14:\\\"\\u0000*\\u0000currentFile\\\";O:42:\\\"Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\\":1:{s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\LocalTemporaryFile\\u0000filePath\\\";s:121:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\\\cache\\\\laravel-excel\\\\laravel-excel-n6Tly6Mm6LTHCC8jfRMnFUgUOGOtS8wA.csv\\\";}s:23:\\\"\\u0000*\\u0000temporaryFileFactory\\\";O:44:\\\"Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\\":2:{s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryPath\\\";s:70:\\\"C:\\\\xampp82\\\\htdocs\\\\ninja_exchange\\\\storage\\\\framework\\/cache\\/laravel-excel\\\";s:59:\\\"\\u0000Maatwebsite\\\\Excel\\\\Files\\\\TemporaryFileFactory\\u0000temporaryDisk\\\";N;}s:9:\\\"\\u0000*\\u0000reader\\\";O:35:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\\":18:{s:15:\\\"\\u0000*\\u0000readDataOnly\\\";b:1;s:17:\\\"\\u0000*\\u0000readEmptyCells\\\";b:1;s:16:\\\"\\u0000*\\u0000includeCharts\\\";b:0;s:17:\\\"\\u0000*\\u0000loadSheetsOnly\\\";N;s:13:\\\"\\u0000*\\u0000readFilter\\\";O:49:\\\"PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\DefaultReadFilter\\\":0:{}s:13:\\\"\\u0000*\\u0000fileHandle\\\";i:0;s:18:\\\"\\u0000*\\u0000securityScanner\\\";N;s:50:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000inputEncoding\\\";s:5:\\\"UTF-8\\\";s:53:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000fallbackEncoding\\\";s:6:\\\"CP1252\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000delimiter\\\";s:1:\\\",\\\";s:46:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000enclosure\\\";s:1:\\\"\\\"\\\";s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000sheetIndex\\\";i:0;s:47:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000contiguous\\\";b:0;s:52:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000escapeCharacter\\\";s:1:\\\"\\\\\\\";s:51:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000testAutodetect\\\";b:1;s:31:\\\"\\u0000*\\u0000castFormattedNumberToNumeric\\\";b:0;s:28:\\\"\\u0000*\\u0000preserveNumericFormatting\\\";b:0;s:55:\\\"\\u0000PhpOffice\\\\PhpSpreadsheet\\\\Reader\\\\Csv\\u0000preserveNullString\\\";b:0;}}s:52:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000dependencyIds\\\";a:0:{}s:47:\\\"\\u0000Maatwebsite\\\\Excel\\\\Jobs\\\\AfterImportJob\\u0000interval\\\";i:60;s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\\\";}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Undefined array key \"extension\" in C:\\xampp82\\htdocs\\ninja_exchange\\app\\Imports\\ScriptImport.php:68\nStack trace:\n#0 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(270): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Undefined array...\', \'C:\\\\xampp82\\\\htdo...\', 68)\n#1 C:\\xampp82\\htdocs\\ninja_exchange\\app\\Imports\\ScriptImport.php(68): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Undefined array...\', \'C:\\\\xampp82\\\\htdo...\', 68)\n#2 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(91): App\\Imports\\ScriptImport->model(Array)\n#3 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(135): Maatwebsite\\Excel\\Imports\\ModelManager->toModels(Object(App\\Imports\\ScriptImport), Array, 2)\n#4 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Collections\\Traits\\EnumeratesValues.php(235): Maatwebsite\\Excel\\Imports\\ModelManager->Maatwebsite\\Excel\\Imports\\{closure}(Array, 2)\n#5 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(134): Illuminate\\Support\\Collection->each(Object(Closure))\n#6 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(73): Maatwebsite\\Excel\\Imports\\ModelManager->singleFlush(Object(App\\Imports\\ScriptImport))\n#7 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelImporter.php(114): Maatwebsite\\Excel\\Imports\\ModelManager->flush(Object(App\\Imports\\ScriptImport), false)\n#8 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelImporter.php(95): Maatwebsite\\Excel\\Imports\\ModelImporter->flush(Object(App\\Imports\\ScriptImport), 1, 2)\n#9 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Sheet.php(257): Maatwebsite\\Excel\\Imports\\ModelImporter->import(Object(PhpOffice\\PhpSpreadsheet\\Worksheet\\Worksheet), Object(App\\Imports\\ScriptImport), 2)\n#10 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Jobs\\ReadChunk.php(211): Maatwebsite\\Excel\\Sheet->import(Object(App\\Imports\\ScriptImport), 2)\n#11 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(30): Maatwebsite\\Excel\\Jobs\\ReadChunk->Maatwebsite\\Excel\\Jobs\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#12 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Transactions\\DbTransactionHandler.php(30): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#13 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\maatwebsite\\excel\\src\\Jobs\\ReadChunk.php(210): Maatwebsite\\Excel\\Transactions\\DbTransactionHandler->__invoke(Object(Closure))\n#14 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Maatwebsite\\Excel\\Jobs\\ReadChunk->handle(Object(Maatwebsite\\Excel\\Transactions\\DbTransactionHandler))\n#15 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Maatwebsite\\Excel\\Jobs\\ReadChunk))\n#21 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Maatwebsite\\Excel\\Jobs\\ReadChunk))\n#22 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Maatwebsite\\Excel\\Jobs\\ReadChunk), false)\n#24 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Maatwebsite\\Excel\\Jobs\\ReadChunk))\n#25 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Maatwebsite\\Excel\\Jobs\\ReadChunk))\n#26 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Maatwebsite\\Excel\\Jobs\\ReadChunk))\n#28 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#40 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Command\\Command.php(291): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp82\\htdocs\\ninja_exchange\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp82\\htdocs\\ninja_exchange\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2024-01-25 12:24:10'),
(3, '3f01e937-3732-4e64-9eca-1a6fe784ecaf', 'database', 'default', '{\"uuid\":\"3f01e937-3732-4e64-9eca-1a6fe784ecaf\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:23:\\\"App\\\\Models\\\\Notification\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2032 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744872875&auth_version=1.0&body_md5=0f026c85759d5ad89e5c64bbc5016d6d&auth_signature=67a952e0aa3c808f735d2f6bd4a5c8d0044684e7bd00de537170ce15d9b1dc14. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 06:54:37'),
(4, '91472f78-a6e1-4f04-89df-8bda6f9fe92a', 'database', 'default', '{\"uuid\":\"91472f78-a6e1-4f04-89df-8bda6f9fe92a\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:33;s:7:\\\"message\\\";s:31:\\\"New post from your teacher: dsd\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:14:11.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:14:11.000000Z\\\";s:2:\\\"id\\\";i:21;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2049 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744892052&auth_version=1.0&body_md5=4012c0bc1b0da84c1b45980e939369d9&auth_signature=2e3b904e19b27b1126e7f64e9da391876fba526bff6316ec5f0e2450787617da. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:14:14'),
(5, '041bc8f4-e49f-4d29-ac4f-583089b79c14', 'database', 'default', '{\"uuid\":\"041bc8f4-e49f-4d29-ac4f-583089b79c14\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:33;s:7:\\\"message\\\";s:31:\\\"New post from your teacher: dsd\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:14:11.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:14:11.000000Z\\\";s:2:\\\"id\\\";i:24;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2044 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744892053&auth_version=1.0&body_md5=84161e2bd21e84f801e3f3e83cf49f36&auth_signature=ed57335f5750a9a9a4c84cec442e8cf8a7d373f2cbad78904d20283fa5d23fda. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:14:15');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(6, '64111bf8-7f31-49bf-8dc7-0575e21f30c9', 'database', 'default', '{\"uuid\":\"64111bf8-7f31-49bf-8dc7-0575e21f30c9\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:33;s:7:\\\"message\\\";s:31:\\\"New post from your teacher: dsd\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:14:11.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:14:11.000000Z\\\";s:2:\\\"id\\\";i:27;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2039 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744892054&auth_version=1.0&body_md5=4678e924bf25b42dee67686db13e2ceb&auth_signature=39428c0658910943d8d8c95d1f3df4f48f9dc0d5589dd9a084654aaa1a809eb6. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:14:16'),
(7, '4f9fba7b-4252-49c7-afce-b33ef232233d', 'database', 'default', '{\"uuid\":\"4f9fba7b-4252-49c7-afce-b33ef232233d\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:34;s:7:\\\"message\\\";s:33:\\\"New post from your teacher: aasad\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:18:29.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:18:29.000000Z\\\";s:2:\\\"id\\\";i:30;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2026 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744892310&auth_version=1.0&body_md5=5675356c968c9f887ecbea130e73938d&auth_signature=0b10b165ff0c77da44111e9563ac6bccc999de0d18df785e21ccda6c099a0186. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:18:32'),
(8, '0823dbe1-00fe-4b05-9824-6f4094853bf5', 'database', 'default', '{\"uuid\":\"0823dbe1-00fe-4b05-9824-6f4094853bf5\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:34;s:7:\\\"message\\\";s:33:\\\"New post from your teacher: aasad\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:18:29.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:18:29.000000Z\\\";s:2:\\\"id\\\";i:33;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2014 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744892311&auth_version=1.0&body_md5=f9b3495fc88f4a1d0e5df3986c8301ac&auth_signature=171dcae7d6192ef8d75438b73f9fef8adc353301d0b0033053f2b82865d25273. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:18:33'),
(9, '67e9e974-254d-4c4a-8d9c-7436f963ec71', 'database', 'default', '{\"uuid\":\"67e9e974-254d-4c4a-8d9c-7436f963ec71\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:34;s:7:\\\"message\\\";s:33:\\\"New post from your teacher: aasad\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:18:29.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:18:29.000000Z\\\";s:2:\\\"id\\\";i:36;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2031 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744892312&auth_version=1.0&body_md5=d324da193e4a88cde3295bca7e36dfd7&auth_signature=86fb6223c5187ead39f44c1c50d2be41fa9e42252a0a79c0723e0fd3bd270bc9. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:18:34'),
(10, '2a97b70e-0b7d-43a7-bddd-935ab48b8b95', 'database', 'default', '{\"uuid\":\"2a97b70e-0b7d-43a7-bddd-935ab48b8b95\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:2;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:35;s:7:\\\"message\\\";s:31:\\\"New post from your teacher: ada\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:34:14.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:34:14.000000Z\\\";s:2:\\\"id\\\";i:37;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2018 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744893256&auth_version=1.0&body_md5=91006e9b380049c0a3034796f4ab0787&auth_signature=ca25650bada80f734dcc94de0c6afc61b807da2d49bea82d044730860f2ebc78. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:34:18');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(11, '9a81c7ba-9357-4237-a92e-206f6169ef31', 'database', 'default', '{\"uuid\":\"9a81c7ba-9357-4237-a92e-206f6169ef31\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:36;s:7:\\\"message\\\";s:31:\\\"New post from your teacher: dfd\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:39:13.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:39:13.000000Z\\\";s:2:\\\"id\\\";i:40;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2025 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744893553&auth_version=1.0&body_md5=004b6ae47d5abd012f3d001d7dd2c583&auth_signature=c28540ba93e5629d61e3dc75323ec253a9021d29fd2ed485e73438f7769c6642. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:39:15'),
(12, '96e3c1d5-13c6-479f-8a1d-339ef637b61b', 'database', 'default', '{\"uuid\":\"96e3c1d5-13c6-479f-8a1d-339ef637b61b\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:36;s:7:\\\"message\\\";s:31:\\\"New post from your teacher: dfd\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:39:13.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:39:13.000000Z\\\";s:2:\\\"id\\\";i:43;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2021 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744893555&auth_version=1.0&body_md5=c8178b97f8db07ef9d0c6c188a5d161b&auth_signature=ef2d77b87378c9bc1c9b4004bbc4ebcb23c9e5d293d61f2950a72dc602e6fea4. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:39:17'),
(13, '54755fe9-6d6b-4acc-a01a-b206dbfdf4c0', 'database', 'default', '{\"uuid\":\"54755fe9-6d6b-4acc-a01a-b206dbfdf4c0\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:36;s:7:\\\"message\\\";s:31:\\\"New post from your teacher: dfd\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:39:13.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:39:13.000000Z\\\";s:2:\\\"id\\\";i:46;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2026 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744893555&auth_version=1.0&body_md5=c4fef1694f4fdc1dcbb3439c610b9bc6&auth_signature=ee75308a28376c8e7f28a717accff31e3775bf5d3fd4e289c7d8b483dcde54e1. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:39:17'),
(14, '301b6dd1-9b06-4b27-b93a-8d2fbe6dc4b8', 'database', 'default', '{\"uuid\":\"301b6dd1-9b06-4b27-b93a-8d2fbe6dc4b8\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:37;s:7:\\\"message\\\";s:34:\\\"New post from your teacher: asadsa\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:40:39.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:40:39.000000Z\\\";s:2:\\\"id\\\";i:49;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2023 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744893641&auth_version=1.0&body_md5=5d2a0bb2eec9db6e424ed75b79826adf&auth_signature=42ea18eae2db602bec3398d6cd1da996120b8b83fb7c162caab690215838dd5b. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:40:43'),
(15, '121a5954-31b0-4eb6-82a7-9c953f8ea55a', 'database', 'default', '{\"uuid\":\"121a5954-31b0-4eb6-82a7-9c953f8ea55a\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:37;s:7:\\\"message\\\";s:34:\\\"New post from your teacher: asadsa\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:40:39.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:40:39.000000Z\\\";s:2:\\\"id\\\";i:52;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2036 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744893642&auth_version=1.0&body_md5=f32569be15777ae88dc426c05d2fb622&auth_signature=1b1eaf3c1fa60047fa13029fb83bb407b535254802518ea2f4c63f397e73f883. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:40:44');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(16, 'fa45ce2c-b5a1-4e7c-bec9-919ea2e8e79f', 'database', 'default', '{\"uuid\":\"fa45ce2c-b5a1-4e7c-bec9-919ea2e8e79f\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";a:7:{s:10:\\\"student_id\\\";i:78;s:10:\\\"teacher_id\\\";i:62;s:7:\\\"post_id\\\";i:37;s:7:\\\"message\\\";s:34:\\\"New post from your teacher: asadsa\\\";s:10:\\\"updated_at\\\";s:27:\\\"2025-04-17T12:40:39.000000Z\\\";s:10:\\\"created_at\\\";s:27:\\\"2025-04-17T12:40:39.000000Z\\\";s:2:\\\"id\\\";i:55;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 127.0.0.1 port 6001 after 2025 ms: Connection refused (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://127.0.0.1:6001/apps/1976547/events?auth_key=54e4aeeb7a97f77b0fd4&auth_timestamp=1744893643&auth_version=1.0&body_md5=c4b1212ed06c7932d90fca5c7a321b9e&auth_signature=df68598c7311e6811886e99aee10a0a40c84c18b9378e0b6051dc8a14540e364. in C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster.php:164\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(84): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast(Object(Illuminate\\Support\\Collection), \'new.notificatio...\', Array)\n#1 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2025-04-17 12:40:45'),
(17, '5424ea1f-933a-4a29-81ee-05bbb293e616', 'database', 'default', '{\"uuid\":\"5424ea1f-933a-4a29-81ee-05bbb293e616\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Trying to access array offset on value of type int in C:\\xampp\\htdocs\\eVidhya\\app\\Events\\NewPostNotification.php:24\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(270): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'C:\\\\xampp\\\\htdocs...\', 24)\n#1 C:\\xampp\\htdocs\\eVidhya\\app\\Events\\NewPostNotification.php(24): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'C:\\\\xampp\\\\htdocs...\', 24)\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(71): App\\Events\\NewPostNotification->broadcastOn()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2025-04-17 12:56:50'),
(18, 'c376550c-8993-450c-84d3-1c79f49810ce', 'database', 'default', '{\"uuid\":\"c376550c-8993-450c-84d3-1c79f49810ce\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Trying to access array offset on value of type int in C:\\xampp\\htdocs\\eVidhya\\app\\Events\\NewPostNotification.php:24\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(270): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'C:\\\\xampp\\\\htdocs...\', 24)\n#1 C:\\xampp\\htdocs\\eVidhya\\app\\Events\\NewPostNotification.php(24): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'C:\\\\xampp\\\\htdocs...\', 24)\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(71): App\\Events\\NewPostNotification->broadcastOn()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2025-04-17 12:56:50'),
(19, 'ac92487b-894f-4025-bd38-8b9af59f09b5', 'database', 'default', '{\"uuid\":\"ac92487b-894f-4025-bd38-8b9af59f09b5\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Trying to access array offset on value of type int in C:\\xampp\\htdocs\\eVidhya\\app\\Events\\NewPostNotification.php:24\nStack trace:\n#0 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(270): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'C:\\\\xampp\\\\htdocs...\', 24)\n#1 C:\\xampp\\htdocs\\eVidhya\\app\\Events\\NewPostNotification.php(24): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'C:\\\\xampp\\\\htdocs...\', 24)\n#2 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(71): App\\Events\\NewPostNotification->broadcastOn()\n#3 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#4 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#10 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#13 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#17 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(1078): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\eVidhya\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\eVidhya\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\eVidhya\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2025-04-17 12:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faqs_question` varchar(191) NOT NULL,
  `faqs_answer` text NOT NULL,
  `faqs_type` enum('Personalized Learning','Wallet & Transactions','Session Pricing') NOT NULL,
  `faqs_isactive` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faqs_question`, `faqs_answer`, `faqs_type`, `faqs_isactive`, `created_at`, `updated_at`) VALUES
(5, 'What is Personalized Learning in eVidhya?', 'Personalized Learning allows students to choose teachers, set their own schedules, and learn at their own pace based on individual needs and goals.', 'Personalized Learning', 'active', '2025-04-09 07:27:23', '2025-04-09 07:27:23'),
(6, 'Can I choose a specific teacher for my session?', 'Yes, students can view teacher profiles, check their availability, and book sessions with the teacher of their choice.', 'Personalized Learning', 'active', '2025-04-09 07:27:58', '2025-04-09 07:27:58'),
(7, 'How are learning sessions customized for me?', 'Teachers tailor the session content based on your selected topic and your previous interactions or performance, ensuring it fits your learning style and pace.', 'Personalized Learning', 'active', '2025-04-09 07:28:43', '2025-04-09 07:28:43'),
(8, 'How does the eVidhya wallet work?', 'The eVidhya wallet allows students to add money, which is then used to book sessions. Wallet balance is automatically deducted after each session.', 'Wallet & Transactions', 'active', '2025-04-09 07:29:16', '2025-04-09 07:29:16'),
(9, 'Can I track my wallet transaction history?', 'Yes, you can view a complete transaction history, including top-ups, deductions, and refunds from your dashboard.', 'Wallet & Transactions', 'active', '2025-04-09 07:30:14', '2025-04-09 07:30:14'),
(10, 'What happens if a session is canceled?', 'If a session is canceled due to a valid reason or by the teacher, the session amount will be refunded to your wallet automatically.', 'Wallet & Transactions', 'active', '2025-04-09 07:30:44', '2025-04-09 07:30:44'),
(11, 'How is the price of a session decided?', 'Each teacher sets their own session rate per minute. The total cost depends on the session duration.', 'Session Pricing', 'active', '2025-04-09 07:31:17', '2025-04-09 07:31:17'),
(12, 'Are there any hidden charges?', 'No, eVidhya maintains transparent pricing. What you see while booking is what you pay.', 'Session Pricing', 'active', '2025-04-09 07:31:53', '2025-04-09 07:31:53'),
(13, 'Is there a minimum session duration?', 'Yes, each session must be at least 15 minutes long. The system automatically enforces this minimum when booking.', 'Session Pricing', 'active', '2025-04-09 07:32:25', '2025-04-09 07:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `features_description` text DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `features_description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>This is Demo gfh hhhhh hhhhhhh hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh.</p>', 'active', '2024-12-26 10:50:51', '2024-12-27 05:26:58'),
(2, '<p><span style=\"color: rgb(17, 17, 17); font-family: SourceSansPro, &quot;Source Sans Pro-fallback&quot;, sans-serif; font-size: 18px; letter-spacing: 0.05px;\"><b>A trading platform </b>is a software system that is used to trade securities. It allows investors to open, close, and manage market positions online through a&nbsp;</span><span style=\"color: rgb(17, 17, 17); font-family: SourceSansPro, &quot;Source Sans Pro-fallback&quot;, sans-serif; font-size: 18px; letter-spacing: 0.05px;\">such as an online broker. Trading&nbsp;platforms are frequently offered by brokers for free or at a discount in exchange for maintaining a funded account and/or making a specified number of trades per month. The&nbsp;</span><span style=\"color: rgb(17, 17, 17); font-family: SourceSansPro, &quot;Source Sans Pro-fallback&quot;, sans-serif; font-size: 18px; letter-spacing: 0.05px;\">offer a mix of robust features and low fees.</span></p>', 'active', '2024-12-27 05:14:06', '2024-12-30 05:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feedback_date` varchar(191) NOT NULL,
  `feedback_comment` varchar(191) NOT NULL,
  `feedback_status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `u_id`, `feedback_date`, `feedback_comment`, `feedback_status`, `created_at`, `updated_at`) VALUES
(3, 2, '', 'eVidhya helped me clear my doubts instantly. The teachers are so friendly and supportive!', 'active', NULL, NULL),
(4, 51, '', 'I love how easy it is to book a session and get my queries solved in real-time.', 'active', '2025-04-15 09:36:46', '2025-04-15 09:36:46'),
(5, 63, '', 'Thanks to eVidhya, I never feel stuck with my studies anymore. The learning experience is smooth and personalized', 'active', NULL, NULL),
(7, 78, '2025-04-15', 'z,xm,zn', 'deactive', '2025-04-15 10:46:33', '2025-04-15 10:46:33'),
(8, 78, '2025-04-15', 'sdsd', 'deactive', '2025-04-15 10:47:22', '2025-04-15 10:47:22'),
(9, 78, '2025-04-15', 'admsd', 'deactive', '2025-04-15 10:50:49', '2025-04-15 10:50:49'),
(10, 78, '2025-04-15', 'zxczxc', 'deactive', '2025-04-15 11:05:19', '2025-04-15 11:05:19'),
(11, 78, '2025-04-15', 'sadsa', 'deactive', '2025-04-15 11:07:55', '2025-04-15 11:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `student_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(20, 2, 60, '2025-02-14 07:35:33', '2025-02-14 07:35:33'),
(21, 2, 62, '2025-02-14 07:35:37', '2025-02-14 07:35:37'),
(65, 51, 64, '2025-03-27 11:19:38', '2025-03-27 11:19:38'),
(71, 51, 61, '2025-03-28 06:29:34', '2025-03-28 06:29:34'),
(78, 51, 76, '2025-03-28 07:24:29', '2025-03-28 07:24:29'),
(80, 51, 62, '2025-04-01 05:12:07', '2025-04-01 05:12:07'),
(81, 51, 58, '2025-04-01 07:22:02', '2025-04-01 07:22:02'),
(82, 78, 62, '2025-04-07 10:36:33', '2025-04-07 10:36:33'),
(83, 78, 61, '2025-04-07 10:36:35', '2025-04-07 10:36:35'),
(84, 78, 60, '2025-04-07 10:36:37', '2025-04-07 10:36:37'),
(85, 78, 59, '2025-04-07 10:36:41', '2025-04-07 10:36:41'),
(86, 78, 58, '2025-04-07 10:36:44', '2025-04-07 10:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `subtitle` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `banner_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `subtitle`, `description`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'Ask, Learn, Succeed. with evidhya.', 'Your Clarity, Your Success', 'Welcome to eVidhya, where learning knows no bounds. Whether you\'re a student, professional, or lifelong learner...', '1743412655_ev.jpg', '2025-03-28 12:30:30', '2025-03-31 09:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(18, 'default', '{\"uuid\":\"212ff12d-12f0-45b0-bb3e-3d0dcdba3431\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746090272, 1746090272),
(19, 'default', '{\"uuid\":\"59305c6c-7ce3-47f4-92a5-996e2f54a8f6\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746090272, 1746090272),
(20, 'default', '{\"uuid\":\"2ef08d57-7b18-41d7-a0cf-97ee4184f3d6\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746090272, 1746090272),
(21, 'default', '{\"uuid\":\"fff8cd8a-72b2-40f5-a452-a654453351ae\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746090272, 1746090272),
(22, 'default', '{\"uuid\":\"239eab63-2b0d-4483-869d-538b6ea8477b\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746090272, 1746090272),
(23, 'default', '{\"uuid\":\"7e7d3fa2-21c3-4886-99d5-b94bf8abc445\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746090272, 1746090272),
(24, 'default', '{\"uuid\":\"1f22bd78-39cc-4247-ac4d-181b893c8d7d\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(25, 'default', '{\"uuid\":\"b42dac34-d2a7-419f-b731-195911be135f\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(26, 'default', '{\"uuid\":\"93fe7ba1-2da3-42fe-8a0e-c3210da48d37\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(27, 'default', '{\"uuid\":\"8a8cb7fe-a068-4410-befd-00e67626c9e2\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(28, 'default', '{\"uuid\":\"1a4b480d-34c4-4986-a359-0db7f57078bf\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(29, 'default', '{\"uuid\":\"632919bf-0cbd-4534-b873-17698a6aae4c\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(30, 'default', '{\"uuid\":\"20b85807-a09c-48f6-b7f1-4ebff3003f1a\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(31, 'default', '{\"uuid\":\"118eddf2-07ad-46e4-aaf5-59d39c885141\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(32, 'default', '{\"uuid\":\"70add4cc-0760-44c6-8c1f-5b95d4944bae\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746093897, 1746093897),
(33, 'default', '{\"uuid\":\"8ce3e7a0-a1da-4a68-b698-cc8767585fd7\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746095925, 1746095925),
(34, 'default', '{\"uuid\":\"154a1f86-ad6e-46a0-bc52-9dc69ffb1928\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746095925, 1746095925),
(35, 'default', '{\"uuid\":\"48bc6623-14f2-45d6-acb0-f968396b7ca9\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746095925, 1746095925),
(36, 'default', '{\"uuid\":\"09a38e09-1d60-474b-ab5c-2786f0e0d86d\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746095982, 1746095982),
(37, 'default', '{\"uuid\":\"c6bbbb4e-655f-4aae-a6fc-4377ce5719d3\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746095982, 1746095982),
(38, 'default', '{\"uuid\":\"8c69eedf-8064-4430-a1d3-d28504f744c0\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746095982, 1746095982),
(39, 'default', '{\"uuid\":\"ac04bdb8-8bc4-42d1-a021-43edd745da3c\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746096399, 1746096399),
(40, 'default', '{\"uuid\":\"ddcf096f-ee62-49ed-875d-086181953d7f\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746096399, 1746096399),
(41, 'default', '{\"uuid\":\"fa2a9776-f65c-46f9-a5d3-b1f22960b586\",\"displayName\":\"App\\\\Events\\\\NewPostNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":13:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\NewPostNotification\\\":1:{s:12:\\\"notification\\\";i:78;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1746096399, 1746096399);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text DEFAULT NULL,
  `session_start_time` timestamp NULL DEFAULT NULL,
  `session_end_time` timestamp NULL DEFAULT NULL,
  `appointment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seen_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `recipient_id`, `read_at`, `body`, `created_at`, `updated_at`, `image`, `session_start_time`, `session_end_time`, `appointment_id`, `seen_at`) VALUES
(135, 51, 62, NULL, 'hjrhjfd', '2025-02-12 11:16:08', '2025-02-14 09:20:07', NULL, NULL, NULL, NULL, '2025-02-14 09:20:07'),
(136, 51, 62, NULL, 'hjjh', '2025-02-12 11:17:37', '2025-02-14 09:20:07', NULL, NULL, NULL, 63, '2025-02-14 09:20:07'),
(137, 51, 62, NULL, 'dfg', '2025-02-12 11:18:41', '2025-02-14 09:20:07', NULL, NULL, NULL, 63, '2025-02-14 09:20:07'),
(138, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-12 11:38:07', '2025-02-14 09:20:07', NULL, NULL, NULL, NULL, '2025-02-14 09:20:07'),
(139, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-12 11:39:22', '2025-02-14 09:20:07', NULL, NULL, NULL, NULL, '2025-02-14 09:20:07'),
(140, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-12 11:40:06', '2025-02-14 09:20:07', NULL, NULL, NULL, NULL, '2025-02-14 09:20:07'),
(141, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-12 12:13:00', '2025-02-14 09:20:07', NULL, NULL, NULL, 63, '2025-02-14 09:20:07'),
(142, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-12 12:14:25', '2025-02-14 09:20:07', NULL, NULL, NULL, 63, '2025-02-14 09:20:07'),
(143, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-12 12:21:49', '2025-02-14 09:20:07', NULL, NULL, NULL, 63, '2025-02-14 09:20:07'),
(144, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-12 12:40:09', '2025-02-14 09:20:07', NULL, NULL, NULL, 63, '2025-02-14 09:20:07'),
(145, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-02-14 05:31:03', '2025-02-14 09:20:07', NULL, NULL, NULL, 79, '2025-02-14 09:20:07'),
(146, 62, 51, NULL, 'ffk', '2025-02-14 09:20:15', '2025-02-14 09:21:06', NULL, NULL, NULL, 79, '2025-02-14 09:21:06'),
(147, 62, 51, NULL, 'klfk', '2025-02-14 09:20:53', '2025-02-14 09:21:06', NULL, NULL, NULL, 79, '2025-02-14 09:21:06'),
(148, 62, 51, NULL, 'hiee', '2025-02-14 11:06:04', '2025-02-14 11:06:36', NULL, NULL, NULL, 79, '2025-02-14 11:06:36'),
(149, 62, 51, NULL, 'fjkd', '2025-02-14 11:06:08', '2025-02-14 11:06:36', NULL, NULL, NULL, 79, '2025-02-14 11:06:36'),
(150, 62, 51, NULL, 'whjwd', '2025-02-14 11:06:10', '2025-02-14 11:06:36', NULL, NULL, NULL, 79, '2025-02-14 11:06:36'),
(151, 62, 51, NULL, 'jshjf', '2025-02-14 11:06:12', '2025-02-14 11:06:36', NULL, NULL, NULL, 79, '2025-02-14 11:06:36'),
(152, 51, 62, NULL, 'hii', '2025-02-14 11:16:41', '2025-02-14 11:28:59', NULL, NULL, NULL, 79, '2025-02-14 11:28:59'),
(153, 62, 51, NULL, '', '2025-02-17 05:17:36', '2025-02-17 05:19:14', 'chat/files/bZaolQLKcamMripA852AugsQDga4tJEWKMEaM87E.pdf_SU-2042-2.pdf', NULL, NULL, 80, '2025-02-17 05:19:14'),
(154, 51, 62, NULL, '', '2025-02-17 05:19:41', '2025-02-17 10:22:59', 'chat/images/YUTnehVyguRB9Qr0Lf1tbT8Tvjwt5cJNIVgV4KBm.jpg_vision1.jpg', NULL, NULL, 80, '2025-02-17 10:22:59'),
(155, 51, 62, NULL, 'sdkjskdj', '2025-02-17 05:32:24', '2025-02-17 10:22:59', NULL, NULL, NULL, 80, '2025-02-17 10:22:59'),
(156, 51, 62, NULL, 'qjhwq', '2025-02-17 05:33:44', '2025-02-17 10:22:59', NULL, NULL, NULL, 80, '2025-02-17 10:22:59'),
(157, 51, 62, NULL, 'hiee', '2025-02-17 05:34:42', '2025-02-17 10:22:59', NULL, NULL, NULL, 80, '2025-02-17 10:22:59'),
(158, 62, 51, NULL, 'hii', '2025-03-21 06:51:10', '2025-03-21 06:51:31', NULL, NULL, NULL, 95, '2025-03-21 06:51:31'),
(159, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-21 06:52:58', '2025-03-21 06:53:15', NULL, NULL, NULL, 95, '2025-03-21 06:53:15'),
(160, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-25 12:32:03', '2025-03-26 06:54:12', NULL, NULL, NULL, 98, '2025-03-26 06:54:12'),
(161, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-25 12:44:22', '2025-03-26 06:54:12', NULL, NULL, NULL, 98, '2025-03-26 06:54:12'),
(162, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-25 12:48:03', '2025-03-26 06:54:12', NULL, NULL, NULL, 98, '2025-03-26 06:54:12'),
(163, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-25 12:53:53', '2025-03-26 06:54:12', NULL, NULL, NULL, 98, '2025-03-26 06:54:12'),
(164, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 05:25:44', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(165, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 05:27:39', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(166, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 05:37:10', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(167, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 05:43:35', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(168, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 05:44:22', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(169, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 05:50:39', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(170, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 06:13:41', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(171, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 06:18:05', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(172, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 06:27:45', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(173, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-03-26 06:30:20', '2025-03-26 06:54:12', NULL, NULL, NULL, 101, '2025-03-26 06:54:12'),
(174, 62, 78, NULL, 'hiee', '2025-04-09 05:42:31', '2025-04-09 05:42:50', NULL, NULL, NULL, 107, '2025-04-09 05:42:50'),
(175, 78, 62, NULL, 'hello👋🏼', '2025-04-09 05:43:22', '2025-04-09 05:43:49', NULL, NULL, NULL, 107, '2025-04-09 05:43:49'),
(176, 62, 78, NULL, 'kelkfl', '2025-04-09 05:44:34', '2025-04-09 05:44:42', NULL, NULL, NULL, 107, '2025-04-09 05:44:42'),
(177, 78, 62, NULL, 'sdsfdf', '2025-04-09 05:44:50', '2025-04-09 05:46:09', NULL, NULL, NULL, 107, '2025-04-09 05:46:09'),
(178, 62, 78, NULL, 'hrekj', '2025-04-09 05:50:52', '2025-04-09 05:51:04', NULL, NULL, NULL, 107, '2025-04-09 05:51:04'),
(179, 78, 62, NULL, 'ejhj', '2025-04-09 05:51:11', '2025-04-09 05:54:19', NULL, NULL, NULL, 107, '2025-04-09 05:54:19'),
(180, 62, 78, NULL, 'sk', '2025-04-09 05:54:32', '2025-04-09 05:54:34', NULL, NULL, NULL, 107, '2025-04-09 05:54:34'),
(181, 78, 62, NULL, 'hiee', '2025-04-09 05:54:41', '2025-04-09 05:54:44', NULL, NULL, NULL, 107, '2025-04-09 05:54:44'),
(182, 62, 78, NULL, '', '2025-04-09 05:55:04', '2025-04-09 05:55:15', 'chat/images/yoNzG2ffwDLTvsNBIFcqJV3FaF5VXDwD59YTWeOk.jpg__ Motivation for Students_Remember_ success is a series of small efforts repeated daily. Keep showing up, and progress will follow. You\'ve got this! (1).jpg', NULL, NULL, 107, '2025-04-09 05:55:15'),
(183, 78, 62, NULL, '', '2025-04-09 06:01:55', '2025-04-09 06:02:03', 'chat/files/V7rUj5k9pmx3VV5PByYohMTM2g083CGF3EY762VS.pdf_Guidelines_GUJ.pdf', NULL, NULL, 108, '2025-04-09 06:02:03'),
(184, 78, 62, NULL, 'ksk', '2025-04-09 06:04:59', '2025-04-09 06:05:02', NULL, NULL, NULL, 108, '2025-04-09 06:05:02'),
(185, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-09 06:15:55', '2025-04-09 06:22:43', NULL, NULL, NULL, 108, '2025-04-09 06:22:43'),
(186, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 09:12:48', '2025-04-11 10:23:00', NULL, NULL, NULL, 109, '2025-04-11 10:23:00'),
(187, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 10:24:46', '2025-04-11 10:31:35', NULL, NULL, NULL, 110, '2025-04-11 10:31:35'),
(188, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 10:32:30', '2025-04-11 10:32:42', NULL, NULL, NULL, 110, '2025-04-11 10:32:42'),
(189, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 10:36:34', '2025-04-11 10:39:28', NULL, NULL, NULL, 110, '2025-04-11 10:39:28'),
(190, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 10:58:24', '2025-04-11 11:04:43', NULL, NULL, NULL, 110, '2025-04-11 11:04:43'),
(191, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 11:05:23', '2025-04-11 11:05:43', NULL, NULL, NULL, 110, '2025-04-11 11:05:43'),
(192, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 11:06:42', '2025-04-11 11:11:00', NULL, NULL, NULL, 110, '2025-04-11 11:11:00'),
(193, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 11:11:16', '2025-04-11 11:12:10', NULL, NULL, NULL, 110, '2025-04-11 11:12:10'),
(194, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 11:14:24', '2025-04-11 11:15:55', NULL, NULL, NULL, 110, '2025-04-11 11:15:55'),
(195, 78, 62, NULL, 'hiee', '2025-04-11 11:21:29', '2025-04-11 11:21:31', NULL, NULL, NULL, 111, '2025-04-11 11:21:31'),
(196, 62, 78, NULL, 'hello', '2025-04-11 11:21:40', '2025-04-11 11:21:45', NULL, NULL, NULL, 111, '2025-04-11 11:21:45'),
(197, 78, 62, NULL, 'hiee', '2025-04-11 11:21:59', '2025-04-11 11:22:09', NULL, NULL, NULL, 111, '2025-04-11 11:22:09'),
(198, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-11 11:22:07', '2025-04-11 11:22:09', NULL, NULL, NULL, 111, '2025-04-11 11:22:09'),
(199, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 06:15:51', '2025-04-14 06:16:00', NULL, NULL, NULL, 112, '2025-04-14 06:16:00'),
(200, 78, 62, NULL, 'hiee', '2025-04-14 07:30:44', '2025-04-14 07:31:00', NULL, NULL, NULL, 113, '2025-04-14 07:31:00'),
(201, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 07:31:08', '2025-04-14 07:31:19', NULL, NULL, NULL, 113, '2025-04-14 07:31:19'),
(202, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 11:25:49', '2025-04-14 11:25:57', NULL, NULL, NULL, 114, '2025-04-14 11:25:57'),
(203, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 11:28:15', '2025-04-14 11:28:36', NULL, NULL, NULL, 114, '2025-04-14 11:28:36'),
(204, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 11:30:43', '2025-04-14 11:31:01', NULL, NULL, NULL, 114, '2025-04-14 11:31:01'),
(205, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 11:43:36', '2025-04-15 08:46:13', NULL, NULL, NULL, 114, '2025-04-15 08:46:13'),
(206, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 11:46:56', '2025-04-15 08:46:13', NULL, NULL, NULL, 114, '2025-04-15 08:46:13'),
(207, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-14 11:51:31', '2025-04-15 08:46:13', NULL, NULL, NULL, 114, '2025-04-15 08:46:13'),
(208, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-15 08:48:41', '2025-04-15 08:48:51', NULL, NULL, NULL, 115, '2025-04-15 08:48:51'),
(209, 78, 62, NULL, 'Chat ended by Krisha Shingala', '2025-04-15 08:51:18', '2025-05-01 11:06:09', NULL, NULL, NULL, 115, '2025-05-01 11:06:09'),
(210, 78, 62, NULL, 'hi', '2025-05-01 11:06:25', '2025-05-01 11:06:51', NULL, NULL, NULL, 119, '2025-05-01 11:06:51'),
(211, 78, 62, NULL, 'xcx', '2025-05-01 11:06:55', '2025-05-07 05:20:13', NULL, NULL, NULL, 119, '2025-05-07 05:20:13'),
(212, 51, 62, NULL, 'hi', '2025-05-05 06:21:07', '2025-05-05 06:21:16', NULL, NULL, NULL, 125, '2025-05-05 06:21:16'),
(213, 62, 51, NULL, 'hiee', '2025-05-05 06:21:22', '2025-05-05 06:21:26', NULL, NULL, NULL, 125, '2025-05-05 06:21:26'),
(214, 51, 62, NULL, 'Chat ended by kabir Shingala', '2025-05-05 06:22:26', '2025-05-05 06:22:32', NULL, NULL, NULL, 125, '2025-05-05 06:22:32'),
(215, 51, 62, NULL, 'hieee', '2025-05-05 06:38:44', '2025-05-05 06:38:54', NULL, NULL, NULL, 126, '2025-05-05 06:38:54'),
(216, 62, 51, NULL, 'hiee', '2025-05-05 06:39:00', '2025-05-05 06:40:25', NULL, NULL, NULL, 126, '2025-05-05 06:40:25'),
(217, 62, 51, NULL, 'Chat ended by Mitva Patel', '2025-05-05 06:42:25', '2025-05-05 07:09:40', NULL, NULL, NULL, 126, '2025-05-05 07:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_08_31_150927_create_administrators_table', 1),
(5, '2023_08_31_153448_create_permission_tables', 1),
(10, '2024_01_04_122311_create_job_batches_table', 2),
(12, '2024_01_05_125036_create_jobs_table', 3),
(13, '2025_01_01_160635_create_tblcategory_table', 4),
(14, 'z_2014_10_12_000000_create_users_table', 4),
(15, '2025_01_01_150517_add_column_to_users', 5),
(16, '2025_01_01_173529_create_blogs_table', 6),
(17, '2025_01_02_161300_add_column_to_blogs', 7),
(18, '2025_01_03_141043_add_columns_to_tblcategory', 8),
(19, '2025_01_06_140733_create_teacher_info_table', 9),
(20, '2025_01_08_170756_create_feedbacks_table', 10),
(21, '2025_01_13_115801_create_sessions_table', 11),
(22, '2025_01_20_120828_create_student_booking_table', 12),
(23, '2025_01_23_165234_create_rechargeamount_table', 13),
(24, '2025_01_23_165739_create_student_wallet_table', 14),
(25, '2025_01_23_171223_create_student_wallets_table', 15),
(26, '2025_01_23_215843_create_student_w_table', 16),
(27, '2025_01_24_171304_create_contact_us_table', 17),
(28, '2025_01_27_152313_create_messages_table', 18),
(29, '2025_01_29_103912_create_user_wallet_transaction_table', 19),
(30, '2025_02_01_103536_add_opposite_user_id_to_user_wallet_transaction', 20),
(31, '2025_02_07_180359_create_followers_table', 21),
(32, '2025_02_17_164030_create_teacher_posts_table', 22),
(33, '2025_03_25_172906_create_review_table', 23),
(34, '2025_03_25_175521_create_reviews_table', 24),
(35, '2025_03_27_143125_create_about_us_table', 24),
(36, '2025_03_28_172324_create_home_table', 25),
(37, '2025_03_31_164935_add_otp_to_users_table', 26),
(38, '2025_04_01_150853_create_faqs_table', 27),
(39, '2025_04_02_173510_create_pages_table', 28),
(40, '2025_04_03_175835_create_comments_table', 29),
(41, '2025_04_09_170420_create_withdrewmethods_table', 30),
(42, '2025_04_09_173558_create_withdrawmethods_table', 31),
(43, '2025_04_09_173707_create_withdrawrequest_table', 32),
(44, '2025_04_11_102435_create_commision_rate_table', 33),
(45, '2025_04_11_141636_create_admin_wallet_table', 34),
(46, '2025_04_11_142048_create_admin_wallet_transactions_table', 35),
(47, '2025_04_16_112434_create_notifications_table', 36);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\Administrator', 238),
(2, 'App\\Models\\Administrator', 239),
(2, 'App\\Models\\Administrator', 242),
(8, 'App\\Models\\Administrator', 1),
(9, 'App\\Models\\Administrator', 210),
(9, 'App\\Models\\Administrator', 211),
(9, 'App\\Models\\Administrator', 212),
(9, 'App\\Models\\Administrator', 220),
(9, 'App\\Models\\Administrator', 221),
(9, 'App\\Models\\Administrator', 222),
(9, 'App\\Models\\Administrator', 223),
(9, 'App\\Models\\Administrator', 224),
(9, 'App\\Models\\Administrator', 225),
(9, 'App\\Models\\Administrator', 226),
(9, 'App\\Models\\Administrator', 227),
(9, 'App\\Models\\Administrator', 228),
(9, 'App\\Models\\Administrator', 229),
(9, 'App\\Models\\Administrator', 230),
(9, 'App\\Models\\Administrator', 231),
(9, 'App\\Models\\Administrator', 232),
(9, 'App\\Models\\Administrator', 233),
(9, 'App\\Models\\Administrator', 234),
(9, 'App\\Models\\Administrator', 235),
(9, 'App\\Models\\Administrator', 236),
(9, 'App\\Models\\Administrator', 237);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_url` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_short_description` varchar(255) DEFAULT NULL,
  `news_long_description` text DEFAULT NULL,
  `news_image` varchar(255) DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `meta_title`, `meta_url`, `meta_keyword`, `meta_description`, `news_title`, `news_short_description`, `news_long_description`, `news_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trading Website', 'Simple News', 'Trading Website', 'Trading Website', 'Simple', 'Simple News', 'Simple News to show it', '1734626266_design_67644bdab8e4d.webp', 'active', '2024-12-25 10:13:57', '2024-12-27 05:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `nex_live_tvs`
--

CREATE TABLE `nex_live_tvs` (
  `id` int(11) NOT NULL,
  `language` enum('english','hindi') DEFAULT NULL,
  `video_link` text DEFAULT NULL,
  `status` enum('active','deactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nex_live_tvs`
--

INSERT INTO `nex_live_tvs` (`id`, `language`, `video_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hindi', 'https://www.youtube.com/embed/1_Ih0JYmkjI?si=ZsIbQCVt8SvojTxL', 'active', '2023-09-22 05:54:25', '2024-05-22 09:07:05'),
(9, 'english', 'https://www.youtube.com/embed/dDcHXfHmTnM?si=-ydkQFjCvLG6nL_U', 'active', '2024-05-22 07:49:59', '2024-05-22 09:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `nex_settings`
--

CREATE TABLE `nex_settings` (
  `id` int(11) NOT NULL,
  `setting_field_name` text NOT NULL,
  `setting_field_value` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nex_settings`
--

INSERT INTO `nex_settings` (`id`, `setting_field_name`, `setting_field_value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'eVidhya', '2023-09-09 04:07:00', '2025-03-11 10:12:27'),
(2, 'site_description', 'Welcome to eVidhya.', '2023-09-09 16:09:52', '2025-03-11 10:12:27'),
(3, 'site_postal_address', 'Nathubhai.', '2023-09-09 16:12:37', '2025-03-11 10:12:27'),
(4, 'site_office_time_message', 'Monday to Saturday(10AM - 06PM)', '2023-09-09 16:13:28', '2023-09-09 16:13:28'),
(5, 'site_about_us', 'Welcome to eVidhya. We stay always for you.', '2023-09-09 16:14:23', '2025-03-11 10:12:27'),
(6, 'site_keywords', 'Welcome to eVidhya.', '2023-09-09 16:15:37', '2025-03-11 10:12:27'),
(7, 'site_logo', '24012025104023.png', '2023-09-09 16:16:32', '2025-01-24 10:40:23'),
(8, 'site_favicon_logo', '24012025104122.png', '2023-09-09 16:17:09', '2025-01-24 10:41:22'),
(9, 'site_email', 'evidhya@gmail.com', '2023-09-09 16:17:34', '2025-03-11 10:12:27'),
(10, 'site_contact', '989 898 4444', '2023-09-09 16:18:15', '2025-03-11 10:12:27'),
(11, 'site_whattsapp_number', '989 444 4444', '2023-09-09 16:20:04', '2025-03-11 10:12:27'),
(12, 'site_link', 'http://localhost/eVidhya', '2023-09-09 16:20:48', '2025-03-11 10:12:27'),
(13, 'site_mail_host', 'tradingsite@gmail.com', '2023-09-09 16:21:54', '2024-12-27 11:02:15'),
(14, 'site_mail_username', 'tradingsite@gmail.com', '2023-09-09 16:22:43', '2024-12-27 11:02:15'),
(15, 'site_mail_password', '12345678', '2023-09-09 16:23:19', '2024-12-27 11:02:15'),
(16, 'site_mail_port', '123456', '2023-09-09 16:23:47', '2024-12-27 11:02:15'),
(17, 'site_404_image', '', '2023-09-09 16:24:14', '2023-09-09 16:24:14'),
(18, 'site_status', 'publish', '2023-09-09 16:24:29', '2025-03-11 10:12:27'),
(19, 'site_gst_percentage', '', '2023-09-09 16:25:04', '2023-09-09 16:25:04'),
(20, 'site_topbar_header_background_color', '#ff671f', '2023-09-09 16:25:38', '2023-12-09 15:11:45'),
(21, 'site_topbar_header_color', '#ff671f', '2023-09-09 16:26:08', '2023-12-09 15:11:45'),
(22, 'site_page_title_background_color', '#ffffff', '2023-09-09 16:27:02', '2023-12-09 15:11:45'),
(23, 'site_page_title_color', '#ffffff', '2023-09-09 16:27:36', '2023-12-09 15:11:45'),
(24, 'site_sidebar_background_color', '#046a38', '2023-09-09 16:27:53', '2023-12-09 15:11:45'),
(25, 'site_sidebar_color', '#046a38', '2023-09-09 16:28:12', '2023-12-09 15:11:45'),
(26, 'site_modal_action', 'bounceInLeft', '2023-09-09 16:28:41', '2023-12-09 15:11:45'),
(27, 'site_security', 'on', '2023-09-09 17:44:48', '2025-03-11 10:12:27'),
(28, 'site_APP_ID', 'df7733b0134e4b62bcbe79d10d310a3e', '2025-03-11 10:08:50', '2025-03-11 10:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(191) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `student_id`, `teacher_id`, `post_id`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(85, 2, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:56', '2025-05-01 10:04:56'),
(87, 51, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:56', '2025-05-01 10:04:56'),
(89, 78, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:56', '2025-05-01 10:04:56'),
(92, 2, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:57', '2025-05-01 10:04:57'),
(95, 51, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:57', '2025-05-01 10:04:57'),
(98, 78, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:57', '2025-05-01 10:04:57'),
(101, 2, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:57', '2025-05-01 10:04:57'),
(104, 51, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:57', '2025-05-01 10:04:57'),
(107, 78, 62, 41, 'New post from your teacher: sdsa', 0, '2025-05-01 10:04:57', '2025-05-01 10:04:57'),
(119, 2, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(120, 51, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(121, 78, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(122, 2, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(123, 51, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(124, 78, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(125, 2, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(126, 51, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(127, 78, 62, 45, 'New post from your teacher: mmmmmmmmmmmmm', 0, '2025-05-01 10:39:42', '2025-05-01 10:39:42'),
(128, 2, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(129, 51, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(130, 78, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(131, 2, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(132, 51, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(133, 78, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(134, 2, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(135, 51, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39'),
(136, 78, 62, 46, 'New post from your teacher: ', 0, '2025-05-01 10:46:39', '2025-05-01 10:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(191) NOT NULL,
  `page_description` text NOT NULL,
  `page_isactive` enum('active','deactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_description`, `page_isactive`, `created_at`, `updated_at`) VALUES
(14, 'Privacy Policy', '<p>By using the services provided by Evidhya, you agree to the collection, use, and disclosure of your information as outlined in this Privacy Policy. We are committed to protecting your personal data and ensuring that your experience with us is secure. This Privacy Policy explains how we collect, use, and safeguard your information when you interact with our platform.</p><p><br></p><p>We collect various types of information in order to provide and improve our services. The personal information we collect includes your name, email address, phone number, and other details you provide during registration. When you create a profile as a student or teacher, additional information such as your qualifications, availability, bio, or photo may be collected. We may also gather communication data, such as messages, chat history, and video call records, when you interact with other users. In addition, when you book a session or make a payment, we collect payment information through third-party processors. However, we do not store your payment details directly. We also collect usage data such as IP address, device type, browser type, operating system, and other browsing activity to enhance the platform’s performance and user experience.</p><p><br></p><p>We use your information to provide, maintain, and improve our services, including facilitating communication between students and teachers, processing bookings, and sending relevant notifications. We may also use the information for customer support and to respond to your inquiries. Additionally, your data may be used to analyze usage trends and monitor the platform’s performance. With your consent, we may send you promotional communications, but you can opt out of these at any time.</p><p><br></p><p>Your personal information may be shared with trusted third-party service providers who assist in operating the platform, such as payment processors, hosting services, and email delivery services. Additionally, if you interact with other users (<strong>e.g., students booking sessions with teachers</strong>), certain profile and booking information may be visible to those users. We may also disclose your information if required by law or to protect our legal rights, safety, or the rights of others. If we undergo a business transaction such as a merger or acquisition, your information may be transferred as part of the deal.</p><p><br></p><p>We retain your information for as long as your account is active or as needed to provide our services. If you wish to delete your account, you can request deletion through the platform, and we will process your request in accordance with applicable laws. Some information may be retained for legal or operational purposes even after account deletion.</p><p><br></p><p>We implement reasonable security measures to protect your personal information from unauthorized access, alteration, or destruction. However, please note that no method of transmission over the internet or method of electronic storage is 100% secure, and we cannot guarantee absolute security.</p><p><br></p><p>You have the right to access and update your personal information through your account settings. You may also request the deletion of your account, subject to certain legal exceptions. If you no longer wish to receive marketing communications, you can opt out by following the unsubscribe instructions provided in the emails or by contacting us directly.</p><p><br></p><p>We use cookies and similar tracking technologies to enhance your experience on our platform. These technologies help us remember your preferences and analyze usage patterns. You can control cookie settings through your browser, but please note that disabling cookies may affect the functionality of certain features on the platform.</p><p><br></p><p>Our platform may contain links to third-party websites. We are not responsible for the content or privacy practices of these external sites. We encourage you to review the privacy policies of any third-party websites you visit.</p><p><br></p><p>If your personal information is transferred outside your country of residence, we will take steps to ensure that your data is handled in accordance with applicable data protection laws. By using the platform, you consent to the transfer of your data to these locations.</p><p><br></p><p>Evidhya is not intended for use by children under the age of 13. We do not knowingly collect personal information from children. If we become aware that we have inadvertently collected information from a child under 13, we will take steps to delete that data.</p><p><br></p><p><strong>We may update this Privacy Policy from time to time. When we make significant changes, we will notify you by posting the updated policy on this page and updating the \"Effective Date\" at the top. We encourage you to review this Privacy Policy periodically for any updates.</strong></p><p><br></p><p>If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at 📞989 898 4444</p>', 'active', '2025-04-03 10:01:14', '2025-04-03 12:07:59'),
(15, 'Term & Conditions', '<p>By accessing and using the services provided by Evidhya, you agree to comply with and be bound by the following terms. If you do not agree with these terms, you should not use the platform.</p><p><br></p><p>Evidhya is an online platform that offers features including chat, video calls, booking of sessions, and a student-teacher follow system. These services are available to both students and teachers, and the terms outlined here apply to all users.</p><p><br></p><p>To use certain features of the platform, you may need to create an account. By registering, you agree to provide accurate and up-to-date information. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.</p><p><br></p><p>The platform allows students to book sessions with teachers. Students are responsible for paying for these sessions, and teachers set their own schedules and availability. All payments are processed through third-party services, and you agree to adhere to their terms and conditions. Cancellations and refunds are subject to the individual teacher’s policies.</p><p><br></p><p>Students can follow teachers to receive updates and notifications regarding the teacher’s content or availability. Teachers have the discretion to accept or decline follow requests.&nbsp;</p><p><br></p><p>You agree not to misuse the platform for any illegal, harmful, or abusive activities. This includes, but is not limited to, engaging in discriminatory behavior, posting inappropriate content, or violating the rights of others. You are solely responsible for any content you post on the platform, and by posting content, you grant Evidhya the right to use, display, and distribute that content.</p><p><br></p><p>Your privacy is important to us, and <strong>our Privacy Policy explains how we collect and protect your personal information</strong>. By using the platform, you consent to the collection and use of your information as described in the Privacy Policy.</p><p><br></p><p>Evidhya reserves the right to suspend or terminate your account if you violate any of the terms outlined here. We are not liable for any indirect or consequential damages arising from the use of the platform.</p><p><br></p><p>The platform may include links to third-party websites. These links are provided for your convenience, and we are not responsible for the content or policies of third-party sites.</p><p><br></p><p>These Terms and Conditions are governed by the laws of [Insert Jurisdiction], and any disputes will be resolved in the courts located in Nathubhai.</p><p><br></p><p>We may update these Terms and Conditions at any time, and any changes will be posted on this page. It is your responsibility to review these terms periodically.</p><p><br></p><p>If you have any questions or concerns about these Terms and Conditions, please contact us at 📞989 898 4444.</p><p><br></p><p><br></p>', 'active', '2025-04-03 10:05:37', '2025-04-03 12:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(15, 'user-list', 'admin', '2024-12-04 09:56:27', '2024-12-04 09:56:27'),
(16, 'dashboard-list', 'admin', '2024-12-07 11:05:52', '2024-12-07 11:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rechargeamount`
--

CREATE TABLE `rechargeamount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `amount_usd` int(11) DEFAULT NULL,
  `cashback` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rechargeamount`
--

INSERT INTO `rechargeamount` (`id`, `amount`, `amount_usd`, `cashback`, `created_at`, `updated_at`, `status`) VALUES
(1, 50, NULL, NULL, NULL, NULL, 'active'),
(2, 100, NULL, NULL, NULL, NULL, 'active'),
(3, 200, NULL, NULL, NULL, NULL, 'active'),
(3501, 500, NULL, NULL, NULL, NULL, 'active'),
(3502, 1000, NULL, NULL, NULL, NULL, 'active'),
(3503, 1500, NULL, NULL, NULL, NULL, 'active'),
(3504, 2000, NULL, NULL, NULL, NULL, 'active'),
(3505, 2500, NULL, NULL, NULL, NULL, 'active'),
(3506, 3000, NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `star_description` text NOT NULL,
  `short_description` text NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `teacher_id`, `student_id`, `star_description`, `short_description`, `type`, `created_at`, `updated_at`) VALUES
(7, 62, 51, '3', 'wow!!', 'chat', '2025-03-26 06:33:49', '2025-03-26 06:33:49'),
(8, 62, 51, '3', 'wow!!', 'chat', '2025-03-26 06:59:21', '2025-03-26 06:59:21'),
(9, 62, 51, '4', 'wow!!', 'video call', '2025-03-26 07:37:26', '2025-03-26 07:37:26'),
(10, 62, 51, '4', 'wow!!amezing!!!!!!!!!!!!!', 'video call', '2025-03-26 08:48:28', '2025-03-26 08:48:28'),
(11, 62, 51, '4', 'wow!!amezing!!!!!!!!!!!!!', 'video call', '2025-03-26 09:06:50', '2025-03-26 09:06:50'),
(12, 62, 51, '4', 'wow!!amezing!!!!!!!!!!!!!', 'video call', '2025-03-26 09:22:04', '2025-03-26 09:22:04'),
(13, 62, 51, '4', 'wow!!amezing!!!!!!!!!!!!!', 'video call', '2025-03-26 11:37:09', '2025-03-26 11:37:09'),
(14, 62, 51, '5', 'hola!!!!!!!!!!!1', '', '2025-04-01 05:11:34', '2025-04-01 05:11:34'),
(15, 62, 78, '4', 'wow!!', 'chat', '2025-04-09 06:16:04', '2025-04-09 06:16:04'),
(16, 62, 78, '4', 'dsfdsg', 'chat', '2025-04-14 07:31:14', '2025-04-14 07:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin', '2023-09-01 06:49:49', '2023-09-01 06:49:49'),
(8, 'supperadmin', 'admin', '2024-12-04 09:42:44', '2024-12-04 09:42:44'),
(9, 'staff', 'admin', '2024-12-04 09:42:45', '2024-12-04 09:42:45');

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
(16, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sectiondata`
--

CREATE TABLE `sectiondata` (
  `id` int(11) NOT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `section_image` varchar(255) DEFAULT NULL,
  `section_description` text DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectiondata`
--

INSERT INTO `sectiondata` (`id`, `section_title`, `section_image`, `section_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kmnkkm', 'flag.jpg', 'dchguj', 'active', '2024-12-26 10:05:37', '2024-12-30 05:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_booking`
--

CREATE TABLE `student_booking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('confirmed','cancelled','pending') NOT NULL DEFAULT 'pending',
  `type` enum('call','chat','video call') NOT NULL,
  `description` text DEFAULT NULL,
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reject_reason` text DEFAULT NULL,
  `channel_nm` varchar(255) DEFAULT NULL,
  `call_started` tinyint(1) NOT NULL DEFAULT 0,
  `is_wallet_updated_video` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_booking`
--

INSERT INTO `student_booking` (`id`, `status`, `type`, `description`, `s_id`, `appointment_id`, `created_at`, `updated_at`, `reject_reason`, `channel_nm`, `call_started`, `is_wallet_updated_video`) VALUES
(66, 'cancelled', 'chat', 'sfdsf', 51, 71, '2025-01-31 06:42:38', '2025-02-14 08:49:08', 'not', NULL, 0, 0),
(76, 'confirmed', 'chat', 'dret', 51, 58, '2025-02-03 07:17:56', '2025-02-03 07:18:07', NULL, NULL, 0, 0),
(77, 'confirmed', 'chat', 'wdasds', 51, 59, '2025-02-04 05:31:07', '2025-02-04 05:31:22', NULL, NULL, 0, 0),
(78, 'confirmed', 'chat', ',.kjkl', 51, 60, '2025-02-10 04:53:09', '2025-02-10 04:53:31', NULL, NULL, 0, 0),
(81, 'confirmed', 'chat', 'saSd', 51, 63, '2025-02-12 07:16:54', '2025-02-12 07:17:21', NULL, NULL, 0, 0),
(82, 'confirmed', 'chat', 'adas', 51, 64, '2025-02-12 12:25:43', '2025-02-13 06:04:39', NULL, NULL, 0, 0),
(83, 'confirmed', 'chat', 'wewrw', 51, 63, '2025-02-12 12:43:20', '2025-02-12 12:48:29', NULL, NULL, 0, 0),
(84, 'confirmed', 'chat', 'sfsdg', 51, 65, '2025-02-13 06:32:04', '2025-02-14 08:49:20', NULL, NULL, 0, 0),
(85, 'confirmed', 'chat', 'asad', 51, 66, '2025-02-13 07:33:49', '2025-02-14 09:51:04', NULL, NULL, 0, 0),
(87, 'cancelled', 'chat', 'sdsd', 51, 67, '2025-02-13 09:09:25', '2025-04-04 04:50:40', 'jjhjh', NULL, 0, 0),
(88, 'pending', 'chat', 'sdsd', 51, 67, '2025-02-13 09:09:33', '2025-02-13 09:09:33', NULL, NULL, 0, 0),
(90, 'pending', 'chat', 'adsad', 51, 68, '2025-02-13 09:15:00', '2025-02-13 09:15:00', NULL, NULL, 0, 0),
(91, 'pending', 'chat', 'ssad', 51, 69, '2025-02-13 09:17:52', '2025-02-13 09:17:52', NULL, NULL, 0, 0),
(92, 'confirmed', 'chat', 'adsad', 51, 70, '2025-02-13 09:26:52', '2025-02-14 05:07:06', NULL, NULL, 0, 0),
(93, 'confirmed', 'chat', 'asad', 51, 76, '2025-02-13 11:12:32', '2025-02-13 11:13:08', NULL, NULL, 0, 0),
(94, 'pending', 'chat', 'sfsdf', 51, 77, '2025-02-13 12:42:58', '2025-02-13 12:42:58', NULL, NULL, 0, 0),
(95, 'confirmed', 'chat', 'asasd', 51, 78, '2025-02-13 12:43:55', '2025-02-13 12:44:09', NULL, NULL, 0, 0),
(96, 'confirmed', 'chat', 'adsd', 51, 79, '2025-02-14 05:26:28', '2025-02-14 05:27:15', NULL, NULL, 0, 0),
(97, 'confirmed', 'chat', 'qew', 51, 80, '2025-02-17 05:16:03', '2025-02-17 05:16:30', NULL, NULL, 0, 0),
(98, 'confirmed', 'chat', 'aad', 51, 81, '2025-02-17 10:21:25', '2025-02-17 10:22:03', NULL, NULL, 0, 0),
(99, 'pending', 'video call', 'kjkdfksd', 51, 72, '2025-02-26 06:05:08', '2025-02-26 06:05:08', NULL, NULL, 0, 0),
(100, 'confirmed', 'video call', 'sdfs', 51, 73, '2025-02-26 06:08:20', '2025-03-26 06:55:24', NULL, NULL, 0, 0),
(101, 'confirmed', 'chat', 'sds', 51, 82, '2025-02-26 06:34:09', '2025-02-26 06:34:21', NULL, NULL, 0, 0),
(102, 'confirmed', 'video call', 'wewew', 51, 83, '2025-02-26 06:37:07', '2025-02-26 06:37:17', NULL, NULL, 0, 0),
(103, 'confirmed', 'video call', 'sd', 51, 84, '2025-03-10 09:52:26', '2025-03-10 09:52:58', NULL, NULL, 0, 0),
(104, 'confirmed', 'video call', 'kjkj', 51, 85, '2025-03-10 10:04:17', '2025-03-10 10:24:16', NULL, NULL, 1, 0),
(105, 'confirmed', 'video call', 'dsfs', 51, 85, '2025-03-10 10:09:23', '2025-03-10 10:23:50', NULL, 'eVidhya_67ceba53c68d7_85', 1, 0),
(106, 'confirmed', 'video call', 'rwe', 51, 86, '2025-03-11 05:04:48', '2025-03-11 05:05:07', NULL, 'eVidhya_67cfc4709fd84_86', 1, 0),
(112, 'confirmed', 'video call', 'jk', 51, 90, '2025-03-13 06:52:16', '2025-03-13 06:52:26', NULL, 'eVidhya_67d280a07bf94_90', 1, 0),
(113, 'confirmed', 'video call', 'werw', 51, 91, '2025-03-17 12:26:19', '2025-03-17 12:26:44', NULL, 'eVidhya_67d814eb49431_91', 1, 0),
(114, 'confirmed', 'video call', 'dfdsfs', 51, 92, '2025-03-20 06:43:47', '2025-03-20 06:49:05', NULL, 'eVidhya_67dbb923c9925_92', 1, 0),
(115, 'confirmed', 'chat', 'zdcdzsds', 51, 95, '2025-03-21 06:48:58', '2025-03-21 06:49:37', NULL, NULL, 0, 0),
(116, 'confirmed', 'video call', 'dhfhjd', 51, 96, '2025-03-24 04:43:20', '2025-03-24 12:29:01', NULL, 'eVidhya_67e0e2e871fbe_96', 1, 0),
(117, 'confirmed', 'video call', 'sdsdf', 51, 97, '2025-03-25 04:42:54', '2025-03-25 12:00:01', NULL, 'eVidhya_67e2344ee97f8_97', 1, 1),
(118, 'confirmed', 'chat', 'aa', 51, 98, '2025-03-25 12:31:16', '2025-03-25 12:31:33', NULL, NULL, 0, 0),
(121, 'confirmed', 'chat', 'fgf', 51, 101, '2025-03-26 05:23:08', '2025-03-26 05:23:27', NULL, NULL, 0, 0),
(123, 'confirmed', 'video call', 'nkjjkj', 51, 102, '2025-03-26 06:58:16', '2025-03-26 07:37:16', NULL, 'eVidhya_67e3a588d360f_102', 1, 1),
(124, 'confirmed', 'video call', 'ewreuihiu', 51, 103, '2025-03-26 08:45:42', '2025-03-26 13:01:00', NULL, 'eVidhya_67e3beb68cc8c_103', 1, 1),
(127, 'confirmed', 'chat', 'lkkkkkk', 78, 107, '2025-04-09 05:41:31', '2025-04-09 05:41:41', NULL, NULL, 0, 0),
(128, 'confirmed', 'chat', 'kkkkkk', 78, 108, '2025-04-09 06:01:02', '2025-04-09 06:01:15', NULL, NULL, 0, 0),
(129, 'confirmed', 'chat', 're', 78, 109, '2025-04-11 09:08:30', '2025-04-11 09:08:43', NULL, NULL, 0, 0),
(130, 'confirmed', 'chat', 'Z', 78, 110, '2025-04-11 10:22:04', '2025-04-11 10:22:22', NULL, NULL, 0, 0),
(131, 'confirmed', 'chat', 'qq', 78, 111, '2025-04-11 11:20:32', '2025-04-11 11:20:42', NULL, NULL, 0, 0),
(132, 'confirmed', 'chat', 'yuyyy', 78, 112, '2025-04-14 06:11:55', '2025-04-14 06:12:11', NULL, NULL, 0, 0),
(133, 'confirmed', 'chat', 'safasx', 78, 113, '2025-04-14 07:29:20', '2025-04-14 07:29:40', NULL, NULL, 0, 0),
(134, 'confirmed', 'chat', 'qqq', 78, 114, '2025-04-14 11:22:19', '2025-04-14 11:23:05', NULL, NULL, 0, 0),
(135, 'confirmed', 'chat', 'jjjkjk', 78, 115, '2025-04-15 08:45:40', '2025-04-15 08:45:49', NULL, NULL, 0, 0),
(136, 'confirmed', 'video call', 'hieiie', 51, 116, '2025-04-21 05:09:57', '2025-04-21 05:12:18', NULL, 'eVidhya_6805d32584a18_116', 1, 1),
(137, 'confirmed', 'video call', 'defwerf', 51, 117, '2025-04-23 06:16:00', '2025-04-23 06:20:06', NULL, 'eVidhya_680885a0d3527_117', 1, 1),
(138, 'pending', 'chat', 'fdfkdjk', 78, 118, '2025-04-24 11:51:13', '2025-04-24 11:51:13', NULL, NULL, 0, 0),
(139, 'confirmed', 'chat', 'mmmmmmm', 78, 119, '2025-05-01 11:04:56', '2025-05-01 11:05:33', NULL, NULL, 0, 0),
(140, 'confirmed', 'video call', 'bdjbfjnfjew', 78, 120, '2025-05-01 11:18:38', '2025-05-01 11:21:50', NULL, 'eVidhya_6813588e7c8ae_120', 1, 1),
(141, 'confirmed', 'video call', 'ksjdksjfk', 78, 121, '2025-05-03 06:09:30', '2025-05-03 06:15:01', NULL, 'eVidhya_6815b31ab08b3_121', 0, 0),
(142, 'confirmed', 'video call', 'ddddddddddddddddd', 51, 122, '2025-05-03 09:37:57', '2025-05-03 09:43:26', NULL, 'eVidhya_6815e3f54ac57_122', 1, 1),
(143, 'confirmed', 'video call', 'jkkkkkkkk', 51, 123, '2025-05-03 09:54:30', '2025-05-03 10:00:00', NULL, 'eVidhya_6815e7d697110_123', 1, 1),
(144, 'confirmed', 'chat', 'kkkkkkkkkkkkkkkkkkkkkk', 51, 125, '2025-05-05 06:17:28', '2025-05-05 06:17:44', NULL, NULL, 0, 0),
(145, 'confirmed', 'chat', 'uu', 51, 126, '2025-05-05 06:37:15', '2025-05-05 06:37:36', NULL, NULL, 0, 0),
(146, 'confirmed', 'chat', 'ggj', 78, 127, '2025-05-07 05:19:33', '2025-05-07 05:19:52', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_wallet`
--

CREATE TABLE `student_wallet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `isActive` varchar(191) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_wallet`
--

INSERT INTO `student_wallet` (`id`, `student_id`, `amount_id`, `amount`, `isActive`, `isDelete`, `created_at`, `updated_at`) VALUES
(15, 51, NULL, '1935', '', 0, NULL, '2025-05-05 06:42:25'),
(17, 60, 3, '4433', '', 0, NULL, '2025-02-01 11:23:48'),
(26, 62, NULL, '24496.4', '', 0, '2025-02-03 04:55:41', '2025-05-05 06:42:25'),
(27, 76, NULL, '10230', '', 0, '2025-03-26 08:48:03', '2025-03-26 13:01:00'),
(28, 78, NULL, '4850', '', 0, NULL, '2025-05-01 11:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `subscription_title` varchar(255) DEFAULT NULL,
  `subscription_price` varchar(255) DEFAULT NULL,
  `subscription_duration` int(255) DEFAULT NULL,
  `subscription_duration_unit` varchar(255) DEFAULT NULL,
  `subscription_point` text DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `subscription_title`, `subscription_price`, `subscription_duration`, `subscription_duration_unit`, `subscription_point`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Demo', '12000', 1, 'month', '[\"it\'s use\",\"it\'s simple to use\",\"it\'s very important\"]', 'active', '2024-12-26 09:03:31', '2024-12-26 09:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `c_status` enum('active','deactive','','') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_image` varchar(191) DEFAULT NULL,
  `c_type` enum('class','blog','news') NOT NULL DEFAULT 'class',
  `c_title` varchar(191) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `c_views` int(11) DEFAULT 0,
  `c_role` varchar(20) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `c_name`, `parent_id`, `c_status`, `created_at`, `updated_at`, `c_image`, `c_type`, `c_title`, `c_content`, `c_views`, `c_role`) VALUES
(24, 'Class 9', NULL, 'active', '2025-01-22 11:15:01', '2025-04-23 05:01:35', '1745384495_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(25, 'Class 12', NULL, 'active', '2025-01-22 11:16:04', '2025-04-23 05:01:23', '1745384483_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(26, 'Class 10', NULL, 'active', '2025-01-22 11:16:21', '2025-04-23 05:01:10', '1745384470_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(27, 'Gujarati', 26, 'active', '2025-01-22 11:16:43', '2025-04-23 05:01:00', '1745384460_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(28, 'English', 25, 'active', '2025-01-22 11:17:04', '2025-04-23 05:00:48', '1745384448_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(29, 'Hindi', 24, 'active', '2025-01-22 11:17:14', '2025-04-23 05:00:36', '1745384436_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(30, 'English', 26, 'active', '2025-01-22 11:17:45', '2025-04-23 05:00:24', '1745384424_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(31, 'Gujarati', 24, 'active', '2025-01-22 11:17:56', '2025-04-23 05:00:12', '1745384412_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(32, 'Maths', 25, 'active', '2025-01-22 11:18:16', '2025-04-23 05:00:00', '1745384400_sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(61, 'Exam Preparation Tips', NULL, 'active', '2025-03-26 05:43:55', '2025-04-04 06:06:47', 'sub1.jpeg', 'blog', 'How to Create a Perfect Study Schedule', 'fndsjnsrefjkrnekfnre', 11, 'Admin'),
(62, 'Exam Preparation Tips', NULL, 'active', '2025-03-26 05:49:25', '2025-04-04 06:00:21', 'sub1.jpeg', 'news', 'Effective Study Strategies for Students', 'jnvsjkrnjgkwjtrlkmd.', 5, 'Admin'),
(63, 'Platform Updates', NULL, 'active', '2025-03-27 10:02:35', '2025-03-31 12:49:14', '1743069755_eVidhya_Video_Call_Resized.jpg', 'news', 'eVidhya Introduces Video Call Feature for Seamless Learning', 'eVidhya has launched a video call feature to enhance the learning experience. Students can now connect with teachers in real-time to get their doubts solved efficiently.', 4, 'Admin'),
(64, 'Student Success', NULL, 'active', '2025-03-27 10:05:41', '2025-04-03 05:30:13', '1743069941_Top Student Earns Certification After eVidhya Learning Sessions (1).jpg', 'news', 'Top Student Earns Certification After eVidhya Learning Sessions', 'A dedicated student achieved top scores in competitive exams after learning through eVidhya\'s expert teachers. His journey inspires many to utilize the platform effectively.', 11, 'Admin'),
(65, 'Student Success', NULL, 'active', '2025-03-27 10:12:39', '2025-04-03 05:30:19', '1743070359_Student_Lands_Dream_Job_Resized.jpg', 'news', 'Student Lands Dream Job', 'A dedicated learner from eVidhya secured a prestigious job in the IT sector after gaining in-depth knowledge through interactive sessions.', 3, 'Admin'),
(66, 'EdTech Innovation', NULL, 'active', '2025-04-01 05:23:52', '2025-04-01 05:23:52', '1743485032.jpg', 'blog', 'Revolutionizing Learning with Real-Time Video Calls', 'In today’s digital age, access to quality education has become easier than ever. eVidhya takes this a step further by offering seamless real-time video call sessions for students and teachers. Whether you need personalized 1-on-1 tutoring, doubt-solving sessions, or interactive lessons, eVidhya ensures expert guidance at your fingertips. The platform supports smooth communication using Agora and Jitsi Meet, making remote learning engaging and productive. With features like instant chat support, multimedia content sharing, and clear video calls, eVidhya enhances the virtual learning experience for both students and educators.', 0, 'Admin'),
(67, 'Tech Solutions', NULL, 'active', '2025-04-01 05:24:39', '2025-04-01 06:50:36', '1743485079.jpg', 'blog', 'Sustainable Tech Solutions for a Greener Future', 'Technology plays a vital role in promoting sustainability. Discover how smart energy management, IoT sensors, and data analytics are helping companies reduce their carbon footprint and operate responsibly.', 2, 'Admin'),
(68, 'Tech Solutions', NULL, 'active', '2025-04-01 05:25:34', '2025-04-01 05:25:34', '1743485134.jpg', 'blog', 'Embracing Cloud Solutions for Seamless Operations', 'Cloud computing offers businesses flexibility, scalability, and cost-efficiency. Explore how adopting cloud-based platforms can simplify operations, enhance collaboration, and improve data security.', 0, 'Admin'),
(69, 'Tech Solutions', NULL, 'active', '2025-04-01 05:26:18', '2025-05-05 08:52:19', '1743485178.jpg', 'blog', 'Revolutionizing Business with Cutting-Edge Tech Solutions', 'Discover how innovative technologies are transforming industries, streamlining operations, and enhancing customer experiences. From AI-powered automation to cloud computing, learn how businesses can stay ahead in a competitive market.', 1, 'Admin'),
(70, 'Tech Solutions', NULL, 'active', '2025-04-01 05:26:54', '2025-05-01 04:26:24', '1743485214.jpg', 'blog', 'Effortless Learning with Smart Scheduling and Wallet Integration', 'eVidhya simplifies the learning journey by offering smart features that save time and enhance convenience. With an intuitive slot booking system, students can reserve sessions with teachers at their preferred time. The platform’s wallet integration ensures secure, hassle-free payments. After each session, the payment is automatically deducted from the student’s wallet and credited to the teacher’s account. This seamless financial management system allows users to focus entirely on learning. Combined with interactive video calls and real-time chat, eVidhya is redefining online education with ease and accessibility.', 1, 'Admin'),
(71, 'E-Learning Platform', NULL, 'active', '2025-04-01 05:27:56', '2025-04-01 05:31:27', '1743485276.jpg', 'blog', 'Your Gateway to Interactive and Engaging Online Learning', 'Take control of your education with eVidhya’s innovative features. Schedule personalized video sessions with teachers, chat instantly for doubt resolution, and explore a rich library of educational resources. Learning has never been more accessible!', 1, 'Admin'),
(72, 'E-Learning Platform', NULL, 'active', '2025-04-01 05:28:41', '2025-04-01 05:28:41', '1743485321.jpg', 'blog', 'Revolutionizing Education Through Seamless Digital Learning', 'Experience a new era of learning with eVidhya — an intuitive e-learning platform that provides seamless video conferencing, interactive chat support, and tailored educational content. Empower your learning journey with one-on-one mentoring and collaborative discussions.', 0, 'Admin'),
(73, 'E-Learning Platform', NULL, 'active', '2025-04-01 05:29:30', '2025-05-05 08:52:38', '1743485370.jpg', 'blog', 'Empowering Learning Anytime, Anywhere with eVidhya', 'eVidhya offers a dynamic online learning platform that connects students with expert educators through interactive video calls and real-time chat. Book personalized sessions, access learning resources, and achieve academic goals with ease.', 7, 'Admin'),
(74, 'E-Learning Platform', NULL, 'active', '2025-04-01 05:30:10', '2025-04-01 05:30:10', '1743485410.jpg', 'blog', 'eVidhya: Connecting Students and Teachers Beyond Boundaries', 'Education knows no boundaries with eVidhya. The platform connects students to expert teachers from around the world, offering a rich, diverse learning experience. Through advanced video conferencing tools like Jitsi Meet and Agora, students can participate in live sessions, ask questions, and clarify doubts instantly. The interactive chat feature ensures continuous support, while flexible scheduling makes learning accessible. Whether you’re preparing for exams, mastering a new subject, or exploring concepts in-depth, eVidhya’s reliable platform empowers learners to achieve their goals.', 0, 'Admin'),
(75, 'Education', NULL, 'active', '2025-04-03 12:09:52', '2025-04-03 12:09:52', '1743682192_12345678.jpg', 'news', 'Revolutionizing Online Learning with eVidhya', 'eVidhya is an innovative platform designed to bridge the gap between students and teachers. Through seamless video calling, real-time chat, and appointment booking, students can get personalized help on their academic queries. The platform also features a secure wallet transaction system, ensuring smooth payments for tutor sessions. With authentication and scheduling functionalities, eVidhya brings a structured and efficient approach to online learning', 0, 'Admin'),
(76, 'Education', NULL, 'active', '2025-04-03 12:10:55', '2025-04-03 12:22:24', '1743682944_12345.jpg', 'news', 'Empowering Students with Personalized Learning', 'In today\'s fast-paced world, personalized education is key to student success. Our platform connects students with expert teachers through interactive video calls, real-time chat, and scheduled sessions. Whether it\'s doubt resolution, concept clarity, or skill development, learners can access quality education anytime, anywhere. The integrated wallet system ensures seamless transactions, making the learning experience smooth and hassle-free.', 0, 'Admin'),
(77, 'Education', NULL, 'active', '2025-04-03 12:11:42', '2025-04-07 10:52:37', '1743682928_1234567.jpg', 'news', 'Seamless Learning Experience with One-on-One Tutoring', 'Technology is transforming education, making it more flexible and engaging. Our platform offers students the ability to connect with professional educators through video calls and messaging, ensuring real-time interaction. With features like appointment booking, wallet transactions, and progress tracking, students can take control of their learning journey. This digital approach enables better time management and personalized learning experiences.', 1, 'Admin'),
(78, 'Education', NULL, 'active', '2025-04-03 12:12:14', '2025-04-04 05:59:21', '1743682912_1.jpg', 'news', 'Bringing Teachers and Students Closer Through Technology', 'Distance is no longer a barrier to learning. Our platform enables students to interact with teachers through high-quality video calls and instant messaging, creating a collaborative learning space. The scheduling feature allows students to book sessions at their convenience, ensuring effective time management. Secure payment transactions and a user-friendly interface make online education seamless and reliable. Join us in revolutionizing digital learning!', 2, 'Admin'),
(79, 'Education', NULL, 'active', '2025-04-03 12:12:45', '2025-04-07 10:52:27', '1743682889_uri_ifs___M_fcf8509d-64c8-4291-83a9-190f80301835.jpg', 'news', 'Interactive Learning Platform for Better Engagement', 'Engagement is key to effective learning. Our platform goes beyond traditional teaching methods by providing a highly interactive environment where students can discuss doubts, share ideas, and learn through direct communication with teachers. The video call and chat features enhance real-time learning, while the scheduling and payment system ensures smooth session management. Empower yourself with the future of education!', 1, 'Admin'),
(81, 'Class 8', NULL, 'active', '2025-04-23 04:56:41', '2025-04-23 04:56:41', 'sub1.png', 'class', NULL, NULL, 0, 'Admin'),
(82, 'Gujarati', 24, 'active', '2025-04-24 11:44:19', '2025-04-24 11:44:19', 'sub1.png', 'class', NULL, NULL, 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_availability`
--

CREATE TABLE `teacher_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` date NOT NULL,
  `status` enum('available','booked','not_booked') NOT NULL DEFAULT 'available',
  `is_chat_ended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `t_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_availability`
--

INSERT INTO `teacher_availability` (`id`, `start_time`, `end_time`, `date`, `status`, `is_chat_ended`, `created_at`, `updated_at`, `title`, `t_id`) VALUES
(58, '12:50:00', '12:59:00', '2025-02-03', 'booked', 0, '2025-02-03 07:17:30', '2025-02-03 07:17:56', 'gf', 62),
(59, '14:00:00', '15:00:00', '2025-02-04', 'booked', 0, '2025-02-04 05:30:39', '2025-02-04 05:31:07', 'gujarati', 60),
(60, '14:38:00', '15:27:00', '2025-02-10', 'booked', 1, '2025-02-10 04:51:43', '2025-02-10 04:53:09', 'gujarati', 62),
(63, '18:17:00', '18:30:00', '2025-02-12', 'booked', 1, '2025-02-12 07:16:31', '2025-02-12 12:43:20', 'sdsf', 62),
(64, '17:56:00', '18:21:00', '2025-02-15', 'not_booked', 0, '2025-02-12 12:24:17', '2025-02-12 12:25:43', 'dsdsf', 62),
(65, '12:01:00', '13:01:00', '2025-02-15', 'booked', 0, '2025-02-13 06:31:12', '2025-02-13 06:32:04', 'gujarati', 62),
(66, '14:02:00', '13:04:00', '2025-02-13', 'booked', 0, '2025-02-13 07:33:32', '2025-02-13 10:20:56', 'gujarati', 62),
(67, '14:21:00', '15:21:00', '2025-02-16', 'available', 0, '2025-02-13 08:51:58', '2025-02-13 09:10:21', 'dsads', 62),
(68, '18:48:00', '19:44:00', '2025-02-16', 'not_booked', 0, '2025-02-13 09:14:42', '2025-02-13 09:15:00', 'english', 62),
(69, '14:47:00', '14:47:00', '2025-02-16', 'not_booked', 0, '2025-02-13 09:17:33', '2025-02-13 09:17:52', 'live', 62),
(70, '10:51:00', '10:53:00', '2025-02-14', 'booked', 1, '2025-02-13 09:23:35', '2025-02-13 09:26:52', '12th', 62),
(71, '15:03:00', '16:03:00', '2025-02-20', 'available', 0, '2025-02-13 09:33:45', '2025-02-13 09:41:50', 'english', 62),
(72, '15:19:00', '16:19:00', '2025-02-28', 'not_booked', 0, '2025-02-13 09:49:11', '2025-02-26 06:05:08', 'live', 62),
(73, '15:53:00', '16:53:00', '2025-02-28', 'booked', 0, '2025-02-13 10:23:22', '2025-02-26 06:08:20', 'live', 62),
(74, '10:56:00', '10:57:00', '2025-02-14', 'booked', 0, '2025-02-13 10:23:51', '2025-02-13 10:23:51', 'english', 62),
(75, '16:41:00', '17:41:00', '2025-02-28', 'available', 0, '2025-02-13 11:11:50', '2025-02-13 11:11:50', 'gujarati', 62),
(76, '17:00:00', '18:16:00', '2025-02-13', 'booked', 1, '2025-02-13 11:12:10', '2025-02-13 11:12:32', 'gujarati', 62),
(77, '18:11:00', '18:13:00', '2025-02-13', 'not_booked', 0, '2025-02-13 12:42:03', '2025-02-13 12:42:58', 'gujarati', 62),
(78, '18:21:00', '18:27:00', '2025-02-13', 'booked', 0, '2025-02-13 12:43:37', '2025-02-13 12:43:55', 'Gujarati', 62),
(79, '16:33:00', '17:33:00', '2025-02-14', 'booked', 1, '2025-02-14 05:26:05', '2025-02-14 05:26:28', 'asad', 62),
(80, '10:45:00', '11:44:00', '2025-02-17', 'booked', 1, '2025-02-17 05:14:42', '2025-02-17 05:16:04', 'live', 62),
(81, '15:50:00', '16:50:00', '2025-02-17', 'booked', 1, '2025-02-17 10:20:46', '2025-02-17 10:21:25', 'english', 62),
(82, '12:04:00', '12:09:00', '2025-02-26', 'booked', 0, '2025-02-26 06:33:35', '2025-02-26 06:34:09', 'sdsfdf', 62),
(83, '12:11:00', '15:28:00', '2025-02-26', 'booked', 0, '2025-02-26 06:36:47', '2025-02-26 06:37:07', 'sds', 62),
(84, '15:23:00', '15:27:00', '2025-03-10', 'available', 0, '2025-03-10 09:51:25', '2025-03-10 09:52:26', 'vbnbn', 62),
(85, '17:48:00', '17:56:00', '2025-03-10', 'available', 0, '2025-03-10 10:03:17', '2025-03-10 10:09:23', 'dsads', 62),
(86, '15:33:00', '16:59:00', '2025-03-11', 'booked', 0, '2025-03-11 05:01:35', '2025-03-11 05:04:48', 'sdsd', 62),
(87, '10:27:00', '22:59:00', '2025-03-12', 'booked', 0, '2025-03-12 04:56:39', '2025-03-12 05:05:54', 'gujarati', 62),
(90, '12:23:00', '13:21:00', '2025-03-13', 'booked', 0, '2025-03-13 06:51:45', '2025-03-13 06:52:16', 'vbnbn', 62),
(91, '17:57:00', '18:55:00', '2025-03-17', 'booked', 0, '2025-03-17 12:25:52', '2025-03-17 12:26:19', 'gujarati', 62),
(92, '12:14:00', '12:30:00', '2025-03-20', 'booked', 0, '2025-03-20 06:43:04', '2025-03-20 06:43:47', 'class', 62),
(93, '14:57:00', '15:57:00', '2025-03-20', 'available', 0, '2025-03-20 09:27:20', '2025-03-20 09:27:20', 'class', 62),
(94, '14:58:00', '15:58:00', '2025-03-22', 'available', 0, '2025-03-20 09:28:47', '2025-03-20 09:28:47', 'class', 62),
(95, '12:20:00', '12:30:00', '2025-03-21', 'booked', 1, '2025-03-21 06:48:23', '2025-03-21 06:48:58', 'axAs', 62),
(96, '15:59:00', '18:59:00', '2025-03-24', 'booked', 0, '2025-03-24 04:42:18', '2025-03-24 04:43:20', 'gujarati', 62),
(97, '15:00:00', '17:30:00', '2025-03-25', 'booked', 0, '2025-03-25 04:42:19', '2025-03-25 04:42:54', 'sds', 62),
(98, '18:00:00', '18:30:00', '2025-03-25', 'booked', 1, '2025-03-25 12:30:22', '2025-03-25 12:31:16', 'hghgsd', 62),
(101, '10:54:00', '12:52:00', '2025-03-26', 'booked', 1, '2025-03-26 05:22:43', '2025-03-26 05:23:08', 'asdf', 62),
(102, '12:25:00', '13:23:00', '2025-03-26', 'booked', 0, '2025-03-26 06:53:14', '2025-03-26 06:58:16', 'jhjhjkhjk', 62),
(103, '16:15:00', '18:45:00', '2025-03-26', 'booked', 0, '2025-03-26 08:45:15', '2025-03-26 08:45:42', 'jwjsh', 76),
(104, '10:33:00', '13:30:00', '2025-03-27', 'booked', 0, '2025-03-27 05:00:27', '2025-03-27 05:01:55', 'kdhsjh', 62),
(106, '01:05:00', '02:05:00', '2025-04-09', 'available', 0, '2025-04-09 05:35:37', '2025-04-09 05:35:37', 'mnm', 62),
(107, '11:12:00', '11:28:00', '2025-04-09', 'booked', 1, '2025-04-09 05:40:54', '2025-04-09 05:41:31', 'lllllll', 62),
(108, '11:30:00', '11:55:00', '2025-04-09', 'booked', 1, '2025-04-09 06:00:37', '2025-04-09 06:01:02', 'jjjjjjjjj', 62),
(109, '16:27:00', '14:43:00', '2025-04-11', 'booked', 1, '2025-04-11 09:07:47', '2025-04-11 09:08:30', 'safa', 62),
(110, '15:52:00', '16:40:00', '2025-04-11', 'booked', 1, '2025-04-11 10:21:37', '2025-04-11 10:22:04', 'Xz', 62),
(111, '16:51:00', '16:59:00', '2025-04-11', 'booked', 1, '2025-04-11 11:19:54', '2025-04-11 11:20:32', 'ass', 62),
(112, '11:43:00', '11:59:00', '2025-04-14', 'booked', 1, '2025-04-14 06:07:57', '2025-04-14 06:11:55', 'asad', 62),
(113, '13:00:00', '13:10:00', '2025-04-14', 'booked', 1, '2025-04-14 07:29:04', '2025-04-14 07:29:20', 'dsads', 62),
(114, '16:52:00', '17:25:00', '2025-04-14', 'booked', 1, '2025-04-14 11:21:40', '2025-04-14 11:22:19', 'gujarati', 62),
(115, '14:16:00', '14:27:00', '2025-04-15', 'booked', 1, '2025-04-15 08:44:28', '2025-04-15 08:45:40', 'english', 62),
(116, '10:40:00', '10:45:00', '2025-04-21', 'booked', 0, '2025-04-21 05:08:26', '2025-04-21 05:09:57', 'gujarati', 62),
(117, '11:48:00', '11:59:00', '2025-04-23', 'booked', 0, '2025-04-23 06:15:13', '2025-04-23 06:16:00', 'class', 62),
(118, '17:23:00', '17:42:00', '2025-04-24', 'not_booked', 0, '2025-04-24 11:50:27', '2025-04-24 11:51:13', 'gujara', 62),
(119, '16:36:00', '16:47:00', '2025-05-01', 'booked', 1, '2025-05-01 11:04:36', '2025-05-01 11:04:56', 'english', 62),
(120, '16:50:00', '16:59:00', '2025-05-01', 'booked', 0, '2025-05-01 11:18:13', '2025-05-01 11:18:38', 'class', 62),
(121, '11:40:00', '11:44:00', '2025-05-03', 'booked', 0, '2025-05-03 06:08:39', '2025-05-03 06:09:30', 'english', 62),
(122, '15:09:00', '15:18:00', '2025-05-03', 'booked', 0, '2025-05-03 09:37:28', '2025-05-03 09:37:57', 'zxzxz', 62),
(123, '15:25:00', '15:30:00', '2025-05-03', 'booked', 0, '2025-05-03 09:54:06', '2025-05-03 09:54:30', 'gujarati', 62),
(124, '11:47:00', '11:57:00', '2025-05-31', 'available', 0, '2025-05-05 06:15:54', '2025-05-05 06:15:54', 'gujarati', 62),
(125, '11:48:00', '11:59:00', '2025-05-05', 'booked', 1, '2025-05-05 06:16:13', '2025-05-05 06:17:28', 'live', 62),
(126, '12:08:00', '12:54:00', '2025-05-05', 'booked', 1, '2025-05-05 06:36:42', '2025-05-05 06:37:15', 'live', 62),
(127, '10:50:00', '10:55:00', '2025-05-07', 'booked', 0, '2025-05-07 05:18:46', '2025-05-07 05:19:33', 'gujarati', 62);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qualification` varchar(191) NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `experience` varchar(191) NOT NULL,
  `language` varchar(191) NOT NULL,
  `t_id` bigint(20) UNSIGNED DEFAULT NULL,
  `verification_status` enum('verified','unverified') NOT NULL DEFAULT 'unverified',
  `bio` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Availability` varchar(191) DEFAULT NULL,
  `allskill` text NOT NULL,
  `college` varchar(191) NOT NULL,
  `currentlyworkingfulltimejob` varchar(191) DEFAULT NULL,
  `callrate` int(11) NOT NULL,
  `chatrate` int(11) NOT NULL,
  `videocallrate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`id`, `qualification`, `class_id`, `subject_id`, `experience`, `language`, `t_id`, `verification_status`, `bio`, `created_at`, `updated_at`, `Availability`, `allskill`, `college`, `currentlyworkingfulltimejob`, `callrate`, `chatrate`, `videocallrate`) VALUES
(2, 'Master of Science (MSc)', 26, 27, 'Assistant Professor(3 Years)', 'Gujarati', 57, 'verified', 'As a certified educator with a deep passion for teaching, I strive to make every lesson an opportunity for growth and learning.', '2025-01-22 11:24:33', '2025-01-22 11:57:23', 'Monday-Friday', '', '', NULL, 0, 0, 0),
(3, 'Master of Science (MSc)', 25, 32, 'Professor(3 Years)', 'English', 58, 'verified', 'Sarah believes that learning should be engaging and interactive. She focuses on making complex concepts simple by relating them to real-world applications. Her passion for STEM education driv', '2025-01-22 11:36:22', '2025-01-22 11:57:17', 'Monday-Friday', '', '', NULL, 0, 0, 0),
(4, 'Master of Business Administration (MBA)', 25, 32, '8 years as a Marketing Manager at Global Ads Inc.', 'Gujarati', 59, 'verified', 'Dynamic marketing professional with extensive experience in digital marketing strategies and brand management. Loves analyzing market trends and creating impactful campaigns.', '2025-01-22 11:40:00', '2025-01-22 11:57:12', 'Monday-Friday', '', '', NULL, 0, 0, 0),
(5, 'Bachelor of Arts in English Literature', 26, 28, '6 years as a Content Writer and Editor', 'Gujarati', 60, 'verified', 'Skilled writer with a knack for crafting engaging content and editing with precision. Passionate about storytelling and improving communication.', '2025-01-22 11:42:17', '2025-01-31 10:03:03', 'Monday-Friday', 'creative writing', 'SRKI', 'No, I am working as a part-timer', 10, 5, 15),
(6, 'Master of Science (MSc)', 24, 29, 'Assistant Professor(3 Years)', 'Hindi', 61, 'verified', 'Creative graphic designer with expertise in branding, logos, and visual storytelling. Enjoys collaborating with clients to bring their visions to life.', '2025-01-22 12:58:06', '2025-02-06 08:49:47', 'Monday-Friday', 'creative writing', 'SRKI', 'Yes, I am working full-time', 5, 5, 10),
(7, 'MBA', 26, 27, 'Professor(3 Years)', 'Gujarati', 62, 'verified', 'Creative graphic designer with expertise in branding, logos, and visual storytelling. Enjoys collaborating with clients to bring their visions to life.', '2025-01-22 13:02:09', '2025-02-14 06:22:11', 'Monday-Friday', 'creative writing', 'SRKI', 'No, I am working as a part-timer', 5, 5, 5),
(8, 'Master of Science (MSc)', 26, 30, 'Assistant Professor(3 Years)', 'Gujarati', 64, 'verified', '2eqweqeqw', '2025-01-28 08:52:33', '2025-02-14 06:25:18', 'Monday-Friday', 'creative writing', 'SRKI', 'No, I am working as a part-timer', 5, 5, 5),
(15, 'Master of Science (MSc)', 25, 28, 'Professor(3 Years)', 'English', 76, 'verified', 'As a certified educator with a deep passion for teaching, I strive to make every lesson an opportunity for growth and learning.', '2025-03-26 08:41:48', '2025-03-26 08:44:18', 'Monday-Friday', 'creative writing', '', 'Yes, I am working full-time', 10, 5, 10),
(16, 'Master of Science (MSc)', 25, 28, '8 years as a Marketing Manager at Global Ads Inc.', 'English', 79, 'unverified', 'As a certified educator with a deep passion for teaching, I strive to make every lesson an opportunity for growth and learning.', '2025-04-23 06:03:51', '2025-04-23 06:03:51', 'Monday-Friday', 'creative writing', '', 'No, I am working as a part-timer', 5, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_posts`
--

CREATE TABLE `teacher_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_posts`
--

INSERT INTO `teacher_posts` (`id`, `teacher_id`, `image`, `content`, `status`, `views`, `created_at`, `updated_at`) VALUES
(3, 62, '[\"teacherpost\\/1740114405_67b809e5cdd5e.jpg\"]', 'wohhhh!!!', 'deactive', 4, '2025-02-21 05:06:45', '2025-04-04 05:35:21'),
(7, 62, '[\"teacherpost\\/1743748648_67ef7e288e9aa.jpg\"]', 'Shortcut formulae to remember for your math test tomorrow 🧮', 'active', 0, '2025-04-04 06:37:28', '2025-04-04 06:37:28'),
(10, 62, '[\"teacherpost\\/1743749178_67ef803aeb33b.png\"]', '📚 Boost Your Study Skills\r\nStruggling to stay focused? Try the Pomodoro technique — 25 minutes study, 5 minutes break. It works wonders for productivity!', 'active', 0, '2025-04-04 06:46:18', '2025-04-04 06:46:18'),
(11, 62, '[\"teacherpost\\/1743749357_67ef80edd69f2.jpg\",\"teacherpost\\/1743749357_67ef80edd6f22.jpg\"]', '🧠 Math Made Easy\r\nHere’s a shortcut to quickly solve quadratic equations without getting stuck in long steps. Save time and reduce errors!', 'active', 0, '2025-04-04 06:49:17', '2025-04-04 06:49:17'),
(13, 62, '[\"teacherpost\\/1743749965_67ef834d302bb.jpg\",\"teacherpost\\/1743749965_67ef834d30aab.jpg\"]', '✍️ Grammar Tip of the Day\r\nDo you confuse “their,” “there,” and “they’re”? Here\'s an easy way to remember the difference and avoid common mistakes.', 'active', 0, '2025-04-04 06:59:25', '2025-04-04 06:59:25'),
(14, 62, '[\"teacherpost\\/1743750043_67ef839b6c54f.jpg\",\"teacherpost\\/1743750043_67ef839b6cb63.jpg\",\"teacherpost\\/1743750043_67ef839b6cf65.jpg\"]', '🎥 Science in Action\r\nWatch this 2-minute video on Newton\'s Laws — simple animations and real-life examples to make concepts click instantly!', 'active', 0, '2025-04-04 07:00:43', '2025-04-04 07:00:43'),
(15, 62, '[\"teacherpost\\/1743750094_67ef83ce22c6c.jpg\"]', '📅 Exam Prep Plan\r\nExams ahead? Here’s a weekly revision schedule to help you cover all subjects without last-minute panic.', 'active', 1, '2025-04-04 07:01:34', '2025-04-04 07:09:08'),
(16, 62, '[\"teacherpost\\/1743750157_67ef840d6edfa.jpg\",\"teacherpost\\/1743750157_67ef840d6f2f4.jpg\"]', '💡 Motivation for Students\r\nRemember: success is a series of small efforts repeated daily. Keep showing up, and progress will follow. You\'ve got this!', 'active', 2, '2025-04-04 07:02:37', '2025-04-10 04:52:04'),
(17, 64, '[\"teacherpost\\/1743748648_67ef7e288e9aa.jpg\"]', 'Shortcut formulae to remember for your math test tomorrow 🧮', 'active', 1, '2025-04-04 06:37:28', '2025-05-01 12:05:20'),
(18, 76, '[\"teacherpost\\/1743748648_67ef7e288e9aa.jpg\"]', 'Shortcut formulae to remember for your math test tomorrow 🧮', 'active', 0, '2025-04-04 06:37:28', '2025-04-04 06:37:28'),
(19, 64, '[\"teacherpost\\/1743749178_67ef803aeb33b.png\"]', '📚 Boost Your Study Skills\r\nStruggling to stay focused? Try the Pomodoro technique — 25 minutes study, 5 minutes break. It works wonders for productivity!', 'active', 1, '2025-04-04 06:46:18', '2025-04-09 07:14:20'),
(20, 76, '[\"teacherpost\\/1743749178_67ef803aeb33b.png\"]', '📚 Boost Your Study Skills\r\nStruggling to stay focused? Try the Pomodoro technique — 25 minutes study, 5 minutes break. It works wonders for productivity!', 'active', 0, '2025-04-04 06:46:18', '2025-04-04 06:46:18'),
(21, 64, '[\"teacherpost\\/1743749357_67ef80edd69f2.jpg\",\"teacherpost\\/1743749357_67ef80edd6f22.jpg\"]', '🧠 Math Made Easy\r\nHere’s a shortcut to quickly solve quadratic equations without getting stuck in long steps. Save time and reduce errors!', 'active', 12, '2025-04-04 06:49:17', '2025-05-01 12:22:33'),
(22, 76, '[\"teacherpost\\/1743749357_67ef80edd69f2.jpg\",\"teacherpost\\/1743749357_67ef80edd6f22.jpg\"]', '🧠 Math Made Easy\r\nHere’s a shortcut to quickly solve quadratic equations without getting stuck in long steps. Save time and reduce errors!', 'active', 3, '2025-04-04 06:49:17', '2025-04-07 09:18:22'),
(23, 64, '[\"teacherpost\\/1743748648_67ef7e288e9aa.jpg\"]', 'Shortcut formulae to remember for your math test tomorrow 🧮', 'active', 0, '2025-04-04 06:37:28', '2025-04-04 06:37:28'),
(24, 76, '[\"teacherpost\\/1743748648_67ef7e288e9aa.jpg\"]', 'Shortcut formulae to remember for your math test tomorrow 🧮', 'active', 1, '2025-04-04 06:37:28', '2025-04-16 05:01:31'),
(25, 64, '[\"teacherpost\\/1743750043_67ef839b6c54f.jpg\",\"teacherpost\\/1743750043_67ef839b6cb63.jpg\",\"teacherpost\\/1743750043_67ef839b6cf65.jpg\"]', '🎥 Science in Action\r\nWatch this 2-minute video on Newton\'s Laws — simple animations and real-life examples to make concepts click instantly!', 'active', 1, '2025-04-04 07:00:43', '2025-04-04 07:06:53'),
(26, 76, '[\"teacherpost\\/1743750094_67ef83ce22c6c.jpg\"]', '📅 Exam Prep Plan\r\nExams ahead? Here’s a weekly revision schedule to help you cover all subjects without last-minute panic.', 'active', 0, '2025-04-04 07:01:34', '2025-04-04 07:01:34'),
(41, 62, '[\"teacherpost\\/1746093896_68134748773a9.png\"]', 'sdsa', 'active', 5, '2025-05-01 10:04:56', '2025-05-01 12:44:49'),
(45, 62, '[\"teacherpost\\/1746095982_68134f6eb2a43.png\"]', 'mmmmmmmmmmmmm', 'active', 3, '2025-05-01 10:39:42', '2025-05-01 12:45:08'),
(46, 62, '[\"teacherpost\\/1746096399_6813510f13a16.png\"]', NULL, 'active', 5, '2025-05-01 10:46:39', '2025-05-05 06:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `role` enum('student','teacher') DEFAULT 'student',
  `is_blocked` enum('block','unblock') NOT NULL DEFAULT 'unblock',
  `mobile_no` varchar(191) DEFAULT NULL,
  `is_typing` tinyint(1) NOT NULL DEFAULT 0,
  `otp` varchar(191) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `gender`, `profile_image`, `nationality`, `city`, `role`, `is_blocked`, `mobile_no`, `is_typing`, `otp`, `otp_expires_at`, `google_id`) VALUES
(2, NULL, 'mansi', 'mansisabhadiya2004@gmail.com', NULL, '$2y$10$BZmCdwkio5SYvhwySW56M.EtaHxRaSRMsfRil.kvS97p8MbNZFg9W', NULL, '2025-01-06 11:09:35', '2025-05-03 06:20:53', 'Female', '1738327547.jpg', 'indian', 'surat', 'student', 'unblock', '1234554321', 0, '302893', '2025-05-03 06:21:53', NULL),
(51, NULL, 'kabir Shingala', 'kabir123@gmail.com', NULL, '$2y$10$niRtKfpvQNYOHf.yCNRn0.CJkNawx2vQdvk7i3E1z/29ypYkqdGsa', NULL, '2025-01-13 06:31:36', '2025-04-04 10:13:55', 'Male', '1738325740.jpg', 'indian', 'vapi', 'student', 'unblock', '123455454', 0, '446306', '2025-04-04 10:23:55', NULL),
(57, NULL, 'Anjali Mehta', 'anjali123@gmail.com', NULL, '$2y$10$qfXncPuD9PVvT28zMD8pMuvU9dCaNVhX1UqoB01cje9BYvfSLHULO', NULL, '2025-01-22 11:24:33', '2025-01-22 11:40:39', 'Female', '1737546039.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, NULL, NULL, NULL),
(58, NULL, 'Neha Patel', 'nehalgajera266@gmail.com', NULL, '$2y$10$PWNq5p3i6dmDlYYSRkd6IOce742QffThFQgd42mv59669wPQu.47.', NULL, '2025-01-22 11:36:22', '2025-04-17 05:32:35', 'Male', '1737545782.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, '373284', '2025-04-17 05:42:35', NULL),
(59, NULL, 'Srushti Shah', 'srushti123@gmail.com', NULL, '$2y$10$vzSfBXa9.3QlkaDcxiZYyeG9QWEXiogGWGzN8YSwu09QUqDEE0rha', NULL, '2025-01-22 11:40:00', '2025-01-22 11:40:00', 'Female', '1737546000.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, NULL, NULL, NULL),
(60, NULL, 'Aesha Mehta', 'aesha123@gmail.com', NULL, '$2y$10$CW6jxOLEOtNkowiER5zQO.7Bpq3XonraEvXpvpFSwJOcqO9DMyA9e', NULL, '2025-01-22 11:42:17', '2025-02-06 10:33:56', 'Female', '1737546137.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, NULL, NULL, NULL),
(61, NULL, 'Hemanshi Patel', 'hemanshi123@gmail.com', NULL, '$2y$10$NQq0ONu.C9JlF0VOo/Lg4eTOBBrMmvurNDGjXwKd4KjsMGsrKba2y', NULL, '2025-01-22 12:58:06', '2025-01-28 08:47:23', 'Female', '1737550776.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, NULL, NULL, NULL),
(62, NULL, 'Mitva Patel', 'mitva123@gmail.com', NULL, '$2y$10$niRtKfpvQNYOHf.yCNRn0.CJkNawx2vQdvk7i3E1z/29ypYkqdGsa', NULL, '2025-01-22 13:02:09', '2025-04-15 12:04:23', 'Female', '1744718663.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, NULL, NULL, NULL),
(63, NULL, 'Bhumi Patel', 'bhumi123@gmail.com', NULL, '$2y$10$lT7QzRWHGehAO7r7n4P5xexiUvkj01oMrXvo2U22wzEFzFD7qk1EK', NULL, '2025-01-25 08:12:54', '2025-01-25 08:12:54', 'Female', '1737792774.png', 'indian', 'surat', 'student', 'unblock', '9234554321', 0, NULL, NULL, NULL),
(64, NULL, 'Venisha Nakrani', 'venisha@gmail.com', NULL, '$2y$10$pV.4f4oluK4PFFOrU3U2n.TfYMhUjAVl/C3aKnmlVQlisIf3GeivC', NULL, '2025-01-28 08:52:33', '2025-02-14 06:25:18', 'Female', '1738054353.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, NULL, NULL, NULL),
(69, NULL, 'krisha', 'admin@gmail.com', NULL, '$2y$10$4D4qzSwRYnkX9VzVR4HZpu/2y/.8VQWoy5sxlGlM2An2B5haJwi9S', NULL, '2025-02-06 06:49:09', '2025-03-21 06:57:25', 'Female', 'default_image.jpeg', NULL, 'panjab', 'student', 'block', '1234554321', 0, NULL, NULL, NULL),
(76, NULL, 'jeni patel', 'jeni123@gmail.com', NULL, '$2y$10$pXiq3oXsGfU.N/bv/mICzuLAJt8G14aIoPD1Dw8k7aVRydxQu.542', NULL, '2025-03-26 08:41:48', '2025-03-26 08:41:48', 'Female', '1742978508.jpg', 'indian', 'surat', 'teacher', 'unblock', '1234554321', 0, NULL, NULL, NULL),
(78, NULL, 'Krisha Shingala', 'krishashingb111@gmail.com', NULL, '$2y$10$BZmCdwkio5SYvhwySW56M.EtaHxRaSRMsfRil.kvS97p8MbNZFg9W', NULL, '2025-04-07 08:53:21', '2025-04-24 06:43:51', 'female', '1744707219.jpg', 'indian', 'surat', 'student', 'unblock', '1234554321', 0, '341140', '2025-04-24 06:44:51', '108270821974662561641'),
(79, NULL, 'Srushti Patel', 'srushtipatel4040@gmail.com', NULL, '$2y$10$eENb77BZ8XEVYcgAh7lpPOBWWBTV1VPj/0Cu5K1x1zWFep95nHx12', NULL, '2025-04-23 06:03:51', '2025-04-23 06:03:51', 'Female', '1745388231.jpg', 'indian', 'surat', 'teacher', 'unblock', '9662335566', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet_transaction`
--

CREATE TABLE `user_wallet_transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `opposite_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_type` enum('credit','debit') NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wallet_transaction`
--

INSERT INTO `user_wallet_transaction` (`id`, `student_id`, `opposite_user_id`, `amount`, `transaction_type`, `description`, `created_at`, `updated_at`) VALUES
(379, 51, 62, 45.00, 'debit', 'Chat payment to teacher (Duration: 9 min)', '2025-02-10 12:23:16', '2025-02-10 12:23:16'),
(380, 62, 51, 45.00, 'credit', 'Chat payment received (Duration: 9 min)', '2025-02-10 12:23:16', '2025-02-10 12:23:16'),
(381, 51, 62, 45.00, 'debit', 'Chat payment to teacher (Duration: 9 min)', '2025-02-10 12:43:49', '2025-02-10 12:43:49'),
(382, 62, 51, 45.00, 'credit', 'Chat payment received (Duration: 9 min)', '2025-02-10 12:43:49', '2025-02-10 12:43:49'),
(383, 51, 62, 110.00, 'debit', 'Chat payment to teacher (Duration: 22 min)', '2025-02-10 12:56:27', '2025-02-10 12:56:27'),
(384, 62, 51, 110.00, 'credit', 'Chat payment received (Duration: 22 min)', '2025-02-10 12:56:27', '2025-02-10 12:56:27'),
(385, 51, 62, 5.00, 'debit', 'Chat payment to teacher (Duration: 1 min)', '2025-02-11 04:50:18', '2025-02-11 04:50:18'),
(386, 62, 51, 5.00, 'credit', 'Chat payment received (Duration: 1 min)', '2025-02-11 04:50:18', '2025-02-11 04:50:18'),
(387, 51, 62, 10.00, 'debit', 'Chat payment to teacher (Duration: 2 min)', '2025-02-11 04:51:13', '2025-02-11 04:51:13'),
(388, 62, 51, 10.00, 'credit', 'Chat payment received (Duration: 2 min)', '2025-02-11 04:51:13', '2025-02-11 04:51:13'),
(389, 51, 62, 0.00, 'debit', 'Chat payment to teacher (Duration: 0 min)', '2025-02-11 05:04:50', '2025-02-11 05:04:50'),
(390, 62, 51, 0.00, 'credit', 'Chat payment received (Duration: 0 min)', '2025-02-11 05:04:50', '2025-02-11 05:04:50'),
(391, 51, 62, 15.00, 'debit', 'Chat payment to teacher (Duration: 3 min)', '2025-02-11 05:07:05', '2025-02-11 05:07:05'),
(392, 62, 51, 15.00, 'credit', 'Chat payment received (Duration: 3 min)', '2025-02-11 05:07:05', '2025-02-11 05:07:05'),
(393, 51, 62, 15.00, 'debit', 'Chat payment to teacher (Duration: 3 min)', '2025-02-11 05:07:51', '2025-02-11 05:07:51'),
(394, 62, 51, 15.00, 'credit', 'Chat payment received (Duration: 3 min)', '2025-02-11 05:07:51', '2025-02-11 05:07:51'),
(395, 51, 62, 65.00, 'debit', 'Chat payment to teacher (Duration: 13 min)', '2025-02-11 05:17:13', '2025-02-11 05:17:13'),
(396, 62, 51, 65.00, 'credit', 'Chat payment received (Duration: 13 min)', '2025-02-11 05:17:13', '2025-02-11 05:17:13'),
(397, 51, 62, 225.00, 'debit', 'Chat payment to teacher (Duration: 45 min)', '2025-02-11 07:03:57', '2025-02-11 07:03:57'),
(398, 62, 51, 225.00, 'credit', 'Chat payment received (Duration: 45 min)', '2025-02-11 07:03:57', '2025-02-11 07:03:57'),
(399, 51, 62, 230.00, 'debit', 'Chat payment to teacher (Duration: 46 min)', '2025-02-11 07:04:12', '2025-02-11 07:04:12'),
(400, 62, 51, 230.00, 'credit', 'Chat payment received (Duration: 46 min)', '2025-02-11 07:04:12', '2025-02-11 07:04:12'),
(401, 51, 62, 115.00, 'debit', 'Chat payment to teacher (Duration: 23 min)', '2025-02-11 12:30:22', '2025-02-11 12:30:22'),
(402, 62, 51, 115.00, 'credit', 'Chat payment received (Duration: 23 min)', '2025-02-11 12:30:22', '2025-02-11 12:30:22'),
(403, 51, 62, 150.00, 'debit', 'Chat payment to teacher (Duration: 30 min)', '2025-02-12 07:00:01', '2025-02-12 07:00:01'),
(404, 62, 51, 150.00, 'credit', 'Chat payment received (Duration: 30 min)', '2025-02-12 07:00:01', '2025-02-12 07:00:01'),
(405, 51, 62, 150.00, 'debit', 'Chat payment to teacher (Duration: 30 min)', '2025-02-12 07:00:01', '2025-02-12 07:00:01'),
(406, 62, 51, 150.00, 'credit', 'Chat payment received (Duration: 30 min)', '2025-02-12 07:00:01', '2025-02-12 07:00:01'),
(407, 51, 62, 150.00, 'debit', 'Chat payment to teacher (Duration: 30 min)', '2025-02-12 07:10:01', '2025-02-12 07:10:01'),
(408, 62, 51, 150.00, 'credit', 'Chat payment received (Duration: 30 min)', '2025-02-12 07:10:01', '2025-02-12 07:10:01'),
(409, 51, 62, 150.00, 'debit', 'Chat payment to teacher (Duration: 30 min)', '2025-02-12 07:10:40', '2025-02-12 07:10:40'),
(410, 62, 51, 150.00, 'credit', 'Chat payment received (Duration: 30 min)', '2025-02-12 07:10:40', '2025-02-12 07:10:40'),
(411, 51, 62, 155.00, 'debit', 'Chat payment to teacher (Duration: 31 min)', '2025-02-12 11:38:07', '2025-02-12 11:38:07'),
(412, 62, 51, 155.00, 'credit', 'Chat payment received (Duration: 31 min)', '2025-02-12 11:38:07', '2025-02-12 11:38:07'),
(413, 51, 62, 160.00, 'debit', 'Chat payment to teacher (Duration: 32 min)', '2025-02-12 11:39:22', '2025-02-12 11:39:22'),
(414, 62, 51, 160.00, 'credit', 'Chat payment received (Duration: 32 min)', '2025-02-12 11:39:22', '2025-02-12 11:39:22'),
(415, 51, 62, 395.00, 'debit', 'Chat payment to teacher (Duration: 79 min)', '2025-02-13 12:31:05', '2025-02-13 12:31:05'),
(416, 62, 51, 395.00, 'credit', 'Chat payment received (Duration: 79 min)', '2025-02-13 12:31:05', '2025-02-13 12:31:05'),
(417, 51, 62, 340.00, 'debit', 'Chat payment to teacher (Duration: 68 min)', '2025-02-13 12:38:00', '2025-02-13 12:38:00'),
(418, 62, 51, 340.00, 'credit', 'Chat payment received (Duration: 68 min)', '2025-02-13 12:38:00', '2025-02-13 12:38:00'),
(419, 51, 62, 380.00, 'debit', 'Chat payment to teacher (Duration: 76 min)', '2025-02-13 12:46:00', '2025-02-13 12:46:00'),
(420, 62, 51, 380.00, 'credit', 'Chat payment received (Duration: 76 min)', '2025-02-13 12:46:00', '2025-02-13 12:46:00'),
(421, 51, 62, 5.00, 'debit', 'Chat payment to teacher (Duration: 1 min)', '2025-02-14 05:22:01', '2025-02-14 05:22:01'),
(422, 62, 51, 5.00, 'credit', 'Chat payment received (Duration: 1 min)', '2025-02-14 05:22:01', '2025-02-14 05:22:01'),
(423, 51, 62, 10.00, 'debit', 'Chat payment to teacher (Duration: 2 min)', '2025-02-14 05:23:00', '2025-02-14 05:23:00'),
(424, 62, 51, 10.00, 'credit', 'Chat payment received (Duration: 2 min)', '2025-02-14 05:23:00', '2025-02-14 05:23:00'),
(425, 51, 62, 5.00, 'debit', 'Chat payment to teacher (Duration: 1 min)', '2025-02-14 05:29:01', '2025-02-14 05:29:01'),
(426, 62, 51, 5.00, 'credit', 'Chat payment received (Duration: 1 min)', '2025-02-14 05:29:01', '2025-02-14 05:29:01'),
(427, 51, 62, 15.00, 'debit', 'Chat payment to teacher (Duration: 3 min)', '2025-02-14 05:31:03', '2025-02-14 05:31:03'),
(428, 62, 51, 15.00, 'credit', 'Chat payment received (Duration: 3 min)', '2025-02-14 05:31:03', '2025-02-14 05:31:03'),
(429, 51, 62, 30.00, 'debit', 'Chat payment to teacher (Duration: 6 min)', '2025-02-14 09:26:32', '2025-02-14 09:26:32'),
(430, 62, 51, 30.00, 'credit', 'Chat payment received (Duration: 6 min)', '2025-02-14 09:26:32', '2025-02-14 09:26:32'),
(431, 51, 62, 300.00, 'debit', 'Chat payment to teacher (Duration: 60 min)', '2025-02-14 12:03:00', '2025-02-14 12:03:00'),
(432, 62, 51, 300.00, 'credit', 'Chat payment received (Duration: 60 min)', '2025-02-14 12:03:00', '2025-02-14 12:03:00'),
(433, 51, 62, 300.00, 'debit', 'Chat payment to teacher (Duration: 60 min)', '2025-02-17 06:15:29', '2025-02-17 06:15:29'),
(434, 62, 51, 300.00, 'credit', 'Chat payment received (Duration: 60 min)', '2025-02-17 06:15:29', '2025-02-17 06:15:29'),
(435, 51, 62, 305.00, 'debit', 'Chat payment to teacher (Duration: 61 min)', '2025-02-17 11:21:29', '2025-02-17 11:21:29'),
(436, 62, 51, 305.00, 'credit', 'Chat payment received (Duration: 61 min)', '2025-02-17 11:21:29', '2025-02-17 11:21:29'),
(437, 62, NULL, 200.00, 'credit', 'Added money to wallet', '2025-03-19 10:59:47', '2025-03-19 10:59:47'),
(438, 62, NULL, 500.00, 'credit', 'Added money to wallet', '2025-03-19 11:04:09', '2025-03-19 11:04:09'),
(439, 51, 62, 25.00, 'debit', 'Video Call payment to teacher (Duration: 5 min)', '2025-03-20 06:49:05', '2025-03-20 06:49:05'),
(440, 62, 51, 25.00, 'credit', 'Video Call payment received (Duration: 5 min)', '2025-03-20 06:49:05', '2025-03-20 06:49:05'),
(441, 51, 62, 10.00, 'debit', 'Chat payment to teacher (Duration: 2 min)', '2025-03-21 06:52:58', '2025-03-21 06:52:58'),
(442, 62, 51, 10.00, 'credit', 'Chat payment received (Duration: 2 min)', '2025-03-21 06:52:58', '2025-03-21 06:52:58'),
(443, 51, 62, 135.00, 'debit', 'Video Call payment to teacher (Duration: 27 min)', '2025-03-24 06:57:47', '2025-03-24 06:57:47'),
(444, 62, 51, 135.00, 'credit', 'Video Call payment received (Duration: 27 min)', '2025-03-24 06:57:47', '2025-03-24 06:57:47'),
(445, 51, 62, 360.00, 'debit', 'Video Call payment to teacher (Duration: 72 min)', '2025-03-24 07:42:22', '2025-03-24 07:42:22'),
(446, 62, 51, 360.00, 'credit', 'Video Call payment received (Duration: 72 min)', '2025-03-24 07:42:22', '2025-03-24 07:42:22'),
(447, 51, 62, 295.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(448, 62, 51, 295.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(449, 51, 62, 295.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(450, 62, 51, 295.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(451, 51, 62, 295.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(452, 62, 51, 295.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(453, 51, 62, 295.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(454, 62, 51, 295.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(455, 51, 62, 295.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(456, 62, 51, 295.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(457, 51, 62, 295.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(458, 62, 51, 295.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-24 09:28:23', '2025-03-24 09:28:23'),
(459, 51, 62, 355.00, 'debit', 'Video Call payment to teacher (Duration: 71 min)', '2025-03-24 09:40:43', '2025-03-24 09:40:43'),
(460, 62, 51, 355.00, 'credit', 'Video Call payment received (Duration: 71 min)', '2025-03-24 09:40:43', '2025-03-24 09:40:43'),
(461, 51, 62, 600.00, 'debit', 'Video Call payment to teacher (Duration: 120 min)', '2025-03-24 10:29:00', '2025-03-24 10:29:00'),
(462, 62, 51, 600.00, 'credit', 'Video Call payment received (Duration: 120 min)', '2025-03-24 10:29:00', '2025-03-24 10:29:00'),
(463, 51, 62, 300.00, 'debit', 'Video Call payment to teacher (Duration: 60 min)', '2025-03-24 11:29:01', '2025-03-24 11:29:01'),
(464, 62, 51, 300.00, 'credit', 'Video Call payment received (Duration: 60 min)', '2025-03-24 11:29:01', '2025-03-24 11:29:01'),
(465, 51, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-03-24 11:38:10', '2025-03-24 11:38:10'),
(466, 51, 62, 600.00, 'debit', 'Video Call payment to teacher (Duration: 120 min)', '2025-03-24 12:29:01', '2025-03-24 12:29:01'),
(467, 62, 51, 600.00, 'credit', 'Video Call payment received (Duration: 120 min)', '2025-03-24 12:29:01', '2025-03-24 12:29:01'),
(468, 51, 62, 40.00, 'debit', 'Video Call payment to teacher (Duration: 8 min)', '2025-03-25 06:29:00', '2025-03-25 06:29:00'),
(469, 62, 51, 40.00, 'credit', 'Video Call payment received (Duration: 8 min)', '2025-03-25 06:29:00', '2025-03-25 06:29:00'),
(470, 51, 62, 295.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-25 07:29:01', '2025-03-25 07:29:01'),
(471, 62, 51, 295.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-25 07:29:01', '2025-03-25 07:29:01'),
(472, 51, 62, 285.00, 'debit', 'Video Call payment to teacher (Duration: 57 min)', '2025-03-25 10:27:19', '2025-03-25 10:27:19'),
(473, 62, 51, 285.00, 'credit', 'Video Call payment received (Duration: 57 min)', '2025-03-25 10:27:19', '2025-03-25 10:27:19'),
(474, 51, 62, 450.00, 'debit', 'Video Call payment to teacher (Duration: 90 min)', '2025-03-25 11:00:01', '2025-03-25 11:00:01'),
(475, 62, 51, 450.00, 'credit', 'Video Call payment received (Duration: 90 min)', '2025-03-25 11:00:01', '2025-03-25 11:00:01'),
(476, 51, 62, 460.00, 'debit', 'Video Call payment to teacher (Duration: 92 min)', '2025-03-25 11:02:54', '2025-03-25 11:02:54'),
(477, 62, 51, 460.00, 'credit', 'Video Call payment received (Duration: 92 min)', '2025-03-25 11:02:54', '2025-03-25 11:02:54'),
(478, 51, 62, 750.00, 'debit', 'Video Call payment to teacher (Duration: 150 min)', '2025-03-25 12:00:01', '2025-03-25 12:00:01'),
(479, 62, 51, 750.00, 'credit', 'Video Call payment received (Duration: 150 min)', '2025-03-25 12:00:01', '2025-03-25 12:00:01'),
(480, 51, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-03-25 12:31:00', '2025-03-25 12:31:00'),
(481, 51, 62, 10.00, 'debit', 'Chat payment to teacher (Duration: 2 min)', '2025-03-25 12:32:03', '2025-03-25 12:32:03'),
(482, 62, 51, 10.00, 'credit', 'Chat payment received (Duration: 2 min)', '2025-03-25 12:32:03', '2025-03-25 12:32:03'),
(483, 51, 62, 70.00, 'debit', 'Chat payment to teacher (Duration: 14 min)', '2025-03-25 12:44:22', '2025-03-25 12:44:22'),
(484, 62, 51, 70.00, 'credit', 'Chat payment received (Duration: 14 min)', '2025-03-25 12:44:22', '2025-03-25 12:44:22'),
(485, 51, 62, 90.00, 'debit', 'Chat payment to teacher (Duration: 18 min)', '2025-03-25 12:48:03', '2025-03-25 12:48:03'),
(486, 62, 51, 90.00, 'credit', 'Chat payment received (Duration: 18 min)', '2025-03-25 12:48:03', '2025-03-25 12:48:03'),
(487, 51, 62, 115.00, 'debit', 'Chat payment to teacher (Duration: 23 min)', '2025-03-25 12:53:53', '2025-03-25 12:53:53'),
(488, 62, 51, 115.00, 'credit', 'Chat payment received (Duration: 23 min)', '2025-03-25 12:53:53', '2025-03-25 12:53:53'),
(489, 51, 62, 35.00, 'debit', 'Video Call payment to teacher (Duration: 7 min)', '2025-03-26 05:10:36', '2025-03-26 05:10:36'),
(490, 62, 51, 35.00, 'credit', 'Video Call payment received (Duration: 7 min)', '2025-03-26 05:10:36', '2025-03-26 05:10:36'),
(491, 51, 62, 5.00, 'debit', 'Chat payment to teacher (Duration: 1 min)', '2025-03-26 05:25:44', '2025-03-26 05:25:44'),
(492, 62, 51, 5.00, 'credit', 'Chat payment received (Duration: 1 min)', '2025-03-26 05:25:44', '2025-03-26 05:25:44'),
(493, 51, 62, 15.00, 'debit', 'Chat payment to teacher (Duration: 3 min)', '2025-03-26 05:27:39', '2025-03-26 05:27:39'),
(494, 62, 51, 15.00, 'credit', 'Chat payment received (Duration: 3 min)', '2025-03-26 05:27:39', '2025-03-26 05:27:39'),
(495, 51, 62, 65.00, 'debit', 'Chat payment to teacher (Duration: 13 min)', '2025-03-26 05:37:10', '2025-03-26 05:37:10'),
(496, 62, 51, 65.00, 'credit', 'Chat payment received (Duration: 13 min)', '2025-03-26 05:37:10', '2025-03-26 05:37:10'),
(497, 51, 62, 95.00, 'debit', 'Chat payment to teacher (Duration: 19 min)', '2025-03-26 05:43:35', '2025-03-26 05:43:35'),
(498, 62, 51, 95.00, 'credit', 'Chat payment received (Duration: 19 min)', '2025-03-26 05:43:35', '2025-03-26 05:43:35'),
(499, 51, 62, 100.00, 'debit', 'Chat payment to teacher (Duration: 20 min)', '2025-03-26 05:44:22', '2025-03-26 05:44:22'),
(500, 62, 51, 100.00, 'credit', 'Chat payment received (Duration: 20 min)', '2025-03-26 05:44:22', '2025-03-26 05:44:22'),
(501, 51, 62, 130.00, 'debit', 'Chat payment to teacher (Duration: 26 min)', '2025-03-26 05:50:39', '2025-03-26 05:50:39'),
(502, 62, 51, 130.00, 'credit', 'Chat payment received (Duration: 26 min)', '2025-03-26 05:50:39', '2025-03-26 05:50:39'),
(503, 51, 62, 245.00, 'debit', 'Chat payment to teacher (Duration: 49 min)', '2025-03-26 06:13:41', '2025-03-26 06:13:41'),
(504, 62, 51, 245.00, 'credit', 'Chat payment received (Duration: 49 min)', '2025-03-26 06:13:41', '2025-03-26 06:13:41'),
(505, 51, 62, 270.00, 'debit', 'Chat payment to teacher (Duration: 54 min)', '2025-03-26 06:18:05', '2025-03-26 06:18:05'),
(506, 62, 51, 270.00, 'credit', 'Chat payment received (Duration: 54 min)', '2025-03-26 06:18:05', '2025-03-26 06:18:05'),
(507, 51, 62, 315.00, 'debit', 'Chat payment to teacher (Duration: 63 min)', '2025-03-26 06:27:45', '2025-03-26 06:27:45'),
(508, 62, 51, 315.00, 'credit', 'Chat payment received (Duration: 63 min)', '2025-03-26 06:27:45', '2025-03-26 06:27:45'),
(509, 51, 62, 330.00, 'debit', 'Chat payment to teacher (Duration: 66 min)', '2025-03-26 06:30:20', '2025-03-26 06:30:20'),
(510, 62, 51, 330.00, 'credit', 'Chat payment received (Duration: 66 min)', '2025-03-26 06:30:20', '2025-03-26 06:30:20'),
(511, 51, 62, 20.00, 'debit', 'Video Call payment to teacher (Duration: 4 min)', '2025-03-26 06:59:06', '2025-03-26 06:59:06'),
(512, 62, 51, 20.00, 'credit', 'Video Call payment received (Duration: 4 min)', '2025-03-26 06:59:06', '2025-03-26 06:59:06'),
(513, 51, 62, 50.00, 'debit', 'Video Call payment to teacher (Duration: 10 min)', '2025-03-26 07:05:13', '2025-03-26 07:05:13'),
(514, 62, 51, 50.00, 'credit', 'Video Call payment received (Duration: 10 min)', '2025-03-26 07:05:13', '2025-03-26 07:05:13'),
(515, 51, 62, 50.00, 'debit', 'Video Call payment to teacher (Duration: 10 min)', '2025-03-26 07:05:59', '2025-03-26 07:05:59'),
(516, 62, 51, 50.00, 'credit', 'Video Call payment received (Duration: 10 min)', '2025-03-26 07:05:59', '2025-03-26 07:05:59'),
(517, 51, 62, 90.00, 'debit', 'Video Call payment to teacher (Duration: 18 min)', '2025-03-26 07:13:53', '2025-03-26 07:13:53'),
(518, 62, 51, 90.00, 'credit', 'Video Call payment received (Duration: 18 min)', '2025-03-26 07:13:53', '2025-03-26 07:13:53'),
(519, 51, 62, 165.00, 'debit', 'Video Call payment to teacher (Duration: 33 min)', '2025-03-26 07:28:41', '2025-03-26 07:28:41'),
(520, 62, 51, 165.00, 'credit', 'Video Call payment received (Duration: 33 min)', '2025-03-26 07:28:41', '2025-03-26 07:28:41'),
(521, 51, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-03-26 07:31:29', '2025-03-26 07:31:29'),
(522, 51, 62, 210.00, 'debit', 'Video Call payment to teacher (Duration: 42 min)', '2025-03-26 07:37:16', '2025-03-26 07:37:16'),
(523, 62, 51, 210.00, 'credit', 'Video Call payment received (Duration: 42 min)', '2025-03-26 07:37:16', '2025-03-26 07:37:16'),
(524, 51, 76, 10.00, 'debit', 'Video Call payment to teacher (Duration: 1 min)', '2025-03-26 08:48:03', '2025-03-26 08:48:03'),
(525, 76, 51, 10.00, 'credit', 'Video Call payment received (Duration: 1 min)', '2025-03-26 08:48:03', '2025-03-26 08:48:03'),
(526, 51, 76, 190.00, 'debit', 'Video Call payment to teacher (Duration: 19 min)', '2025-03-26 09:06:40', '2025-03-26 09:06:40'),
(527, 76, 51, 190.00, 'credit', 'Video Call payment received (Duration: 19 min)', '2025-03-26 09:06:40', '2025-03-26 09:06:40'),
(528, 51, 76, 330.00, 'debit', 'Video Call payment to teacher (Duration: 33 min)', '2025-03-26 09:20:06', '2025-03-26 09:20:06'),
(529, 76, 51, 330.00, 'credit', 'Video Call payment received (Duration: 33 min)', '2025-03-26 09:20:06', '2025-03-26 09:20:06'),
(530, 51, 76, 340.00, 'debit', 'Video Call payment to teacher (Duration: 34 min)', '2025-03-26 09:21:56', '2025-03-26 09:21:56'),
(531, 76, 51, 340.00, 'credit', 'Video Call payment received (Duration: 34 min)', '2025-03-26 09:21:56', '2025-03-26 09:21:56'),
(532, 51, 76, 390.00, 'debit', 'Video Call payment to teacher (Duration: 39 min)', '2025-03-26 09:26:30', '2025-03-26 09:26:30'),
(533, 76, 51, 390.00, 'credit', 'Video Call payment received (Duration: 39 min)', '2025-03-26 09:26:30', '2025-03-26 09:26:30'),
(534, 51, 76, 500.00, 'debit', 'Video Call payment to teacher (Duration: 50 min)', '2025-03-26 09:37:28', '2025-03-26 09:37:28'),
(535, 76, 51, 500.00, 'credit', 'Video Call payment received (Duration: 50 min)', '2025-03-26 09:37:28', '2025-03-26 09:37:28'),
(536, 51, 76, 580.00, 'debit', 'Video Call payment to teacher (Duration: 58 min)', '2025-03-26 09:45:01', '2025-03-26 09:45:01'),
(537, 76, 51, 580.00, 'credit', 'Video Call payment received (Duration: 58 min)', '2025-03-26 09:45:01', '2025-03-26 09:45:01'),
(538, 51, 76, 590.00, 'debit', 'Video Call payment to teacher (Duration: 59 min)', '2025-03-26 09:46:47', '2025-03-26 09:46:47'),
(539, 76, 51, 590.00, 'credit', 'Video Call payment received (Duration: 59 min)', '2025-03-26 09:46:47', '2025-03-26 09:46:47'),
(540, 51, 76, 450.00, 'debit', 'Video Call payment to teacher (Duration: 45 min)', '2025-03-26 10:30:41', '2025-03-26 10:30:41'),
(541, 76, 51, 450.00, 'credit', 'Video Call payment received (Duration: 45 min)', '2025-03-26 10:30:41', '2025-03-26 10:30:41'),
(542, 51, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-03-26 10:31:38', '2025-03-26 10:31:38'),
(543, 51, 76, 480.00, 'debit', 'Video Call payment to teacher (Duration: 48 min)', '2025-03-26 10:33:25', '2025-03-26 10:33:25'),
(544, 76, 51, 480.00, 'credit', 'Video Call payment received (Duration: 48 min)', '2025-03-26 10:33:25', '2025-03-26 10:33:25'),
(545, 51, 76, 580.00, 'debit', 'Video Call payment to teacher (Duration: 58 min)', '2025-03-26 10:43:09', '2025-03-26 10:43:09'),
(546, 76, 51, 580.00, 'credit', 'Video Call payment received (Duration: 58 min)', '2025-03-26 10:43:09', '2025-03-26 10:43:09'),
(547, 51, 76, 900.00, 'debit', 'Video Call payment to teacher (Duration: 90 min)', '2025-03-26 11:15:00', '2025-03-26 11:15:00'),
(548, 76, 51, 900.00, 'credit', 'Video Call payment received (Duration: 90 min)', '2025-03-26 11:15:00', '2025-03-26 11:15:00'),
(549, 51, 76, 930.00, 'debit', 'Video Call payment to teacher (Duration: 93 min)', '2025-03-26 11:18:04', '2025-03-26 11:18:04'),
(550, 76, 51, 930.00, 'credit', 'Video Call payment received (Duration: 93 min)', '2025-03-26 11:18:04', '2025-03-26 11:18:04'),
(551, 51, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-03-26 11:36:42', '2025-03-26 11:36:42'),
(552, 51, 76, 1110.00, 'debit', 'Video Call payment to teacher (Duration: 111 min)', '2025-03-26 11:36:57', '2025-03-26 11:36:57'),
(553, 76, 51, 1110.00, 'credit', 'Video Call payment received (Duration: 111 min)', '2025-03-26 11:36:57', '2025-03-26 11:36:57'),
(554, 51, 76, 1500.00, 'debit', 'Video Call payment to teacher (Duration: 150 min)', '2025-03-26 12:15:01', '2025-03-26 12:15:01'),
(555, 76, 51, 1500.00, 'credit', 'Video Call payment received (Duration: 150 min)', '2025-03-26 12:15:01', '2025-03-26 12:15:01'),
(556, 51, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-03-26 12:17:06', '2025-03-26 12:17:06'),
(557, 51, 76, 1350.00, 'debit', 'Video Call payment to teacher (Duration: 135 min)', '2025-03-26 13:01:00', '2025-03-26 13:01:00'),
(558, 76, 51, 1350.00, 'credit', 'Video Call payment received (Duration: 135 min)', '2025-03-26 13:01:00', '2025-03-26 13:01:00'),
(559, 51, 62, 285.00, 'debit', 'Video Call payment to teacher (Duration: 57 min)', '2025-03-27 06:00:01', '2025-03-27 06:00:01'),
(560, 62, 51, 285.00, 'credit', 'Video Call payment received (Duration: 57 min)', '2025-03-27 06:00:01', '2025-03-27 06:00:01'),
(561, 51, 62, 545.00, 'debit', 'Video Call payment to teacher (Duration: 109 min)', '2025-03-27 06:52:08', '2025-03-27 06:52:08'),
(562, 62, 51, 545.00, 'credit', 'Video Call payment received (Duration: 109 min)', '2025-03-27 06:52:08', '2025-03-27 06:52:08'),
(563, 51, 62, 585.00, 'debit', 'Video Call payment to teacher (Duration: 117 min)', '2025-03-27 07:00:00', '2025-03-27 07:00:00'),
(564, 62, 51, 585.00, 'credit', 'Video Call payment received (Duration: 117 min)', '2025-03-27 07:00:00', '2025-03-27 07:00:00'),
(565, 51, 62, 1100.00, 'debit', 'Video Call payment to teacher (Duration: 220 min)', '2025-03-27 08:43:17', '2025-03-27 08:43:17'),
(566, 62, 51, 1100.00, 'credit', 'Video Call payment received (Duration: 220 min)', '2025-03-27 08:43:17', '2025-03-27 08:43:17'),
(567, 62, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-04-02 09:22:19', '2025-04-02 09:22:19'),
(568, 51, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-04-03 05:32:03', '2025-04-03 05:32:03'),
(569, 78, NULL, 3000.00, 'credit', 'Added money to wallet', '2025-04-09 05:05:26', '2025-04-09 05:05:26'),
(570, 78, 62, 90.00, 'debit', 'Video Call payment to teacher (Duration: 18 min)', '2025-04-09 05:24:56', '2025-04-09 05:24:56'),
(571, 62, 78, 90.00, 'credit', 'Video Call payment received (Duration: 18 min)', '2025-04-09 05:24:56', '2025-04-09 05:24:56'),
(572, 78, 62, 80.00, 'debit', 'Chat payment to teacher (Duration: 16 min)', '2025-04-09 05:58:23', '2025-04-09 05:58:23'),
(573, 62, 78, 80.00, 'credit', 'Chat payment received (Duration: 16 min)', '2025-04-09 05:58:23', '2025-04-09 05:58:23'),
(574, 78, 62, 75.00, 'debit', 'Chat payment to teacher (Duration: 15 min)', '2025-04-09 06:15:55', '2025-04-09 06:15:55'),
(575, 62, 78, 75.00, 'credit', 'Chat payment received (Duration: 15 min)', '2025-04-09 06:15:55', '2025-04-09 06:15:55'),
(576, 78, NULL, 2500.00, 'credit', 'Added money to wallet', '2025-04-09 06:41:34', '2025-04-09 06:41:34'),
(577, 62, NULL, 50.00, 'credit', 'Added money to wallet', '2025-04-09 06:44:26', '2025-04-09 06:44:26'),
(578, 78, NULL, 50.00, 'credit', 'Added money to wallet via Razorpay', '2025-04-09 10:30:04', '2025-04-09 10:30:04'),
(579, 62, NULL, 50.00, 'credit', 'Added money to wallet via Razorpay', '2025-04-09 10:47:48', '2025-04-09 10:47:48'),
(580, 78, 62, 20.00, 'debit', 'Chat payment to teacher (Duration: 4 min)', '2025-04-11 09:12:48', '2025-04-11 09:12:48'),
(581, 62, 78, 20.00, 'credit', 'Chat payment received (Duration: 4 min)', '2025-04-11 09:12:48', '2025-04-11 09:12:48'),
(582, 62, NULL, 100.00, '', 'Withdrawal request processed', '2025-04-11 10:06:02', '2025-04-11 10:06:02'),
(583, 62, NULL, 100.00, '', 'Withdrawal request processed', '2025-04-11 10:06:18', '2025-04-11 10:06:18'),
(597, 78, 62, 5.00, 'debit', 'Chat payment to teacher (Duration: 1 min)', '2025-04-14 07:31:08', '2025-04-14 07:31:08'),
(598, 62, 78, 5.00, 'credit', 'Chat payment received (Duration: 1 min)', '2025-04-14 07:31:08', '2025-04-14 07:31:08'),
(605, 78, 62, 105.00, 'debit', 'Chat payment to teacher (Duration: 21 min)', '2025-04-14 11:43:36', '2025-04-14 11:43:36'),
(606, 62, 78, 105.00, 'credit', 'Chat payment received (Duration: 21 min)', '2025-04-14 11:43:36', '2025-04-14 11:43:36'),
(607, 78, 62, 120.00, 'debit', 'Chat payment to teacher (Duration: 24 min)', '2025-04-14 11:46:56', '2025-04-14 11:46:56'),
(608, 62, 78, 120.00, 'credit', 'Chat payment received (Duration: 24 min)', '2025-04-14 11:46:56', '2025-04-14 11:46:56'),
(609, 78, 62, 145.00, 'debit', 'Chat payment to teacher (Duration: 29 min)', '2025-04-14 11:51:31', '2025-04-14 11:51:31'),
(610, 62, 78, 139.20, 'credit', 'Chat payment received (Duration: 29 min)', '2025-04-14 11:51:31', '2025-04-14 11:51:31'),
(611, 62, NULL, 1000.00, '', 'Withdrawal request processed', '2025-04-14 11:55:58', '2025-04-14 11:55:58'),
(614, 51, 62, 10.00, 'debit', 'Video Call payment to teacher (Duration: 2 min)', '2025-04-21 05:12:18', '2025-04-21 05:12:18'),
(615, 62, 51, 10.00, 'credit', 'Video Call payment received (Duration: 2 min)', '2025-04-21 05:12:18', '2025-04-21 05:12:18'),
(616, 51, 62, 10.00, 'debit', 'Video Call payment to teacher (Duration: 2 min)', '2025-04-23 06:20:06', '2025-04-23 06:20:06'),
(617, 62, 51, 10.00, 'credit', 'Video Call payment received (Duration: 2 min)', '2025-04-23 06:20:06', '2025-04-23 06:20:06'),
(618, 78, 62, 55.00, 'debit', 'Chat payment to teacher (Duration: 11 min)', '2025-05-01 11:17:11', '2025-05-01 11:17:11'),
(619, 62, 78, 52.80, 'credit', 'Chat payment received (Duration: 11 min)', '2025-05-01 11:17:11', '2025-05-01 11:17:11'),
(620, 78, 62, 5.00, 'debit', 'Video Call payment to teacher (Duration: 1 min)', '2025-05-01 11:21:50', '2025-05-01 11:21:50'),
(621, 62, 78, 5.00, 'credit', 'Video Call payment received (Duration: 1 min)', '2025-05-01 11:21:50', '2025-05-01 11:21:50'),
(622, 51, 62, 20.00, 'debit', 'Video Call payment to teacher (Duration: 4 min)', '2025-05-03 09:43:26', '2025-05-03 09:43:26'),
(623, 62, 51, 20.00, 'credit', 'Video Call payment received (Duration: 4 min)', '2025-05-03 09:43:26', '2025-05-03 09:43:26'),
(624, 51, 62, 25.00, 'debit', 'Video Call payment to teacher (Duration: 5 min)', '2025-05-03 10:00:00', '2025-05-03 10:00:00'),
(625, 62, 51, 25.00, 'credit', 'Video Call payment received (Duration: 5 min)', '2025-05-03 10:00:00', '2025-05-03 10:00:00'),
(626, 51, 62, 20.00, 'debit', 'Chat payment to teacher (Duration: 4 min)', '2025-05-05 06:22:26', '2025-05-05 06:22:26'),
(627, 62, 51, 19.20, 'credit', 'Chat payment received (Duration: 4 min)', '2025-05-05 06:22:26', '2025-05-05 06:22:26'),
(628, 51, 62, 20.00, 'debit', 'Chat payment to teacher (Duration: 4 min)', '2025-05-05 06:42:25', '2025-05-05 06:42:25'),
(629, 62, 51, 19.20, 'credit', 'Chat payment received (Duration: 4 min)', '2025-05-05 06:42:25', '2025-05-05 06:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://youtu.be/-_5dLLUbXNc?si=ezDZLyHSVBhg2qwd', 'active', '2024-12-26 12:19:03', '2024-12-26 12:19:03'),
(2, 'https://youtu.be/-5kHNftPMc0?si=OTGGU7s0ncLp9AZH', 'active', '2024-12-27 05:02:13', '2024-12-27 05:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawmethods`
--

CREATE TABLE `withdrawmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawmethods`
--

INSERT INTO `withdrawmethods` (`id`, `method_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bank Account', 'active', '2025-04-09 12:30:38', '2025-04-09 12:30:38'),
(2, 'UPI', 'active', '2025-04-09 12:30:38', '2025-04-09 12:30:38'),
(3, 'Cash', 'active', '2025-04-09 12:31:58', '2025-04-09 12:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawrequest`
--

CREATE TABLE `withdrawrequest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `withdrawAmount` decimal(8,2) NOT NULL,
  `status` enum('Released','Pending','Cancel','Progress') NOT NULL DEFAULT 'Pending',
  `method_id` bigint(20) UNSIGNED NOT NULL,
  `upiId` varchar(191) DEFAULT NULL,
  `accountNumber` varchar(191) DEFAULT NULL,
  `ifscCode` varchar(191) DEFAULT NULL,
  `accountHolderName` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawrequest`
--

INSERT INTO `withdrawrequest` (`id`, `teacher_id`, `withdrawAmount`, `status`, `method_id`, `upiId`, `accountNumber`, `ifscCode`, `accountHolderName`, `created_at`, `updated_at`) VALUES
(2, 62, 100.00, 'Released', 3, NULL, NULL, NULL, NULL, '2025-04-11 10:05:17', '2025-04-11 10:06:18'),
(3, 62, 1000.00, 'Released', 2, 'example@upi', NULL, NULL, NULL, '2025-04-14 11:54:56', '2025-04-14 11:55:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usercode` (`usercode`);

--
-- Indexes for table `admin_wallet`
--
ALTER TABLE `admin_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallet_transactions`
--
ALTER TABLE `admin_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_wallet_transactions_adminwallet_id_foreign` (`adminwallet_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_c_id_foreign` (`c_id`),
  ADD KEY `blogs_subcat_id_foreign` (`subcat_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_teacher_post_id_foreign` (`teacher_post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `commision_rate`
--
ALTER TABLE `commision_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commision_rate_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earns`
--
ALTER TABLE `earns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_u_id_foreign` (`u_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `followers_student_id_teacher_id_unique` (`student_id`,`teacher_id`),
  ADD KEY `followers_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `appointment_id` (`appointment_id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nex_live_tvs`
--
ALTER TABLE `nex_live_tvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nex_settings`
--
ALTER TABLE `nex_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_student_id_foreign` (`student_id`),
  ADD KEY `notifications_teacher_id_foreign` (`teacher_id`),
  ADD KEY `notifications_post_id_foreign` (`post_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `rechargeamount`
--
ALTER TABLE `rechargeamount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_teacher_id_foreign` (`teacher_id`),
  ADD KEY `review_student_id_foreign` (`student_id`);

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
-- Indexes for table `sectiondata`
--
ALTER TABLE `sectiondata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_booking`
--
ALTER TABLE `student_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_booking_s_id_foreign` (`s_id`),
  ADD KEY `student_booking_appointment_id_foreign` (`appointment_id`);

--
-- Indexes for table `student_wallet`
--
ALTER TABLE `student_wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_wallet_student_id_foreign` (`student_id`),
  ADD KEY `student_wallet_amount_id_foreign` (`amount_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblcategory_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_info_class_id_foreign` (`class_id`),
  ADD KEY `teacher_info_subject_id_foreign` (`subject_id`),
  ADD KEY `teacher_info_t_id_foreign` (`t_id`);

--
-- Indexes for table `teacher_posts`
--
ALTER TABLE `teacher_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_posts_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `user_wallet_transaction`
--
ALTER TABLE `user_wallet_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wallet_transaction_student_id_foreign` (`student_id`),
  ADD KEY `user_wallet_transaction_opposite_user_id_foreign` (`opposite_user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawmethods`
--
ALTER TABLE `withdrawmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawrequest`
--
ALTER TABLE `withdrawrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawrequest_teacher_id_foreign` (`teacher_id`),
  ADD KEY `withdrawrequest_method_id_foreign` (`method_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `admin_wallet`
--
ALTER TABLE `admin_wallet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_wallet_transactions`
--
ALTER TABLE `admin_wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `commision_rate`
--
ALTER TABLE `commision_rate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `earns`
--
ALTER TABLE `earns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nex_live_tvs`
--
ALTER TABLE `nex_live_tvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nex_settings`
--
ALTER TABLE `nex_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rechargeamount`
--
ALTER TABLE `rechargeamount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3511;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sectiondata`
--
ALTER TABLE `sectiondata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_booking`
--
ALTER TABLE `student_booking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `student_wallet`
--
ALTER TABLE `student_wallet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teacher_posts`
--
ALTER TABLE `teacher_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `user_wallet_transaction`
--
ALTER TABLE `user_wallet_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawmethods`
--
ALTER TABLE `withdrawmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdrawrequest`
--
ALTER TABLE `withdrawrequest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_wallet_transactions`
--
ALTER TABLE `admin_wallet_transactions`
  ADD CONSTRAINT `admin_wallet_transactions_adminwallet_id_foreign` FOREIGN KEY (`adminwallet_id`) REFERENCES `admin_wallet` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `tblcategory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_subcat_id_foreign` FOREIGN KEY (`subcat_id`) REFERENCES `tblcategory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_teacher_post_id_foreign` FOREIGN KEY (`teacher_post_id`) REFERENCES `teacher_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `commision_rate`
--
ALTER TABLE `commision_rate`
  ADD CONSTRAINT `commision_rate_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `followers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `teacher_availability` (`id`);

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
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `teacher_posts` (`id`),
  ADD CONSTRAINT `notifications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notifications_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_booking`
--
ALTER TABLE `student_booking`
  ADD CONSTRAINT `student_booking_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `teacher_availability` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_booking_s_id_foreign` FOREIGN KEY (`s_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_wallet`
--
ALTER TABLE `student_wallet`
  ADD CONSTRAINT `student_wallet_amount_id_foreign` FOREIGN KEY (`amount_id`) REFERENCES `rechargeamount` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_wallet_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD CONSTRAINT `tblcategory_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tblcategory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  ADD CONSTRAINT `teacher_availability_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD CONSTRAINT `teacher_info_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tblcategory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_info_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `tblcategory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_info_t_id_foreign` FOREIGN KEY (`t_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_posts`
--
ALTER TABLE `teacher_posts`
  ADD CONSTRAINT `teacher_posts_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `administrators` (`id`);

--
-- Constraints for table `user_wallet_transaction`
--
ALTER TABLE `user_wallet_transaction`
  ADD CONSTRAINT `user_wallet_transaction_opposite_user_id_foreign` FOREIGN KEY (`opposite_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_wallet_transaction_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawrequest`
--
ALTER TABLE `withdrawrequest`
  ADD CONSTRAINT `withdrawrequest_method_id_foreign` FOREIGN KEY (`method_id`) REFERENCES `withdrawmethods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdrawrequest_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
