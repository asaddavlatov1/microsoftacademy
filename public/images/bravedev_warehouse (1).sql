-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2023 at 02:38 PM
-- Server version: 10.3.36-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bravedev_warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Poydevor', '2022-12-13 09:12:42', '2022-12-13 09:12:42'),
(2, NULL, 'Remont', '2022-12-14 07:11:40', '2022-12-14 07:11:40'),
(3, NULL, 'Qurilish mollari', '2023-01-02 01:23:00', '2023-01-02 01:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `order_id`, `transfer_id`, `created_at`, `updated_at`) VALUES
(1, 'images/1671535913photo_2022-09-05_15-17-50.jpg', 2, NULL, '2022-12-20 06:31:53', '2022-12-20 06:31:53'),
(2, 'images/1671539540image_2022-12-16_19-30-11.png', 3, NULL, '2022-12-20 07:32:20', '2022-12-20 07:32:20'),
(3, 'images/1671540261photo_2022-09-05_15-17-50.jpg', 2, NULL, '2022-12-20 07:44:21', '2022-12-20 07:44:21'),
(4, 'images/1671543539scaled_d27f6c8c-0d23-4a22-ad24-38f5c76445f28484140214989044071.jpg', 4, NULL, '2022-12-20 08:38:59', '2022-12-20 08:38:59'),
(5, 'images/1671543706scaled_bdb28d70-83b3-4b28-92c4-3c05382495d11110187108871462369.jpg', 5, NULL, '2022-12-20 08:41:46', '2022-12-20 08:41:46'),
(6, 'images/1671544329scaled_f2fad673-0568-4276-be5b-6146ba5cd0214842207135709093736.jpg', 6, NULL, '2022-12-20 08:52:09', '2022-12-20 08:52:09'),
(7, 'images/1671545530scaled_0d0aeab4-0a5e-4802-a525-bd37b12c193a1177671717451038347.jpg', 7, NULL, '2022-12-20 09:12:10', '2022-12-20 09:12:10'),
(8, 'images/1671545531scaled_d1abac41-6245-4630-930a-e7de77e02c3c4145673752674295899.jpg', 7, NULL, '2022-12-20 09:12:11', '2022-12-20 09:12:11'),
(9, 'images/1671546061scaled_1e7c6d27-c1b9-4ccb-a998-2bd3a7397b3f3350728958515125255.jpg', 8, NULL, '2022-12-20 09:21:01', '2022-12-20 09:21:01'),
(10, 'images/1671546063scaled_7646746b-fc13-47bc-8633-f65e6e448a047875107832803458870.jpg', 8, NULL, '2022-12-20 09:21:03', '2022-12-20 09:21:03'),
(11, 'images/1671546064scaled_929df0f1-0b63-4be2-97c3-a5aaf9cb85243910573784662984260.jpg', 8, NULL, '2022-12-20 09:21:04', '2022-12-20 09:21:04'),
(12, 'images/1671546252scaled_aace0058-cf7a-4e54-acfa-10c990ded4785460512810386303070.jpg', 9, NULL, '2022-12-20 09:24:12', '2022-12-20 09:24:12'),
(13, 'images/1671546386scaled_d23f04a0-8619-493d-849e-79b02a92ce2d8097351752841994288.jpg', 10, NULL, '2022-12-20 09:26:26', '2022-12-20 09:26:26'),
(14, 'images/1671546618scaled_71e28119-793b-4d39-9b9b-c123c62fe09e965497627391773556.jpg', 11, NULL, '2022-12-20 09:30:18', '2022-12-20 09:30:18'),
(15, 'images/1671546676scaled_361e96fd-69b2-4fc3-bc1b-bd7a8e6692246784845701181716697.jpg', 12, NULL, '2022-12-20 09:31:16', '2022-12-20 09:31:16'),
(16, 'images/1671546854scaled_19fddfc5-6490-426f-b2bc-1fcc62621ce63396337770318812210.jpg', 13, NULL, '2022-12-20 09:34:14', '2022-12-20 09:34:14'),
(17, 'images/1671551048scaled_97191d2a-25e7-4d9e-aa81-80e9b8f36ff55085792642843654567.jpg', 14, NULL, '2022-12-20 10:44:08', '2022-12-20 10:44:08'),
(18, 'images/1671640711image_cropper_1671640707030.jpg', 15, NULL, '2022-12-21 11:38:31', '2022-12-21 11:38:31'),
(19, 'images/1672641801image_cropper_1672641781261.jpg', 22, NULL, '2023-01-02 01:43:21', '2023-01-02 01:43:21'),
(20, 'images/1672641802image_cropper_1672641797960.jpg', 22, NULL, '2023-01-02 01:43:22', '2023-01-02 01:43:22'),
(21, 'images/1672642234image_cropper_1672642230845.jpg', 23, NULL, '2023-01-02 01:50:34', '2023-01-02 01:50:34'),
(22, 'images/1672728351image_cropper_1672728329226.jpg', 24, NULL, '2023-01-03 01:45:51', '2023-01-03 01:45:51'),
(23, 'images/1672728352image_cropper_1672728346163.jpg', 24, NULL, '2023-01-03 01:45:52', '2023-01-03 01:45:52'),
(24, 'images/1672737854image_cropper_1672737840724.jpg', 16, NULL, '2023-01-03 04:24:14', '2023-01-03 04:24:14'),
(25, 'images/1672737888image_cropper_1672737881223.jpg', 17, NULL, '2023-01-03 04:24:48', '2023-01-03 04:24:48'),
(26, 'images/1672737936image_cropper_1672737910815.jpg', 21, NULL, '2023-01-03 04:25:37', '2023-01-03 04:25:37'),
(27, 'images/1672737937image_cropper_1672737929684.jpg', 21, NULL, '2023-01-03 04:25:38', '2023-01-03 04:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_12_07_180353_create_roles_table', 1),
(11, '2022_12_07_181246_create_objects_table', 1),
(12, '2022_12_07_182822_create_categories_table', 1),
(13, '2022_12_07_183107_create_products_table', 1),
(14, '2022_12_07_185747_create_orders_table', 1),
(15, '2022_12_07_190508_create_order_products_table', 1),
(16, '2022_12_07_191049_create_transfers_table', 1),
(17, '2022_12_07_192035_create_transfer_products_table', 1),
(18, '2022_12_08_052944_create_tables_table', 1),
(19, '2022_12_08_093305_create_rasxods_table', 1),
(20, '2022_12_08_093953_create_rasxod_products_table', 1),
(21, '2022_12_09_162850_create_images_table', 1),
(22, '2022_12_12_150948_create_ware_houses_table', 1),
(23, '2022_12_22_160822_create_shops_table', 2),
(24, '2022_12_22_161003_alter_price_to_price', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`id`, `user_id`, `name`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 2, 'Andijon Shahr . O\'zbekiston ko\'chasidagi ko\'p qavatlik uy qurilishi', '2022-12-01', NULL, '2022-12-13 09:12:23', '2022-12-13 09:12:23'),
(2, 2, 'Andijon City', '2022-12-19', NULL, '2022-12-19 05:04:10', '2022-12-19 05:04:10'),
(3, 4, 'modern house', '2023-01-02', NULL, '2023-01-02 01:38:38', '2023-01-02 01:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `deliver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sum` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `object_id`, `user_id`, `date`, `deliver_id`, `sum`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-12-14', 3, 0, 3, '2022-12-14 08:03:58', '2022-12-20 05:55:52'),
(2, 1, 2, '2022-12-14', 3, 0, 3, '2022-12-14 08:46:19', '2022-12-20 06:00:04'),
(3, 1, 2, '2022-12-14', 3, 0, 3, '2022-12-14 09:28:32', '2022-12-20 07:07:58'),
(4, 1, 2, '2022-12-14', 3, 0, 3, '2022-12-14 09:38:21', '2022-12-20 08:38:58'),
(5, 1, 2, '2022-12-14', 3, 0, 3, '2022-12-14 09:50:20', '2022-12-20 08:41:44'),
(6, 1, 2, '2022-12-14', 3, 0, 3, '2022-12-14 10:31:15', '2022-12-20 08:52:07'),
(7, 1, 2, '2022-12-14', 3, 0, 3, '2022-12-14 12:06:41', '2022-12-20 09:12:08'),
(8, 1, 2, '2022-12-15', 3, 0, 3, '2022-12-15 04:33:10', '2022-12-20 09:21:00'),
(9, 1, 2, '2022-12-15', 3, 0, 3, '2022-12-15 04:33:58', '2022-12-20 09:24:11'),
(10, 1, 2, '2022-12-15', 3, 0, 3, '2022-12-15 05:18:18', '2022-12-20 09:26:25'),
(11, 1, 2, '2022-12-15', 3, 0, 3, '2022-12-15 07:18:48', '2022-12-20 09:30:16'),
(12, 1, 2, '2022-12-15', 3, 0, 3, '2022-12-15 07:19:15', '2022-12-20 09:31:14'),
(13, 1, 2, '2022-12-15', 3, 0, 3, '2022-12-15 09:11:43', '2022-12-20 09:34:12'),
(14, 1, 2, '2022-12-16', 3, 0, 3, '2022-12-16 13:37:09', '2022-12-20 10:44:06'),
(15, 1, 2, '2022-12-17', 3, 0, 3, '2022-12-17 03:16:11', '2022-12-21 11:38:31'),
(16, 1, 2, '2022-12-19', 3, 4000, 3, '2022-12-19 05:29:53', '2023-01-03 04:24:12'),
(17, 1, 2, '2022-12-20', 3, 10750, 3, '2022-12-20 09:00:07', '2023-01-03 04:24:48'),
(18, 1, 2, '2022-12-20', NULL, 0, 1, '2022-12-20 09:00:17', '2022-12-20 09:00:17'),
(19, 1, 2, '2022-12-20', NULL, 0, 1, '2022-12-20 09:00:26', '2022-12-20 09:00:26'),
(20, 1, 2, '2022-12-21', NULL, 0, 1, '2022-12-21 11:43:11', '2022-12-21 11:43:11'),
(21, 1, 2, '2022-12-21', 3, 23500, 3, '2022-12-21 11:44:00', '2023-01-03 04:25:36'),
(22, 3, 4, '2023-01-02', 5, 275000, 3, '2023-01-02 01:39:02', '2023-01-02 01:43:20'),
(23, 3, 4, '2023-01-02', 3, 0, 3, '2023-01-02 01:49:46', '2023-01-02 01:50:33'),
(24, 1, 2, '2023-01-03', 3, 0, 3, '2023-01-03 01:43:47', '2023-01-03 01:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `number`, `sum`, `created_at`, `updated_at`, `shop_id`) VALUES
(1, 1, 1, 100, 0, NULL, NULL, NULL),
(2, 1, 2, 100, 0, NULL, NULL, NULL),
(3, 2, 1, 100, 0, NULL, NULL, NULL),
(4, 3, 1, 5, 0, NULL, NULL, NULL),
(5, 3, 2, 1, 0, NULL, NULL, NULL),
(6, 3, 2, 1, 0, NULL, NULL, NULL),
(7, 4, 1, 1, 0, NULL, NULL, NULL),
(8, 4, 1, 10, 0, NULL, NULL, NULL),
(9, 5, 3, 5, 0, NULL, NULL, NULL),
(10, 5, 3, 50, 0, NULL, NULL, NULL),
(11, 5, 2, 1, 0, NULL, NULL, NULL),
(12, 5, 2, 10, 0, NULL, NULL, NULL),
(13, 5, 2, 100, 0, NULL, NULL, NULL),
(14, 6, 1, 1, 0, NULL, NULL, NULL),
(15, 6, 1, 10, 0, NULL, NULL, NULL),
(16, 6, 2, 1, 0, NULL, NULL, NULL),
(17, 6, 2, 10, 0, NULL, NULL, NULL),
(18, 6, 3, 1, 0, NULL, NULL, NULL),
(19, 6, 3, 10, 0, NULL, NULL, NULL),
(20, 7, 1, 50, 0, NULL, NULL, NULL),
(21, 7, 1, 500, 0, NULL, NULL, NULL),
(22, 7, 2, 5, 0, NULL, NULL, NULL),
(23, 7, 2, 50, 0, NULL, NULL, NULL),
(24, 7, 2, 500, 0, NULL, NULL, NULL),
(25, 7, 3, 5, 0, NULL, NULL, NULL),
(26, 7, 3, 50, 0, NULL, NULL, NULL),
(27, 7, 3, 500, 0, NULL, NULL, NULL),
(28, 8, 1, 5, 0, NULL, NULL, NULL),
(29, 9, 2, 8, 0, NULL, NULL, NULL),
(30, 9, 2, 80, 0, NULL, NULL, NULL),
(31, 10, 2, 1, 0, NULL, NULL, NULL),
(32, 10, 2, 12, 0, NULL, NULL, NULL),
(33, 11, 1, 63, 0, NULL, NULL, NULL),
(34, 11, 2, 5, 0, NULL, NULL, NULL),
(35, 11, 3, 3, 0, NULL, NULL, NULL),
(36, 12, 2, 5, 0, NULL, NULL, NULL),
(37, 13, 2, 5, 0, NULL, NULL, NULL),
(38, 13, 2, 50, 0, NULL, NULL, NULL),
(39, 13, 2, 500, 0, NULL, NULL, NULL),
(40, 13, 1, 3, 0, NULL, NULL, NULL),
(41, 13, 1, 30, 0, NULL, NULL, NULL),
(42, 13, 3, 3, 0, NULL, NULL, NULL),
(43, 14, 1, 10, 0, NULL, NULL, NULL),
(44, 14, 2, 10, 0, NULL, NULL, NULL),
(45, 14, 3, 10, 0, NULL, NULL, NULL),
(46, 15, 2, 5, 0, NULL, NULL, NULL),
(47, 15, 3, 8, 0, NULL, NULL, NULL),
(48, 16, 3, 20, 200, NULL, '2023-01-02 01:35:47', 2),
(49, 17, 1, 15, 10, NULL, '2022-12-26 03:28:06', 3),
(50, 17, 2, 3, 200, NULL, '2022-12-26 13:00:10', 2),
(51, 17, 3, 5, 2000, NULL, '2022-12-26 13:00:25', 2),
(52, 18, 2, 9, 0, NULL, NULL, NULL),
(53, 18, 1, 3, 0, NULL, NULL, NULL),
(54, 19, 3, 8, 0, NULL, NULL, NULL),
(55, 20, 1, 100, 0, NULL, NULL, NULL),
(56, 20, 2, 100, 0, NULL, NULL, NULL),
(57, 20, 3, 100, 0, NULL, NULL, NULL),
(58, 21, 2, 55, 200, NULL, '2022-12-26 06:12:00', 2),
(59, 21, 3, 25, 500, NULL, '2022-12-26 09:41:02', 3),
(60, 22, 4, 55, 5000, NULL, '2023-01-02 01:42:38', 3),
(61, 23, 1, 10, 0, NULL, NULL, NULL),
(62, 23, 2, 10, 0, NULL, NULL, NULL),
(63, 23, 3, 10, 0, NULL, NULL, NULL),
(64, 23, 4, 10, 0, NULL, NULL, NULL),
(65, 24, 1, 58, 0, NULL, NULL, NULL),
(66, 24, 2, 2000, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'agent', '79d964680de5084f594aa1b9fe9977fadf2dc1a3864e77fc9099fab502f75345', '[\"*\"]', NULL, NULL, '2022-12-13 09:13:36', '2022-12-13 09:13:36'),
(2, 'App\\Models\\User', 2, 'agent', 'df8f839d6605efb23458edccb23c381ff4b115eb3c9026cdb4146476db34eab0', '[\"*\"]', NULL, NULL, '2022-12-13 09:17:40', '2022-12-13 09:17:40'),
(3, 'App\\Models\\User', 2, 'agent', 'b79dd6451705b1629e097146a2125278f7d9507c8fec34cc1b4307a783f0d93a', '[\"*\"]', NULL, NULL, '2022-12-13 09:46:27', '2022-12-13 09:46:27'),
(4, 'App\\Models\\User', 2, 'agent', '998dcd1d788c2ca041f79ed31f7d10a6e85be9d7ea304e505261ff1cc0d9cdc3', '[\"*\"]', NULL, NULL, '2022-12-13 10:13:03', '2022-12-13 10:13:03'),
(5, 'App\\Models\\User', 2, 'agent', '99a940b4cf749416298972868148f03a66cb3c17d0d1fb0f51f53a6e82e98eb9', '[\"*\"]', NULL, NULL, '2022-12-13 10:18:52', '2022-12-13 10:18:52'),
(6, 'App\\Models\\User', 2, 'agent', '69b5d91c04b29d68a5c8c2e6f250baf3196b5839acc6e8c6b844c7b6effe7f94', '[\"*\"]', NULL, NULL, '2022-12-13 10:21:01', '2022-12-13 10:21:01'),
(7, 'App\\Models\\User', 2, 'agent', '2999e60862a00d62ca5db4334aa3372acf7e4df3f1a093b6e11c25110993388f', '[\"*\"]', NULL, NULL, '2022-12-13 10:21:21', '2022-12-13 10:21:21'),
(8, 'App\\Models\\User', 2, 'agent', 'b58678f8ad09da23e4c77c34efeae5ff3df62b43c950e1981652a2c03c30d688', '[\"*\"]', NULL, NULL, '2022-12-13 10:47:10', '2022-12-13 10:47:10'),
(9, 'App\\Models\\User', 2, 'agent', 'cbd36ae1680e813483cd0266526fcbe5d4f70c20964aaa7e9521c5194b34ea5c', '[\"*\"]', NULL, NULL, '2022-12-13 10:51:09', '2022-12-13 10:51:09'),
(10, 'App\\Models\\User', 2, 'agent', '34d278947bb23852212cfc56f879da5af41c3b084a8fd701267cc5c34616adb7', '[\"*\"]', NULL, NULL, '2022-12-13 10:51:30', '2022-12-13 10:51:30'),
(11, 'App\\Models\\User', 2, 'agent', '09076b3a93f0f4552d0448c9c2a4167e7e29eef72b8837b8fd5e7ae3f8c06e72', '[\"*\"]', NULL, NULL, '2022-12-13 10:58:53', '2022-12-13 10:58:53'),
(12, 'App\\Models\\User', 2, 'agent', 'b6f88637a9a5ca1e87236ebedc194d5191877ff1f03591afea09fc3b191bd818', '[\"*\"]', NULL, NULL, '2022-12-13 11:58:42', '2022-12-13 11:58:42'),
(13, 'App\\Models\\User', 2, 'agent', 'f03f931d22fedf85050aa3b2c0df662e355ae3b59a5b793e0cad60e58db0de16', '[\"*\"]', NULL, NULL, '2022-12-14 07:58:59', '2022-12-14 07:58:59'),
(14, 'App\\Models\\User', 2, 'agent', 'cc3ebfb8abd18883ee630218ee7d22702a553d6e6bb9beabee27edd9313c6873', '[\"*\"]', NULL, NULL, '2022-12-14 10:18:22', '2022-12-14 10:18:22'),
(15, 'App\\Models\\User', 2, 'agent', 'bc83ca8002dd178b8141f3bbb48efa92c0fdae12f88f9f8cb40c06c9a4c7975d', '[\"*\"]', NULL, NULL, '2022-12-14 10:30:38', '2022-12-14 10:30:38'),
(16, 'App\\Models\\User', 2, 'agent', '4e58bc18d73151bbd61f191c3fd0b3ca61b8eda0d06b6f406efb09637aec20cb', '[\"*\"]', NULL, NULL, '2022-12-14 10:30:58', '2022-12-14 10:30:58'),
(17, 'App\\Models\\User', 2, 'agent', '49d526fc1b4644cc1c9ac859a28763b9f5fd2a91980b12de2987a449185e03a5', '[\"*\"]', NULL, NULL, '2022-12-14 10:37:47', '2022-12-14 10:37:47'),
(18, 'App\\Models\\User', 2, 'agent', '5cd491801a55b8693ac345c463c62554d4fb43d2ab3ae9d0c3b69a5b041cd239', '[\"*\"]', NULL, NULL, '2022-12-14 11:55:35', '2022-12-14 11:55:35'),
(19, 'App\\Models\\User', 2, 'agent', 'fa3f1d5a2a893cbe10a832c9ebbe4c0cb68f0411942cc6eb50bc0cb77a5b873f', '[\"*\"]', NULL, NULL, '2022-12-15 08:23:14', '2022-12-15 08:23:14'),
(20, 'App\\Models\\User', 2, 'agent', '5756de4f399c1bae00adf9c7f519b4cdb7f84a5182360fbb73aa36e26b7bd267', '[\"*\"]', NULL, NULL, '2022-12-15 09:10:51', '2022-12-15 09:10:51'),
(21, 'App\\Models\\User', 2, 'agent', 'bbb9170e89457aa1870f7108bf1134f406399d5928081cd67e118eae3cc740ef', '[\"*\"]', NULL, NULL, '2022-12-16 11:19:52', '2022-12-16 11:19:52'),
(22, 'App\\Models\\User', 2, 'agent', '2673ef93d2338fa87f786d16dc1a23076cfe45d39f00237cb28ee51c52ef114a', '[\"*\"]', NULL, NULL, '2022-12-16 13:53:53', '2022-12-16 13:53:53'),
(23, 'App\\Models\\User', 2, 'agent', '271ad8628527ac2b97f1a118177a0e2665eacc66ac25e2031821a463621e6992', '[\"*\"]', NULL, NULL, '2022-12-17 02:52:14', '2022-12-17 02:52:14'),
(24, 'App\\Models\\User', 2, 'agent', 'c218a3eeb014dda75b47f2b129d3c6bdd4e2b67206b67f20777bd7e753e5e214', '[\"*\"]', NULL, NULL, '2022-12-17 02:55:06', '2022-12-17 02:55:06'),
(25, 'App\\Models\\User', 2, 'agent', '8f704afffa751d4bfa7b01967e8ec527ecf30fcd785fcde17cb91d0b3738192c', '[\"*\"]', NULL, NULL, '2022-12-17 02:58:09', '2022-12-17 02:58:09'),
(26, 'App\\Models\\User', 2, 'agent', '8ce74f7aa596adef9c3dbe87e3c80bee2232bed48f00747288b586ea1e92a8a0', '[\"*\"]', NULL, NULL, '2022-12-17 04:11:24', '2022-12-17 04:11:24'),
(27, 'App\\Models\\User', 2, 'agent', 'b3ae11fecd3d5d33701ab26311a1b8aa23c710ad4d2a4931dcb466df67081556', '[\"*\"]', NULL, NULL, '2022-12-17 04:13:58', '2022-12-17 04:13:58'),
(28, 'App\\Models\\User', 2, 'agent', '3b34d406581caae3982baa029dc353b93a6bd60c54413d691ce5a486916da41a', '[\"*\"]', NULL, NULL, '2022-12-17 04:29:52', '2022-12-17 04:29:52'),
(29, 'App\\Models\\User', 2, 'agent', 'bd00cd91e8a0d9fc79022c5f6cfc24babe76975c7795f90a17e610c3021f4556', '[\"*\"]', NULL, NULL, '2022-12-17 09:17:12', '2022-12-17 09:17:12'),
(30, 'App\\Models\\User', 2, 'agent', '33be64d5c17c28635b0f74939d7ae81fb6b337f0175b495ee6d141e5f0533cd3', '[\"*\"]', NULL, NULL, '2022-12-17 09:17:16', '2022-12-17 09:17:16'),
(31, 'App\\Models\\User', 2, 'agent', 'cda5dcb87f798cb6c0b07b7971247d9691266e8f47424a0fe9a7b6358cfa89ac', '[\"*\"]', NULL, NULL, '2022-12-17 09:17:26', '2022-12-17 09:17:26'),
(32, 'App\\Models\\User', 3, 'agent', 'a38ad8afbb986d0d7b8fe7fca82e070bc3f1a4a43519d3baac6e15d5f324f387', '[\"*\"]', NULL, NULL, '2022-12-19 05:02:29', '2022-12-19 05:02:29'),
(33, 'App\\Models\\User', 2, 'agent', 'ce623e0470526cef294e504b7d8f80a591841edf7bcbf39e72b5bdf4a31de0d8', '[\"*\"]', NULL, NULL, '2022-12-19 05:14:59', '2022-12-19 05:14:59'),
(34, 'App\\Models\\User', 2, 'agent', 'b816247f400850f231bc67cca5d54e497ff804f39c280dba927b943864f55457', '[\"*\"]', NULL, NULL, '2022-12-19 05:29:19', '2022-12-19 05:29:19'),
(35, 'App\\Models\\User', 2, 'agent', 'e22e57350925d4d22512ec1c80b814f32c36b8ace31d4ba7821f46937d5f0730', '[\"*\"]', NULL, NULL, '2022-12-19 05:34:56', '2022-12-19 05:34:56'),
(36, 'App\\Models\\User', 3, 'agent', '1e36dc7bc9750b8164372341eca55d8ea5bae7b00b6645f210d966ef317b8886', '[\"*\"]', NULL, NULL, '2022-12-19 05:39:58', '2022-12-19 05:39:58'),
(37, 'App\\Models\\User', 2, 'agent', 'b8c019dd5d9d3693f717c550a5db5215759695eeaebd8722f7df4541942be1a9', '[\"*\"]', NULL, NULL, '2022-12-19 05:40:13', '2022-12-19 05:40:13'),
(38, 'App\\Models\\User', 3, 'agent', 'da21702412ba7ef526719ea3b1eec7c86f056cbf0d16024075501ac35e68dd04', '[\"*\"]', NULL, NULL, '2022-12-19 06:06:40', '2022-12-19 06:06:40'),
(39, 'App\\Models\\User', 3, 'agent', 'c0299b831cd977ca83ee32a2d218604bcd4d4cf97f281cffc0950b1585b8630d', '[\"*\"]', NULL, NULL, '2022-12-19 06:14:57', '2022-12-19 06:14:57'),
(40, 'App\\Models\\User', 3, 'agent', '92879364618b414fc3feae04db4a1aa790d698770f660c4c3f12412a157604f5', '[\"*\"]', NULL, NULL, '2022-12-19 06:27:57', '2022-12-19 06:27:57'),
(41, 'App\\Models\\User', 3, 'agent', '6babe8fd193b161601abbd828a72ce0357cfa33661de1e2051c4286e38d18146', '[\"*\"]', NULL, NULL, '2022-12-19 07:25:43', '2022-12-19 07:25:43'),
(42, 'App\\Models\\User', 2, 'agent', '7ce4d2b001bc4b8b9548302e0a36fe800a6050f6e61d2ec4993c1629f3dd830d', '[\"*\"]', NULL, NULL, '2022-12-19 10:42:23', '2022-12-19 10:42:23'),
(43, 'App\\Models\\User', 3, 'agent', 'da77f7c359beeca68480b86fd6047ce6fd0ee99a18862458004a18740d9488dd', '[\"*\"]', NULL, NULL, '2022-12-20 05:55:30', '2022-12-20 05:55:30'),
(44, 'App\\Models\\User', 3, 'agent', '0ae372bc845b0d6a61c3510553b1ae5b1918c20163591f091486b48aa6f75dd6', '[\"*\"]', NULL, NULL, '2022-12-20 06:28:46', '2022-12-20 06:28:46'),
(45, 'App\\Models\\User', 3, 'agent', '35c3cf803c5facb7fac0a797d29c0e57e29cc19f625716c911657c33e85c8f72', '[\"*\"]', NULL, NULL, '2022-12-20 06:29:13', '2022-12-20 06:29:13'),
(46, 'App\\Models\\User', 3, 'agent', 'bb43664c66cfaf3e1f982d6ec2db5d9a6e351d3dbd6c3cae8e761ce80885fd52', '[\"*\"]', NULL, NULL, '2022-12-20 06:29:29', '2022-12-20 06:29:29'),
(47, 'App\\Models\\User', 3, 'agent', 'e8e864b9e72e69a8791b86a0ad5433a41a1c43d1c5238041a2d403d8ae9fa99d', '[\"*\"]', NULL, NULL, '2022-12-20 06:45:49', '2022-12-20 06:45:49'),
(48, 'App\\Models\\User', 3, 'agent', '5e217818d4779396bbf907fde5fc3a8dddd19751e06fc84c5c394410751d4c97', '[\"*\"]', NULL, NULL, '2022-12-20 08:09:23', '2022-12-20 08:09:23'),
(49, 'App\\Models\\User', 3, 'agent', '5236b4fd40e256a10fce32b4e1f0a18a9e0235d6e5078a8b30bf62bef26885cf', '[\"*\"]', NULL, NULL, '2022-12-20 08:16:03', '2022-12-20 08:16:03'),
(50, 'App\\Models\\User', 3, 'agent', 'fe443e3ec97f4f8e8281722b75a1053512d46b9b22f59db3d5ff7276b8c0d81f', '[\"*\"]', NULL, NULL, '2022-12-20 08:17:46', '2022-12-20 08:17:46'),
(51, 'App\\Models\\User', 3, 'agent', '9656b2929d1e9d210d3f5a15df6b8eb39f61ae210d1e1bbd91af4ed697a9a9fb', '[\"*\"]', NULL, NULL, '2022-12-20 10:10:45', '2022-12-20 10:10:45'),
(52, 'App\\Models\\User', 3, 'agent', '743042e2bc51a2901f51c7ab091790e5bb94e3ae2b6e5b49b0807d51ae97f492', '[\"*\"]', NULL, NULL, '2022-12-20 10:21:54', '2022-12-20 10:21:54'),
(53, 'App\\Models\\User', 3, 'agent', 'e97f743dda9b4e72851c6f06252a650561ade327779109a3c70db2648e9ec06f', '[\"*\"]', NULL, NULL, '2022-12-21 01:52:30', '2022-12-21 01:52:30'),
(54, 'App\\Models\\User', 2, 'agent', '23a1417596523d4117325f8b3e86085ad2785acb9d25a9e70c58c9cd6f5ea6e2', '[\"*\"]', NULL, NULL, '2022-12-21 09:42:20', '2022-12-21 09:42:20'),
(55, 'App\\Models\\User', 3, 'agent', '2a6063a676b270a6d619f1048ebdb3af9a556975181ffb1e73dee4defb3361d3', '[\"*\"]', NULL, NULL, '2022-12-21 09:42:32', '2022-12-21 09:42:32'),
(56, 'App\\Models\\User', 3, 'agent', '1e095139da33438bc8a3f6f2ed23150b3589cbf0af55fdddbdcabb17c5e557ed', '[\"*\"]', NULL, NULL, '2022-12-21 09:42:59', '2022-12-21 09:42:59'),
(57, 'App\\Models\\User', 3, 'agent', 'c56133f50da0a67f0866d30e5bdcfe6141bbbd2f03fe0da4734fa5ba93fc9e11', '[\"*\"]', NULL, NULL, '2022-12-21 11:31:04', '2022-12-21 11:31:04'),
(58, 'App\\Models\\User', 3, 'agent', '749a18780907539d15a40ecc26edf64b39f9f56d0207add747e8f153867eac93', '[\"*\"]', NULL, NULL, '2022-12-21 11:32:07', '2022-12-21 11:32:07'),
(59, 'App\\Models\\User', 2, 'agent', '960743d5cc5b0b59877d50e3c49c8485c969bf2ba3443f4818d08aa0b0588020', '[\"*\"]', NULL, NULL, '2022-12-21 11:32:14', '2022-12-21 11:32:14'),
(60, 'App\\Models\\User', 3, 'agent', '4d7f6d16d15a78560e949c72eff4b691aa8fbe6138ab3629855d398ff73fdd10', '[\"*\"]', NULL, NULL, '2022-12-21 11:33:13', '2022-12-21 11:33:13'),
(61, 'App\\Models\\User', 2, 'agent', '430d627ccd9c07b0c56c8047d97e4701a563e495501c556704e6dfa285a07be4', '[\"*\"]', NULL, NULL, '2022-12-21 11:35:29', '2022-12-21 11:35:29'),
(62, 'App\\Models\\User', 3, 'agent', '72351724a61f756490e0e78ae302e4487db49777f52a07396508022ac5120f7b', '[\"*\"]', NULL, NULL, '2022-12-21 11:36:01', '2022-12-21 11:36:01'),
(63, 'App\\Models\\User', 3, 'agent', 'c890430c012a22e409c186546d798d72afe09820477de1801a86061469b9da33', '[\"*\"]', NULL, NULL, '2022-12-21 11:36:05', '2022-12-21 11:36:05'),
(64, 'App\\Models\\User', 3, 'agent', '30a79acb589b60962e488e545861768629f8b5c61e39efbd95869436a527c8ca', '[\"*\"]', NULL, NULL, '2022-12-21 11:41:29', '2022-12-21 11:41:29'),
(65, 'App\\Models\\User', 3, 'agent', 'eae9b00e9349dfa4036aa0c078692263e503e28042e8e40efbec5f29fcbda678', '[\"*\"]', NULL, NULL, '2022-12-21 11:41:33', '2022-12-21 11:41:33'),
(66, 'App\\Models\\User', 3, 'agent', 'aad84d0e4ec31045abeb0a3e84ef4cc4a2efe5657f6c76692afff585398a2b30', '[\"*\"]', NULL, NULL, '2022-12-22 01:57:49', '2022-12-22 01:57:49'),
(67, 'App\\Models\\User', 3, 'agent', 'cb149ccf394421d670f580fbb39d21e8d1e95e80c1e34baf990649d6bbade811', '[\"*\"]', NULL, NULL, '2022-12-23 04:14:52', '2022-12-23 04:14:52'),
(68, 'App\\Models\\User', 3, 'agent', '0114a9d2ac5749a2ba2e57a14349e474ea0a3654e7b9d25843521fbaae68b801', '[\"*\"]', NULL, NULL, '2022-12-23 05:35:58', '2022-12-23 05:35:58'),
(69, 'App\\Models\\User', 3, 'agent', 'c5fef35c45ea683c95cb06a7ee7854e9d360f621b81a13c9e772b4b112845deb', '[\"*\"]', NULL, NULL, '2022-12-23 06:21:50', '2022-12-23 06:21:50'),
(70, 'App\\Models\\User', 3, 'agent', '6a93afae245f9ee14664fd36b49442e410c7db1fcd72f2043642bedbe4fde7f9', '[\"*\"]', NULL, NULL, '2022-12-23 12:46:14', '2022-12-23 12:46:14'),
(71, 'App\\Models\\User', 3, 'agent', '7cce5540a8ae1d4a2edc1a9ab92fb589cb8ba34b529cced6281772e81703dd93', '[\"*\"]', NULL, NULL, '2022-12-26 03:25:02', '2022-12-26 03:25:02'),
(72, 'App\\Models\\User', 3, 'agent', '99b285633ec623f0788f98b4077f3d2fcff282f6d63b58a9dfd20103ba1917ea', '[\"*\"]', NULL, NULL, '2022-12-26 04:44:53', '2022-12-26 04:44:53'),
(73, 'App\\Models\\User', 3, 'agent', 'd2647e9c2e74b367e5a8e74e80780f0d29e33aac05f208eae25b9b025433d15c', '[\"*\"]', NULL, NULL, '2022-12-26 05:31:47', '2022-12-26 05:31:47'),
(74, 'App\\Models\\User', 3, 'agent', '0952c88fc1480dcfe137db9c938ab893b9f588f0d154924f579bf6238a208471', '[\"*\"]', NULL, NULL, '2022-12-26 09:33:28', '2022-12-26 09:33:28'),
(75, 'App\\Models\\User', 3, 'agent', '70d30ac0d798788576d03c88277d5324e0c82c24855672c1de293f4401353722', '[\"*\"]', NULL, NULL, '2022-12-26 11:18:05', '2022-12-26 11:18:05'),
(76, 'App\\Models\\User', 3, 'agent', '17c58eb73dec93d3d6c11278cc5a1a39ae501b04cc1f3bf16010a49b0010ef60', '[\"*\"]', NULL, NULL, '2022-12-26 11:23:49', '2022-12-26 11:23:49'),
(77, 'App\\Models\\User', 3, 'agent', 'a28dfd9765d2c996bc9117d7f7c4f00e9a32a122fa71777d7d2c0cf5af2a57de', '[\"*\"]', NULL, NULL, '2022-12-26 11:37:25', '2022-12-26 11:37:25'),
(78, 'App\\Models\\User', 2, 'agent', 'c92bd7fee1d0d4ca932c9395ce3651726ae8d84494819b69db522ee678207fd7', '[\"*\"]', NULL, NULL, '2022-12-26 13:04:45', '2022-12-26 13:04:45'),
(79, 'App\\Models\\User', 3, 'agent', 'f69f1411349def5401e9e1ba7a61d12be88b6a8cec07973f8012711beedd1b1e', '[\"*\"]', NULL, NULL, '2023-01-02 01:18:56', '2023-01-02 01:18:56'),
(80, 'App\\Models\\User', 2, 'agent', 'b966bf10a8902996b8626159af8c4ee8c697b642aac7d7ce8361da877a6096ba', '[\"*\"]', NULL, NULL, '2023-01-02 01:19:25', '2023-01-02 01:19:25'),
(81, 'App\\Models\\User', 2, 'agent', 'c4bf10a10fb086cc05d002e30d7dc641148fe8b579f1ede0c1f377187f6b5c87', '[\"*\"]', NULL, NULL, '2023-01-02 01:20:00', '2023-01-02 01:20:00'),
(82, 'App\\Models\\User', 5, 'agent', 'f87266419edfdd4152285a343280b495a6f0d5e8adaa81b79b8842954eac9a7a', '[\"*\"]', NULL, NULL, '2023-01-02 01:22:02', '2023-01-02 01:22:02'),
(83, 'App\\Models\\User', 4, 'agent', '7adac204394772f2c3908389c72bd34d629e1b5c285a6f38cafe3a417ff3f26e', '[\"*\"]', NULL, NULL, '2023-01-02 01:22:16', '2023-01-02 01:22:16'),
(84, 'App\\Models\\User', 3, 'agent', 'a5f9611da7417f8650bc0ab43ac78d32385bd9a238228cadde49ebdca318c259', '[\"*\"]', NULL, NULL, '2023-01-02 01:36:01', '2023-01-02 01:36:01'),
(85, 'App\\Models\\User', 2, 'agent', '11c12a177b0f4c644fd13c44565443d0ea7b7c36daaa152ca58807e5c1e5eec0', '[\"*\"]', NULL, NULL, '2023-01-02 01:36:43', '2023-01-02 01:36:43'),
(86, 'App\\Models\\User', 2, 'agent', '2ae50f94b36d1c2ff6fbac93676f7d14f3c56ccbfcb1a04e2141ad4591f3109e', '[\"*\"]', NULL, NULL, '2023-01-02 01:39:25', '2023-01-02 01:39:25'),
(87, 'App\\Models\\User', 4, 'agent', '1f14d345b24e8fb8519d2f29e9240c8a40f773297ef60b754f75797b0204875e', '[\"*\"]', NULL, NULL, '2023-01-02 01:48:34', '2023-01-02 01:48:34'),
(88, 'App\\Models\\User', 4, 'agent', 'cb52e1daa99b5881cdd6b69acccf81291adedb5536143ca35cb33bd2c2f4ceee', '[\"*\"]', NULL, NULL, '2023-01-02 02:08:53', '2023-01-02 02:08:53'),
(89, 'App\\Models\\User', 2, 'agent', '248a8475de4e8eadfde5d8c50cd529c2528a3722f164e20d5d9860154c905b83', '[\"*\"]', NULL, NULL, '2023-01-03 01:43:19', '2023-01-03 01:43:19'),
(90, 'App\\Models\\User', 3, 'agent', 'f202a8cf37ae68f2df1b35776e07e7b8a999081a31e093df45e1d08cec490013', '[\"*\"]', NULL, NULL, '2023-01-03 01:44:43', '2023-01-03 01:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Armatura Armatura Armatura', 'metr', 1, '2022-12-13 09:12:55', '2022-12-13 09:12:55'),
(2, 'Sement Sement SementSement Sement', 'kg', 1, '2022-12-13 09:13:06', '2022-12-13 09:13:06'),
(3, 'Oboy Oboy Oboy Oboy Oboy Oboy', 'metr', 2, '2022-12-14 07:12:03', '2022-12-14 07:12:03'),
(4, 'shpakilofka', 'kg', 3, '2023-01-02 01:23:40', '2023-01-02 01:23:40'),
(5, 'vdbfbnf', 'fgbngb', 3, '2023-01-03 01:47:58', '2023-01-03 01:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `rasxods`
--

CREATE TABLE `rasxods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rasxods`
--

INSERT INTO `rasxods` (`id`, `object_id`, `user_id`, `date`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '2022-12-14', '2022-12-14 09:13:36', '2022-12-14 09:13:36'),
(3, 1, 2, '2022-12-14', '2022-12-14 10:08:48', '2022-12-14 10:08:48'),
(4, 1, 2, '2022-12-14', '2022-12-14 10:17:37', '2022-12-14 10:17:37'),
(5, 1, 2, '2022-12-14', '2022-12-14 11:56:12', '2022-12-14 11:56:12'),
(6, 1, 2, '2022-12-15', '2022-12-15 07:31:02', '2022-12-15 07:31:02'),
(7, 1, 2, '2022-12-15', '2022-12-15 09:12:02', '2022-12-15 09:12:02'),
(8, 1, 2, '2022-12-19', '2022-12-19 05:15:40', '2022-12-19 05:15:40'),
(9, 1, 2, '2022-12-21', '2022-12-21 11:34:06', '2022-12-21 11:34:06'),
(10, 1, 2, '2022-12-21', '2022-12-21 12:13:37', '2022-12-21 12:13:37'),
(11, 1, 2, '2022-12-22', '2022-12-21 23:49:57', '2022-12-21 23:49:57'),
(12, 3, 4, '2023-01-02', '2023-01-02 01:44:57', '2023-01-02 01:44:57'),
(13, 3, 4, '2023-01-02', '2023-01-02 01:45:58', '2023-01-02 01:45:58'),
(14, 1, 2, '2023-01-02', '2023-01-02 01:46:22', '2023-01-02 01:46:22'),
(15, 1, 2, '2023-01-02', '2023-01-02 01:46:48', '2023-01-02 01:46:48'),
(16, 1, 2, '2023-01-02', '2023-01-02 01:47:00', '2023-01-02 01:47:00'),
(17, 3, 4, '2023-01-02', '2023-01-02 01:48:01', '2023-01-02 01:48:01'),
(18, 3, 4, '2023-01-02', '2023-01-02 01:48:40', '2023-01-02 01:48:40'),
(19, 3, 4, '2023-01-02', '2023-01-02 01:48:51', '2023-01-02 01:48:51'),
(20, 3, 4, '2023-01-02', '2023-01-02 01:50:49', '2023-01-02 01:50:49'),
(21, 3, 4, '2023-01-02', '2023-01-02 01:51:03', '2023-01-02 01:51:03'),
(22, 3, 4, '2023-01-02', '2023-01-02 02:21:25', '2023-01-02 02:21:25'),
(23, 3, 4, '2023-01-02', '2023-01-02 02:21:56', '2023-01-02 02:21:56'),
(24, 3, 4, '2023-01-02', '2023-01-02 02:32:02', '2023-01-02 02:32:02'),
(25, 3, 4, '2023-01-02', '2023-01-02 02:32:36', '2023-01-02 02:32:36'),
(26, 3, 4, '2023-01-02', '2023-01-02 02:44:04', '2023-01-02 02:44:04'),
(27, 3, 4, '2023-01-02', '2023-01-02 02:44:50', '2023-01-02 02:44:50'),
(28, 3, 4, '2023-01-02', '2023-01-02 02:45:10', '2023-01-02 02:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `rasxod_products`
--

CREATE TABLE `rasxod_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rasxod_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rasxod_products`
--

INSERT INTO `rasxod_products` (`id`, `rasxod_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 100, NULL, NULL),
(2, 2, 2, 100, NULL, NULL),
(3, 4, 3, 1, NULL, NULL),
(4, 4, 3, 10, NULL, NULL),
(5, 5, 3, 8, NULL, NULL),
(6, 5, 3, 80, NULL, NULL),
(7, 6, 3, 0, NULL, NULL),
(8, 7, 3, 1, NULL, NULL),
(9, 8, 2, 45, NULL, NULL),
(10, 8, 1, 35, NULL, NULL),
(11, 8, 3, 50, NULL, NULL),
(12, 9, 1, 53, NULL, NULL),
(13, 10, 1, 20, NULL, NULL),
(14, 10, 2, 12, NULL, NULL),
(15, 10, 3, 58, NULL, NULL),
(16, 11, 1, 30, NULL, NULL),
(17, 14, 2, 103, NULL, NULL),
(18, 15, 1, 1050, NULL, NULL),
(19, 16, 3, 37, NULL, NULL),
(20, 16, 2, 100, NULL, NULL),
(21, 28, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Master', NULL, NULL),
(3, 'Yetkazib Beruvchi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Market', NULL, NULL),
(2, 'Market2', NULL, NULL),
(3, 'Market3', NULL, NULL),
(4, 'Market4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `object_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `transfer_id`, `order_id`, `object_id`, `income`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, '2022-12-19 05:03:18', '2022-12-19 05:03:18'),
(2, NULL, 2, 2, 1, '2022-12-19 05:03:22', '2022-12-19 05:03:22'),
(3, 1, NULL, 1, 0, '2022-12-19 05:10:59', '2022-12-19 05:10:59'),
(4, 1, NULL, 2, 1, '2022-12-19 05:10:59', '2022-12-19 05:10:59'),
(5, NULL, 3, 3, 1, '2022-12-19 11:57:14', '2022-12-19 11:57:14'),
(6, NULL, 4, 4, 1, '2022-12-20 08:31:10', '2022-12-20 08:31:10'),
(7, NULL, 5, 5, 1, '2022-12-20 08:31:15', '2022-12-20 08:31:15'),
(8, NULL, 6, 6, 1, '2022-12-20 08:31:20', '2022-12-20 08:31:20'),
(9, NULL, 7, 7, 1, '2022-12-20 09:04:03', '2022-12-20 09:04:03'),
(10, NULL, 8, 8, 1, '2022-12-20 09:04:07', '2022-12-20 09:04:07'),
(11, NULL, 9, 9, 1, '2022-12-20 09:04:11', '2022-12-20 09:04:11'),
(12, NULL, 10, 10, 1, '2022-12-20 09:04:15', '2022-12-20 09:04:15'),
(13, NULL, 11, 11, 1, '2022-12-20 09:04:19', '2022-12-20 09:04:19'),
(14, NULL, 12, 12, 1, '2022-12-20 09:04:27', '2022-12-20 09:04:27'),
(15, NULL, 13, 13, 1, '2022-12-20 09:04:32', '2022-12-20 09:04:32'),
(16, NULL, 14, 14, 1, '2022-12-20 09:04:37', '2022-12-20 09:04:37'),
(17, 2, NULL, 1, 0, '2022-12-20 09:04:59', '2022-12-20 09:04:59'),
(18, 2, NULL, 2, 1, '2022-12-20 09:04:59', '2022-12-20 09:04:59'),
(19, 3, NULL, 1, 0, '2022-12-20 09:05:52', '2022-12-20 09:05:52'),
(20, 3, NULL, 2, 1, '2022-12-20 09:05:52', '2022-12-20 09:05:52'),
(21, 4, NULL, 1, 0, '2022-12-20 09:05:57', '2022-12-20 09:05:57'),
(22, 4, NULL, 2, 1, '2022-12-20 09:05:57', '2022-12-20 09:05:57'),
(23, 5, NULL, 1, 0, '2022-12-20 09:06:01', '2022-12-20 09:06:01'),
(24, 5, NULL, 2, 1, '2022-12-20 09:06:01', '2022-12-20 09:06:01'),
(25, 6, NULL, 1, 0, '2022-12-20 09:06:04', '2022-12-20 09:06:04'),
(26, 6, NULL, 2, 1, '2022-12-20 09:06:04', '2022-12-20 09:06:04'),
(27, NULL, 15, 15, 1, '2022-12-21 11:31:58', '2022-12-21 11:31:58'),
(28, 7, NULL, 1, 0, '2022-12-21 11:32:59', '2022-12-21 11:32:59'),
(29, 7, NULL, 2, 1, '2022-12-21 11:32:59', '2022-12-21 11:32:59'),
(30, NULL, 16, 16, 1, '2022-12-21 11:41:06', '2022-12-21 11:41:06'),
(31, NULL, 17, 17, 1, '2022-12-21 11:41:14', '2022-12-21 11:41:14'),
(32, NULL, 21, 21, 1, '2022-12-21 11:48:53', '2022-12-21 11:48:53'),
(33, 8, NULL, 1, 0, '2022-12-21 12:10:38', '2022-12-21 12:10:38'),
(34, 8, NULL, 2, 1, '2022-12-21 12:10:38', '2022-12-21 12:10:38'),
(35, NULL, 22, 22, 1, '2023-01-02 01:40:17', '2023-01-02 01:40:17'),
(36, NULL, 23, 23, 1, '2023-01-02 01:50:05', '2023-01-02 01:50:05'),
(37, NULL, 24, 24, 1, '2023-01-03 01:45:05', '2023-01-03 01:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) UNSIGNED NOT NULL,
  `to` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `deliver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sum` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `from`, `to`, `date`, `deliver_id`, `sum`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-12-19', 3, 0, 3, '2022-12-19 05:10:51', '2022-12-20 10:13:11'),
(2, 1, 2, '2022-12-19', 3, 0, 3, '2022-12-19 12:11:10', '2022-12-20 10:16:02'),
(3, 1, 2, '2022-12-20', 3, 0, 3, '2022-12-20 09:05:10', '2022-12-20 10:40:30'),
(4, 1, 2, '2022-12-20', 3, 0, 3, '2022-12-20 09:05:20', '2022-12-21 00:52:28'),
(5, 1, 2, '2022-12-20', 3, 0, 3, '2022-12-20 09:05:31', '2022-12-21 09:29:57'),
(6, 1, 2, '2022-12-20', 3, 0, 3, '2022-12-20 09:05:48', '2022-12-21 02:04:15'),
(7, 1, 2, '2022-12-21', 3, 0, 3, '2022-12-21 11:32:52', '2022-12-21 11:40:44'),
(8, 1, 2, '2022-12-21', 3, 0, 3, '2022-12-21 12:10:13', '2022-12-21 12:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_products`
--

CREATE TABLE `transfer_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_products`
--

INSERT INTO `transfer_products` (`id`, `transfer_id`, `product_id`, `number`, `sum`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 50, 0, NULL, NULL),
(2, 1, 2, 50, 0, NULL, NULL),
(3, 1, 3, 50, 0, NULL, NULL),
(4, 2, 1, 10, 0, NULL, NULL),
(5, 2, 2, 5, 0, NULL, NULL),
(6, 3, 1, 10, 0, NULL, NULL),
(7, 3, 2, 10, 0, NULL, NULL),
(8, 4, 1, 10, 0, NULL, NULL),
(9, 5, 1, 10, 0, NULL, NULL),
(10, 5, 2, 10, 0, NULL, NULL),
(11, 5, 3, 10, 0, NULL, NULL),
(12, 6, 1, 10, 0, NULL, NULL),
(13, 6, 2, 10, 0, NULL, NULL),
(14, 6, 3, 10, 0, NULL, NULL),
(15, 7, 1, 100, 0, NULL, NULL),
(16, 7, 2, 100, 0, NULL, NULL),
(17, 7, 3, 100, 0, NULL, NULL),
(18, 8, 1, 69, 0, NULL, NULL),
(19, 8, 2, 23, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', '$2y$10$JYAvNs8XEqlVYQIoVEekYe/qOdpDvX40JTOuJ8htPfdV0UQVvplsm', 1, NULL, NULL),
(2, 'Master', 'master', '$2y$10$gyniMjTCbaAURODGWz8T.uMOiP1TNSb1t.yLx3hY9TDNdg5otgxSW', 2, '2022-12-13 09:12:10', '2022-12-13 09:12:10'),
(3, 'Dastavchik', 'dastavka', '$2y$10$DXVkP3GyZ9zv/uH3.O7pN.CPsHisV9D2VorOUj9IECAI1LjjqQZgy', 3, '2022-12-19 05:02:16', '2022-12-19 05:02:16'),
(4, 'O\'ktam', 'oktam', '$2y$10$thcd9kmT3DVnQWGrLx4wdesySlEXOfjDmFyH5UvMA66KXqhyFWi3G', 2, '2023-01-02 01:20:57', '2023-01-02 01:20:57'),
(5, 'nuriddin', 'nurik', '$2y$10$s9WhIhlnUfTn7mr1lJcFHOuPIpCghH0NcK9Z2cODbbkoa0UAy2mEm', 3, '2023-01-02 01:21:30', '2023-01-02 01:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `ware_houses`
--

CREATE TABLE `ware_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ware_houses`
--

INSERT INTO `ware_houses` (`id`, `object_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 73, NULL, '2023-01-03 04:24:48'),
(2, 1, 2, 3558, NULL, '2023-01-03 04:25:36'),
(3, 1, 3, 650, NULL, '2023-01-03 04:25:36'),
(4, 2, 1, 0, NULL, NULL),
(5, 2, 2, 0, NULL, NULL),
(6, 2, 3, 0, NULL, NULL),
(7, 1, 4, 0, NULL, NULL),
(8, 2, 4, 0, NULL, NULL),
(9, 3, 1, 8, NULL, '2023-01-02 02:45:10'),
(10, 3, 2, 10, NULL, '2023-01-02 01:50:33'),
(11, 3, 3, 10, NULL, '2023-01-02 01:50:33'),
(12, 3, 4, 65, NULL, '2023-01-02 01:50:33'),
(13, 1, 5, 0, NULL, NULL),
(14, 2, 5, 0, NULL, NULL),
(15, 3, 5, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_order_id_foreign` (`order_id`),
  ADD KEY `images_transfer_id_foreign` (`transfer_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objects_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_object_id_foreign` (`object_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_deliver_id_foreign` (`deliver_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`),
  ADD KEY `order_products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `rasxods`
--
ALTER TABLE `rasxods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rasxods_object_id_foreign` (`object_id`),
  ADD KEY `rasxods_user_id_foreign` (`user_id`);

--
-- Indexes for table `rasxod_products`
--
ALTER TABLE `rasxod_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rasxod_products_rasxod_id_foreign` (`rasxod_id`),
  ADD KEY `rasxod_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_transfer_id_foreign` (`transfer_id`),
  ADD KEY `tables_order_id_foreign` (`order_id`),
  ADD KEY `tables_object_id_foreign` (`object_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_from_foreign` (`from`),
  ADD KEY `transfers_to_foreign` (`to`),
  ADD KEY `transfers_deliver_id_foreign` (`deliver_id`);

--
-- Indexes for table `transfer_products`
--
ALTER TABLE `transfer_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_products_transfer_id_foreign` (`transfer_id`),
  ADD KEY `transfer_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_login_unique` (`login`);

--
-- Indexes for table `ware_houses`
--
ALTER TABLE `ware_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ware_houses_object_id_foreign` (`object_id`),
  ADD KEY `ware_houses_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rasxods`
--
ALTER TABLE `rasxods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rasxod_products`
--
ALTER TABLE `rasxod_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transfer_products`
--
ALTER TABLE `transfer_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ware_houses`
--
ALTER TABLE `ware_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `images_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `objects`
--
ALTER TABLE `objects`
  ADD CONSTRAINT `objects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_deliver_id_foreign` FOREIGN KEY (`deliver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rasxods`
--
ALTER TABLE `rasxods`
  ADD CONSTRAINT `rasxods_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rasxods_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rasxod_products`
--
ALTER TABLE `rasxod_products`
  ADD CONSTRAINT `rasxod_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rasxod_products_rasxod_id_foreign` FOREIGN KEY (`rasxod_id`) REFERENCES `rasxods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tables_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tables_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_deliver_id_foreign` FOREIGN KEY (`deliver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_from_foreign` FOREIGN KEY (`from`) REFERENCES `objects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_to_foreign` FOREIGN KEY (`to`) REFERENCES `objects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfer_products`
--
ALTER TABLE `transfer_products`
  ADD CONSTRAINT `transfer_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_products_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ware_houses`
--
ALTER TABLE `ware_houses`
  ADD CONSTRAINT `ware_houses_object_id_foreign` FOREIGN KEY (`object_id`) REFERENCES `objects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ware_houses_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
