-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 04:29 AM
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
(1, 'iphone-15-pro-max-black-1-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 55861, 1, '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(2, 'iphone-15-pro-max-black-2-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 22396, 1, '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(3, 'iphone-15-pro-max-black-3-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 26459, 1, '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(4, 'iphone-15-pro-max-blue-1-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 63231, 1, '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(5, 'iphone-15-pro-max-tu-nhien-1-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 64296, 1, '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(6, 'iphone-15-pro-max-white-1-3.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 68943, 1, '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(7, 'xiaomi-13t-pro-xanh-1.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 276550, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(8, 'vi-vn-xiaomi-13t-pro-slider--(1).jpg', 'Điện thoại Xiaomi 13T Pro 5G', 126336, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(9, 'xiaomi-13t-pro-xanh-2.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 121821, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(10, 'xiaomi-13t-pro-xanh-3.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 117080, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(11, 'xiaomi-13t-pro-xanh-4.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 539568, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(12, 'xiaomi-13t-pro-xanh-5.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 503035, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(13, 'xiaomi-13t-pro-xanh-6.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 305620, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(14, 'xiaomi-13t-pro-xanh-9.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 534518, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(15, 'xiaomi-13t-pro-xanh-10.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 413631, 1, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(16, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-1.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 71058, 1, '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(17, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-2.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 46326, 1, '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(18, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-3.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 54136, 1, '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(19, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-4.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 45385, 1, '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(20, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-5.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 50097, 1, '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(21, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-6.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 37166, 1, '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(22, 'ipad-air-5-m1-xam-1.jpg', 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', 175551, 1, '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(23, 'ipad-air-5-m1-xam-2.jpg', 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', 87567, 1, '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(24, 'ipad-air-5-m1-xam-3.jpg', 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', 222290, 1, '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(25, 'ipad-air-5-m1-xam-4.jpg', 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', 161816, 1, '2023-11-11 20:28:37', '2023-11-11 20:28:37');

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
(39, '2023_10_26_140931_create_product_categories_table', 6),
(40, '2023_10_26_144601_create_products_table', 6),
(41, '2023_10_30_102516_create_images_table', 6),
(42, '2023_10_31_110100_create_product_images_table', 6);

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
(1, 'Điện thoại iPhone 15 Pro Max 256GB', '33900000', 'Điện-thoai-iphone-15-pro-max-256gb', '<p><strong>Cấu h&igrave;nh Điện thoại iPhone 15 Pro Max 256GB</strong></p>\r\n<p>M&agrave;n h&igrave;nh: OLED6.7\"Super Retina XDR<br />Hệ điều h&agrave;nh: iOS 17<br />Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP<br />Camera trước: 12 MP<br />Chip: Apple A17 Pro 6 nh&acirc;n<br />RAM: 8 GB<br />Dung lượng lưu trữ: 256 GB<br />SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G<br />Pin, Sạc: 4422 mAh20 W</p>', 33900000, 15, 0, 'active', 1, 11, '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(2, 'Điện thoại Xiaomi 13T Pro 5G', '14490000', 'Điện-thoai-xiaomi-13t-pro-5g', '<p><strong>Cấu h&igrave;nh Điện thoại Xiaomi 13T Pro 5G</strong></p>\r\n<p>M&agrave;n h&igrave;nh: AMOLED6.67\"1.5K<br />Hệ điều h&agrave;nh: Android 13<br />Camera sau: Ch&iacute;nh 50 MP &amp; Phụ 50 MP, 12 MP<br />Camera trước: 20 MP<br />Chip: MediaTek Dimensity 9200+ 5G 8 nh&acirc;n<br />RAM: 12 GB<br />Dung lượng lưu trữ: 256 GB<br />SIM: 2 Nano SIMHỗ trợ 5G<br />Pin, Sạc: 5000 mAh120 W</p>', 14490000, 15, 0, 'active', 1, 7, '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(3, 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', '5990000', 'tai-nghe-bluetooth-airpods-pro-gen-2-magsafe-charge-(usb-c)-apple-mtjv3', '<p><strong>Th&ocirc;ng số kỹ thuật Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3</strong></p>\r\n<p>Thời gian tai nghe: D&ugrave;ng 6 giờ<br />Thời gian hộp sạc: D&ugrave;ng 30 giờ<br />Cổng sạc: Type-CSạc kh&ocirc;ng d&acirc;y QiSạc MagSafe<br />C&ocirc;ng nghệ &acirc;m thanh: Adaptive EQActive Noise CancellationAmbient SoundChip Apple H2<br />Tương th&iacute;ch: Android, iOS, Windows<br />Tiện &iacute;ch: Sạc kh&ocirc;ng d&acirc;yC&oacute; mic thoạiSạc nhanhChống ồn chủ động ANCChống nước &amp; bụi IP54Trợ l&yacute; ảo Siri<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 5990000, 15, 0, 'active', 1, 10, '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(4, 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', '14090000', 'may-tinh-bang-ipad-air-5-m1-wifi-64gb', '<p><strong>Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng iPad Air 5 M1 WiFi 64GB</strong></p>\r\n<p>M&agrave;n h&igrave;nh: 10.9\"Retina IPS LCD<br />Hệ điều h&agrave;nh: iPadOS 15<br />Chip: Apple M1<br />RAM: 8 GB<br />Dung lượng lưu trữ: 64 GB<br />Kết nối: Nghe gọi qua FaceTime<br />Camera sau: 12 MP<br />Camera trước: 12 MP<br />Pin, Sạc: 28.6 Wh (~ 7587 mAh)20 W</p>', 14090000, 15, 0, 'active', 1, 9, '2023-11-11 20:28:37', '2023-11-11 20:28:37');

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
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `description`, `user_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(4, 'Điện thoại', 'phone', 'Điện thoại di động', 1, NULL, '2023-11-11 09:32:20', '2023-11-11 09:32:20'),
(7, 'Xiaomi Redmi', 'xiaomi', 'Xiaomi Redmi', 1, 4, '2023-11-11 20:05:44', '2023-11-11 20:05:44'),
(8, 'Apple', 'apple', 'Apple', 1, 4, '2023-11-11 20:06:15', '2023-11-11 20:06:15'),
(9, 'Ipad', 'ipad', 'Ipad', 1, 8, '2023-11-11 20:06:42', '2023-11-11 20:06:42'),
(10, 'Tai nghe', 'earphone', 'Tai nghe', 1, NULL, '2023-11-11 20:13:11', '2023-11-11 20:13:11'),
(11, 'Iphone', 'iphone', 'Iphone', 1, 8, '2023-11-11 20:16:55', '2023-11-11 20:16:55');

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
(1, 1, 1, '1', '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(2, 1, 2, '0', '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(3, 1, 3, '0', '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(4, 1, 4, '0', '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(5, 1, 5, '0', '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(6, 1, 6, '0', '2023-11-11 20:18:17', '2023-11-11 20:18:17'),
(7, 2, 7, '1', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(8, 2, 8, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(9, 2, 9, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(10, 2, 10, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(11, 2, 11, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(12, 2, 12, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(13, 2, 13, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(14, 2, 14, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(15, 2, 15, '0', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(16, 3, 16, '1', '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(17, 3, 17, '0', '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(18, 3, 18, '0', '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(19, 3, 19, '0', '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(20, 3, 20, '0', '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(21, 3, 21, '0', '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
(22, 4, 22, '1', '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(23, 4, 23, '0', '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(24, 4, 24, '0', '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(25, 4, 25, '0', '2023-11-11 20:28:37', '2023-11-11 20:28:37');

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
  ADD KEY `product_categories_user_id_foreign` (`user_id`),
  ADD KEY `product_categories_parent_id_foreign` (`parent_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  ADD CONSTRAINT `product_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
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
