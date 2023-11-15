-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 10:44 AM
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
(33, 'du-lich-honson.jpg', 'ĐẢO HÒN SƠN – HƯỚNG DẪN DU LỊCH HÒN SƠN KIÊN GIANG', 1425690, 1, '2023-11-15 02:39:51', '2023-11-15 02:39:51');

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
(52, '2023_11_12_033600_create_posts_table', 7);

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
(6, 'ĐẢO HÒN SƠN – HƯỚNG DẪN DU LỊCH HÒN SƠN KIÊN GIANG', 'ĐẢo-hÒn-sƠn-–-hƯỚng-dẪn-du-lỊch-hÒn-sƠn-kiÊn-giang', '<p>Với những b&atilde;i biển c&aacute;t trắng xinh đẹp, b&atilde;i đ&aacute; h&ugrave;ng vĩ v&agrave; thơ mộng, những rặng dừa phủ b&oacute;ng xanh m&aacute;t.</p>', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/du-lich-honson.jpg\" alt=\"Đảo H&ograve;n Sơn\" width=\"1115\" height=\"600\" /></p>\r\n<p>Đến với H&ograve;n Sơn, du kh&aacute;ch được h&ograve;a m&igrave;nh v&agrave;o thi&ecirc;n nhi&ecirc;n hoang sơ với biển trời, rừng n&uacute;i, trải l&ograve;ng c&ugrave;ng những người xứ biển mến kh&aacute;ch v&agrave; thưởng thức những m&oacute;n ăn d&acirc;n d&atilde;, đậm đ&agrave; chất biển. Nếu bạn đang c&oacute; &yacute; định tới thăm h&ograve;n đảo xinh đẹp n&agrave;y, th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua b&agrave;i viết về những th&ocirc;ng du lịch H&ograve;n Sơn, Ki&ecirc;n Giang dưới đ&acirc;y.</p>\r\n<h2 style=\"color: red;\">Đ&ocirc;i n&eacute;t về H&ograve;n Sơn</h2>\r\n<p>H&ograve;n Sơn c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; H&ograve;n Sơn R&aacute;i, thuộc x&atilde; Lại Sơn, huyện Ki&ecirc;n Hải, tỉnh Ki&ecirc;n Giang. Nằm tr&ecirc;n vịnh H&agrave; Ti&ecirc;n, giữa quần đảo Nam Du v&agrave; đảo H&ograve;n Tre, c&aacute;ch th&agrave;nh phố Rạch Gi&aacute; 65 km về ph&iacute;a T&acirc;y.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-1.jpg\" alt=\"Trung t&acirc;m của đảo H&ograve;n Sơn\" width=\"1110\" /></p>\r\n<p>Sở dĩ h&ograve;n đảo c&oacute; t&ecirc;n l&agrave; R&aacute;i C&aacute; l&agrave; v&igrave; trước đ&acirc;y tr&ecirc;n đảo c&oacute; một lo&agrave;i c&acirc;y t&ecirc;n l&agrave; c&acirc;y dầu r&aacute;i mọc rất nhiều, nhựa c&acirc;y d&ugrave;ng để qu&eacute;t l&ecirc;n vỏ thuyền để chống nước biển ăn m&ograve;n. Nhưng cũng c&oacute; &yacute; kiến kh&aacute;c cho rằng l&uacute;c trước quanh đảo c&oacute; rất nhiều r&aacute;i c&aacute; sinh sống. Năm 1777, khi Nguyễn &Aacute;nh chạy trốn qu&acirc;n T&acirc;y Sơn đến đ&acirc;y, c&oacute; một con r&aacute;i c&aacute; khổng lồ d&acirc;ng hải sản l&ecirc;n cho &ocirc;ng, n&ecirc;n &ocirc;ng đặt t&ecirc;n cho h&ograve;n đảo l&agrave; H&ograve;n Sơn R&aacute;i.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson.jpg\" alt=\"\" width=\"1110\" /></p>\r\n<p>H&ograve;n Sơn c&oacute; diện t&iacute;ch tự nhi&ecirc;n 11,5 km2 c&oacute; 7 đỉnh n&uacute;i nhấp nh&ocirc; v&agrave; được viền quanh bởi 6 b&atilde;i biển đẹp. Đất l&agrave;nh chim đậu, từ một h&ograve;n đảo vắng hoang sơ đầu thế kỷ 18, đến nay, H&ograve;n Sơn đ&atilde; c&oacute; hơn 2.400 hộ gia đ&igrave;nh với 8.200 nh&acirc;n khẩu sinh sống. Người d&acirc;n chủ yếu sống bằng nghề nu&ocirc;i trồng, đ&aacute;nh bắt hải sản, đ&oacute;ng t&agrave;u, chế biến t&ocirc;m, c&aacute;, mực kh&ocirc; v&agrave; l&agrave;m nước mắm.</p>\r\n<h2 style=\"color: red;\">Thời điểm du lịch H&ograve;n Sơn l&yacute; tưởng</h2>\r\n<p>Thời tiết ở H&ograve;n Sơn lu&ocirc;n dễ chịu quanh năm ch&iacute;nh v&igrave; vậy bạn c&oacute; thể đi du lịch H&ograve;n Sơn v&agrave;o bất cứ thời điểm n&agrave;o trong năm. Tuy nhi&ecirc;n thời điểm l&yacute; tưởng để bạn đi du lịch đảo H&ograve;n Sơn l&agrave; v&agrave;o khoảng th&aacute;ng 5 đến th&aacute;ng 12 bởi m&ugrave;a n&agrave;y biển &ecirc;m &iacute;t s&oacute;ng v&agrave; c&oacute; nhiều hải sản: mực, t&ocirc;m, ghẹ&hellip; tươi ngon.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/daohonson.jpg\" alt=\"Thời điểm l&yacute; tưởng để bạn đi du lịch đảo H&ograve;n Sơn l&agrave; v&agrave;o khoảng th&aacute;ng 5 đến th&aacute;ng 12\" width=\"1110\" /></p>\r\n<p>Tr&ecirc;n đảo c&oacute; Lễ hội Nghinh được tổ chức v&agrave;o 15/10 &acirc;m lịch hằng năm. Bạn c&oacute; thể đến đảo v&agrave;o dịp n&agrave;y để h&ograve;a m&igrave;nh v&agrave;o kh&ocirc;ng kh&iacute; s&ocirc;i nổi của lễ hội. Ng&agrave;y hội tất cả người d&acirc;n ở H&ograve;n sẽ hội tụ lại đặc biệt l&agrave; những người sinh sống bằng nghề đ&aacute;nh bắt hải sản tr&ecirc;n biển</p>\r\n<p>Trước khi l&ecirc;n đường c&aacute;c bạn n&ecirc;n cập nhật t&igrave;nh h&igrave;nh thời tiết ở v&ugrave;ng biển C&agrave; Mau &ndash; Ki&ecirc;n Giang v&agrave; tr&aacute;nh c&aacute;c thời điểm biển động v&agrave; mưa b&atilde;o để đảm bảo an to&agrave;n.</p>\r\n<h2 style=\"color: red;\">Đến đảo H&ograve;n Sơn bằng c&aacute;ch n&agrave;o.</h2>\r\n<h3>Di chuyển tới Rạch Gi&aacute;</h3>\r\n<p>Muốn tới H&ograve;n Sơn trước ti&ecirc;n bạn phải đến TP Rạch Gi&aacute;, tỉnh Ki&ecirc;n Giang. Từ H&agrave; Nội, bạn c&oacute; thể mua v&eacute; m&aacute;y bay tới Cần Thơ, sau đ&oacute; bắt xe kh&aacute;ch từ Cần Thơ đi Ki&ecirc;n Giang. Một lựa chọn kh&aacute;c l&agrave; bay từ H&agrave; Nội đến TP. HCM tiếp tục bắt xe kh&aacute;ch đến Ki&ecirc;n Giang.</p>\r\n<p>Từ TP. Hồ Ch&iacute; Minh bạn c&oacute; thể đi &ocirc; t&ocirc; c&aacute; nh&acirc;n, xe kh&aacute;ch đến Rạch Gi&aacute; với thời gian khoảng từ 5-6 giờ. V&igrave; c&aacute;c chuyến t&agrave;u đi Rạch Gi&aacute; &ndash; H&ograve;n Sơn xuất ph&aacute;t v&agrave;o s&aacute;ng, ch&iacute;nh v&igrave; vậy bạn n&ecirc;n đi trước một ng&agrave;y nghỉ qua đ&ecirc;m tại TP Rạch Gi&aacute; để s&aacute;ng tới bến t&agrave;u cho kịp giờ. C&ograve;n đi xe kh&aacute;ch th&igrave; đi từ đ&ecirc;m h&ocirc;m trước đến bến xe Rạch Gi&aacute; v&agrave;o khoảng 6h s&aacute;ng ng&agrave;y h&ocirc;m sau. Một số h&atilde;ng xe như Phương Trang, Việt Đức,&hellip; đều c&oacute; tuyến xe Hồ Ch&iacute; Minh &ndash; Rạch Gi&aacute; (Ki&ecirc;n Giang). Đến Rạch Gi&aacute;, xe trung chuyển đưa bạn ra bến t&agrave;u mất 30 ph&uacute;t.</p>\r\n<h3>Di chuyển tới đảo H&ograve;n Sơn</h3>\r\n<p><br />Từ Rạch Gi&aacute;, c&oacute; 2 phương tiện ch&iacute;nh để đi tới đảo H&ograve;n Sơn đ&oacute; l&agrave;: T&agrave;u cao tốc v&agrave; t&agrave;u kh&aacute;ch, bạn c&oacute; thể dựa v&agrave;o thời gian du lịch v&agrave; dựa v&agrave;o sở th&iacute;ch của m&igrave;nh m&agrave; lựa chọn phương tiện di chuyển sao cho ph&ugrave; hợp nhất nh&eacute;.</p>\r\n<p>T&agrave;u cao tốc: Thời gian di chuyển l&agrave; 1 tiếng 30 ph&uacute;t. Với phương tiện n&agrave;y th&igrave; bạn sẽ tiết kiệm được tối đa thời gian di chuyển. T&agrave;u cao tốc thường neo đậu ở cảng số 2 v&agrave; số 3 ở bến Rạch Gi&aacute;.</p>\r\n<p>Một số c&aacute;c h&atilde;ng t&agrave;u v&agrave; thời gian khởi h&agrave;nh cụ thể:</p>\r\n<ul>\r\n<li>T&agrave;u Ngọc Th&agrave;nh: Bến Rạch Gi&aacute; &ndash; H&ograve;n Sơn: khởi h&agrave;nh l&uacute;c 8h05. H&ograve;n Sơn &ndash; Bến t&agrave;u Rạch Gi&aacute;: khởi h&agrave;nh l&uacute;c 13h30</li>\r\n<li>T&agrave;u Superdong: &nbsp;Bến Rạch Gi&aacute; &ndash; H&ograve;n Sơn: khởi h&agrave;nh l&uacute;c 7h20. &nbsp;H&ograve;n Sơn &ndash; Bến t&agrave;u Rạch Gi&aacute;: khởi h&agrave;nh l&uacute;c 11h15</li>\r\n<li>T&agrave;u Ph&uacute; Quốc Express: Bến Rạch Gi&aacute; &ndash; H&ograve;n Sơn: khởi h&agrave;nh l&uacute;c 6h30. &nbsp;H&ograve;n Sơn &ndash; Bến t&agrave;u Rạch Gi&aacute;: khởi h&agrave;nh l&uacute;c 14h10</li>\r\n</ul>\r\n<p>Thời gian khởi h&agrave;nh c&oacute; thể thay đổi v&agrave;o cuối tuần hay những ng&agrave;y đ&ocirc;ng kh&aacute;ch. C&aacute;c bạn nhớ gọi điện cho c&aacute;c h&atilde;ng t&agrave;u để đặt v&eacute; trước v&agrave; nhớ hỏi kĩ l&uacute;c li&ecirc;n hệ đặt v&eacute; để tr&aacute;nh t&igrave;nh trạng bị lỡ chuyến t&agrave;u.</p>\r\n<h3>Di chuyển tr&ecirc;n đảo</h3>\r\n<p>Muốn đi dạo tr&ecirc;n đảo th&igrave; bạn n&ecirc;n thu&ecirc; xe m&aacute;y với gi&aacute; dao động từ 200,000 &ndash; 250,000đ. Bạn c&oacute; thể thu&ecirc; trực tiếp tại c&aacute;c nh&agrave; nghỉ, song song với l&uacute;c nhận ph&ograve;ng. Nếu đi theo nh&oacute;m đ&ocirc;ng người th&igrave; bạn một sự lựa chọn kh&aacute;c đ&oacute; l&agrave; thu&ecirc; xe b&aacute;n tải hoặc xe kh&aacute;ch 12 chỗ. Ngo&agrave;i ra bạn cũng c&oacute; thể thu&ecirc; một chiếc thuyền của ngư d&acirc;n để đi v&ograve;ng quanh đảo hay đi c&acirc;u c&aacute;, c&acirc;u mực rất th&uacute; vị.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/hon-son-1.jpg\" alt=\"\" width=\"1110\" /></p>\r\n<h2 style=\"color: red;\">Đến đảo H&ograve;n Sơn chơi g&igrave;?</h2>\r\n<p>Đảo H&ograve;n Sơn c&oacute; rất nhiều địa điểm hấp dẫn, th&uacute; vị cho du kh&aacute;ch tha hồ kh&aacute;m ph&aacute; ph&aacute; như: Những d&atilde;y n&uacute;i cao h&ugrave;ng vĩ, những b&atilde;i biển trong xanh tuyệt đẹp, những ng&ocirc;i ch&ugrave;a được đi v&agrave;o di t&iacute;ch lịch sử&hellip; Bạn n&ecirc;n đi H&ograve;n Sơn khoảng 2 ng&agrave;y 1 đ&ecirc;m để thăm th&uacute; những n&eacute;t đặc trưng tr&ecirc;n đảo, ngắm cảnh ho&agrave;ng h&ocirc;n v&agrave; đ&oacute;n b&igrave;nh minh tr&ecirc;n đảo. Khoảnh khắc đ&oacute; ngồi tr&ecirc;n một mỏm đ&aacute; lớn, hướng mắt nh&igrave;n về ph&iacute;a biển bạn sẽ cảm thấy m&igrave;nh thật nhỏ b&eacute; giữa biển cả rộng lớn.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/hon-son-kien-giang.jpg\" alt=\"\" width=\"1110\" /></p>\r\n<h3>Tắm biển</h3>\r\n<p>Với đường bờ biển d&agrave;i hơn 1km uốn cong theo đường lưỡi liềm, đảo H&ograve;n Sơn c&oacute; nhiều b&atilde;i biển như: b&atilde;i Giếng, b&atilde;i B&agrave;ng, b&atilde;i Bấc, b&atilde;i Đ&aacute; Ch&agrave;i&hellip;. Trong đ&oacute;, b&atilde;i B&agrave;ng được xem l&agrave; b&atilde;i biển đẹp.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson1.jpg\" alt=\"B&atilde;i B&agrave;ng\" width=\"1110\" /></p>\r\n<p>Với biển xanh c&aacute;t trắng v&agrave; nắng v&agrave;ng quanh năm, s&oacute;ng nh&egrave; nhẹ vỗ bờ, nước biển sạch c&ugrave;ng nhiều b&atilde;i đ&aacute; lớn nhỏ th&iacute;ch hợp để tắm biển v&agrave; chụp h&igrave;nh. Đến đ&acirc;y, bạn sẽ được thả m&igrave;nh v&agrave;o l&agrave;n nước trong xanh, ngắm những rặng dừa dọc bờ biển đong đưa theo gi&oacute;, h&iacute;t thở kh&ocirc;ng kh&iacute; biển trong l&agrave;nh, m&aacute;t mẻ.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/baibanghonson.jpg\" alt=\"Biển xanh c&aacute;t trắng v&agrave; nắng v&agrave;ng\" width=\"1110\" /></p>\r\n<p>B&atilde;i Thi&ecirc;n Tuế nằm ở ph&iacute;a T&acirc;y c&oacute; những khối đ&aacute; tạo h&igrave;nh kỳ th&uacute; của thi&ecirc;n nhi&ecirc;n khiến ta kh&ocirc;ng khỏi ngỡ ng&agrave;ng với vẻ đẹp hoang sơ v&agrave; độc đ&aacute;o. Ở đ&acirc;y t&agrave;u thuyền cũng neo đậu tấp nập v&agrave; những d&atilde;y nh&agrave; mọc san s&aacute;t nhau tại b&atilde;i biển. B&atilde;i Đ&aacute; Ch&agrave;i v&agrave; B&atilde;i Giếng nằm s&aacute;t b&atilde;i Thi&ecirc;n Tuế, dựa lưng v&agrave;o d&atilde;y n&uacute;i c&oacute; rừng c&acirc;y nguy&ecirc;n sinh. Ở đ&acirc;y c&oacute; những m&ocirc; đ&aacute; phẳng nguy&ecirc;n khối chạy d&agrave;i ra m&eacute;p nước. Kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng nơi đ&acirc;y rất ph&ugrave; hợp để tổ chức vui chơi, cắm trại.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-3.jpg\" alt=\"Những khối đ&aacute; tạo h&igrave;nh kỳ th&uacute;\" width=\"1110\" /></p>\r\n<p><strong>B&atilde;i Xếp</strong>&nbsp;với c&acirc;y dừa ng&atilde; đầy th&uacute; vị được d&acirc;n bản địa gọi l&agrave; &ldquo;c&acirc;y dừa ng&agrave;n năm&rdquo;.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-2.jpg\" alt=\"B&atilde;i xếp\" width=\"1110\" /></p>\r\n<p>Đ&acirc;y l&agrave; một b&atilde;i biển c&ograve;n hoang sơ, tr&ecirc;n b&atilde;i c&aacute;t những h&ograve;n đ&aacute; to nằm tự nhi&ecirc;n m&agrave; như xếp đặt. Đặc biệt, ở B&atilde;i Xếp c&oacute; c&acirc;y dừa ng&atilde; nằm s&aacute;t mặt đ&aacute;, nhưng l&aacute; vẫn xanh tươi, r&igrave; r&agrave;o với gi&oacute; biển.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Post/honson-4.jpg\" alt=\"C&acirc;y dừa nằm\" width=\"1110\" /></p>\r\n<p>&nbsp;</p>', 'published', 1, 10, 33, '2023-11-15 02:39:51', '2023-11-15 02:39:51');

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
(2, 'Bóng đá', 'bong-da', 'Tin tức bóng đá', 1, 1, '2023-11-12 03:11:18', '2023-11-12 03:11:18'),
(3, 'Blog', 'blog', 'Blog', 1, NULL, '2023-11-12 03:12:03', '2023-11-12 03:12:03'),
(7, 'Ẩm thực', 'am-thuc', 'Blog ẩm thực', 1, 3, '2023-11-12 04:50:12', '2023-11-13 01:19:33'),
(9, 'Tin nóng', 'tin-nong', 'Tin nóng ngày mới', 1, 1, '2023-11-14 00:19:35', '2023-11-14 00:19:35'),
(10, 'Du lịch', 'du-lich', 'Blog du lịch', 1, 3, '2023-11-15 02:17:49', '2023-11-15 02:17:49');

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
(1, 'Điện thoại iPhone 15 Pro Max 256GB', '33900000', 'Điện-thoai-iphone-15-pro-max-256gb', '<p><strong>Cấu h&igrave;nh Điện thoại iPhone 15 Pro Max 256GB</strong></p>\r\n<p>M&agrave;n h&igrave;nh: OLED6.7\"Super Retina XDR<br />Hệ điều h&agrave;nh: iOS 17<br />Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP<br />Camera trước: 12 MP<br />Chip: Apple A17 Pro 6 nh&acirc;n<br />RAM: 8 GB<br />Dung lượng lưu trữ: 256 GB<br />SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G<br />Pin, Sạc: 4422 mAh20 W</p>', 33900000, 15, 0, 'active', 1, 11, '2023-11-11 20:18:17', '2023-11-14 10:03:30'),
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
