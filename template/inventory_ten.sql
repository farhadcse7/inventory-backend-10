-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 10:23 AM
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
-- Database: `inventory_ten`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `code`, `file`, `created_at`, `updated_at`, `is_active`, `deleted_at`) VALUES
(1, 'Electronics', 'electronics', NULL, NULL, '2025-05-16 07:32:01', '2025-05-16 07:32:01', 1, NULL),
(2, 'Gorcery', 'gorcery', NULL, NULL, '2025-05-16 07:32:01', '2025-05-16 07:32:01', 1, NULL),
(3, 'Cosmatics', 'cosmatics', NULL, NULL, '2025-05-16 07:32:01', '2025-05-16 07:32:01', 1, NULL),
(4, 'Stationary', 'stationary', NULL, NULL, '2025-05-16 07:32:01', '2025-05-16 07:32:01', 1, NULL),
(5, 'Clearing Goods', 'clearing-goods', NULL, NULL, '2025-05-16 07:32:01', '2025-05-16 07:32:01', 1, NULL),
(6, 'Irene George', 'irene-george', 'Mollit eos est sequ', 'http://localhost:8000/storage/category/6.jpg', '2025-05-16 07:32:01', '2025-05-21 02:21:12', 1, '2025-05-21 02:21:12'),
(7, 'Test Category', 'test-category', '102', NULL, '2025-05-16 07:37:59', '2025-05-16 07:39:15', 1, '2025-05-16 07:39:15'),
(8, 'Test Category', 'test-category', '102', 'http://localhost:8000/storage/category/8.jpg', '2025-05-16 07:39:43', '2025-05-20 22:31:52', 0, NULL),
(9, 'Yoshio Murphy', 'yoshio-murphy', 'Assumenda occaecat v', 'http://localhost:8000/storage/category/9.jpg', '2025-05-20 22:31:27', '2025-05-20 22:57:11', 1, '2025-05-20 22:57:11'),
(10, 'Clinton Nicholson', 'clinton-nicholson', 'Culpa molestiae cil', 'http://localhost:8000/storage/category/10.jpg', '2025-05-20 22:58:14', '2025-05-21 02:20:58', 1, NULL),
(11, 'Indigo Davis', 'indigo-davis', 'Culpa praesentium e', 'http://localhost:8000/storage/category/11.jpg', '2025-05-21 02:20:44', '2025-05-21 02:20:45', 1, NULL),
(12, 'Nehru Hoover', 'nehru-hoover', 'Atque saepe dolorem', 'http://localhost:8000/storage/category/12.jpg', '2025-05-21 02:22:04', '2025-05-21 02:22:04', 1, NULL),
(13, 'Louis Thompson', 'louis-thompson', 'Corporis ea dolor ut', 'http://localhost:8000', '2025-05-21 02:22:12', '2025-05-21 02:22:12', 1, NULL),
(14, 'Maia Brooks', 'maia-brooks', 'Excepturi non totam', 'http://localhost:8000/storage/category/14.jpg', '2025-05-21 02:22:18', '2025-05-21 02:22:46', 1, NULL),
(15, 'Silas Houston', 'silas-houston', 'Repellendus Qui qui', 'http://localhost:8000/storage/category/15.jpg', '2025-05-21 02:22:36', '2025-05-21 02:22:36', 1, NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_05_15_234250_create_system_settings_table', 1),
(6, '2025_05_16_131149_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\User', 1, 'farhad', '00e377acc95938337405a223c3cba36f071214a12b689f8b7e3e21ff191fc6c5', '[\"*\"]', '2025-05-15 19:25:45', NULL, '2025-05-15 19:24:58', '2025-05-15 19:25:45'),
(2, 'App\\Models\\User', 1, 'farhad', '290b296bd38d8ba6ee971316c6efa681a4a03e6db020fe35d243bc2edb1e45f1', '[\"*\"]', '2025-05-16 07:40:52', NULL, '2025-05-15 22:08:09', '2025-05-16 07:40:52'),
(3, 'App\\Models\\User', 1, 'farhad', '1578ba360964dc0297fed657db6cbd2a9c58a48e5b088302f6a159c2848efe2b', '[\"*\"]', NULL, NULL, '2025-05-18 00:15:17', '2025-05-18 00:15:17'),
(4, 'App\\Models\\User', 1, 'farhad', '80fdc9948dd9d7c070b3544df6b75991d22c00b0b424350c6db3a2e55b0e93e5', '[\"*\"]', NULL, NULL, '2025-05-18 00:15:19', '2025-05-18 00:15:19'),
(5, 'App\\Models\\User', 1, 'farhad', '0faa841887824a20ae071e85e8548453237ff0dc0df0684cb32387f4d3e67467', '[\"*\"]', '2025-05-20 22:53:10', NULL, '2025-05-20 22:30:59', '2025-05-20 22:53:10'),
(6, 'App\\Models\\User', 1, 'farhad', 'be8e74244b63ef7e4078040d7731409d65966df3759a6dc83cdbfa17fb394ace', '[\"*\"]', NULL, NULL, '2025-05-20 22:53:42', '2025-05-20 22:53:42'),
(7, 'App\\Models\\User', 1, 'farhad', 'd36b578d1ed30b48b72fe1e2d403deb3a6874cc2f2a2db8a7ca609bcbe4920b5', '[\"*\"]', '2025-05-20 22:58:16', NULL, '2025-05-20 22:55:29', '2025-05-20 22:58:16'),
(8, 'App\\Models\\User', 1, 'farhad', '8beec658714b933dcb8a74a86411575ffea7641e99834db718622a9bcc77d66c', '[\"*\"]', '2025-05-21 02:22:47', NULL, '2025-05-21 02:20:11', '2025-05-21 02:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `site_favicon` varchar(255) DEFAULT NULL,
  `site_phone` varchar(255) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `site_facebook_link` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `site_name`, `site_logo`, `site_favicon`, `site_phone`, `site_email`, `site_facebook_link`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inventory Shop -2', 'null', 'null', '12345678901', 'admin@inventory.com', 'inventory@facebook.com', 'POS, Inventory, Shopping', 'Its a mult product inventory shop', '2025-05-15 19:24:29', '2025-05-15 22:09:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `phone`, `email`, `nid`, `address`, `company_name`, `email_verified_at`, `password`, `remember_token`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'admin', '0123456789', 'admin@gmail.com', NULL, NULL, NULL, '2025-05-15 19:24:28', '$2y$12$NqOSYYC.rMZM508b0OxEQOR7ewqZRLQUzM/gmiw0wG6j12hUROakO', 'BCr7CdvmOx', 1, '2025-05-15 19:24:29', '2025-05-15 19:24:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nid_unique` (`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
