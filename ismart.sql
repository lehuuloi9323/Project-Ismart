-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 06:45 AM
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
(26, '2023_10_26_140931_create_product_categories_table', 6),
(27, '2023_10_26_144601_create_products_table', 6),
(28, '2023_10_30_102516_create_images_table', 6),
(29, '2023_10_31_110100_create_product_images_table', 7);

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
  `description` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
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
(1, 'Lê Hửu Lợi12', '11111111', 'le-huu-loi12', '<p>L&ecirc; Hửu Lợi12L&ecirc; Hửu Lợi12L&ecirc; Hửu Lợi12L&ecirc; Hửu Lợi12</p>', 11111111, 111, 0, 'active', 1, 1, '2023-10-31 03:39:58', '2023-10-31 03:39:58');

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
(1, 'Điện thoại', 'phone', 'Điện thoại di động', 1, 0, '2023-10-31 03:21:54', '2023-10-31 03:22:06'),
(2, 'Laptop', 'laptop', 'Laptop', 1, 0, '2023-10-31 03:22:28', '2023-10-31 03:22:28');

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
(2, 'Diện', '123@gmail.com', NULL, '$2y$10$vZIYcA4NwhyAVpn80xa0hOg5xEqDDlV29lZjSwbwiP6pIgVnl3hfG', NULL, '2023-09-15 02:33:55', '2023-10-06 01:01:50', NULL),
(3, 'Lưu123', '123456@gmail.com', NULL, '$2y$10$7uTXwErdLGpCQzFnqCxkye4n59e8fwRfSco2dQe.BLO1.VxUvTTh2', NULL, '2023-09-15 02:34:20', '2023-09-17 18:07:57', NULL),
(4, 'Lê Thị Thu Thảo', 'thuthao@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:01:41', '2023-09-17 18:07:31', NULL),
(7, 'Lê Hữu Phát', 'phat@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:37:05', '2023-10-15 23:29:17', '2023-10-15 23:29:17'),
(8, 'Hùng', 'hung@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:37:27', '2023-10-04 21:23:21', '2023-10-04 21:23:21'),
(9, 'Lan', 'lan@gmail.com', NULL, '123456789', NULL, '2023-09-16 01:37:43', '2023-10-15 23:28:50', '2023-10-15 23:28:50'),
(10, 'Hữu Phát', 'huuphat@gmail.com', NULL, '123456789', NULL, '2023-09-16 02:32:40', '2023-10-15 23:27:49', '2023-10-15 23:27:49'),
(11, 'LÊ VĂN A', 'levana@gmail.com', NULL, '12345678', NULL, '2023-10-06 00:41:58', '2023-10-15 23:30:54', '2023-10-15 23:30:54'),
(12, 'Administrator1', 'ad@gmail.com', NULL, '$2y$10$//rQhMDSnCkLte.YrL4T2OIM.byl4.pwjlAAt9z/X8aNUwWB/mtBe', NULL, '2023-10-06 00:51:56', '2023-10-15 23:31:49', '2023-10-15 23:31:49'),
(14, 'Lê Hửu Lợi 2', 'lehuuloi612@gmail.com', NULL, '$2y$10$apxXy32ZsFMzGsCOyT8iA.Ipwd/Y4WGq7Nq42j1Mcap8/RhZbJMhm', NULL, '2023-10-06 20:00:15', '2023-10-15 23:30:11', '2023-10-15 23:30:11'),
(15, 'Vinh', 'vinh@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:18:12', '2023-10-15 23:30:32', '2023-10-15 23:30:32'),
(16, 'Thiện', 'thien@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:26:33', '2023-10-15 23:31:29', '2023-10-15 23:31:29'),
(17, 'Vinh', 'vinh1@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:57:40', '2023-10-16 00:08:08', '2023-10-16 00:08:08'),
(18, 'Thiện', 'thien1@gmail.com', NULL, '12345678', NULL, '2023-10-15 23:59:29', '2023-10-15 23:59:29', NULL),
(19, 'Hào', 'hao@gmail.com', NULL, '12345678', NULL, '2023-10-16 00:00:26', '2023-10-16 00:00:26', NULL),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
