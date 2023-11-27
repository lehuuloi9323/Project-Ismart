-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 09:44 AM
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

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(6, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-20 07:06:16', '2023-11-20 07:06:16'),
(7, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-20 07:17:27', '2023-11-20 07:17:27'),
(8, 'Nguyễn Văn A', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-25 00:21:15', '2023-11-25 00:21:15'),
(9, 'Vũ Trọng', 'vutrong@gmail.com', 357559323, 'Hòn Đất -Kiên Giang', '2023-11-25 00:32:42', '2023-11-26 04:26:24'),
(10, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-25 00:36:24', '2023-11-25 00:36:24'),
(11, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-25 00:36:49', '2023-11-25 00:36:49'),
(12, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-25 00:38:05', '2023-11-25 00:38:05'),
(13, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(14, 'Lê Hửu Lợi', 'lehuuloi9323@gmail.com', 357559323, '123 HCM', '2023-11-25 00:59:50', '2023-11-25 00:59:50');

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
(7, 'xiaomi-13t-pro-xanh-1.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 276550, 1, '2023-11-11 20:22:13', '2023-11-20 02:52:02'),
(16, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-1.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 71058, 1, '2023-11-11 20:24:47', '2023-11-20 07:36:47'),
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
(53, 'vi-vn-acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-slider-6.jpg', 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', 72196, 1, '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(54, 'dell-inspiron-15-3530-i5-71014840-2.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 66456, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(55, 'dell-inspiron-15-3530-i5-71014840-2 - Copy.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 66456, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(56, 'dell-inspiron-15-3530-i5-71014840-2.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 66149, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(57, 'dell-inspiron-15-3530-i5-71014840-3 - Copy.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 93984, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(58, 'dell-inspiron-15-3530-i5-71014840-3.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 93984, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(59, 'dell-inspiron-15-3530-i5-71014840-4 - Copy.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 85284, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(60, 'dell-inspiron-15-3530-i5-71014840-4.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 85284, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(61, 'dell-inspiron-15-3530-i5-71014840-5 - Copy.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 31476, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(62, 'dell-inspiron-15-3530-i5-71014840-5.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 31476, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(63, 'dell-inspiron-15-3530-i5-71014840-6 - Copy.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 18073, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(64, 'dell-inspiron-15-3530-i5-71014840-6.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 18073, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(65, 'dell-inspiron-15-3530-i5-71014840-7.jpg', 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', 16207, 1, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(91, 'vi-vn-xiaomi-13t-pro-slider--(1).jpg', 'Điện thoại Xiaomi 13T Pro 5G', 110141, 1, '2023-11-19 05:01:51', '2023-11-19 05:01:51'),
(110, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-1.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 197439, 1, '2023-11-20 01:53:57', '2023-11-20 07:38:30'),
(136, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-2.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 84248, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(137, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-3.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 79924, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(138, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-4.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 73868, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(139, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-5.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 34592, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(140, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-6.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 27140, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(141, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-7.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 136546, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(142, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-8.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 51838, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(143, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-9.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 35955, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(144, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-10.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 49581, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(145, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-11.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 121947, 1, '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(146, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-12.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 77239, 1, '2023-11-20 01:55:18', '2023-11-20 01:55:18'),
(147, 'asus-tuf-gaming-f15-fx506hf-i5-hn014w-13.jpg', 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', 116775, 1, '2023-11-20 01:55:18', '2023-11-20 01:55:18'),
(153, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-2.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 15641, 1, '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(154, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-3.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 17046, 1, '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(155, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-4.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 14381, 1, '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(156, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-5.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 14915, 1, '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(157, 'tai-nghe-bluetooth-airpods-pro-2nd-gen-usb-c-charge-apple-6.jpg', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 12733, 1, '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(158, 'tai-nghe-bluetooth-true-wireless-havit-tw945-tim-1.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 445458, 1, '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(159, 'tai-nghe-bluetooth-true-wireless-havit-tw945-tim-2.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 496465, 1, '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(160, 'tai-nghe-bluetooth-true-wireless-havit-tw945-tim-4.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 492094, 1, '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(161, 'tai-nghe-bluetooth-true-wireless-havit-tw945-tim-5.jpg', 'Tai nghe Bluetooth True Wireless HAVIT TW945', 375234, 1, '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(162, 'xiaomi-13t-pro-xanh-2.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 121821, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(163, 'xiaomi-13t-pro-xanh-4.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 539568, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(164, 'xiaomi-13t-pro-xanh-5.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 503035, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(165, 'xiaomi-13t-pro-xanh-6.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 305620, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(166, 'xiaomi-13t-pro-xanh-7.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 287185, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(167, 'xiaomi-13t-pro-xanh-8.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 294392, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(168, 'xiaomi-13t-pro-xanh-9.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 534518, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(169, 'xiaomi-13t-pro-xanh-10.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 413631, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(170, 'xiaomi-13t-pro-xanh-11.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 382225, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(171, 'xiaomi-13t-pro-xanh-12.jpg', 'Điện thoại Xiaomi 13T Pro 5G', 299361, 1, '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(177, 'iphone-15-pro-max-black-1-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 55861, 1, '2023-11-20 03:05:09', '2023-11-20 03:05:09'),
(185, 'iphone-15-pro-max-black-2-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 22396, 1, '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(186, 'iphone-15-pro-max-black-3-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 26459, 1, '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(187, 'iphone-15-pro-max-blue-1-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 63231, 1, '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(188, 'iphone-15-pro-max-tu-nhien-1-1.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 64296, 1, '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(189, 'iphone-15-pro-max-white-1-3.jpg', 'Điện thoại iPhone 15 Pro Max 256GB', 68943, 1, '2023-11-20 03:08:54', '2023-11-20 03:08:54');

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
(59, '2023_11_15_113059_add_price_old_to_products_table', 8),
(60, '2023_11_17_111351_create_customers_table', 8),
(61, '2023_11_20_104311_create_orders_table', 8),
(62, '2023_11_20_110004_create_order_items_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `payment_method` enum('momo','bank') NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `status` enum('pending','processing','shipped','delivered','canceled') NOT NULL DEFAULT 'pending',
  `note` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_quantity`, `total_amount`, `payment_method`, `shipping_address`, `status`, `note`, `customer_id`, `created_at`, `updated_at`) VALUES
(3, 4, 68560000, 'momo', '123 HCM', 'pending', 'Giao nhanh nha', 6, '2023-11-20 07:06:16', '2023-11-20 07:06:16'),
(4, 4, 45290000, 'momo', '123 HCM', 'processing', NULL, 7, '2023-11-20 07:17:27', '2023-11-26 02:17:38'),
(5, 1, 16990000, 'bank', '123 HCM', 'shipped', 'test', 8, '2023-11-25 00:21:15', '2023-11-26 02:16:04'),
(6, 1, 33900000, 'bank', 'Hòn Đất -Kiên Giang', 'delivered', NULL, 9, '2023-11-25 00:32:42', '2023-11-26 04:26:24'),
(8, 1, 14490000, 'bank', '123 HCM', 'pending', NULL, 11, '2023-11-25 00:36:49', '2023-11-26 02:16:39'),
(9, 1, 14490000, 'bank', '123 HCM', 'pending', NULL, 12, '2023-11-25 00:38:05', '2023-11-25 00:38:05'),
(10, 8, 143760000, 'momo', '123 HCM', 'pending', 'dsada', 13, '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(11, 3, 43470000, 'momo', '123 HCM', 'canceled', 'e', 14, '2023-11-25 00:59:50', '2023-11-27 00:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(4, 3, 5, 2, 16990000, '2023-11-20 07:06:16', '2023-11-20 07:06:16'),
(5, 3, 7, 1, 20490000, '2023-11-20 07:06:16', '2023-11-20 07:06:16'),
(6, 3, 4, 1, 14090000, '2023-11-20 07:06:16', '2023-11-20 07:06:16'),
(7, 4, 9, 1, 320000, '2023-11-20 07:17:27', '2023-11-20 07:17:27'),
(8, 4, 8, 1, 15990000, '2023-11-20 07:17:27', '2023-11-20 07:17:27'),
(9, 4, 2, 2, 14490000, '2023-11-20 07:17:27', '2023-11-20 07:17:27'),
(10, 5, 6, 1, 16990000, '2023-11-25 00:21:15', '2023-11-25 00:21:15'),
(11, 6, 10, 1, 33900000, '2023-11-25 00:32:42', '2023-11-25 00:32:42'),
(13, 8, 2, 1, 14490000, '2023-11-25 00:36:49', '2023-11-25 00:36:49'),
(14, 9, 2, 1, 14490000, '2023-11-25 00:38:05', '2023-11-25 00:38:05'),
(15, 10, 9, 1, 320000, '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(16, 10, 7, 3, 20490000, '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(17, 10, 6, 1, 16990000, '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(18, 10, 5, 1, 16990000, '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(19, 10, 10, 1, 33900000, '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(20, 10, 4, 1, 14090000, '2023-11-25 00:59:06', '2023-11-25 00:59:06'),
(21, 11, 2, 3, 14490000, '2023-11-25 00:59:51', '2023-11-25 00:59:51');

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
(2, 'Điện thoại Xiaomi 13T Pro 5G', '<p>Xiaomi 13T Pro 5G l&agrave; mẫu m&aacute;y thuộc ph&acirc;n kh&uacute;c tầm trung đ&aacute;ng ch&uacute; &yacute; tại thị trường Việt Nam. Điện thoại ấn tượng nhờ được trang bị chip Dimensity 9200+, camera 50 MP c&oacute; k&egrave;m sự hợp t&aacute;c với Leica c&ugrave;ng kiểu thiết kế tinh tế đầy sang trọng.<br />Ngoại h&igrave;nh đẹp mắt c&ugrave;ng chất liệu cao cấp <br />Mặt lưng của Xiaomi 13T Pro được thiết kế l&agrave;m phẳng với một sự bo cong nhẹ ở v&ugrave;ng r&igrave;a, tạo n&ecirc;n sự ho&agrave;n hảo trong việc cầm nắm. Với chất liệu k&iacute;nh cao cấp, m&aacute;y trở n&ecirc;n mỏng nhẹ v&agrave; mềm mại, gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng sử dụng trong thời gian d&agrave;i m&agrave; kh&ocirc;ng cảm thấy cấn tay hay kh&oacute; chịu.</p>\r\n<p>Mặt lưng b&oacute;ng lo&aacute;ng của Xiaomi 13T Pro mang đến sự sang trọng v&agrave; l&ocirc;i cuốn. Được gia c&ocirc;ng một c&aacute;ch tỉ mỉ khiến mặt lưng của chiếc điện thoại Xiaomi trở n&ecirc;n rất cuốn h&uacute;t v&agrave; đẳng cấp. Kh&ocirc;ng chỉ l&agrave; một c&ocirc;ng cụ c&ocirc;ng nghệ, Xiaomi 13T Pro c&ograve;n l&agrave; một biểu tượng thời trang thể hiện c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch của bạn.</p>', 'Điện-thoai-xiaomi-13t-pro-5g', '<p><strong>Cấu h&igrave;nh Điện thoại Xiaomi 13T Pro 5G</strong></p>\r\n<p>M&agrave;n h&igrave;nh: AMOLED6.67\"1.5K<br />Hệ điều h&agrave;nh: Android 13<br />Camera sau: Ch&iacute;nh 50 MP &amp; Phụ 50 MP, 12 MP<br />Camera trước: 20 MP<br />Chip: MediaTek Dimensity 9200+ 5G 8 nh&acirc;n<br />RAM: 12 GB<br />Dung lượng lưu trữ: 256 GB<br />SIM: 2 Nano SIMHỗ trợ 5G<br />Pin, Sạc: 5000 mAh120 W</p>', 14490000, 15490000, 15, 1, 'active', 1, 7, '2023-11-11 20:22:13', '2023-11-20 07:35:54'),
(3, 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', '<p><strong>Tai nghe Bluetooth AirPods Pro (2nd Gen) USB-C Charge Apple sở hữu thiết kế mang đậm chất thương hiệu Apple, m&agrave;u sắc sang trọng, đi c&ugrave;ng nhiều c&ocirc;ng nghệ cho c&aacute;c iFan: chip Apple H2, chống bụi, chống ồn chủ động,... hứa hẹn mang đến trải nghiệm &acirc;m thanh sống động, chinh phục người d&ugrave;ng.</strong><br />Giữ nguy&ecirc;n thiết kế c&ugrave;ng vật liệu t&aacute;i chế th&acirc;n thiện m&ocirc;i trường<br />Tai nghe Bluetooth AirPods Pro (2nd Gen) được Apple tr&igrave;nh l&agrave;ng v&agrave;o th&aacute;ng 09/2023 với nhiều sự mong đợi, Apple vẫn giữ nguy&ecirc;n thiết kế AirPods Pro Gen 2 giống với phi&ecirc;n bản tiền nhiệm của m&igrave;nh như: k&iacute;ch thước nhỏ gọn, đường bo g&oacute;c tinh tế, gam m&agrave;u trắng sang trọng.</p>\r\n<p>Tuy nhi&ecirc;n trong lần ra mắt n&agrave;y, Apple đ&atilde; thay mới cổng sạc cho c&aacute;c thiết bị của m&igrave;nh, tương tự như cổng sạc tr&ecirc;n c&aacute;c mẫu iPhone 15 series, AirPods Pro Gen 2 được t&iacute;ch hợp cổng sạc Type-C nhằm tối ưu phụ kiện sạc giữa c&aacute;c thiết bị. Khi hết pin bạn c&oacute; thể sạc lại hộp sạc bằng bộ sạc Apple Watch hay MagSafe. Ngo&agrave;i ra bạn c&ograve;n c&oacute; thể sử dụng đầu nối Type-C hoặc bộ sạc chuẩn Qi để nạp lại pin cho chiếc AirPods của m&igrave;nh.</p>', 'tai-nghe-bluetooth-airpods-pro-gen-2-magsafe-charge-(usb-c)-apple-mtjv3', '<p><strong>Th&ocirc;ng số kỹ thuật Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3</strong></p>\r\n<p>Thời gian tai nghe: D&ugrave;ng 6 giờ<br />Thời gian hộp sạc: D&ugrave;ng 30 giờ<br />Cổng sạc: Type-CSạc kh&ocirc;ng d&acirc;y QiSạc MagSafe<br />C&ocirc;ng nghệ &acirc;m thanh: Adaptive EQActive Noise CancellationAmbient SoundChip Apple H2<br />Tương th&iacute;ch: Android, iOS, Windows<br />Tiện &iacute;ch: Sạc kh&ocirc;ng d&acirc;yC&oacute; mic thoạiSạc nhanhChống ồn chủ động ANCChống nước &amp; bụi IP54Trợ l&yacute; ảo Siri<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 5990000, 6990000, 15, 1, 'active', 1, 10, '2023-11-11 20:24:47', '2023-11-20 07:36:47'),
(4, 'Máy tính bảng iPad Air 5 M1 WiFi 64GB', '<h2>iPad Air 5 M1 WiFi 64 GB đ&atilde; được c&ocirc;ng bố tại sự kiện Peek Performance diễn ra h&ocirc;m 9/3 (theo giờ Việt Nam). Năm nay Apple đ&atilde; c&oacute; những thay đổi lớn về cả hiệu năng v&agrave; bổ sung m&agrave;u sắc mới cho thiết bị.</h2>\r\n<p><br />Sức mạnh từ con chip M1<br />Sức mạnh từ con chip M1 - iPad Air 5 M1 Wifi 64 GB</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Product/ipad-air-5-150322-044254.jpeg\" alt=\"\" width=\"550\" /></p>\r\n<p>Apple M1 8 nh&acirc;n l&agrave; vi xử l&yacute; do ch&iacute;nh Apple nghi&ecirc;n cứu v&agrave; sản xuất. Con chip n&agrave;y đ&atilde; được chứng minh sức mạnh qua nhiều d&ograve;ng sản phẩm v&agrave; b&acirc;y giờ đ&atilde; xuất hiện tr&ecirc;n iPad Air 5 M1 WiFi 64 GB. Với 8 nh&acirc;n CPU, vi xử l&yacute; n&agrave;y sẽ gi&uacute;p thiết bị c&oacute; thể hoạt động ổn định c&ugrave;ng với RAM 8 GB.</p>\r\n<p>Thiết kế sang trọng<br />Thiết kế sang trọng - iPad Air 5 M1 Wifi 64 GB</p>\r\n<p>iPad Air 5 M1 WiFi 64 GB c&oacute; thiết kế phẳng ở 4 cạnh, mặt sau được l&agrave;m từ nh&ocirc;m với nhiều m&agrave;u sắc tươi trẻ. Đặc biệt, năm nay Apple đ&atilde; bổ sung m&agrave;u t&iacute;m cho d&ograve;ng iPad Air 5 M1 WiFi 64 GB, m&agrave;u sắc n&agrave;y sẽ g&acirc;y ấn tượng mạnh khi ch&uacute;ng ta cầm m&aacute;y sử dụng. M&agrave;n h&igrave;nh của m&aacute;y cũng được l&agrave;m phẳng với k&iacute;ch thước 10.9 inch.</p>', 'may-tinh-bang-ipad-air-5-m1-wifi-64gb', '<p><strong>Cấu h&igrave;nh M&aacute;y t&iacute;nh bảng iPad Air 5 M1 WiFi 64GB</strong></p>\r\n<p>M&agrave;n h&igrave;nh: 10.9\"Retina IPS LCD<br />Hệ điều h&agrave;nh: iPadOS 15<br />Chip: Apple M1<br />RAM: 8 GB<br />Dung lượng lưu trữ: 64 GB<br />Kết nối: Nghe gọi qua FaceTime<br />Camera sau: 12 MP<br />Camera trước: 12 MP<br />Pin, Sạc: 28.6 Wh (~ 7587 mAh)20 W</p>', 14090000, 15090000, 15, 0, 'active', 1, 9, '2023-11-11 20:28:37', '2023-11-15 04:49:11'),
(5, 'Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)', '<p><strong>Với bộ vi xử l&yacute; Intel Core i5 d&ograve;ng H mạnh mẽ v&agrave; card đồ họa rời NVIDIA GeForce RTX 2050 4 GB, laptop Asus TUF Gaming F15 FX506HF l&agrave; một trong những lựa chọn tuyệt vời cho c&aacute;c game thủ v&agrave; những người d&ugrave;ng l&agrave;m việc đa t&aacute;c vụ hoặc li&ecirc;n quan đến đồ họa, kỹ thuật.</strong><br />&bull; Với bộ vi xử l&yacute; Intel Core i5 11400H c&oacute; tốc độ l&ecirc;n đến 4.5 GHz, chiếc laptop Asus TUF Gaming n&agrave;y đảm bảo hoạt động mượt m&agrave; v&agrave; c&oacute; thể đ&aacute;p ứng tốt c&aacute;c t&aacute;c vụ đa nhiệm, mang lại trải nghiệm sử dụng tuyệt vời trong cả c&ocirc;ng việc lẫn giải tr&iacute;, chiến game ở mức cấu h&igrave;nh cao.</p>\r\n<p>&bull; Asus TUF Gaming F15 được trang bị card đồ họa NVIDIA GeForce RTX 2050 với bộ nhớ đồ họa 4 GB, gi&uacute;p đ&aacute;p ứng tốt nhu cầu chơi game cấu h&igrave;nh cao v&agrave; xử l&yacute; c&aacute;c file thiết kế nặng. Từ đ&oacute; mang lại cho người d&ugrave;ng trải nghiệm chơi game đỉnh cao v&agrave; hiệu suất l&agrave;m việc mượt m&agrave;.</p>\r\n<p>&bull; Bộ nhớ RAM 8 GB DDR4 với khả năng n&acirc;ng cấp tối đa l&ecirc;n đến 32 GB đ&aacute;p ứng nhu cầu chạy đa nhiệm mượt m&agrave;, cho bạn tận hưởng những gi&acirc;y ph&uacute;t chiến game đỉnh cao khi c&oacute; thể mở nhiều ứng dụng từ nghe nhạc, xem phim, game nặng c&ugrave;ng l&uacute;c.</p>\r\n<p>&bull; Với ổ cứng SSD 512 GB, bạn kh&ocirc;ng cần phải lo lắng về dung lượng lưu trữ v&agrave; đồng thời tận hưởng tốc độ khởi động nhanh ch&oacute;ng c&ugrave;ng khả năng tải ứng dụng mượt m&agrave; của chiếc laptop gaming.</p>\r\n<p>&bull; M&agrave;n h&igrave;nh 15.6 inch độ ph&acirc;n giải Full HD (1920 x 1080) v&agrave; tốc độ l&agrave;m mới 144 Hz mang lại h&igrave;nh ảnh sắc n&eacute;t v&agrave; mượt m&agrave;, cho trải nghiệm chơi game tuyệt vời, đặc biệt l&agrave; c&aacute;c game c&oacute; tốc độ khung h&igrave;nh cao. Đồng thời t&iacute;nh năng chống ch&oacute;i Anti Glare gi&uacute;p hạn chế hiện tượng &aacute;nh s&aacute;ng phản chiếu khi sử dụng trong điều kiện &aacute;nh s&aacute;ng mạnh.</p>\r\n<p>&bull; B&ecirc;n cạnh đ&oacute;, laptop c&ograve;n được trang bị hệ thống &acirc;m thanh DTS software ti&ecirc;n tiến, mang lại cho bạn trải nghiệm &acirc;m thanh sống động v&agrave; ch&acirc;n thực hơn bao giờ hết khi sử dụng.</p>\r\n<p>&bull; Laptop Asus c&ograve;n c&oacute; lối thiết kế hầm hố với sắc đen nam t&iacute;nh, tạo n&ecirc;n sự mạnh mẽ v&agrave; đậm t&iacute;nh thể thao. Điểm nhấn của b&agrave;n ph&iacute;m l&agrave; đ&egrave;n nền RGB c&oacute; thể chuyển đổi m&agrave;u sắc, tạo điểm nhấn độc đ&aacute;o khi sử dụng nơi đ&ocirc;ng người.</p>\r\n<p>&bull; M&aacute;y c&oacute; nhiều cổng giao tiếp hữu &iacute;ch: Thunderbolt 4, Jack tai nghe 3.5 mm, USB 3.2, HDMI v&agrave; LAN (RJ45).</p>', 'laptop-asus-tuf-gaming-f15-fx506hf-i5-11400h/8gb/512gb/4gb-rtx2050/144hz/win11-(hn014w)', '<p><strong>Cấu h&igrave;nh Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)</strong></p>\r\n<p>CPU:i511400H2.7GHz<br />RAM:8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz<br />Ổ cứng:Hỗ trợ th&ecirc;m 1 khe cắm SSD M.2 PCIe mở rộng (n&acirc;ng cấp tối đa 1 TB)512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)<br />M&agrave;n h&igrave;nh:15.6\"Full HD (1920 x 1080) 144Hz<br />Card m&agrave;n h&igrave;nh:Card rờiRTX 2050 4GB<br />Cổng kết nối:1 x Thunderbolt 4 (hỗ trợ DisplayPort)HDMILAN (RJ45)3 x USB 3.2Jack tai nghe 3.5 mm<br />Đặc biệt:C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />Hệ điều h&agrave;nh:Windows 11 Home SL<br />Thiết kế:Vỏ nhựa - nắp lưng bằng kim loại<br />K&iacute;ch thước, khối lượng:D&agrave;i 359 mm - Rộng 256 mm - D&agrave;y 22.8 ~ 24.5 mm - Nặng 2.3 kg<br />Thời điểm ra mắt:2023</p>', 16990000, 18990000, 15, 1, 'active', 1, 15, '2023-11-15 04:11:04', '2023-11-20 07:37:34'),
(6, 'Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)', '<p>Mẫu laptop gaming với mức gi&aacute; tầm trung đến từ thương hiệu Acer vừa được l&ecirc;n kệ tại Thế Giới Di Động, sở hữu hiệu năng mạnh mẽ với con chip Intel Gen 13 d&ograve;ng H hiệu năng cao, RAM 16 GB, card rời RTX c&ugrave;ng nhiều t&iacute;nh năng hiện đại. Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H (NX.KQ4SV.002) chắc chắn sẽ mang đến cho bạn những trải nghiệm sử dụng v&agrave; chiến game giải tr&iacute; tuyệt vời.<br />Cấu h&igrave;nh chiến mọi tựa game \"HOT HIT\" <br />Những mẫu laptop Aspire Gaming chắc chắn đ&atilde; qu&aacute; quen thuộc với anh em nhờ hiệu năng mạnh mẽ nhưng lại được gắn với m&aacute;c gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute;. Với mẫu Acer Aspire 5 Gaming v&agrave;o năm 2023 n&agrave;y chắc chắn sẽ kh&ocirc;ng l&agrave;m mọi người thất vọng với cũng gi&aacute; đ&oacute; nhưng hiệu năng c&oacute; phần được n&acirc;ng l&ecirc;n nữa.</p>\r\n<p>Laptop được trang bị bộ vi xử l&yacute; Intel Core i5 Raptor Lake - 13420H c&ugrave;ng card rời NVIDIA GeForce RTX 2050 4 GB đa nhiệm hiệu quả cho m&igrave;nh mọi c&ocirc;ng việc tr&ecirc;n cơ quan, học tập hay giải tr&iacute; thường ng&agrave;y đến việc thực hiện c&aacute;c bản thiết kế tr&ecirc;n nền tảng Premiere, Photoshop,... tuy nhi&ecirc;n với c&aacute;c ấn phẩm nghệ thuật, đồ hoạ động qu&aacute; nhiều layer hay effect th&igrave; m&igrave;nh đ&aacute;nh gi&aacute; m&aacute;y chưa đ&aacute;p ứng được nhanh ch&oacute;ng, nếu chỉ sử dụng cho c&ocirc;ng việc th&ocirc;ng thường th&ocirc;i th&igrave; vẫn rất ok nha.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/adminIsmart/public/storage/photos/1/Product/acer-aspire-5-a515-58gm-51lb-i5-nxkq4sv002-asc-7.jpg\" alt=\"\" width=\"880\" /></p>\r\n<p>Một điểm m&agrave; chắc chắn mọi người cũng kh&aacute; quan t&acirc;m tr&ecirc;n mẫu m&aacute;y n&agrave;y l&agrave; khả năng chơi c&aacute;c tựa game. Theo như m&igrave;nh nh&igrave;n nhận th&igrave; tốc độ đ&aacute;p ứng c&aacute;c tựa game Online/Esports như PUBG, LOL, Valorant, FO kh&aacute; tốt, hầu hết mọi tựa game đều c&oacute; mức FPS ổn định v&agrave; chơi trong thời gian d&agrave;i th&igrave; hiệu suất hoạt động vẫn được duy tr&igrave; bền bỉ.</p>\r\n<p>Bộ nhớ RAM 16 GB cho ph&eacute;p m&igrave;nh mở được nhiều cửa sổ tr&igrave;nh duyệt Chrome c&ugrave;ng l&uacute;c m&agrave; vẫn kh&ocirc;ng c&oacute; hiện tượng giật lag qu&aacute; nhiều v&agrave; em laptop Acer cũng hỗ trợ n&acirc;ng cấp tối đa 32 GB, ho&agrave;n to&agrave;n gi&uacute;p m&igrave;nh xử l&yacute; được khối lượng c&ocirc;ng việc nhiều hơn.</p>\r\n<p>Ổ cứng SSD 512 GB NVMe PCIe b&ecirc;n cạnh việc gi&uacute;p m&igrave;nh c&oacute; thể dễ d&agrave;ng truy xuất hay khởi động ứng dụng nhanh ch&oacute;ng th&igrave; c&ograve;n mang đến kh&ocirc;ng gian lưu trữ rộng lớn cho một sinh vi&ecirc;n như m&igrave;nh. Đối với những bạn thường l&agrave;m việc với c&aacute;c bản thiết kế hoặc tải nhiều tựa game th&igrave; m&aacute;y c&ograve;n hỗ trợ mở rộng kh&ocirc;ng gian lưu trữ l&ecirc;n tối đa 1 TB.</p>', 'laptop-acer-aspire-5-gaming-a515-58gm-51lb-i5-13420h/16gb/512gb/4gb-rtx2050/win11-(nx.kq4sv.002)', '<p><strong>Cấu h&igrave;nh Laptop Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H/16GB/512GB/4GB RTX2050/Win11 (NX.KQ4SV.002)</strong></p>\r\n<p>CPU: i513420H2.1GHz<br />RAM: 16 GBDDR4 2 khe (1 khe 8 GB + 1 khe 8 GB)3200 MHz<br />Ổ cứng: 512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)Hỗ trợ th&ecirc;m 1 khe cắm SSD M.2 PCIe Gen 4 mở rộng (n&acirc;ng cấp tối đa 1 TB)<br />M&agrave;n h&igrave;nh: 15.6\"Full HD (1920 x 1080)<br />Card m&agrave;n h&igrave;nh: Card rờiRTX 2050 4GB<br />Cổng kết nối: HDMILAN (RJ45)Jack tai nghe 3.5 mm1 x USB Type-C (hỗ trợ USB, Thunderbolt 4)2 x USB Type-A<br />Đặc biệt: C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />Hệ điều h&agrave;nh: Windows 11 Home SL<br />Thiết kế: Vỏ nhựa - nắp lưng bằng kim loại<br />K&iacute;ch thước, khối lượng: D&agrave;i 361 mm - Rộng 237 mm - D&agrave;y 17.9 mm - Nặng 1.7 kg<br />Thời điểm ra mắt: 2023</p>', 16990000, 17990000, 15, 1, 'active', 1, 16, '2023-11-15 04:18:08', '2023-11-17 04:01:49'),
(7, 'Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)', '<p>Laptop Dell Inspiron 15 3530 i5 1335U (71014840) sở hữu d&aacute;ng vẻ hiện đại đầy sang trọng, hiệu năng miễn ch&ecirc; với chip Intel thế hệ 13 ho&agrave;n to&agrave;n mới c&ugrave;ng card đồ hoạ rời. Chiếc laptop học tập - văn ph&ograve;ng n&agrave;y chắc chắn l&agrave; sẽ sự lựa chọn tuyệt vời gi&uacute;p bạn đ&aacute;p ứng đầy đủ mọi nhu cầu.<br />&bull; Laptop được trang bị bộ vi xử l&yacute; Intel Core i5 1335U thuộc thế hệ 13 c&oacute; tốc độ xung nhịp tối đa l&ecirc;n đến 4.6 GHz nhờ c&ocirc;ng nghệ Turbo Boost, c&oacute; hiệu năng xử l&yacute; vượt trội, giải quyết nhẹ nh&agrave;ng cho bạn mọi t&aacute;c vụ học tập, l&agrave;m việc tr&ecirc;n Office, Google,... hoặc n&acirc;ng cao hơn như c&aacute;c phần mềm m&aacute;y học đơn giản, coding v&agrave; đồ hoạ.</p>\r\n<p>&bull; Card rời NVIDIA GeForce MX550 2 GB mang đến khả năng xử l&yacute; đồ họa vượt trội, đ&aacute;p ứng tốt c&aacute;c nhu cầu s&aacute;ng tạo của người d&ugrave;ng tr&ecirc;n c&aacute;c nền tảng như Photoshop, Figma, Lightroom, Illustrator,... hay chơi một số tựa game hot.</p>\r\n<p>&bull; Bộ nhớ RAM 8 GB c&oacute; tốc độ Bus tối đa 3200 MHz cho khả năng đa nhiệm đ&aacute;ng kinh ngạc, bạn c&oacute; thể thoải m&aacute;i thao t&aacute;c tr&ecirc;n nhiều ứng dụng m&agrave; kh&ocirc;ng lo gặp hiện tượng giật lag hay gi&aacute;n đoạn.</p>\r\n<p>&bull; Ổ cứng SSD 512 GB mang đến một kh&ocirc;ng gian lưu trữ tương đối rộng lớn v&agrave; đầy đủ cho c&aacute;c ứng dụng, t&agrave;i liệu của bạn, đồng thời cũng cho ph&eacute;p khởi động c&aacute;c phần mềm ứng dụng nhanh ch&oacute;ng chỉ trong v&agrave;i gi&acirc;y.</p>', 'laptop-dell-inspiron-15-3530-i5-1335u/8gb/512gb/2gb-mx550/120hz/officehs/win11-(71014840)', '<p><strong>Cấu h&igrave;nh Laptop Dell Inspiron 15 3530 i5 1335U/8GB/512GB/2GB MX550/120Hz/OfficeHS/Win11 (71014840)</strong></p>\r\n<p>CPU: i51335U1.3GHz<br />RAM: 8 GBDDR4 (1 khe)3200 MHz<br />Ổ cứng: 512 GB SSD NVMe PCIe<br />M&agrave;n h&igrave;nh: 15.6\"Full HD (1920 x 1080) 120Hz<br />Card m&agrave;n h&igrave;nh: Card rờiMX550 2GB<br />Cổng kết nối: 1 x USB Type-C 3.2 (hỗ trợ Power Delivery v&agrave; DisplayPort)HDMI1 x USB 2.01 x USB 3.2Jack tai nghe 3.5 mm<br />Đặc biệt: C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />Hệ điều h&agrave;nh: Windows 11 Home SL + Office Home &amp; Student vĩnh viễn<br />Thiết kế: Vỏ nhựa<br />K&iacute;ch thước, khối lượng: D&agrave;i 358.5 mm - Rộng 235.56 mm - D&agrave;y 18.99 mm - Nặng 1.63 kg<br />Thời điểm ra mắt: 2023</p>', 20490000, 22490000, 15, 1, 'active', 1, 14, '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(8, 'Laptop Asus TUF Gaming F15 FX506HE i7 11800H/16GB/512GB/4GB RTX3050Ti/144Hz/Win11 (HN378W)', '<p>Laptop Asus TUF Gaming F15 FX506HE i7 11800H (HN378W) mang vẻ đẹp ấn tượng, cuốn h&uacute;t đậm chất gaming, đi c&ugrave;ng cấu h&igrave;nh mạnh mẽ, đa dạng t&iacute;nh năng, chiếc laptop gaming từ nh&agrave; Asus n&agrave;y sẽ trở th&agrave;nh người bạn đồng h&agrave;nh l&yacute; tưởng tr&ecirc;n những chiến trường ảo cho c&aacute;c anh em game thủ.<br />&bull; Laptop Asus TUF Gaming được trang bị bộ vi xử l&yacute; Intel Core i7 11800H v&agrave; card rời NVIDIA GeForce RTX 3050Ti với 4 GB VRAM mang đến hiệu năng xử l&yacute; mạnh mẽ, vừa gi&uacute;p người d&ugrave;ng thoải m&aacute;i thực hiện c&aacute;c c&ocirc;ng việc thiết kế, đồ hoạ, render video,... tr&ecirc;n nền tảng Adobe, vừa cho ph&eacute;p chiến mượt m&agrave; c&aacute;c tựa game.</p>\r\n<p>&bull; Bộ nhớ RAM 16 GB chuẩn DDR4 cho bạn khả năng chạy nhiều chương tr&igrave;nh hoặc t&aacute;c vụ c&ugrave;ng một l&uacute;c m&agrave; kh&ocirc;ng bị giật lag. Hơn nữa, m&aacute;y c&ograve;n hỗ trợ khả năng n&acirc;ng cấp RAM l&ecirc;n đến 32 GB cho ph&eacute;p bạn mở nhiều tr&ograve; chơi hay c&aacute;c phần mềm nặng hơn m&agrave; kh&ocirc;ng lo bị tr&agrave;n RAM, lag m&aacute;y.</p>\r\n<p>&bull; Ổ cứng SSD 512 GB NVMe PCIe cung cấp một kh&ocirc;ng gian lưu trữ đủ d&ugrave;ng cho c&aacute;c tr&ograve; chơi v&agrave; t&agrave;i liệu của bạn, đồng thời qu&aacute; tr&igrave;nh truy xuất, ghi đọc dữ liệu hay tải ứng dụng cũng được diễn ra nhanh ch&oacute;ng hơn. Người d&ugrave;ng cũng c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp dung lượng SSD l&ecirc;n tối đa 1 TB với việc th&aacute;o lắp v&agrave; thay thế dễ d&agrave;ng.</p>\r\n<p>&bull; M&agrave;n h&igrave;nh laptop k&iacute;ch thước 15.6 inch độ ph&acirc;n giải Full HD (1920 x 1080) cho bạn trải nghiệm khung h&igrave;nh lớn để l&agrave;m việc đa cửa sổ, h&igrave;nh ảnh r&otilde; n&eacute;t gi&uacute;p trải nghiệm giải tr&iacute;, chơi game trở n&ecirc;n sống động v&agrave; th&uacute; vị. Ngo&agrave;i ra, c&ocirc;ng nghệ chống ch&oacute;i Anti Glare cũng gi&uacute;p giảm tối đa t&igrave;nh trạng hắt s&aacute;ng tr&ecirc;n m&agrave;n h&igrave;nh khi d&ugrave;ng ngo&agrave;i trời hay dưới &aacute;nh đ&egrave;n.</p>\r\n<p>&bull; Tấm nền IPS kết hợp tần số qu&eacute;t 144 Hz cho c&aacute;c chuyển động ảnh r&otilde; n&eacute;t, m&agrave;u sắc chuẩn x&aacute;c v&agrave; kh&ocirc;ng bị nho&egrave; mờ khi người d&ugrave;ng chơi những tựa game c&oacute; tiết tấu tốc độ cao như bắn s&uacute;ng, đua xe hoặc xem c&aacute;c bộ phim h&agrave;nh động, bom tấn.</p>\r\n<p>&bull; C&ocirc;ng nghệ DTS Audio đem đến chất &acirc;m sinh động, c&aacute;c dải &acirc;m t&aacute;ch biệt, to r&otilde;, gi&uacute;p bạn đắm ch&igrave;m v&agrave;o những trải nghiệm giải tr&iacute; thư gi&atilde;n nhất.</p>\r\n<p>&bull; Laptop Asus được ho&agrave;n thiện với chất liệu nhựa cao cấp, khung m&aacute;y chắc chắn c&ugrave;ng c&aacute;c đường n&eacute;t mạnh mẽ chuẩn gaming chắc chắn sẽ chinh phục bất cứ gu thẩm mỹ n&agrave;o của anh em game thủ. Ngo&agrave;i ra, với đ&egrave;n nền chuyển m&agrave;u RGB - 1 v&ugrave;ng, người d&ugrave;ng c&oacute; thể tuỳ &yacute; chỉnh m&agrave;u sắc y&ecirc;u th&iacute;ch để mang lại nhiều cảm hứng hơn khi chơi game.</p>\r\n<p>&bull; Với đa dạng cổng kết nối như: Thunderbolt 4, Jack tai nghe 3.5 mm, USB 3.2, HDMI v&agrave; LAN (RJ45), chiếc laptop n&agrave;y sẽ gi&uacute;p người d&ugrave;ng li&ecirc;n kết với nhiều thiết bị ngoại vi kh&aacute;c nhau một c&aacute;ch thuận tiện v&agrave; nhanh ch&oacute;ng.</p>', 'laptop-asus-tuf-gaming-f15-fx506he-i7-11800h/16gb/512gb/4gb-rtx3050ti/144hz/win11-(hn378w)', '<p><strong>Cấu h&igrave;nh Laptop Asus TUF Gaming F15 FX506HF i5 11400H/8GB/512GB/4GB RTX2050/144Hz/Win11 (HN014W)</strong></p>\r\n<p>CPU: i511400H2.7GHz<br />RAM: 8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz<br />Ổ cứng: Hỗ trợ th&ecirc;m 1 khe cắm SSD M.2 PCIe mở rộng (n&acirc;ng cấp tối đa 1 TB)512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)<br />M&agrave;n h&igrave;nh: 15.6\"Full HD (1920 x 1080) 144Hz<br />Card m&agrave;n h&igrave;nh: Card rờiRTX 2050 4GB<br />Cổng kết nối: 1 x Thunderbolt 4 (hỗ trợ DisplayPort)HDMILAN (RJ45)3 x USB 3.2Jack tai nghe 3.5 mm<br />Đặc biệt: C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />Hệ điều h&agrave;nh: Windows 11 Home SL<br />Thiết kế: Vỏ nhựa - nắp lưng bằng kim loại<br />K&iacute;ch thước, khối lượng: D&agrave;i 359 mm - Rộng 256 mm - D&agrave;y 22.8 ~ 24.5 mm - Nặng 2.3 kg<br />Thời điểm ra mắt: 2023</p>', 15990000, 17990000, 15, 1, 'active', 1, 15, '2023-11-20 01:53:57', '2023-11-20 07:38:30'),
(9, 'Tai nghe Bluetooth True Wireless HAVIT TW945', '<p><strong>Th&ocirc;ng tin sản phẩm</strong><br />Tai nghe Bluetooth True Wireless HAVIT TW945 mang đến thiết kế sang trọng với kiểu d&aacute;ng tối giản v&agrave; m&agrave;u sắc đa dạng, &acirc;m thanh đầy đủ v&agrave; r&otilde; r&agrave;ng, t&iacute;ch hợp nhiều t&iacute;nh năng v&agrave; tiện &iacute;ch kh&aacute;c, phục vụ tốt nhu cầu sử dụng cơ bản h&agrave;ng ng&agrave;y của đa số người d&ugrave;ng.<br />&bull; Thiết kế trong suốt trẻ trung v&agrave; đột ph&aacute;, trang bị nhiều gam m&agrave;u thời thượng cho bạn dễ d&agrave;ng lựa chọn.</p>\r\n<p>&bull; Khối lượng gọn nhẹ v&agrave; k&iacute;ch thước vừa vặn, gi&uacute;p bạn đeo tai nghe &ecirc;m &aacute;i v&agrave; nhẹ nh&agrave;ng cả ng&agrave;y d&agrave;i.</p>\r\n<p>&bull; &Acirc;m thanh sắc n&eacute;t v&agrave; sống động, mang đến trải nghiệm nghe nhạc ấn tượng.</p>\r\n<p>&bull; Người d&ugrave;ng c&oacute; thể lắng nghe &acirc;m thanh độc lập từ mỗi chiếc tai nghe ri&ecirc;ng lẻ bằng c&aacute;ch chỉ lấy 1 b&ecirc;n tai ra khỏi hộp sạc.</p>', 'tai-nghe-bluetooth-true-wireless-havit-tw945', '<p><strong>Th&ocirc;ng số kỹ thuật Tai nghe Bluetooth True Wireless HAVIT TW945</strong></p>\r\n<p>Thời gian tai nghe: D&ugrave;ng 3 giờ - Sạc 1.5 giờ<br />Thời gian hộp sạc: D&ugrave;ng 18 giờ - Sạc 2 giờ<br />Cổng sạc: Type-C<br />C&ocirc;ng nghệ &acirc;m thanh: M&agrave;ng loa 13 mm<br />Tương th&iacute;ch: Android, iOS, WindowsMacOS<br />Tiện &iacute;ch: Tương th&iacute;ch trợ l&yacute; ảoC&oacute; mic thoạiSử dụng độc lập 1 b&ecirc;n tai ngheGame Mode<br />Hỗ trợ kết nối: Bluetooth 5.3<br />Điều khiển bằng: Cảm ứng chạm</p>', 320000, 360000, 15, 1, 'active', 1, 10, '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(10, 'Điện thoại iPhone 15 Pro Max 256GB', '<p><strong>L&yacute; do chọn mua iPhone 15 Pro Max&nbsp;</strong><br />iPhone 15 Pro Max l&agrave; một chiếc điện thoại th&ocirc;ng minh cao cấp được mong đợi nhất năm 2023. Với nhiều t&iacute;nh năng mới v&agrave; cải tiến, iPhone 15 Pro Max chắc chắn sẽ l&agrave; một lựa chọn tuyệt vời cho những người d&ugrave;ng đang t&igrave;m kiếm một chiếc điện thoại c&oacute; hiệu năng mạnh mẽ, camera chất lượng v&agrave; thiết kế sang trọng.</p>\r\n<p>&bull; Sản phẩm ch&iacute;nh h&atilde;ng, đảm bảo chất lượng: Thế Giới Di Động l&agrave; nh&agrave; b&aacute;n lẻ điện thoại di động lớn nhất Việt Nam, cam kết cung cấp sản phẩm ch&iacute;nh h&atilde;ng, đảm bảo chất lượng. Bạn c&oacute; thể y&ecirc;n t&acirc;m về xuất xứ sản phẩm v&agrave; c&oacute; thể tận hưởng trải nghiệm sử dụng tốt nhất.</p>\r\n<p>&bull; Ưu đ&atilde;i v&agrave; khuyến m&atilde;i hấp dẫn: Thế Giới Di Động thường xuy&ecirc;n c&oacute; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i, giảm gi&aacute; v&agrave; tặng qu&agrave; k&egrave;m, gi&uacute;p bạn tiết kiệm được một khoản tiền khi mua iPhone 15 Pro Max.</p>\r\n<p>&bull; Hệ thống cửa h&agrave;ng rộng khắp: Thế Giới Di Động c&oacute; mạng lưới cửa h&agrave;ng rộng khắp tr&ecirc;n to&agrave;n quốc, gi&uacute;p bạn dễ d&agrave;ng t&igrave;m được một cửa h&agrave;ng gần nh&agrave; để mua sắm. Bạn cũng c&oacute; thể trực tiếp kiểm tra sản phẩm v&agrave; nhận sự hỗ trợ từ nh&acirc;n vi&ecirc;n tại cửa h&agrave;ng.</p>\r\n<p>&bull; Dịch vụ hậu m&atilde;i chuy&ecirc;n nghiệp: Thế Giới Di Động cung cấp dịch vụ hậu m&atilde;i chuy&ecirc;n nghiệp, bao gồm bảo h&agrave;nh, sửa chữa v&agrave; hỗ trợ kỹ thuật. Điều n&agrave;y gi&uacute;p bạn y&ecirc;n t&acirc;m về việc sử dụng trong thời gian d&agrave;i.</p>\r\n<p>&bull; Trả g&oacute;p linh hoạt: Thế Giới Di Động cung cấp c&aacute;c lựa chọn trả g&oacute;p ph&ugrave; hợp với ng&acirc;n s&aacute;ch của bạn, gi&uacute;p bạn mua được sản phẩm mong muốn m&agrave; kh&ocirc;ng cần thanh to&aacute;n to&agrave;n bộ số tiền một l&uacute;c.</p>\r\n<p>&bull; Uy t&iacute;n v&agrave; kinh nghiệm l&acirc;u năm: Với hơn 15 năm hoạt động tr&ecirc;n thị trường, Thế Giới Di Động đ&atilde; x&acirc;y dựng được một uy t&iacute;n mạnh mẽ trong ng&agrave;nh c&ocirc;ng nghiệp điện thoại di động. Điều n&agrave;y gi&uacute;p bạn y&ecirc;n t&acirc;m về việc mua sắm tại Thế Giới Di Động.</p>', 'Điện-thoai-iphone-15-pro-max-256gb', '<p><strong>Cấu h&igrave;nh Điện thoại iPhone 15 Pro Max 256GB</strong></p>\r\n<p>M&agrave;n h&igrave;nh: OLED6.7\"Super Retina XDR<br />Hệ điều h&agrave;nh: iOS 17<br />Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP<br />Camera trước: 12 MP<br />Chip: Apple A17 Pro 6 nh&acirc;n<br />RAM: 8 GB<br />Dung lượng lưu trữ: 256 GB<br />SIM: 1 Nano SIM &amp; 1 eSIMHỗ trợ 5G<br />Pin, Sạc: 4422 mAh20 W</p>', 33900000, 34900000, 15, 1, 'active', 1, 11, '2023-11-20 03:05:09', '2023-11-20 07:39:28');

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
(7, 2, 7, '1', '2023-11-11 20:22:13', '2023-11-11 20:22:13'),
(16, 3, 16, '1', '2023-11-11 20:24:47', '2023-11-11 20:24:47'),
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
(45, 6, 53, '0', '2023-11-15 04:18:08', '2023-11-15 04:18:08'),
(46, 7, 54, '1', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(47, 7, 55, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(48, 7, 56, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(49, 7, 57, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(50, 7, 58, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(51, 7, 59, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(52, 7, 60, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(53, 7, 61, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(54, 7, 62, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(55, 7, 63, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(56, 7, 64, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(57, 7, 65, '0', '2023-11-19 04:40:55', '2023-11-19 04:40:55'),
(101, 8, 110, '1', '2023-11-20 01:53:57', '2023-11-20 01:53:57'),
(127, 8, 136, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(128, 8, 137, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(129, 8, 138, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(130, 8, 139, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(131, 8, 140, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(132, 8, 141, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(133, 8, 142, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(134, 8, 143, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(135, 8, 144, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(136, 8, 145, '0', '2023-11-20 01:55:17', '2023-11-20 01:55:17'),
(137, 8, 146, '0', '2023-11-20 01:55:18', '2023-11-20 01:55:18'),
(138, 8, 147, '0', '2023-11-20 01:55:18', '2023-11-20 01:55:18'),
(144, 3, 153, '0', '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(145, 3, 154, '0', '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(146, 3, 155, '0', '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(147, 3, 156, '0', '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(148, 3, 157, '0', '2023-11-20 02:07:35', '2023-11-20 02:07:35'),
(149, 9, 158, '1', '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(150, 9, 159, '0', '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(151, 9, 160, '0', '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(152, 9, 161, '0', '2023-11-20 02:33:02', '2023-11-20 02:33:02'),
(153, 2, 162, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(154, 2, 163, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(155, 2, 164, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(156, 2, 165, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(157, 2, 166, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(158, 2, 167, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(159, 2, 168, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(160, 2, 169, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(161, 2, 170, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(162, 2, 171, '0', '2023-11-20 02:57:42', '2023-11-20 02:57:42'),
(168, 10, 177, '1', '2023-11-20 03:05:09', '2023-11-20 03:05:09'),
(176, 10, 185, '0', '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(177, 10, 186, '0', '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(178, 10, 187, '0', '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(179, 10, 188, '0', '2023-11-20 03:08:54', '2023-11-20 03:08:54'),
(180, 10, 189, '0', '2023-11-20 03:08:54', '2023-11-20 03:08:54');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

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
