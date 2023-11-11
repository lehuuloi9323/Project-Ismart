-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 12:18 PM
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
-- Database: `ismart`
--

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size_img` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `name`, `size_img`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-1.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 71058, 1, '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(8, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-1.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 71058, 1, '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(9, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-2.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 46326, 1, '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(10, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-4.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 45385, 1, '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(11, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-5.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 50097, 1, '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(12, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-6.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 37166, 1, '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(13, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-1-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 261928, 1, '2023-11-05 03:25:30', '2023-11-10 04:33:59'),
(22, 'tai-nghe-bluetooth-true-wireless-havit-tw945-trang-1.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 487140, 1, '2023-11-05 03:30:25', '2023-11-05 03:30:25'),
(29, 'tai-nghe-bluetooth-true-wireless-baseus-airnora-2-4.jpg', 'Tai nghe Bluetooth True Wireless Baseus AirNora 2', 51782, 1, '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(30, 'tai-nghe-bluetooth-true-wireless-baseus-airnora-2-5.jpg', 'Tai nghe Bluetooth True Wireless Baseus AirNora 2', 48593, 1, '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(31, 'tai-nghe-bluetooth-true-wireless-baseus-airnora-2-7.jpg', 'Tai nghe Bluetooth True Wireless Baseus AirNora 2', 53323, 1, '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(32, 'tai-nghe-bluetooth-true-wireless-baseus-airnora-2-8.jpg', 'Tai nghe Bluetooth True Wireless Baseus AirNora 2', 48440, 1, '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(33, 'tai-nghe-bluetooth-true-wireless-baseus-airnora-2-9.jpg', 'Tai nghe Bluetooth True Wireless Baseus AirNora 2', 36225, 1, '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(79, 'iphone-15-pro-max-black-1-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 55861, 1, '2023-11-10 05:07:38', '2023-11-10 05:07:38'),
(80, 'iphone-15-pro-max-black-2-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 22396, 1, '2023-11-10 05:07:38', '2023-11-10 05:07:38'),
(81, 'iphone-15-pro-max-black-3-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 26459, 1, '2023-11-10 05:07:38', '2023-11-10 05:07:38'),
(82, 'iphone-15-pro-max-blue-1-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 63231, 1, '2023-11-10 05:07:38', '2023-11-10 05:07:38'),
(83, 'iphone-15-pro-max-tu-nhien-1-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 64296, 1, '2023-11-10 05:07:38', '2023-11-10 05:07:38'),
(84, 'iphone-15-pro-max-white-1-3.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 68943, 1, '2023-11-10 05:07:38', '2023-11-10 05:07:38'),
(85, 'iphone-15-pro-max-black-1-1.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 55861, 1, '2023-11-11 04:11:34', '2023-11-11 04:11:34'),
(86, 'iphone-15-pro-max-black-2-1.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 22396, 1, '2023-11-11 04:11:34', '2023-11-11 04:11:34'),
(87, 'iphone-15-pro-max-black-3-1.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 26459, 1, '2023-11-11 04:11:34', '2023-11-11 04:11:34'),
(88, 'iphone-15-pro-max-blue-1-1.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 63231, 1, '2023-11-11 04:11:34', '2023-11-11 04:11:34'),
(89, 'tai-nghe-bluetooth-true-wireless-havit-tw945-trang-2.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 534921, 1, '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(90, 'tai-nghe-bluetooth-true-wireless-havit-tw945-trang-3.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 585235, 1, '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(91, 'tai-nghe-bluetooth-true-wireless-havit-tw945-trang-5.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 398888, 1, '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(92, 'tai-nghe-bluetooth-true-wireless-havit-tw945-trang-7.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 652905, 1, '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(93, 'tai-nghe-bluetooth-true-wireless-havit-tw945-trang-9.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 526057, 1, '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(94, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-2-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 334979, 1, '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(95, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-3-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 273832, 1, '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(96, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-4-1.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 356782, 1, '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(97, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-6.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 373212, 1, '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(98, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-7.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 372227, 1, '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(99, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-8.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 404445, 1, '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(100, 'tai-nghe-bluetooth-true-wireless-ava-freego-a20-9.jpg', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', 462680, 1, '2023-11-11 04:16:50', '2023-11-11 04:16:50');

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2023_09_15_090818_add_softdelete_to_users_table', 2),
(14, '2023_09_16_105713_create_permissions_table', 2),
(15, '2023_09_18_112851_create_roles_table', 3),
(16, '2023_09_18_113031_create_role_permission', 4),
(17, '2023_09_18_113152_create_user_role', 5),
(31, '2023_10_26_140931_create_product_categories_table', 6),
(32, '2023_10_26_144601_create_products_table', 6),
(33, '2023_10_30_102516_create_images_table', 6),
(34, '2023_10_31_110100_create_product_images_table', 6);

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
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Add Page', 'page.add', 'Thêm trang', '2023-09-18 04:51:54', '2023-09-18 04:51:54'),
(4, 'Add Product', 'product.add', 'Thêm sản phẩm', '2023-09-18 05:25:26', '2023-10-13 01:03:53'),
(5, 'Edit Product', 'product.edit', 'Sửa sản phẩm', '2023-09-18 05:25:57', '2023-09-18 05:25:57'),
(6, 'Delete Page', 'page.delete', 'Xóa Trang', '2023-09-18 06:39:27', '2023-10-16 00:10:49'),
(7, 'Edit Page', 'page.edit', 'Sửa trang', '2023-09-18 06:40:36', '2023-10-16 00:11:04'),
(8, 'List Page', 'page.list', 'Xem trang', '2023-09-18 06:44:22', '2023-09-18 06:44:22'),
(10, 'Delete Product', 'product.delete', 'Xóa sản phẩm', '2023-09-25 04:37:00', '2023-09-25 04:37:00'),
(11, 'List Product', 'product.list', 'Xem sản phẩm', '2023-09-25 04:37:21', '2023-09-25 04:37:21'),
(12, 'List Post', 'post.list', 'Xem bài viết', '2023-09-25 04:38:04', '2023-09-25 04:38:04'),
(13, 'Delete Post', 'post.delete', 'Xóa bài viết', '2023-09-25 04:38:21', '2023-09-25 04:38:21'),
(14, 'Edit Post', 'post.edit', 'Sửa bài viết', '2023-09-25 04:38:48', '2023-09-25 04:38:48'),
(15, 'Add Post', 'post.add', 'Thêm bài viết', '2023-10-16 00:11:37', '2023-10-16 00:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `is_feature` tinyint(4) NOT NULL,
  `product_status` enum('active','inactive','out_of_stock') NOT NULL DEFAULT 'active',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `slug`, `details`, `price`, `stock_quantity`, `is_feature`, `product_status`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', '5990000', 'tai-nghe-bluetooth-airpods-pro-gen-2-magsafe-charge-(usb-c)-apple-mtjv3', '<p>Thời gian tai nghe: D&ugrave;ng 6 giờ<br />Thời gian hộp sạc: D&ugrave;ng 30 giờ<br />Cổng sạc: Type-CSạc kh&ocirc;ng d&acirc;y QiSạc MagSafe<br />C&ocirc;ng nghệ &acirc;m thanh: Adaptive EQActive Noise CancellationAmbient SoundChip Apple H2<br />Tương th&iacute;ch: Android, iOS, Windows<br />Tiện &iacute;ch: Sạc kh&ocirc;ng d&acirc;yC&oacute; mic thoạiSạc nhanhChống ồn chủ động ANCChống nước &amp; bụi IP54Trợ l&yacute; ảo Siri<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 5990000, 10, 0, 'active', 1, 3, '2023-11-05 00:43:41', '2023-11-11 04:17:02'),
(3, 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', '230000', 'tai-nghe-bluetooth-true-wireless-ava+-freego-a20', '<p>Thời gian tai nghe: D&ugrave;ng 4 giờ - Sạc 1.2 giờ<br />Thời gian hộp sạc: D&ugrave;ng 20 giờ - Sạc 1.5 giờ<br />Cổng sạc: Type-C<br />Tương th&iacute;ch: Android, iOS, WindowsMacOS<br />Tiện &iacute;ch: Tương th&iacute;ch trợ l&yacute; ảoChống nước IPX3C&oacute; mic thoại<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 230000, 10, 0, 'active', 1, 3, '2023-11-05 03:25:30', '2023-11-10 04:41:05'),
(4, 'Tai nghe Bluetooth True Wireless HAVIT TW945', '320000', 'tai-nghe-bluetooth-true-wireless-havit-tw945', '<p><strong>Th&ocirc;ng số kỹ thuật Tai nghe Bluetooth True Wireless HAVIT TW945</strong></p>\r\n<p>Thời gian tai nghe: D&ugrave;ng 3 giờ - Sạc 1.5 giờ<br />Thời gian hộp sạc: D&ugrave;ng 18 giờ - Sạc 2 giờ<br />Cổng sạc: Type-C<br />C&ocirc;ng nghệ &acirc;m thanh: M&agrave;ng loa 13 mm<br />Tương th&iacute;ch: Android, iOS, WindowsMacOS<br />Tiện &iacute;ch: Tương th&iacute;ch trợ l&yacute; ảoC&oacute; mic thoạiSử dụng độc lập 1 b&ecirc;n tai ngheGame Mode<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 320000, 15, 0, 'active', 1, 3, '2023-11-05 03:30:25', '2023-11-09 04:59:51'),
(5, 'Tai nghe Bluetooth True Wireless Baseus AirNora 2', '1120000', 'tai-nghe-bluetooth-true-wireless-baseus-airnora-2', '<p><strong>Th&ocirc;ng số kỹ thuật Tai nghe Bluetooth True Wireless Baseus AirNora 2</strong></p>\r\n<p>Thời gian tai nghe: D&ugrave;ng 6.5 giờ - Sạc 1 giờ<br />Thời gian hộp sạc: D&ugrave;ng 30 giờ - Sạc 2 giờ<br />Cổng sạc: Type-C<br />C&ocirc;ng nghệ &acirc;m thanh: Adaptive EQSpatial AudioHybrid ANC<br />Tương th&iacute;ch: Android, iOS, WindowsMacOS<br />Ứng dụng kết nối: BASEUS<br />Tiện &iacute;ch: Tương th&iacute;ch trợ l&yacute; ảoĐệm tai đi k&egrave;mSạc nhanh<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 1120000, 0, 0, 'active', 1, 3, '2023-11-05 03:37:01', '2023-11-05 04:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `description`, `user_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(2, 'Laptop', 'laptop', 'Laptop', 1, 0, '2023-11-05 00:28:31', '2023-11-05 00:28:31'),
(3, 'Tai nghe', 'earphone', 'Tai nghe', 1, 0, '2023-11-05 00:39:12', '2023-11-05 00:39:12'),
(5, 'Điện thoại', 'phone', 'Điện thoại di động', 1, 0, '2023-11-08 22:55:53', '2023-11-08 22:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `pin` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_id`, `pin`, `created_at`, `updated_at`) VALUES
(7, 2, 7, '1', '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(8, 2, 8, '0', '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(9, 2, 9, '0', '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(10, 2, 10, '0', '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(11, 2, 11, '0', '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(12, 2, 12, '0', '2023-11-05 00:43:41', '2023-11-05 00:43:41'),
(13, 3, 13, '1', '2023-11-05 03:25:30', '2023-11-05 03:25:30'),
(22, 4, 22, '1', '2023-11-05 03:30:25', '2023-11-05 03:30:25'),
(29, 5, 29, '1', '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(30, 5, 30, '0', '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(31, 5, 31, '0', '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(32, 5, 32, '0', '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(33, 5, 33, '0', '2023-11-05 03:37:01', '2023-11-05 03:37:01'),
(55, 4, 89, '0', '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(56, 4, 90, '0', '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(57, 4, 91, '0', '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(58, 4, 92, '0', '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(59, 4, 93, '0', '2023-11-11 04:16:16', '2023-11-11 04:16:16'),
(60, 3, 94, '0', '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(61, 3, 95, '0', '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(62, 3, 96, '0', '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(63, 3, 97, '0', '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(64, 3, 98, '0', '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(65, 3, 99, '0', '2023-11-11 04:16:50', '2023-11-11 04:16:50'),
(66, 3, 100, '0', '2023-11-11 04:16:50', '2023-11-11 04:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(16, 'Administrator', 'Quản lý toàn bộ hệ thống', '2023-09-21 20:58:18', '2023-09-21 20:58:18'),
(17, 'Content Manager', 'Quản lý bài viết', '2023-09-25 04:41:35', '2023-09-29 02:01:52'),
(18, 'Product Manager', 'Quản lý về sản phẩm', '2023-09-29 02:04:12', '2023-09-29 02:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(44, 17, 1, NULL, NULL),
(45, 17, 6, NULL, NULL),
(46, 17, 7, NULL, NULL),
(47, 17, 8, NULL, NULL),
(48, 17, 4, NULL, NULL),
(49, 17, 5, NULL, NULL),
(50, 17, 10, NULL, NULL),
(51, 17, 11, NULL, NULL),
(53, 17, 12, NULL, NULL),
(54, 17, 13, NULL, NULL),
(55, 17, 14, NULL, NULL),
(56, 18, 4, NULL, NULL),
(57, 18, 5, NULL, NULL),
(58, 18, 10, NULL, NULL),
(59, 18, 11, NULL, NULL),
(61, 16, 6, NULL, NULL),
(62, 16, 7, NULL, NULL),
(63, 16, 8, NULL, NULL),
(69, 16, 12, NULL, NULL),
(70, 16, 13, NULL, NULL),
(71, 16, 14, NULL, NULL),
(72, 16, 1, NULL, NULL),
(82, 16, 5, NULL, NULL),
(83, 16, 10, NULL, NULL),
(84, 16, 11, NULL, NULL),
(85, 16, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', '2023-09-15 02:07:21', '$2y$10$vcPtijz3F6.MODCKoxvO/.pBLZOJP.km5o7pbK.S4GStKAp4VYt3W', NULL, '2023-09-15 02:07:01', '2023-10-06 19:41:46', NULL),
(2, 'Diện', '123@gmail.com', NULL, '$2y$10$vZIYcA4NwhyAVpn80xa0hOg5xEqDDlV29lZjSwbwiP6pIgVnl3hfG', NULL, '2023-09-15 02:33:55', '2023-11-05 04:25:23', '2023-11-05 04:25:23'),
(3, 'Lưu123', '123456@gmail.com', NULL, '$2y$10$7uTXwErdLGpCQzFnqCxkye4n59e8fwRfSco2dQe.BLO1.VxUvTTh2', NULL, '2023-09-15 02:34:20', '2023-09-17 18:07:57', NULL),
(4, 'Lê Thị Thu Thảo', 'thuthao@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:01:41', '2023-11-05 03:53:02', NULL),
(7, 'Lê Hữu Phát', 'phat@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:37:05', '2023-11-05 03:53:02', NULL),
(8, 'Hùng', 'hung@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:37:27', '2023-11-05 03:53:02', NULL),
(9, 'Lan', 'lan@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:37:43', '2023-11-05 03:53:02', NULL),
(10, 'Hữu Phát', 'huuphat@gmail.com', NULL, '123456789', NULL, '2023-09-16 02:32:40', '2023-11-05 03:53:02', NULL),
(11, 'LÊ VĂN A', 'levana@gmail.com', NULL, '12345678', NULL, '2023-10-06 00:41:58', '2023-11-05 03:53:02', NULL),
(12, 'Administrator1', 'ad@gmail.com', NULL, '$2y$10$//rQhMDSnCkLte.YrL4T2OIM.byl4.pwjlAAt9z/X8aNUwWB/mtBe', NULL, '2023-10-06 00:51:56', '2023-11-05 03:52:19', NULL),
(14, 'Lê Hửu Lợi 2', 'lehuuloi612@gmail.com', NULL, '$2y$10$apxXy32ZsFMzGsCOyT8iA.Ipwd/Y4WGq7Nq42j1Mcap8/RhZbJMhm', NULL, '2023-10-06 20:00:15', '2023-11-05 03:52:19', NULL),
(15, 'Vinh', 'vinh@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:18:12', '2023-11-05 03:53:02', NULL),
(16, 'Thiện', 'thien@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:26:33', '2023-10-15 23:31:29', '2023-10-15 23:31:29'),
(17, 'Vinh', 'vinh1@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:57:40', '2023-10-16 00:08:08', '2023-10-16 00:08:08'),
(18, 'Thiện', 'thien1@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:59:29', '2023-11-05 03:51:02', '2023-11-05 03:51:02'),
(19, 'Hào', 'hao@gmail.com', NULL, '12345678', NULL, '2023-10-16 00:00:26', '2023-11-05 03:51:32', '2023-11-05 03:51:32'),
(20, 'Hào1', 'hao1@gmail.com', NULL, '12345678', NULL, '2023-10-16 00:00:58', '2023-10-16 00:08:14', '2023-10-16 00:08:14'),
(21, 'Hào12', 'hao12@gmail.com', NULL, '12345678', NULL, '2023-10-16 00:07:08', '2023-10-16 00:09:06', '2023-10-16 00:09:06'),
(22, 'Hào12', 'hao123@gmail.com', NULL, '12345678', NULL, '2023-10-16 00:07:30', '2023-10-16 00:09:11', '2023-10-16 00:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 12, 16, NULL, NULL),
(2, 12, 17, NULL, NULL),
(4, 2, 17, NULL, NULL),
(6, 1, 16, NULL, NULL),
(7, 15, 17, NULL, NULL),
(8, 4, 18, NULL, NULL),
(9, 18, 18, NULL, NULL),
(10, 21, 17, NULL, NULL),
(11, 21, 18, NULL, NULL),
(12, 22, 17, NULL, NULL),
(13, 22, 18, NULL, NULL),
(14, 4, 17, NULL, NULL),
(15, 3, 17, NULL, NULL),
(16, 19, 17, NULL, NULL),
(17, 19, 18, NULL, NULL);

--
-- Indexes for dumped tables
--

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
  ADD KEY `images_user_id_foreign` (`user_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`),
  ADD KEY `product_images_image_id_foreign` (`image_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permission_role_id_foreign` (`role_id`),
  ADD KEY `role_permission_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
