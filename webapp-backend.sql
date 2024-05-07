-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2024 at 08:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp-backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel_items`
--

CREATE TABLE `carousel_items` (
  `carousel_item_id` bigint UNSIGNED NOT NULL,
  `carousel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousel_items`
--

INSERT INTO `carousel_items` (`carousel_item_id`, `carousel_name`, `image_path`, `description`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'asd', 'carousel/0sXialAdoW7x7MRF0dp16zrasMWlBhHeJXj5269q.jpg', 'asd', '2023-12-20 23:48:57', '2023-12-20 23:48:57', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `carsalesview`
-- (See below for the actual view)
--
CREATE TABLE `carsalesview` (
`car_ID` bigint unsigned
,`make` varchar(255)
,`model_name` varchar(255)
,`price` decimal(8,2)
,`color` varchar(255)
,`customer_name` varchar(511)
);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `order_ID` bigint UNSIGNED NOT NULL,
  `car_ID` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_ID` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `letter_id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_26_101737_create_letters_table', 2),
(6, '2023_11_19_105445_add_image_column_in_users_table', 3),
(7, '2023_11_22_174507_create_letters_table', 3),
(8, '2023_12_11_151122_modify_users_table', 3),
(9, '2023_12_12_043425_create_table_carousel_items', 3),
(10, '2023_12_16_015215_create_units_table', 4),
(11, '2023_12_16_015334_create_orders_table', 5),
(12, '2023_12_16_015603_create_invoice_table', 6),
(13, '2023_12_27_051551_modify_orders_table', 7),
(14, '2023_12_27_051838_modify_imvoice_table', 8),
(15, '2014_10_12_100000_create_password_reset_tokens_table', 9),
(16, '2024_01_09_043946_create_personal_access_tokens_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` bigint UNSIGNED NOT NULL,
  `customer_ID` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `status` enum('complete','incomplete') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `car_ID` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `customer_ID`, `date`, `status`, `created_at`, `updated_at`, `car_ID`) VALUES
(2, 1, '2000-01-01', 'incomplete', '2023-12-27 18:17:05', '2023-12-27 18:17:05', 3),
(3, 1, '2023-12-28', 'incomplete', '2023-12-27 23:32:27', '2023-12-27 23:32:27', 2),
(4, 1, '2023-12-28', 'incomplete', '2023-12-27 23:32:44', '2023-12-27 23:32:44', 5),
(5, 1, '2023-12-28', 'incomplete', '2023-12-27 23:32:56', '2023-12-27 23:32:56', 8),
(6, 1, '2023-12-28', 'incomplete', '2023-12-27 23:43:19', '2023-12-27 23:43:19', 2),
(7, 1, '2023-12-28', 'incomplete', '2023-12-27 23:45:00', '2023-12-27 23:45:00', 2),
(8, 24, '2023-12-28', 'incomplete', '2023-12-27 23:46:31', '2023-12-27 23:46:31', 2),
(9, 24, '2023-12-28', 'incomplete', '2023-12-27 23:51:39', '2023-12-27 23:51:39', 2),
(10, 24, '2023-12-28', 'incomplete', '2023-12-27 23:51:45', '2023-12-27 23:51:45', 3),
(11, 24, '2023-12-28', 'incomplete', '2023-12-27 23:52:04', '2023-12-27 23:52:04', 4),
(12, 24, '2023-12-28', 'incomplete', '2023-12-28 00:01:45', '2023-12-28 00:01:45', 4),
(13, 1, '2000-01-01', 'incomplete', '2023-12-28 01:25:56', '2023-12-28 01:25:56', 3),
(14, 1, '2023-12-28', 'incomplete', '2023-12-28 03:23:27', '2023-12-28 03:23:27', 3),
(15, 1, '2023-12-28', 'incomplete', '2023-12-28 08:33:44', '2023-12-28 08:33:44', 2),
(16, 1, '2024-01-09', 'incomplete', '2024-01-08 20:46:28', '2024-01-08 20:46:28', 2),
(17, 25, '2024-01-11', 'incomplete', '2024-01-11 01:47:48', '2024-01-11 01:47:48', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'moore.marcella@example.com', 'b6b347fe3f175825206c6c87739cbe323bc2a927d84fa66d1421db1179a6fcc6', '[\"*\"]', NULL, NULL, '2024-01-08 20:40:12', '2024-01-08 20:40:12'),
(2, 'App\\Models\\User', 1, 'moore.marcella@example.com', '10294fe7a5205f433ee04c6f53b579199779ffdd283474686772163d95f347de', '[\"*\"]', '2024-01-08 20:46:28', NULL, '2024-01-08 20:46:19', '2024-01-08 20:46:28'),
(3, 'App\\Models\\User', 1, 'moore.marcella@example.com', '2c46ce5c7aa2fc4965c02df9baf381a26be2b44d0dec74e8a9f2a79de07d5ba2', '[\"*\"]', NULL, NULL, '2024-01-08 23:07:48', '2024-01-08 23:07:48'),
(4, 'App\\Models\\User', 1, 'moore.marcella@example.com', '3566764146eac5b4d8e0d7c4d136812419a6751c53bc5c384d585bb6aaba1715', '[\"*\"]', NULL, NULL, '2024-01-08 23:41:23', '2024-01-08 23:41:23'),
(5, 'App\\Models\\User', 1, 'moore.marcella@example.com', 'cfecbbef78cb3219d4175aa9991248e283b421908cd8fef76f7ca332d0a3b5ec', '[\"*\"]', '2024-01-10 08:19:48', NULL, '2024-01-08 23:58:18', '2024-01-10 08:19:48'),
(6, 'App\\Models\\User', 2, 'bernadette90@example.org', '7f78b3a1c291edf30965fd4099983eba127eb4d0d466c9624a9361d75a658f2d', '[\"*\"]', NULL, NULL, '2024-01-09 21:18:32', '2024-01-09 21:18:32'),
(7, 'App\\Models\\User', 2, 'bernadette90@example.org', '4747342d309145a435dd2e62c33df1c055cf282f8ee05285c31a65df19605014', '[\"*\"]', NULL, NULL, '2024-01-09 21:20:12', '2024-01-09 21:20:12'),
(8, 'App\\Models\\User', 1, 'moore.marcella@example.com', '5041e97b1b7b59c32031856d44c871d8a26648d93959a0234c63201b93dabb9c', '[\"*\"]', NULL, NULL, '2024-01-09 21:43:27', '2024-01-09 21:43:27'),
(9, 'App\\Models\\User', 1, 'moore.marcella@example.com', '7f4dfe8fadcc4a0835f3c0016c7d7221ff62cf8a32b900ed206e93c25cd99e57', '[\"*\"]', NULL, NULL, '2024-01-09 21:58:47', '2024-01-09 21:58:47'),
(10, 'App\\Models\\User', 25, 'garayot@gmail.com', 'bf14b671b106be67030b1c4ccd5cd5be0e41bc9763e43b78964ccef3a4881810', '[\"*\"]', NULL, NULL, '2024-01-09 21:59:25', '2024-01-09 21:59:25'),
(11, 'App\\Models\\User', 25, 'garayot@gmail.com', 'b8f512c8fb4e66162dc2421c25aa1615814d3d62f20c8cca2353aa41c3c783e2', '[\"*\"]', '2024-01-09 22:08:10', NULL, '2024-01-09 22:04:43', '2024-01-09 22:08:10'),
(12, 'App\\Models\\User', 1, 'moore.marcella@example.com', 'd3cdacd0bfc18170ed38cfb24f4b97fac63914b7152fa3e12662dc86a61cdb9c', '[\"*\"]', NULL, NULL, '2024-01-09 23:29:29', '2024-01-09 23:29:29'),
(13, 'App\\Models\\User', 25, 'garayot@gmail.com', '5fd8363420754f024f1e35a345ff7226f7c203c70a94e459edbbc6dc4688ebea', '[\"*\"]', NULL, NULL, '2024-01-09 23:29:55', '2024-01-09 23:29:55'),
(14, 'App\\Models\\User', 25, 'garayot@gmail.com', 'b8cce6cb69b05cc377e123787220e5a0b7119c7913f714bb0deb3b4a41dc2c8c', '[\"*\"]', '2024-01-10 07:08:00', NULL, '2024-01-10 01:37:46', '2024-01-10 07:08:00'),
(15, 'App\\Models\\User', 25, 'garayot@gmail.com', '93c63e51df44c4ba9037ec8f8ebaf4bd368d15cb391e03c7d0eb40e24ce1069c', '[\"*\"]', '2024-01-11 00:39:26', NULL, '2024-01-10 08:23:43', '2024-01-11 00:39:26'),
(16, 'App\\Models\\User', 25, 'garayot@gmail.com', '69ae9cade11ebe57db916d8dabc997d3c0c33e183a3683e46541fe816b8aa8c9', '[\"*\"]', NULL, NULL, '2024-01-11 00:39:51', '2024-01-11 00:39:51'),
(17, 'App\\Models\\User', 3, 'klynch@example.net', '3ee96c2627b905dc2c8a4a11ae331dbc7151e29a6247df81257ae58ceeecb9ec', '[\"*\"]', '2024-01-11 00:45:23', NULL, '2024-01-11 00:40:24', '2024-01-11 00:45:23'),
(18, 'App\\Models\\User', 3, 'klynch@example.net', '691e29fcce9306d290faa055b987ba4b4976d25ed4795271cbde6b658c685c9a', '[\"*\"]', '2024-01-11 00:48:13', NULL, '2024-01-11 00:47:22', '2024-01-11 00:48:13'),
(19, 'App\\Models\\User', 3, 'klynch@example.net', '830daea4203f4f93d6d47a2dcf8b1dce4f0f5a9872aec43dabcb103feaadff6b', '[\"*\"]', '2024-01-11 00:49:07', NULL, '2024-01-11 00:49:00', '2024-01-11 00:49:07'),
(20, 'App\\Models\\User', 3, 'klynch@example.net', 'f72838c17584427f12ea0c1bf31e8e0d222a0abe51a70ed99b03d31be64ce07c', '[\"*\"]', '2024-01-11 01:20:41', NULL, '2024-01-11 01:20:35', '2024-01-11 01:20:41'),
(21, 'App\\Models\\User', 3, 'klynch@example.net', '51f1e873392d109f7ebe15fe56d18ec133b56fc39406b38d799d2ce13ca8ad33', '[\"*\"]', '2024-01-11 01:47:20', NULL, '2024-01-11 01:47:07', '2024-01-11 01:47:20'),
(22, 'App\\Models\\User', 25, 'garayot@gmail.com', 'b9ca427899369e27c9244c01387f462c5eeccb379b4e6fddaf23a6a68fbe08fb', '[\"*\"]', '2024-01-11 01:47:48', NULL, '2024-01-11 01:47:37', '2024-01-11 01:47:48'),
(23, 'App\\Models\\User', 3, 'klynch@example.net', '795d0753eb03f8deca3ba613cde38882d9de5b930f804bf89499675b84277d8d', '[\"*\"]', '2024-01-12 20:39:55', NULL, '2024-01-11 01:48:06', '2024-01-12 20:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `car_ID` bigint UNSIGNED NOT NULL,
  `make` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_year` year NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`car_ID`, `make`, `model_name`, `model_year`, `type`, `color`, `price`, `description`, `image1`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(2, 'Toyota', 'Hilux', 2022, 'Pickup-Truck', 'Red', '190999.99', '2022 Toyota Hilux Conquest Pickup Truck with heavy duty package.', 'C:\\Users\\garay\\AppData\\Local\\Temp\\phpDD3D.tmp', NULL, NULL, '2023-12-25 10:08:03', '2024-01-11 14:24:10'),
(3, 'Nissan', 'Navara', 2023, 'Pickup-Truck', 'Red', '290999.99', '2022 Toyota Hilux Conquest Pickup Truck with heavy duty package.', 'C:\\Users\\garay\\AppData\\Local\\Temp\\phpD3A5.tmp', NULL, NULL, '2023-12-26 04:15:56', '2024-01-11 14:25:12'),
(4, 'Ford', 'Everest', 2023, 'SUV', 'Red', '390999.99', '2022 Toyota Hilux Conquest Pickup Truck with heavy duty package.', 'C:\\Users\\garay\\AppData\\Local\\Temp\\php89F6.tmp', NULL, NULL, '2023-12-26 04:17:25', '2024-01-11 14:25:59'),
(5, 'Honda', 'B-RV', 2023, 'Mini SUV', 'Red', '399999.99', '2022 Toyota Hilux Conquest Pickup Truck with heavy duty package.', 'C:\\Users\\garay\\AppData\\Local\\Temp\\phpD812.tmp', NULL, NULL, '2023-12-26 04:18:30', '2024-01-11 14:27:24'),
(6, 'Ford', 'Everest', 2022, 'SUV', 'Orange', '100999.99', '2022 Ford Everest SUV with heavy duty package.', 'unitImages/bGipKiTfAEAXRRGdY7DiIxNDxaS8vjFkHODjguPp.png', NULL, NULL, '2023-12-26 04:19:13', '2023-12-26 04:19:13'),
(7, 'Hyundai', 'Custin', 2023, 'Minivan', 'Aurora Blue', '100999.99', '2023 Hyundai Custin Minivan with heavy duty package.', 'unitImages/hYCptGwtImlZ1xhzCEsEWALdHZwiq4i4nVEd0jNd.png', NULL, NULL, '2023-12-26 04:21:31', '2023-12-26 04:21:31'),
(8, 'Mercedes-Benz', 'CLA-class', 2023, 'Coupe', 'Pearl White', '100999.99', '2023 Mercedes-Benz CLA-Class with heavy duty package.', 'unitImages/XtpYiZgjbhBJwHj6e1biJkQdJBYc2KXwoXzhy4vW.png', NULL, NULL, '2023-12-26 04:23:30', '2023-12-26 04:23:30'),
(9, 'Volkswagen', 'Lamando', 2019, 'Sedan', 'Masino Red', '100999.99', '2019 Volkswagen Sedan with heavy duty package.', 'unitImages/TbkO3Pbb5XenqCDdAIjiX0BukOUkCXLT8y9ZfcVG.png', NULL, NULL, '2023-12-26 04:26:06', '2023-12-26 04:26:06'),
(10, 'Toyoe', 'Tundra', 2019, 'Pickup-truck', 'Green', '200999.99', '2019 Volkswagen Sedan with heavy duty package.', 'unitImages/lL0O7OonvKY2VIOopG9PhUpx6iC1Gt57Ucmw19ni.png', NULL, NULL, '2024-01-11 02:24:35', '2024-01-11 02:24:35'),
(11, 'Toyoe', 'Tundra', 2019, 'Pickup-truck', 'Green', '400999.99', '2019 Volkswagen Sedan with heavy duty package.', 'unitImages/9uoprWNpUjDCitivh62UJI4rijtZlFamvzsn8ZnU.png', NULL, NULL, '2024-01-11 02:25:02', '2024-01-11 02:25:02'),
(12, 'Ford', 'Tundra', 2019, 'SUV', 'Green', '400999.99', '2019 Volkswagen Sedan with heavy duty package.', 'unitImages/BZoiIAUBHzbHS4DUpDrfyXbCwbqgptdlMQbfBkuO.png', NULL, NULL, '2024-01-11 02:27:35', '2024-01-11 02:27:35'),
(13, 'Ford', 'Tundra', 2019, 'SUV', 'Green', '500999.99', '2019 Volkswagen Sedan with heavy duty package.', 'unitImages/AAByPKK0SFZjv9DuT0Zcco9BIBNAwbhCERkxVBqO.png', NULL, NULL, '2024-01-11 02:27:42', '2024-01-11 02:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` enum('male','female','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `national_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`, `first_name`, `role`, `phone`, `address`, `gender`, `date_of_birth`, `national_ID`) VALUES
(1, 'Germaine Walker PhD', 'moore.marcella@example.com', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A8o9z2mx1o', '2023-10-19 02:19:15', '2023-12-21 19:17:06', NULL, '', 'user', '09395926130', 'Piapi Streets test', 'male', '2000-01-01', '1234567880'),
(2, 'Tyrese Stiedemann', 'bernadette90@example.org', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZrIoNT9gcE', '2023-10-19 02:19:15', '2023-10-19 02:19:15', NULL, '', 'user', NULL, NULL, NULL, NULL, NULL),
(3, 'Ms. Destiney Konopelski Sr.', 'klynch@example.net', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bPveiZb6z9', '2023-10-19 02:19:15', '2023-10-19 02:19:15', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(4, 'Mrs. Annabel Miller DVM', 'johns.enos@example.org', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xA1j7gqJPo', '2023-10-19 02:19:15', '2023-10-19 02:19:15', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(5, 'Mr. Hailey Weimann I', 'kerluke.alexandrea@example.com', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZQImD2iitI', '2023-10-19 02:19:15', '2023-10-19 02:19:15', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(6, 'Mrs. Mertie Cartwright DVM', 'rosenbaum.florian@example.org', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0icUoKiLMq', '2023-10-19 02:19:15', '2023-10-19 02:19:15', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(7, 'Dr. Carlos Mann', 'adams.noel@example.com', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NaRk9Uw88W', '2023-10-19 02:19:15', '2023-10-19 02:19:15', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(8, 'Milford Rath', 'nia.morissette@example.org', '2023-10-19 02:19:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5tNQxSCBui', '2023-10-19 02:19:15', '2023-10-19 02:19:15', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(11, 'pedro', 'pedro@example.com', NULL, 'password', NULL, '2023-10-25 05:03:06', '2023-10-25 05:03:06', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(12, 'garayas', 'garay@gmail.com', NULL, '$2y$10$NiC.p3.xNNppXS0f0cm/VemWxUJNne590d3A0juvxJ6lG8byZ0iFO', NULL, '2023-10-25 05:04:49', '2023-10-25 12:21:54', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(13, 'ryan', 'ryan@example.com', NULL, '$2y$10$uktqJDv5U6PipJzrIe.BL.1b/Z1HPSPaWuTobXL02T.VYpG2HAB4i', NULL, '2023-10-25 05:27:41', '2023-10-25 05:27:41', NULL, '', 'admin', NULL, NULL, NULL, NULL, NULL),
(14, 'Carmen', 'pedrozo@gmail.com', NULL, '$2y$10$6447gFZfR4AyqVd0R41IvetC9PfAwRzrbQKDRwm/WljXkODtSrtiK', NULL, '2023-12-24 00:18:41', '2023-12-24 00:18:41', NULL, 'agikasd', 'admin', NULL, NULL, NULL, NULL, NULL),
(15, 'Kent', 'zuwywe@mailinator.com', NULL, '$2y$10$2QTBaAGFsVSHa5S.JDJRUuYKli8Unkx5VnZQetfB5s5uiLV2wmYYm', NULL, '2023-12-24 00:19:45', '2023-12-24 00:19:45', NULL, 'Brenda', 'admin', NULL, NULL, NULL, NULL, NULL),
(16, 'Gross', 'duge@mailinator.com', NULL, '$2y$10$Yi.iXSOR8JEQyULr3cQGyOK6ddasmjB4bL67LWslfIC5Dep2I.X.C', NULL, '2023-12-24 00:21:29', '2023-12-24 00:21:29', NULL, 'Hilel', 'admin', NULL, NULL, NULL, NULL, NULL),
(17, 'Bradley', 'jeqi@mailinator.com', NULL, '$2y$10$.1BabdiYuB56rm7p56Drz.3Mcoyehw4K6B6ji7KJLMmVpTE29pB96', NULL, '2023-12-24 00:22:07', '2023-12-24 00:22:07', NULL, 'Hayfa', 'admin', NULL, NULL, NULL, NULL, NULL),
(18, 'Hunt', 'kyjymugax@mailinator.com', NULL, '$2y$10$APA4kpofeAqJRcvglvZJaOTroIXON8TuyIKvtTloHTDbRl6MXXrlW', NULL, '2023-12-24 01:48:09', '2023-12-24 01:48:09', NULL, 'Carol', 'admin', NULL, NULL, NULL, NULL, NULL),
(19, 'Garrison', 'huwum@mailinator.com', NULL, '$2y$10$OIm7rB/FhxUZ1nt9lLRKR.lDNUw7XaslTFPtI.aLyavwjtku4Q5CS', NULL, '2023-12-24 01:49:14', '2023-12-24 01:49:14', NULL, 'Stacey', 'admin', NULL, NULL, NULL, NULL, NULL),
(20, 'Kemp', 'coroluga@mailinator.com', NULL, '$2y$10$Adn9ljMvjM2FKTWB86oXxukRh.HT2dKLQ6ZOOxo.n5eCbWRUJ6Awq', NULL, '2023-12-24 01:50:29', '2023-12-24 01:50:29', NULL, 'Aphrodite', 'admin', NULL, NULL, NULL, NULL, NULL),
(21, 'Leach', 'zajiq@mailinator.com', NULL, '$2y$10$Lwxi5A4udO5WjqWXwtK38uF93Ra65pKpJsMaXi9YfPKd9WwVdfyuO', NULL, '2023-12-24 16:52:37', '2023-12-24 16:52:37', NULL, 'Elvis', 'admin', NULL, NULL, NULL, NULL, NULL),
(22, 'Strickland', 'cynecy@mailinator.com', NULL, '$2y$10$WvFeZRjexSbVj8Pwt6jBf.ytaOrnUzYeHS9TNzJk34vigQYNoSHyK', NULL, '2023-12-24 18:56:13', '2023-12-24 18:56:13', NULL, 'Minerva', 'admin', NULL, NULL, NULL, NULL, NULL),
(23, 'Beach', 'mozysisezy@mailinator.com', NULL, '$2y$10$dwlN/llYNcwx9bg1ylZGhOsCUxF7aamQrOToYVH2vswzjlPUQoyIG', NULL, '2023-12-24 20:35:51', '2023-12-24 20:35:51', NULL, 'Fatima', 'admin', NULL, NULL, NULL, NULL, NULL),
(24, 'Hahn', 'wifydyzely@mailinator.com', NULL, '$2y$10$mWMN78HRKYtECN2tMIn/h.ZqugpMfxhk8yZ88ehLcdMZuig58qe6u', NULL, '2023-12-26 08:58:46', '2023-12-26 08:58:46', NULL, 'Lunea', 'admin', NULL, NULL, NULL, NULL, NULL),
(25, 'Carmen', 'garayot@gmail.com', NULL, '$2y$12$/ZtnbgnpDwHTaOxr3Fi/K.c1mgDMqrUEFvjwLSZNLJAcMZe6vPA4a', NULL, '2024-01-09 21:54:52', '2024-01-09 21:54:52', NULL, 'Pedro', 'user', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `carsalesview`
--
DROP TABLE IF EXISTS `carsalesview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carsalesview`  AS SELECT `u`.`car_ID` AS `car_ID`, `u`.`make` AS `make`, `u`.`model_name` AS `model_name`, `u`.`price` AS `price`, `u`.`color` AS `color`, concat_ws(' ',`users`.`first_name`,`users`.`last_name`) AS `customer_name` FROM (((`units` `u` join `invoices` `i` on((`u`.`car_ID` = `i`.`car_ID`))) join `orders` `o` on((`i`.`order_ID` = `o`.`order_ID`))) join `users` on((`o`.`customer_ID` = `users`.`id`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel_items`
--
ALTER TABLE `carousel_items`
  ADD PRIMARY KEY (`carousel_item_id`),
  ADD KEY `carousel_items_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_ID`),
  ADD KEY `invoices_car_id_foreign` (`car_ID`),
  ADD KEY `invoices_customer_id_foreign` (`customer_ID`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`letter_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `orders_customer_id_foreign` (`customer_ID`),
  ADD KEY `orders_car_id_foreign` (`car_ID`);

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
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`car_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_national_id_unique` (`national_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel_items`
--
ALTER TABLE `carousel_items`
  MODIFY `carousel_item_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `letter_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `car_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carousel_items`
--
ALTER TABLE `carousel_items`
  ADD CONSTRAINT `carousel_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_car_id_foreign` FOREIGN KEY (`car_ID`) REFERENCES `units` (`car_ID`),
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_ID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_ID`) REFERENCES `orders` (`order_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_car_id_foreign` FOREIGN KEY (`car_ID`) REFERENCES `units` (`car_ID`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_ID`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
