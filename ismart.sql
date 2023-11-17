-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 12:48 PM
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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'iphone-15-pro-max-black-1-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 55861, 1, '2023-11-11 20:18:17', '2023-11-14 10:03:20'),
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
(25, 'ipad-air-5-m1-xam-4.jpg', 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', 161816, 1, '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(33, 'du-lich-honson.jpg', 'ĐẢO HÒN SƠN – HƯỚNG DẪN DU LỊCH HÒN SƠN KIÊN GIANG', 1425690, 1, '2023-11-15 02:39:51', '2023-11-15 02:39:51'),
(34, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-1.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 197439, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(35, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-1.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 197439, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(36, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-2.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 293452, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(37, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-3.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 286387, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(38, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-4.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 287376, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(39, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-5.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 112902, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(40, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-6.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 84844, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(41, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-7.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 494291, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(42, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-8.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 227473, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(43, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-9.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 173536, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(44, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-10.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 228635, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(45, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-11.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 478224, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(46, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-12.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 356250, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(47, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-13.jpg', 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', 464945, 1, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(48, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-10.jpg', 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', 228635, 1, '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(49, 'vi-vn-acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-slider-2.jpg', 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', 73424, 1, '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(50, 'vi-vn-acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-slider-3.jpg', 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', 157393, 1, '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(51, 'vi-vn-acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-slider-4.jpg', 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', 156250, 1, '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(52, 'vi-vn-acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-slider-5.jpg', 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', 130118, 1, '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(53, 'vi-vn-acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-slider-6.jpg', 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', 72196, 1, '2023-11-15 04:18:08', '2023-11-15 04:18:08');

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
(42, '2023_10_31_110100_create_product_images_table', 6),
(51, '2023_11_12_033424_create_post_categories_table', 7),
(52, '2023_11_12_033600_create_posts_table', 7),
(53, '2023_11_15_113059_add_price_old_to_products_table', 8),
(54, '2023_11_17_111351_create_customers_table', 9);

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
(4, 'Add Product', 'product.add', 'Thêm sản phẩm', '2023-09-18 05:25:26', '2023-10-13 01:03:53'),
(5, 'Edit Product', 'product.edit', 'Sửa sản phẩm', '2023-09-18 05:25:57', '2023-09-18 05:25:57'),
(10, 'Delete Product', 'product.delete', 'Xóa sản phẩm', '2023-09-25 04:37:00', '2023-09-25 04:37:00'),
(11, 'List Product', 'product.list', 'Xem sản phẩm', '2023-09-25 04:37:21', '2023-09-25 04:37:21'),
(12, 'List Post', 'post.list', 'Xem bài viết', '2023-09-25 04:38:04', '2023-09-25 04:38:04'),
(13, 'Delete Post', 'post.delete', 'Xóa bài viết', '2023-09-25 04:38:21', '2023-09-25 04:38:21'),
(14, 'Edit Post', 'post.edit', 'Sửa bài viết', '2023-09-25 04:38:48', '2023-09-25 04:38:48'),
(15, 'Add Post', 'post.add', 'Thêm bài viết', '2023-10-16 00:11:37', '2023-10-16 00:11:37'),
(17, 'Permission Add', 'permission.add', 'Thêm quyền', '2023-11-14 00:25:31', '2023-11-14 00:26:44'),
(18, 'Permission Edit', 'permission.edit', 'Sửa quyền', '2023-11-14 00:26:22', '2023-11-14 00:27:17'),
(19, 'Delete Permission', 'permission.delete', 'Xóa quyền', '2023-11-14 00:28:39', '2023-11-14 00:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `content` text NOT NULL,
  `status` enum('draft','published','pending','archived') NOT NULL DEFAULT 'draft',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `content`, `status`, `user_id`, `category_id`, `image_id`, `created_at`, `updated_at`) VALUES
(6, 'ĐẢO HÒN SƠN – HƯỚNG DẪN DU LỊCH HÒN SƠN KIÊN GIANG', 'ĐẢo-hÒn-sƠn-–-hƯỚng-dẪn-du-lỊch-hÒn-sƠn-kiÊn-giang', '<p>Với những b&atilde;i biển c&aacute;t trắng xinh đẹp, b&atilde;i đ&aacute; h&ugrave;ng vĩ v&agrave; thơ mộng, những rặng dừa phủ b&oacute;ng xanh m&aacute;t.</p>', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/du-lich-honson.jpg\" alt=\"Đảo H&ograve;n Sơn\" width=\"1115\" height=\"600\" /></p>\r\n<p>Đến với H&ograve;n Sơn, du kh&aacute;ch được h&ograve;a m&igrave;nh v&agrave;o thi&ecirc;n nhi&ecirc;n hoang sơ với biển trời, rừng n&uacute;i, trải l&ograve;ng c&ugrave;ng những người xứ biển mến kh&aacute;ch v&agrave; thưởng thức những m&oacute;n ăn d&acirc;n d&atilde;, đậm đ&agrave; chất biển. Nếu bạn đang c&oacute; &yacute; định tới thăm h&ograve;n đảo xinh đẹp n&agrave;y, th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua b&agrave;i viết về những th&ocirc;ng du lịch H&ograve;n Sơn, Ki&ecirc;n Giang dưới đ&acirc;y.</p>\r\n<h2 style=\"color: red;\">Đ&ocirc;i n&eacute;t về H&ograve;n Sơn</h2>\r\n<p>H&ograve;n Sơn c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; H&ograve;n Sơn R&aacute;i, thuộc x&atilde; Lại Sơn, huyện Ki&ecirc;n Hải, tỉnh Ki&ecirc;n Giang. Nằm tr&ecirc;n vịnh H&agrave; Ti&ecirc;n, giữa quần đảo Nam Du v&agrave; đảo H&ograve;n Tre, c&aacute;ch th&agrave;nh phố Rạch Gi&aacute; 65 km về ph&iacute;a T&acirc;y.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-1.jpg\" alt=\"Trung t&acirc;m của đảo H&ograve;n Sơn\" width=\"1110\" /></p>\r\n<p>Sở dĩ h&ograve;n đảo c&oacute; t&ecirc;n l&agrave; R&aacute;i C&aacute; l&agrave; v&igrave; trước đ&acirc;y tr&ecirc;n đảo c&oacute; một lo&agrave;i c&acirc;y t&ecirc;n l&agrave; c&acirc;y dầu r&aacute;i mọc rất nhiều, nhựa c&acirc;y d&ugrave;ng để qu&eacute;t l&ecirc;n vỏ thuyền để chống nước biển ăn m&ograve;n. Nhưng cũng c&oacute; &yacute; kiến kh&aacute;c cho rằng l&uacute;c trước quanh đảo c&oacute; rất nhiều r&aacute;i c&aacute; sinh sống. Năm 1777, khi Nguyễn &Aacute;nh chạy trốn qu&acirc;n T&acirc;y Sơn đến đ&acirc;y, c&oacute; một con r&aacute;i c&aacute; khổng lồ d&acirc;ng hải sản l&ecirc;n cho &ocirc;ng, n&ecirc;n &ocirc;ng đặt t&ecirc;n cho h&ograve;n đảo l&agrave; H&ograve;n Sơn R&aacute;i.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson.jpg\" alt=\"\" width=\"1110\" /></p>\r\n<p>H&ograve;n Sơn c&oacute; diện t&iacute;ch tự nhi&ecirc;n 11,5 km2 c&oacute; 7 đỉnh n&uacute;i nhấp nh&ocirc; v&agrave; được viền quanh bởi 6 b&atilde;i biển đẹp. Đất l&agrave;nh chim đậu, từ một h&ograve;n đảo vắng hoang sơ đầu thế kỷ 18, đến nay, H&ograve;n Sơn đ&atilde; c&oacute; hơn 2.400 hộ gia đ&igrave;nh với 8.200 nh&acirc;n khẩu sinh sống. Người d&acirc;n chủ yếu sống bằng nghề nu&ocirc;i trồng, đ&aacute;nh bắt hải sản, đ&oacute;ng t&agrave;u, chế biến t&ocirc;m, c&aacute;, mực kh&ocirc; v&agrave; l&agrave;m nước mắm.</p>\r\n<h2 style=\"color: red;\">Thời điểm du lịch H&ograve;n Sơn l&yacute; tưởng</h2>\r\n<p>Thời tiết ở H&ograve;n Sơn lu&ocirc;n dễ chịu quanh năm ch&iacute;nh v&igrave; vậy bạn c&oacute; thể đi du lịch H&ograve;n Sơn v&agrave;o bất cứ thời điểm n&agrave;o trong năm. Tuy nhi&ecirc;n thời điểm l&yacute; tưởng để bạn đi du lịch đảo H&ograve;n Sơn l&agrave; v&agrave;o khoảng th&aacute;ng 5 đến th&aacute;ng 12 bởi m&ugrave;a n&agrave;y biển &ecirc;m &iacute;t s&oacute;ng v&agrave; c&oacute; nhiều hải sản: mực, t&ocirc;m, ghẹ&hellip; tươi ngon.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/daohonson.jpg\" alt=\"Thời điểm l&yacute; tưởng để bạn đi du lịch đảo H&ograve;n Sơn l&agrave; v&agrave;o khoảng th&aacute;ng 5 đến th&aacute;ng 12\" width=\"1110\" /></p>\r\n<p>Tr&ecirc;n đảo c&oacute; Lễ hội Nghinh được tổ chức v&agrave;o 15/10 &acirc;m lịch hằng năm. Bạn c&oacute; thể đến đảo v&agrave;o dịp n&agrave;y để h&ograve;a m&igrave;nh v&agrave;o kh&ocirc;ng kh&iacute; s&ocirc;i nổi của lễ hội. Ng&agrave;y hội tất cả người d&acirc;n ở H&ograve;n sẽ hội tụ lại đặc biệt l&agrave; những người sinh sống bằng nghề đ&aacute;nh bắt hải sản tr&ecirc;n biển</p>\r\n<p>Trước khi l&ecirc;n đường c&aacute;c bạn n&ecirc;n cập nhật t&igrave;nh h&igrave;nh thời tiết ở v&ugrave;ng biển C&agrave; Mau &ndash; Ki&ecirc;n Giang v&agrave; tr&aacute;nh c&aacute;c thời điểm biển động v&agrave; mưa b&atilde;o để đảm bảo an to&agrave;n.</p>\r\n<h2 style=\"color: red;\">Đến đảo H&ograve;n Sơn bằng c&aacute;ch n&agrave;o.</h2>\r\n<h3>Di chuyển tới Rạch Gi&aacute;</h3>\r\n<p>Muốn tới H&ograve;n Sơn trước ti&ecirc;n bạn phải đến TP Rạch Gi&aacute;, tỉnh Ki&ecirc;n Giang. Từ H&agrave; Nội, bạn c&oacute; thể mua v&eacute; m&aacute;y bay tới Cần Thơ, sau đ&oacute; bắt xe kh&aacute;ch từ Cần Thơ đi Ki&ecirc;n Giang. Một lựa chọn kh&aacute;c l&agrave; bay từ H&agrave; Nội đến TP. HCM tiếp tục bắt xe kh&aacute;ch đến Ki&ecirc;n Giang.</p>\r\n<p>Từ TP. Hồ Ch&iacute; Minh bạn c&oacute; thể đi &ocirc; t&ocirc; c&aacute; nh&acirc;n, xe kh&aacute;ch đến Rạch Gi&aacute; với thời gian khoảng từ 5-6 giờ. V&igrave; c&aacute;c chuyến t&agrave;u đi Rạch Gi&aacute; &ndash; H&ograve;n Sơn xuất ph&aacute;t v&agrave;o s&aacute;ng, ch&iacute;nh v&igrave; vậy bạn n&ecirc;n đi trước một ng&agrave;y nghỉ qua đ&ecirc;m tại TP Rạch Gi&aacute; để s&aacute;ng tới bến t&agrave;u cho kịp giờ. C&ograve;n đi xe kh&aacute;ch th&igrave; đi từ đ&ecirc;m h&ocirc;m trước đến bến xe Rạch Gi&aacute; v&agrave;o khoảng 6h s&aacute;ng ng&agrave;y h&ocirc;m sau. Một số h&atilde;ng xe như Phương Trang, Việt Đức,&hellip; đều c&oacute; tuyến xe Hồ Ch&iacute; Minh &ndash; Rạch Gi&aacute; (Ki&ecirc;n Giang). Đến Rạch Gi&aacute;, xe trung chuyển đưa bạn ra bến t&agrave;u mất 30 ph&uacute;t.</p>\r\n<h3>Di chuyển tới đảo H&ograve;n Sơn</h3>\r\n<p><br />Từ Rạch Gi&aacute;, c&oacute; 2 phương tiện ch&iacute;nh để đi tới đảo H&ograve;n Sơn đ&oacute; l&agrave;: T&agrave;u cao tốc v&agrave; t&agrave;u kh&aacute;ch, bạn c&oacute; thể dựa v&agrave;o thời gian du lịch v&agrave; dựa v&agrave;o sở th&iacute;ch của m&igrave;nh m&agrave; lựa chọn phương tiện di chuyển sao cho ph&ugrave; hợp nhất nh&eacute;.</p>\r\n<p>T&agrave;u cao tốc: Thời gian di chuyển l&agrave; 1 tiếng 30 ph&uacute;t. Với phương tiện n&agrave;y th&igrave; bạn sẽ tiết kiệm được tối đa thời gian di chuyển. T&agrave;u cao tốc thường neo đậu ở cảng số 2 v&agrave; số 3 ở bến Rạch Gi&aacute;.</p>\r\n<p>Một số c&aacute;c h&atilde;ng t&agrave;u v&agrave; thời gian khởi h&agrave;nh cụ thể:</p>\r\n<ul>\r\n<li>T&agrave;u Ngọc Th&agrave;nh: Bến Rạch Gi&aacute; &ndash; H&ograve;n Sơn: khởi h&agrave;nh l&uacute;c 8h05. H&ograve;n Sơn &ndash; Bến t&agrave;u Rạch Gi&aacute;: khởi h&agrave;nh l&uacute;c 13h30</li>\r\n<li>T&agrave;u Superdong: &nbsp;Bến Rạch Gi&aacute; &ndash; H&ograve;n Sơn: khởi h&agrave;nh l&uacute;c 7h20. &nbsp;H&ograve;n Sơn &ndash; Bến t&agrave;u Rạch Gi&aacute;: khởi h&agrave;nh l&uacute;c 11h15</li>\r\n<li>T&agrave;u Ph&uacute; Quốc Express: Bến Rạch Gi&aacute; &ndash; H&ograve;n Sơn: khởi h&agrave;nh l&uacute;c 6h30. &nbsp;H&ograve;n Sơn &ndash; Bến t&agrave;u Rạch Gi&aacute;: khởi h&agrave;nh l&uacute;c 14h10</li>\r\n</ul>\r\n<p>Thời gian khởi h&agrave;nh c&oacute; thể thay đổi v&agrave;o cuối tuần hay những ng&agrave;y đ&ocirc;ng kh&aacute;ch. C&aacute;c bạn nhớ gọi điện cho c&aacute;c h&atilde;ng t&agrave;u để đặt v&eacute; trước v&agrave; nhớ hỏi kĩ l&uacute;c li&ecirc;n hệ đặt v&eacute; để tr&aacute;nh t&igrave;nh trạng bị lỡ chuyến t&agrave;u.</p>\r\n<h3>Di chuyển tr&ecirc;n đảo</h3>\r\n<p>Muốn đi dạo tr&ecirc;n đảo th&igrave; bạn n&ecirc;n thu&ecirc; xe m&aacute;y với gi&aacute; dao động từ 200,000 &ndash; 250,000đ. Bạn c&oacute; thể thu&ecirc; trực tiếp tại c&aacute;c nh&agrave; nghỉ, song song với l&uacute;c nhận ph&ograve;ng. Nếu đi theo nh&oacute;m đ&ocirc;ng người th&igrave; bạn một sự lựa chọn kh&aacute;c đ&oacute; l&agrave; thu&ecirc; xe b&aacute;n tải hoặc xe kh&aacute;ch 12 chỗ. Ngo&agrave;i ra bạn cũng c&oacute; thể thu&ecirc; một chiếc thuyền của ngư d&acirc;n để đi v&ograve;ng quanh đảo hay đi c&acirc;u c&aacute;, c&acirc;u mực rất th&uacute; vị.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/hon-son-1.jpg\" alt=\"\" width=\"1110\" /></p>\r\n<h2 style=\"color: red;\">Đến đảo H&ograve;n Sơn chơi g&igrave;?</h2>\r\n<p>Đảo H&ograve;n Sơn c&oacute; rất nhiều địa điểm hấp dẫn, th&uacute; vị cho du kh&aacute;ch tha hồ kh&aacute;m ph&aacute; ph&aacute; như: Những d&atilde;y n&uacute;i cao h&ugrave;ng vĩ, những b&atilde;i biển trong xanh tuyệt đẹp, những ng&ocirc;i ch&ugrave;a được đi v&agrave;o di t&iacute;ch lịch sử&hellip; Bạn n&ecirc;n đi H&ograve;n Sơn khoảng 2 ng&agrave;y 1 đ&ecirc;m để thăm th&uacute; những n&eacute;t đặc trưng tr&ecirc;n đảo, ngắm cảnh ho&agrave;ng h&ocirc;n v&agrave; đ&oacute;n b&igrave;nh minh tr&ecirc;n đảo. Khoảnh khắc đ&oacute; ngồi tr&ecirc;n một mỏm đ&aacute; lớn, hướng mắt nh&igrave;n về ph&iacute;a biển bạn sẽ cảm thấy m&igrave;nh thật nhỏ b&eacute; giữa biển cả rộng lớn.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/hon-son-kien-giang.jpg\" alt=\"\" width=\"1110\" /></p>\r\n<h3>Tắm biển</h3>\r\n<p>Với đường bờ biển d&agrave;i hơn 1km uốn cong theo đường lưỡi liềm, đảo H&ograve;n Sơn c&oacute; nhiều b&atilde;i biển như: b&atilde;i Giếng, b&atilde;i B&agrave;ng, b&atilde;i Bấc, b&atilde;i Đ&aacute; Ch&agrave;i&hellip;. Trong đ&oacute;, b&atilde;i B&agrave;ng được xem l&agrave; b&atilde;i biển đẹp.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson1.jpg\" alt=\"B&atilde;i B&agrave;ng\" width=\"1110\" /></p>\r\n<p>Với biển xanh c&aacute;t trắng v&agrave; nắng v&agrave;ng quanh năm, s&oacute;ng nh&egrave; nhẹ vỗ bờ, nước biển sạch c&ugrave;ng nhiều b&atilde;i đ&aacute; lớn nhỏ th&iacute;ch hợp để tắm biển v&agrave; chụp h&igrave;nh. Đến đ&acirc;y, bạn sẽ được thả m&igrave;nh v&agrave;o l&agrave;n nước trong xanh, ngắm những rặng dừa dọc bờ biển đong đưa theo gi&oacute;, h&iacute;t thở kh&ocirc;ng kh&iacute; biển trong l&agrave;nh, m&aacute;t mẻ.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/baibanghonson.jpg\" alt=\"Biển xanh c&aacute;t trắng v&agrave; nắng v&agrave;ng\" width=\"1110\" /></p>\r\n<p>B&atilde;i Thi&ecirc;n Tuế nằm ở ph&iacute;a T&acirc;y c&oacute; những khối đ&aacute; tạo h&igrave;nh kỳ th&uacute; của thi&ecirc;n nhi&ecirc;n khiến ta kh&ocirc;ng khỏi ngỡ ng&agrave;ng với vẻ đẹp hoang sơ v&agrave; độc đ&aacute;o. Ở đ&acirc;y t&agrave;u thuyền cũng neo đậu tấp nập v&agrave; những d&atilde;y nh&agrave; mọc san s&aacute;t nhau tại b&atilde;i biển. B&atilde;i Đ&aacute; Ch&agrave;i v&agrave; B&atilde;i Giếng nằm s&aacute;t b&atilde;i Thi&ecirc;n Tuế, dựa lưng v&agrave;o d&atilde;y n&uacute;i c&oacute; rừng c&acirc;y nguy&ecirc;n sinh. Ở đ&acirc;y c&oacute; những m&ocirc; đ&aacute; phẳng nguy&ecirc;n khối chạy d&agrave;i ra m&eacute;p nước. Kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng nơi đ&acirc;y rất ph&ugrave; hợp để tổ chức vui chơi, cắm trại.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-3.jpg\" alt=\"Những khối đ&aacute; tạo h&igrave;nh kỳ th&uacute;\" width=\"1110\" /></p>\r\n<p><strong>B&atilde;i Xếp</strong>&nbsp;với c&acirc;y dừa ng&atilde; đầy th&uacute; vị được d&acirc;n bản địa gọi l&agrave; &ldquo;c&acirc;y dừa ng&agrave;n năm&rdquo;.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-2.jpg\" alt=\"B&atilde;i xếp\" width=\"1110\" /></p>\r\n<p>Đ&acirc;y l&agrave; một b&atilde;i biển c&ograve;n hoang sơ, tr&ecirc;n b&atilde;i c&aacute;t những h&ograve;n đ&aacute; to nằm tự nhi&ecirc;n m&agrave; như xếp đặt. Đặc biệt, ở B&atilde;i Xếp c&oacute; c&acirc;y dừa ng&atilde; nằm s&aacute;t mặt đ&aacute;, nhưng l&aacute; vẫn xanh tươi, r&igrave; r&agrave;o với gi&oacute; biển.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-4.jpg\" alt=\"C&acirc;y dừa nằm\" width=\"1110\" /></p>\r\n<p>&nbsp;</p>', 'published', 1, 3, 33, '2023-11-15 02:39:51', '2023-11-17 02:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
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
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `description`, `user_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', 'tin-tuc', 'Tin tức', 1, NULL, '2023-11-12 03:09:16', '2023-11-12 03:09:16'),
(3, 'Blog', 'blog', 'Blog', 1, NULL, '2023-11-12 03:12:03', '2023-11-12 03:12:03'),
(11, 'Liên Hệ', 'lien-hệ', 'Liên hệ với chúng tôi', 1, NULL, '2023-11-17 02:30:46', '2023-11-17 02:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `old_price` int(11) NOT NULL,
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

INSERT INTO `products` (`id`, `name`, `description`, `slug`, `details`, `price`, `old_price`, `stock_quantity`, `is_feature`, `product_status`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại iPhone 15 Pro Max 256GB', '<h3>L&yacute; do chọn mua iPhone 15 Pro Max tại Thế Giới Di Động</h3>\r\n<p>iPhone 15 Pro Max l&agrave; một chiếc điện thoại th&ocirc;ng minh cao cấp được mong đợi nhất năm 2023. Với nhiều t&iacute;nh năng mới v&agrave; cải tiến, iPhone 15 Pro Max chắc chắn sẽ l&agrave; một lựa chọn tuyệt vời cho những người d&ugrave;ng đang t&igrave;m kiếm một chiếc điện thoại c&oacute; hiệu năng mạnh mẽ, camera chất lượng v&agrave; thiết kế sang trọng.</p>\r\n<p><strong>&bull; Sản phẩm ch&iacute;nh h&atilde;ng, đảm bảo chất lượng:&nbsp;</strong>Thế Giới Di Động l&agrave; nh&agrave; b&aacute;n lẻ điện thoại di động lớn nhất Việt Nam, cam kết cung cấp sản phẩm ch&iacute;nh h&atilde;ng, đảm bảo chất lượng. Bạn c&oacute; thể y&ecirc;n t&acirc;m về xuất xứ sản phẩm v&agrave; c&oacute; thể tận hưởng trải nghiệm sử dụng tốt nhất.</p>\r\n<p><strong>&bull; Ưu đ&atilde;i v&agrave; khuyến m&atilde;i hấp dẫn:</strong>&nbsp;Thế Giới Di Động thường xuy&ecirc;n c&oacute; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i, giảm gi&aacute; v&agrave; tặng qu&agrave; k&egrave;m, gi&uacute;p bạn tiết kiệm được một khoản tiền khi mua iPhone 15 Pro Max.</p>\r\n<p><strong>&bull; Hệ thống cửa h&agrave;ng rộng khắp:</strong>&nbsp;Thế Giới Di Động c&oacute; mạng lưới cửa h&agrave;ng rộng khắp tr&ecirc;n to&agrave;n quốc, gi&uacute;p bạn dễ d&agrave;ng t&igrave;m được một cửa h&agrave;ng gần nh&agrave; để mua sắm. Bạn cũng c&oacute; thể trực tiếp kiểm tra sản phẩm v&agrave; nhận sự hỗ trợ từ nh&acirc;n vi&ecirc;n tại cửa h&agrave;ng.</p>\r\n<p><strong>&bull; Dịch vụ hậu m&atilde;i chuy&ecirc;n nghiệp:&nbsp;</strong>Thế Giới Di Động cung cấp dịch vụ hậu m&atilde;i chuy&ecirc;n nghiệp, bao gồm bảo h&agrave;nh, sửa chữa v&agrave; hỗ trợ kỹ thuật. Điều n&agrave;y gi&uacute;p bạn y&ecirc;n t&acirc;m về việc sử dụng trong thời gian d&agrave;i.</p>', 'Điện-thoai-iphone-15-pro-max-256gb', '<p><strong>Cấu h&igrave;nh Điện thoại iPhone 15 Pro Max 256GB</strong></p>\r\n<p>M&agrave;n h&igrave;nh: OLED6.7\"Super Retina XDR<br />Hệ điều h&agrave;nh: iOS 17<br />Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP<br />Camera trước: 12 MP<br />Chip: Apple A17 Pro 6 nh&acirc;n<br />RAM: 8 GB<br />Dung lượng lưu trữ: 256 GB<br />SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G<br />Pin, Sạc: 4422 mAh20 W</p>', 33900000, 35000000, 15, 1, 'active', 1, 11, '2023-11-11 20:18:17', '2023-11-15 04:46:31'),
(2, 'Điện thoại Xiaomi 13T Pro 5G', '<h2>Th&ocirc;ng tin sản phẩm<br />Xiaomi 13T Pro 5G l&agrave; mẫu m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung đ&aacute;ng ch&uacute; &yacute; tại thị trường Việt Nam. Điện thoại ấn tượng nhờ được trang bị chip Dimensity 9200+, camera 50 MP c&oacute; k&egrave;m sự hợp t&aacute;c với Leica c&ugrave;ng kiểu thiết kế tinh tế đầy sang trọng.<br />Ngoại h&igrave;nh đẹp mắt c&ugrave;ng chất liệu cao cấp <br />Mặt lưng của Xiaomi 13T Pro được thiết kế l&agrave;m phẳng với một sự bo cong nhẹ ở v&ugrave;ng r&igrave;a, tạo n&ecirc;n sự ho&agrave;n hảo trong việc cầm nắm. Với chất liệu k&iacute;nh cao cấp, m&aacute;y trở n&ecirc;n mỏng nhẹ v&agrave; mềm mại, gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng sử dụng trong thời gian d&agrave;i m&agrave; kh&ocirc;ng cảm thấy cấn tay hay kh&oacute; chịu.</h2>\r\n<p>Mặt lưng b&oacute;ng lo&aacute;ng của Xiaomi 13T Pro mang đến sự sang trọng v&agrave; l&ocirc;i cuốn. Được gia c&ocirc;ng một c&aacute;ch tỉ mỉ khiến mặt lưng của chiếc điện thoại Xiaomi trở n&ecirc;n rất cuốn h&uacute;t v&agrave; đẳng cấp. Kh&ocirc;ng chỉ l&agrave; một c&ocirc;ng cụ c&ocirc;ng nghệ, Xiaomi 13T Pro c&ograve;n l&agrave; một biểu tượng thời trang thể hiện c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch của bạn.</p>\r\n<p>Thiết kế điện thoại - Xiaomi 13T Pro 5G</p>\r\n<p>Một trong những yếu tố quan trọng nhất của thiết kế Xiaomi 13T Pro ch&iacute;nh l&agrave; khung b&ecirc;n được chế t&aacute;c b&oacute;ng lo&aacute;ng một c&aacute;ch tỉ mỉ. Được l&agrave;m từ chất liệu kim loại cao cấp, khung n&agrave;y kh&ocirc;ng chỉ bền vững v&agrave; chống chịu được những điều kiện sử dụng khắc nghiệt, m&agrave; c&ograve;n mang đến một cảm gi&aacute;c sang trọng v&agrave; đẳng cấp về mặt thẩm mỹ khi cầm nắm.</p>\r\n<p>Một điểm đặc biệt đ&aacute;ng ch&uacute; &yacute; tr&ecirc;n Xiaomi 13T Pro l&agrave; cụm camera được thiết kế với sự hợp t&aacute;c độc đ&aacute;o c&ugrave;ng h&atilde;ng Leica danh tiếng. D&ograve;ng chữ \"Leica\" tỏa s&aacute;ng tr&ecirc;n mặt sau của điện thoại, l&agrave; một dấu ấn về sự hiện đại v&agrave; uy t&iacute;n trong lĩnh vực chụp ảnh. Nhờ v&agrave;o đ&oacute; m&agrave; bất kỳ ai nh&igrave;n v&agrave;o cũng c&oacute; thể dễ d&agrave;ng nhận thấy rằng đ&acirc;y l&agrave; một chiếc điện thoại quay phim, chụp ảnh ấn tượng.</p>\r\n<p>M&agrave;n h&igrave;nh sắc n&eacute;t c&ugrave;ng tần số qu&eacute;t cao<br />Xiaomi 13T Pro sử dụng c&ocirc;ng nghệ m&agrave;n h&igrave;nh AMOLED, một trong những c&ocirc;ng nghệ m&agrave;n h&igrave;nh h&agrave;ng đầu tr&ecirc;n thị trường. Điều n&agrave;y đồng nghĩa với việc bạn sẽ được trải nghiệm m&agrave;u sắc ch&acirc;n thực v&agrave; độ s&acirc;u tối đa trong từng h&igrave;nh ảnh. Đen sẽ thực sự l&agrave; m&agrave;u đen s&acirc;u v&agrave; mọi chi tiết sẽ được hiển thị r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t.</p>\r\n<p>Với độ ph&acirc;n giải 1.5K (1220 x 2712 Pixels), m&agrave;n h&igrave;nh của Xiaomi 13T Pro mang đến h&igrave;nh ảnh cực kỳ ch&acirc;n thực v&agrave; sống động. Mọi chi tiết từ văn bản đến h&igrave;nh ảnh đều sắc n&eacute;t v&agrave; r&otilde; r&agrave;ng, tạo n&ecirc;n trải nghiệm xem h&igrave;nh ảnh v&agrave; video đỉnh cao. Điều n&agrave;y cho thấy Xiaomi 13T Pro thực sự ph&ugrave; hợp d&ugrave;ng cho việc xem phim hay chơi game giải tr&iacute; d&agrave;i l&acirc;u.</p>\r\n<p>Xiaomi 13T Pro g&acirc;y ấn tượng ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n với m&agrave;n h&igrave;nh lớn v&agrave; tinh tế với k&iacute;ch thước 6.67 inch. Với k&iacute;ch thước rộng r&atilde;i như vậy, bạn sẽ được tận hưởng mọi h&igrave;nh ảnh, video v&agrave; nội dung đa phương tiện với trải nghiệm tối ưu. Kh&ocirc;ng gian m&agrave;n h&igrave;nh lớn cũng tạo điều kiện tốt cho sự s&aacute;ng tạo v&agrave; l&agrave;m việc hiệu quả hơn tr&ecirc;n điện thoại di động.</p>\r\n<p>M&agrave;n h&igrave;nh điện thoại - Xiaomi 13T Pro 5G</p>\r\n<p>Một trong những điểm đặc biệt v&agrave; ấn tượng của Xiaomi 13T Pro ch&iacute;nh l&agrave; tần số qu&eacute;t 144 Hz của m&agrave;n h&igrave;nh. Đ&acirc;y được xem l&agrave; mức tần số cao hiếm hoi m&agrave; &iacute;t c&oacute; chiếc điện thoại kinh doanh ch&iacute;nh h&atilde;ng tại Việt Nam c&oacute; trang bị, nhờ v&agrave;o đ&oacute; m&agrave; m&aacute;y trở n&ecirc;n nổi bật hơn đối với những ai y&ecirc;u cầu một m&agrave;n h&igrave;nh mượt m&agrave; d&ugrave;ng để chơi game.</p>\r\n<p>Tần số qu&eacute;t cao như vậy mang lại một loạt lợi &iacute;ch đ&aacute;ng kinh ngạc, tần số qu&eacute;t 144 Hz cải thiện khả năng phản ứng v&agrave; đ&aacute;p ứng của m&agrave;n h&igrave;nh khi bạn vuốt, chạm hoặc thao t&aacute;c tr&ecirc;n n&oacute;. Điều n&agrave;y l&agrave;m tăng t&iacute;nh tương t&aacute;c v&agrave; hiệu suất trong c&aacute;c ứng dụng v&agrave; tr&ograve; chơi y&ecirc;u cầu sự nhanh nhạy.</p>\r\n<p>Hiệu năng dẫn đầu trong ph&acirc;n kh&uacute;c<br />Với MediaTek Dimensity 9200+, Xiaomi 13T Pro thể hiện sự mạnh mẽ trong hiệu năng v&agrave; khả năng xử l&yacute; đỉnh cao. Bộ vi xử l&yacute; mạnh mẽ n&agrave;y kh&ocirc;ng chỉ gi&uacute;p bạn trải nghiệm mượt m&agrave; khi chạy c&aacute;c ứng dụng v&agrave; tr&ograve; chơi y&ecirc;u cầu đồ hoạ cao m&agrave; c&ograve;n tối ưu h&oacute;a ti&ecirc;u thụ năng lượng, gi&uacute;p pin của chiếc điện thoại duy tr&igrave; thời gian sử dụng l&acirc;u d&agrave;i.</p>\r\n<p>MediaTek Dimensity 9200+ c&oacute; cấu h&igrave;nh gồm 8 nh&acirc;n CPU, trong đ&oacute; c&oacute; một nh&acirc;n Cortex-X3 xung nhịp l&ecirc;n tới 3.35 GHz, ba nh&acirc;n Cortex-A715 xung nhịp 3 GHz v&agrave; bốn nh&acirc;n Cortex-A510 xung nhịp 2 GHz. Cho thấy cấu h&igrave;nh cực khủng v&agrave; ho&agrave;n to&agrave;n c&oacute; thể cạnh tranh ngang h&agrave;ng với những mẫu chip cao cấp đến từ Qualcomm như Snapdragon 8+ Gen 1.</p>\r\n<p>Cấu h&igrave;nh điện thoại - Xiaomi 13T Pro 5G</p>\r\n<p>L&agrave; một chiếc điện thoại RAM 12 GB, Xiaomi 13T Pro đảm bảo rằng bạn sẽ kh&ocirc;ng bao giờ phải lo lắng về t&igrave;nh trạng đa nhiệm. Bạn c&oacute; thể chạy nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng gặp t&igrave;nh trạng giật lag. Điều n&agrave;y đặc biệt hữu &iacute;ch cho những người d&ugrave;ng cần xử l&yacute; c&aacute;c t&aacute;c vụ nặng hoặc sử dụng ứng dụng đa nhiệm.</p>\r\n<p>Xiaomi 13T Pro được trang bị hệ điều h&agrave;nh Android 13, phi&ecirc;n bản mới nhất của hệ điều h&agrave;nh di động phổ biến của Google. Điều n&agrave;y đồng nghĩa với việc bạn sẽ được trải nghiệm c&aacute;c t&iacute;nh năng v&agrave; cải tiến mới nhất từ Google, bao gồm cải thiện về hiệu năng, bảo mật v&agrave; khả năng t&ugrave;y chỉnh tiện &iacute;ch.</p>\r\n<p>Hợp t&aacute;c với Leica trong việc thiết lập camera<br />Xiaomi 13T Pro được trang bị ba camera mạnh mẽ, bao gồm một camera ch&iacute;nh 50 MP, camera tele 50 MP v&agrave; camera g&oacute;c si&ecirc;u rộng 12 MP. Điều n&agrave;y mang đến sự đa dạng trong phong c&aacute;ch chụp khi c&oacute; nhiều chế độ kh&aacute;c nhau, gi&uacute;p bạn thỏa sức s&aacute;ng tạo v&agrave; tạo n&ecirc;n bộ sưu tập ảnh một c&aacute;ch nghệ thuật.</p>\r\n<p>Camera ch&iacute;nh 50 MP của Xiaomi 13T Pro gi&uacute;p bạn bắt lấy m&agrave;u sắc ch&acirc;n thực v&agrave; độ sắc n&eacute;t xuất sắc. Khả năng chụp ảnh trong điều kiện &aacute;nh s&aacute;ng yếu v&agrave; ứng dụng c&ocirc;ng nghệ xử l&yacute; ảnh h&agrave;ng đầu gi&uacute;p bạn c&oacute; những bức ảnh đẹp ngay cả trong điều kiện kh&oacute; khăn.</p>\r\n<p>Camera điện thoại - Xiaomi 13T Pro 5G</p>\r\n<p>Camera g&oacute;c si&ecirc;u rộng 12 MP của Xiaomi 13T Pro cho ph&eacute;p bạn mở rộng g&oacute;c nh&igrave;n v&agrave; chụp những bức ảnh rộng lớn hoặc bắt lấy cảnh quan phức tạp. Điều n&agrave;y tạo ra những t&aacute;c phẩm nghệ thuật độc đ&aacute;o v&agrave; th&uacute; vị. Hơn hết, với độ ph&acirc;n giải si&ecirc;u cao sẽ gi&uacute;p mọi bức ảnh bạn chụp từ chế độ n&agrave;y đều đạt độ chi tiết ấn tượng.</p>\r\n<p>Một trong những điểm đặc biệt nổi bật của chiếc điện thoại chụp ảnh, quay phim n&agrave;y l&agrave; sự hợp t&aacute;c độc đ&aacute;o v&agrave; đầy ấn tượng với h&atilde;ng nhiếp ảnh danh tiếng Leica. Đ&acirc;y l&agrave; một sự kết hợp đ&aacute;ng ch&uacute; &yacute; giữa c&ocirc;ng nghệ điện thoại di động v&agrave; chuy&ecirc;n m&ocirc;n nhiếp ảnh cao cấp.</p>\r\n<p>Nhờ sự hợp t&aacute;c n&agrave;y, Xiaomi 13T Pro kh&ocirc;ng chỉ l&agrave; một chiếc điện thoại th&ocirc;ng minh mạnh mẽ, m&agrave; c&ograve;n l&agrave; một c&ocirc;ng cụ nhiếp ảnh v&agrave; quay phim đ&aacute;ng tin cậy, gi&uacute;p bạn tự tin ghi lại những khoảnh khắc đẹp v&agrave; sắc n&eacute;t như một nhiếp ảnh gia chuy&ecirc;n nghiệp.</p>\r\n<p>Sử dụng pin lớn v&agrave; hỗ trợ sạc si&ecirc;u nhanh 120 W<br />Xiaomi 13T Pro được trang bị một vi&ecirc;n pin si&ecirc;u bền với dung lượng l&ecirc;n đến 5000 mAh. Điều n&agrave;y đồng nghĩa với việc bạn c&oacute; thể sử dụng điện thoại m&agrave; kh&ocirc;ng phải lo lắng về việc sạc lại pin trong suốt cả ng&agrave;y. D&ugrave; bạn l&agrave; người d&ugrave;ng thường xuy&ecirc;n xem video hoặc chơi game hay đơn giản l&agrave; thực hiện c&aacute;c t&aacute;c vụ hằng ng&agrave;y, pin dung lượng lớn n&agrave;y sẽ giữ cho bạn ở trạng th&aacute;i hoạt động trong thời gian d&agrave;i.</p>\r\n<p>Pin v&agrave; sạc điện thoại - Xiaomi 13T Pro 5G</p>\r\n<p>Để đ&aacute;p ứng nhu cầu sạc nhanh v&agrave; tiết kiệm thời gian của người d&ugrave;ng, Xiaomi 13T Pro trang bị c&ocirc;ng nghệ sạc si&ecirc;u nhanh với c&ocirc;ng suất l&ecirc;n đến 120 W. Điều n&agrave;y c&oacute; nghĩa l&agrave; bạn c&oacute; thể sạc đầy pin từ 0% l&ecirc;n 100% chỉ trong thời gian rất ngắn. Với chỉ v&agrave;i ph&uacute;t sạc, bạn c&oacute; thể sử dụng điện thoại trong một thời gian d&agrave;i.</p>\r\n<p>Với mức gi&aacute; b&aacute;n phải chăng c&ugrave;ng bộ cấu h&igrave;nh ấn tượng, Xiaomi 13T Pro 5G thực sự l&agrave; một c&aacute;i t&ecirc;n đ&aacute;ng ch&uacute; &yacute; trong ph&acirc;n kh&uacute;c điện thoại tầm trung. M&aacute;y ph&ugrave; hợp cho những ai đang t&igrave;m mua một chiếc điện thoại c&oacute; cấu h&igrave;nh mạnh mẽ đ&aacute;p ứng mọi t&aacute;c vụ, hỗ trợ chụp ảnh quay phim chuy&ecirc;n nghiệp hay y&ecirc;u th&iacute;ch sự hợp t&aacute;c lần n&agrave;y giữa Leica với Xiaomi.</p>\r\n<p>&nbsp;</p>', 'Điện-thoai-xiaomi-13t-pro-5g', '<p><strong>Cấu h&igrave;nh Điện thoại Xiaomi 13T Pro 5G</strong></p>\r\n<p>M&agrave;n h&igrave;nh: AMOLED6.67\"1.5K<br />Hệ điều h&agrave;nh: Android 13<br />Camera sau: Ch&iacute;nh 50 MP &amp; Phụ 50 MP, 12 MP<br />Camera trước: 20 MP<br />Chip: MediaTek Dimensity 9200+ 5G 8 nh&acirc;n<br />RAM: 12 GB<br />Dung lượng lưu trữ: 256 GB<br />SIM: 2 Nano SIMHỗ trợ 5G<br />Pin, Sạc: 5000 mAh120 W</p>', 14490000, 16900000, 15, 1, 'active', 1, 7, '2023-11-11 20:22:13', '2023-11-15 04:47:19'),
(3, 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', '<h2>Tai nghe Bluetooth AirPods Pro (2nd Gen) USB-C Charge Apple sở hữu thiết kế mang đậm chất thương hiệu Apple, m&agrave;u sắc sang trọng, đi c&ugrave;ng nhiều c&ocirc;ng nghệ cho c&aacute;c iFan: chip Apple H2, chống bụi, chống ồn chủ động,... hứa hẹn mang đến trải nghiệm &acirc;m thanh sống động, chinh phục người d&ugrave;ng.</h2>\r\n<p><br />Giữ nguy&ecirc;n thiết kế c&ugrave;ng vật liệu t&aacute;i chế th&acirc;n thiện m&ocirc;i trường<br />Tai nghe Bluetooth AirPods Pro (2nd Gen) được Apple tr&igrave;nh l&agrave;ng v&agrave;o th&aacute;ng 09/2023 với nhiều sự mong đợi, Apple vẫn giữ nguy&ecirc;n thiết kế AirPods Pro Gen 2 giống với phi&ecirc;n bản tiền nhiệm của m&igrave;nh như: k&iacute;ch thước nhỏ gọn, đường bo g&oacute;c tinh tế, gam m&agrave;u trắng sang trọng.</p>\r\n<p>Tuy nhi&ecirc;n trong lần ra mắt n&agrave;y, Apple đ&atilde; thay mới cổng sạc cho c&aacute;c thiết bị của m&igrave;nh, tương tự như cổng sạc tr&ecirc;n c&aacute;c mẫu iPhone 15 series, AirPods Pro Gen 2 được t&iacute;ch hợp cổng sạc Type-C nhằm tối ưu phụ kiện sạc giữa c&aacute;c thiết bị. Khi hết pin bạn c&oacute; thể sạc lại hộp sạc bằng bộ sạc Apple Watch hay MagSafe. Ngo&agrave;i ra bạn c&ograve;n c&oacute; thể sử dụng đầu nối Type-C hoặc bộ sạc chuẩn Qi để nạp lại pin cho chiếc AirPods của m&igrave;nh.</p>', 'tai-nghe-bluetooth-airpods-pro-gen-2-magsafe-charge-(usb-c)-apple-mtjv3', '<p><strong>Th&ocirc;ng số kỹ thuật Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3</strong></p>\r\n<p>Thời gian tai nghe: D&ugrave;ng 6 giờ<br />Thời gian hộp sạc: D&ugrave;ng 30 giờ<br />Cổng sạc: Type-CSạc kh&ocirc;ng d&acirc;y QiSạc MagSafe<br />C&ocirc;ng nghệ &acirc;m thanh: Adaptive EQActive Noise CancellationAmbient SoundChip Apple H2<br />Tương th&iacute;ch: Android, iOS, Windows<br />Tiện &iacute;ch: Sạc kh&ocirc;ng d&acirc;yC&oacute; mic thoạiSạc nhanhChống ồn chủ động ANCChống nước &amp; bụi IP54Trợ l&yacute; ảo Siri<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 5990000, 6990000, 15, 1, 'active', 1, 10, '2023-11-11 20:24:47', '2023-11-15 04:49:52'),
(4, 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', '<h2>iPad Air 5 M1 WiFi 64 GB đ&atilde; được c&ocirc;ng bố tại sự kiện Peek Performance diễn ra h&ocirc;m 9/3 (theo giờ Việt Nam). Năm nay Apple đ&atilde; c&oacute; những thay đổi lớn về cả hiệu năng v&agrave; bổ sung m&agrave;u sắc mới cho thiết bị.</h2>\r\n<p><br />Sức mạnh từ con chip M1<br />Sức mạnh từ con chip M1 - iPad Air 5 M1 Wifi 64 GB</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Product/ipad-air-5-150322-044254.jpeg\" alt=\"\" width=\"550\" /></p>\r\n<p>Apple M1 8 nh&acirc;n l&agrave; vi xử l&yacute; do ch&iacute;nh Apple nghi&ecirc;n cứu v&agrave; sản xuất. Con chip n&agrave;y đ&atilde; được chứng minh sức mạnh qua nhiều d&ograve;ng sản phẩm v&agrave; b&acirc;y giờ đ&atilde; xuất hiện tr&ecirc;n iPad Air 5 M1 WiFi 64 GB. Với 8 nh&acirc;n CPU, vi xử l&yacute; n&agrave;y sẽ gi&uacute;p thiết bị c&oacute; thể hoạt động ổn định c&ugrave;ng với RAM 8 GB.</p>\r\n<p>Thiết kế sang trọng<br />Thiết kế sang trọng - iPad Air 5 M1 Wifi 64 GB</p>\r\n<p>iPad Air 5 M1 WiFi 64 GB c&oacute; thiết kế phẳng ở 4 cạnh, mặt sau được l&agrave;m từ nh&ocirc;m với nhiều m&agrave;u sắc tươi trẻ. Đặc biệt, năm nay Apple đ&atilde; bổ sung m&agrave;u t&iacute;m cho d&ograve;ng iPad Air 5 M1 WiFi 64 GB, m&agrave;u sắc n&agrave;y sẽ g&acirc;y ấn tượng mạnh khi ch&uacute;ng ta cầm m&aacute;y sử dụng. M&agrave;n h&igrave;nh của m&aacute;y cũng được l&agrave;m phẳng với k&iacute;ch thước 10.9 inch.</p>', 'may-tinh-bang-ipad-air-5-m1-wifi-64gb', '<p><strong>Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng iPad Air 5 M1 WiFi 64GB</strong></p>\r\n<p>M&agrave;n h&igrave;nh: 10.9\"Retina IPS LCD<br />Hệ điều h&agrave;nh: iPadOS 15<br />Chip: Apple M1<br />RAM: 8 GB<br />Dung lượng lưu trữ: 64 GB<br />Kết nối: Nghe gọi qua FaceTime<br />Camera sau: 12 MP<br />Camera trước: 12 MP<br />Pin, Sạc: 28.6 Wh (~ 7587 mAh)20 W</p>', 14090000, 16090000, 15, 0, 'active', 1, 9, '2023-11-11 20:28:37', '2023-11-15 04:49:11'),
(5, 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', '16990000', 'laptop-asus-tuf-gaming-f15-fx506hf-i5-11400h/8gb/512gb/4gb-rtx2050/144hz/win11-(hn014w)', '<p><strong>Cấu h&igrave;nh Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)</strong></p>\r\n<p>CPU:i511400H2.7GHz<br />RAM:8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz<br />Ổ cứng:Hỗ trợ th&ecirc;m 1 khe cắm SSD M.2 PCIe mở rộng (n&acirc;ng cấp tối đa 1 TB)512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)<br />M&agrave;n h&igrave;nh:15.6\"Full HD (1920 x 1080) 144Hz<br />Card m&agrave;n h&igrave;nh:Card rờiRTX 2050 4GB<br />Cổng kết nối:1 x Thunderbolt 4 (hỗ trợ DisplayPort)HDMILAN (RJ45)3 x USB 3.2Jack tai nghe 3.5 mm<br />Đặc biệt:C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />Hệ điều h&agrave;nh:Windows 11 Home SL<br />Thiết kế:Vỏ nhựa - nắp lưng bằng kim loại<br />K&iacute;ch thước, khối lượng:D&agrave;i 359 mm - Rộng 256 mm - D&agrave;y 22.8 ~ 24.5 mm - Nặng 2.3 kg<br />Thời điểm ra mắt:2023</p>', 16990000, 18990000, 15, 1, 'active', 1, 15, '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(6, 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', '<p>Mẫu laptop gaming với mức gi&aacute; tầm trung đến từ thương hiệu Acer vừa được l&ecirc;n kệ tại Thế Giới Di Động, sở hữu hiệu năng mạnh mẽ với con chip Intel Gen 13 d&ograve;ng H hiệu năng cao, RAM 16 GB, card rời RTX c&ugrave;ng nhiều t&iacute;nh năng hiện đại. Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H (NX.KQ4SV.002) chắc chắn sẽ mang đến cho bạn những trải nghiệm sử dụng v&agrave; chiến game giải tr&iacute; tuyệt vời.<br />Cấu h&igrave;nh chiến mọi tựa game \"HOT HIT\" <br />Những mẫu laptop Aspire Gaming chắc chắn đ&atilde; qu&aacute; quen thuộc với anh em nhờ hiệu năng mạnh mẽ nhưng lại được gắn với m&aacute;c gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute;. Với mẫu Acer Aspire 5 Gaming v&agrave;o năm 2023 n&agrave;y chắc chắn sẽ kh&ocirc;ng l&agrave;m mọi người thất vọng với cũng gi&aacute; đ&oacute; nhưng hiệu năng c&oacute; phần được n&acirc;ng l&ecirc;n nữa.</p>\r\n<p>Laptop được trang bị bộ vi xử l&yacute; Intel Core i5 Raptor Lake - 13420H c&ugrave;ng card rời NVIDIA GeForce RTX 2050 4 GB đa nhiệm hiệu quả cho m&igrave;nh mọi c&ocirc;ng việc tr&ecirc;n cơ quan, học tập hay giải tr&iacute; thường ng&agrave;y đến việc thực hiện c&aacute;c bản thiết kế tr&ecirc;n nền tảng Premiere, Photoshop,... tuy nhi&ecirc;n với c&aacute;c ấn phẩm nghệ thuật, đồ hoạ động qu&aacute; nhiều layer hay effect th&igrave; m&igrave;nh đ&aacute;nh gi&aacute; m&aacute;y chưa đ&aacute;p ứng được nhanh ch&oacute;ng, nếu chỉ sử dụng cho c&ocirc;ng việc th&ocirc;ng thường th&ocirc;i th&igrave; vẫn rất ok nha.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Product/acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-asc-7.jpg\" alt=\"\" width=\"880\" /></p>\r\n<p>Một điểm m&agrave; chắc chắn mọi người cũng kh&aacute; quan t&acirc;m tr&ecirc;n mẫu m&aacute;y n&agrave;y l&agrave; khả năng chơi c&aacute;c tựa game. Theo như m&igrave;nh nh&igrave;n nhận th&igrave; tốc độ đ&aacute;p ứng c&aacute;c tựa game Online/Esports như PUBG, LOL, Valorant, FO kh&aacute; tốt, hầu hết mọi tựa game đều c&oacute; mức FPS ổn định v&agrave; chơi trong thời gian d&agrave;i th&igrave; hiệu suất hoạt động vẫn được duy tr&igrave; bền bỉ.</p>\r\n<p>Bộ nhớ RAM 16 GB cho ph&eacute;p m&igrave;nh mở được nhiều cửa sổ tr&igrave;nh duyệt Chrome c&ugrave;ng l&uacute;c m&agrave; vẫn kh&ocirc;ng c&oacute; hiện tượng giật lag qu&aacute; nhiều v&agrave; em laptop Acer cũng hỗ trợ n&acirc;ng cấp tối đa 32 GB, ho&agrave;n to&agrave;n gi&uacute;p m&igrave;nh xử l&yacute; được khối lượng c&ocirc;ng việc nhiều hơn.</p>\r\n<p>Ổ cứng SSD 512 GB NVMe PCIe b&ecirc;n cạnh việc gi&uacute;p m&igrave;nh c&oacute; thể dễ d&agrave;ng truy xuất hay khởi động ứng dụng nhanh ch&oacute;ng th&igrave; c&ograve;n mang đến kh&ocirc;ng gian lưu trữ rộng lớn cho một sinh vi&ecirc;n như m&igrave;nh. Đối với những bạn thường l&agrave;m việc với c&aacute;c bản thiết kế hoặc tải nhiều tựa game th&igrave; m&aacute;y c&ograve;n hỗ trợ mở rộng kh&ocirc;ng gian lưu trữ l&ecirc;n tối đa 1 TB.</p>', 'laptop-acer-aspire-5-gaming-a515-58gm-51lb-i5-13420h/16gb/512gb/4gb-rtx2050/win11-(nx.kq4sv.002)', '<p><strong>Cấu h&igrave;nh Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)</strong></p>\r\n<p>CPU: i513420H2.1GHz<br />RAM: 16 GBDDR4 2 khe (1 khe 8 GB + 1 khe 8 GB)3200 MHz<br />Ổ cứng: 512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)Hỗ trợ th&ecirc;m 1 khe cắm SSD M.2 PCIe Gen 4 mở rộng (n&acirc;ng cấp tối đa 1 TB)<br />M&agrave;n h&igrave;nh: 15.6\"Full HD (1920 x 1080)<br />Card m&agrave;n h&igrave;nh: Card rờiRTX 2050 4GB<br />Cổng kết nối: HDMILAN (RJ45)Jack tai nghe 3.5 mm1 x USB Type-C (hỗ trợ USB, Thunderbolt 4)2 x USB Type-A<br />Đặc biệt: C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />Hệ điều h&agrave;nh: Windows 11 Home SL<br />Thiết kế: Vỏ nhựa - nắp lưng bằng kim loại<br />K&iacute;ch thước, khối lượng: D&agrave;i 361 mm - Rộng 237 mm - D&agrave;y 17.9 mm - Nặng 1.7 kg<br />Thời điểm ra mắt: 2023</p>', 16990000, 17990000, 15, 1, 'active', 1, 16, '2023-11-15 04:18:08', '2023-11-17 04:01:49');

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
(11, 'Iphone', 'iphone', 'Iphone', 1, 8, '2023-11-11 20:16:55', '2023-11-11 20:16:55'),
(13, 'Laptop', 'laptop', 'Laptop', 1, NULL, '2023-11-15 03:54:33', '2023-11-15 03:54:33'),
(14, 'Dell', 'dell', 'Laptop Dell', 1, 13, '2023-11-15 03:54:47', '2023-11-15 03:54:47'),
(15, 'Asus', 'asus', 'Laptop Asus', 1, 13, '2023-11-15 03:55:09', '2023-11-15 03:55:09'),
(16, 'Acer', 'acer', 'Laptop Acer', 1, 13, '2023-11-15 03:55:27', '2023-11-15 03:55:27');

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
(25, 4, 25, '0', '2023-11-11 20:28:37', '2023-11-11 20:28:37'),
(26, 5, 34, '1', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(27, 5, 35, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(28, 5, 36, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(29, 5, 37, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(30, 5, 38, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(31, 5, 39, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(32, 5, 40, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(33, 5, 41, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(34, 5, 42, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(35, 5, 43, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(36, 5, 44, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(37, 5, 45, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(38, 5, 46, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(39, 5, 47, '0', '2023-11-15 04:11:04', '2023-11-15 04:11:04'),
(40, 6, 48, '1', '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(41, 6, 49, '0', '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(42, 6, 50, '0', '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(43, 6, 51, '0', '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(44, 6, 52, '0', '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(45, 6, 53, '0', '2023-11-15 04:18:08', '2023-11-15 04:18:08');

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
(69, 16, 12, NULL, NULL),
(70, 16, 13, NULL, NULL),
(71, 16, 14, NULL, NULL),
(82, 16, 5, NULL, NULL),
(83, 16, 10, NULL, NULL),
(84, 16, 11, NULL, NULL),
(85, 16, 4, NULL, NULL),
(86, 16, 17, NULL, NULL),
(87, 16, 18, NULL, NULL),
(88, 16, 19, NULL, NULL);

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_image_id_foreign` (`image_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_categories_user_id_foreign` (`user_id`),
  ADD KEY `post_categories_parent_id_foreign` (`parent_id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `post_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
