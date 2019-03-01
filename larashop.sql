-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2019 at 11:07 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `publisher` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stock` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` enum('PUBLISH','DRAFT') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `description`, `author`, `publisher`, `cover`, `price`, `views`, `stock`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laravel', 'laravel', 'Buku Laravel', 'Supriadi', 'supriadi', 'book-covers/CXI35I89Uuw9AanACDkNChu0NANrIezbKFfUzLp9.png', 100000.00, 0, 10, 'PUBLISH', 1, NULL, NULL, '2019-02-26 05:14:48', '2019-02-26 05:14:48', NULL),
(2, 'PHP', 'php', 'Buku PHP', 'Roadman', 'roadman', 'book-covers/8xiayae5DkesmZnLtUnipF4GRjymCBgwHwW4QRHD.png', 200000.00, 0, 20, 'PUBLISH', 1, NULL, NULL, '2019-02-26 05:15:29', '2019-02-26 05:15:29', NULL),
(3, 'Laskar Pelangi', 'laskar-pelangi', 'Buku Laskar Pelangi', 'Siagian', 'siagian', 'book-covers/rVmPULX71gWJ6gK9awG8IIXSDRzwhEoSRH9R94AG.jpeg', 300000.00, 0, 30, 'PUBLISH', 1, NULL, NULL, '2019-02-26 05:16:50', '2019-02-26 05:16:50', NULL),
(4, 'Sijuki', 'sijuki', 'Buku Sijuki', 'Supriadi', 'supriadi', 'book-covers/US48ivfr31sXcsa7Zc9jjig5hAef45Q0kYCbKj9w.jpeg', 50000.00, 0, 40, 'PUBLISH', 1, NULL, NULL, '2019-02-26 05:18:22', '2019-02-26 05:18:22', NULL),
(5, 'Kancil', 'kancil', 'Buku Kancil', 'Roadman', 'roadman', 'book-covers/JDwWvabBRz3VEWumGcTHAPojaR23l2hrnnwIO568.jpeg', 100000.00, 0, 20, 'PUBLISH', 1, NULL, NULL, '2019-02-26 05:19:59', '2019-02-26 05:19:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 3, NULL, NULL),
(5, 5, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL COMMENT 'berisi nama file image saja tanpa path',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', 'category_images/bpBGY7dKjiMHnXBjDSfgrL9w7F8uVi7YRUyY6S20.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:06:07', '2019-02-26 05:06:07'),
(2, 'Novel', 'novel', 'category_images/ELpOYuwKoIV7hPxH0Bxqs0bj6V0aM1zcHuaZhHGE.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:07:06', '2019-02-26 05:07:06'),
(3, 'Komik', 'komik', 'category_images/ZP449bPRmaqXGt1EspUiSH0gNlBvVm4bOKcqocwq.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:08:17', '2019-02-26 05:08:17'),
(4, 'Ensiklopedi', 'ensiklopedi', 'category_images/UwPREdEbgxR4KmHouWqUKIm3qbBz2dYjSqkUuev8.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:09:21', '2019-02-26 05:09:21'),
(5, 'Antologi', 'antologi', 'category_images/G4SJL216p6ZVabIVQyH1AH6Aw0VgOwRqFCbLGMpv.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:09:55', '2019-02-26 05:09:55'),
(6, 'Dongeng', 'dongeng', 'category_images/POR5ghEMhXJNVYiGPfHZ4N3uV5b8RhhmpGnJ9ORw.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:10:23', '2019-02-26 05:10:23'),
(7, 'Biografi', 'biografi', 'category_images/lItbBLSMPHtDKh3wrXFFayC9keCUuuM6IGhdPao7.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:10:45', '2019-02-26 05:10:45'),
(8, 'Fotografi', 'fotografi', 'category_images/OuuDQG9og65Tl6rYn4MXR7KeisSxLB5Iikx1cvU6.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:11:17', '2019-02-26 05:11:17'),
(9, 'Karya ilmiah', 'karya-ilmiah', 'category_images/vhppsjTjmpClDVRjJ8ecMC4DW4kilESzK8x6xiVA.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:11:39', '2019-02-26 05:11:39'),
(10, 'Kamus', 'kamus', 'category_images/2G1xIeFDs0I7Rx9rAWiaPSXkKgxW7dmUaSlL98XD.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:12:28', '2019-02-26 05:12:28'),
(11, 'Ilmiah', 'ilmiah', 'category_images/z7co6aGcViyHpNijdk2hdGdaal0x3AWp9hP8WXjo.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:12:56', '2019-02-26 05:12:56'),
(12, 'Atlas', 'atlas', 'category_images/sZd94CVHFLGbTXdmWlCjwi9jVptTowxqI4Nzzyvb.jpeg', 1, NULL, NULL, NULL, '2019-02-26 05:13:48', '2019-02-26 05:13:48'),
(13, 'baru', 'baru', 'category_images/0QoMk3f38dn0pMLAQjMOuu3v8w2jZHnIF2O3SaSx.jpeg', 1, NULL, NULL, '2019-03-01 03:00:06', '2019-03-01 01:58:19', '2019-03-01 03:00:06'),
(14, 'Cobagfgf', 'cobagfgf', 'category_images/mJd5ITDiWl7H9HGBuGkr5LXv8qDjN1kCYQdHeSnS.jpeg', 1, NULL, NULL, '2019-03-01 02:59:57', '2019-03-01 02:08:26', '2019-03-01 02:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_21_085439_penyesuaian_table_users', 1),
(4, '2019_02_25_110644_create_categories_table', 1),
(5, '2019_02_26_031612_create_books_table', 1),
(6, '2019_02_26_032033_create_book_category_table', 1),
(7, '2019_02_26_080754_create_orders_table', 1),
(8, '2019_02_26_081337_create_book_order_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total_price` double(8,2) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('SUBMIT','PROCESS','FINISH','CANCEL') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `invoice_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 390000.00, '201807060001', 'FINISH', '2018-07-05 17:00:00', '2018-07-05 17:00:00'),
(2, 1, 780000.00, '201807250002', 'PROCESS', '2018-07-25 17:00:00', '2018-10-02 01:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `roles` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `roles`, `address`, `phone`, `avatar`, `status`) VALUES
(1, 'Site Administrator', 'administrator@larashop.test', NULL, '$2y$10$YRfv9ylyrVImed2W4cXQV.QEsumgAM6/hSVD5ccUTF5u5Hghzen3e', 'Cfy4FhFow9u2pYwiJdYNRV05XhcyxsV4HAR9k5OXJYAZMt62x0ei0vH6uwEA', '2019-02-26 04:38:06', '2019-02-26 04:38:06', 'administrator', '[\"ADMIN\"]', NULL, NULL, NULL, 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_order_order_id_foreign` (`order_id`),
  ADD KEY `book_order_book_id_foreign` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `book_order_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
