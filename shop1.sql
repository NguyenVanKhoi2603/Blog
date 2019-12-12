-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2019 at 12:32 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 'dien-thoai', 1, '2019-12-09 00:57:41', '2019-12-09 00:57:41'),
(4, 'Tivi', 'tivi', 1, '2019-12-11 06:50:33', '2019-12-11 06:50:33'),
(6, 'Máy Ảnh', 'may-anh', 1, '2019-12-11 07:12:06', '2019-12-11 07:12:06'),
(7, 'Máy Giặc', 'may-giac', 1, '2019-12-11 07:20:57', '2019-12-11 07:20:57'),
(8, 'Tai Nghe', 'tai-nghe', 1, '2019-12-11 08:35:32', '2019-12-11 08:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `idUser`, `email`, `address`, `phone`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@gmail.com', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', '0988823377', 0, '2019-12-09 01:30:40', '2019-12-09 01:38:23'),
(2, 1, 'admin@gmail.com', 'dd', '0988823377', 0, '2019-12-09 01:38:23', '2019-12-10 19:42:50'),
(3, 1, 'bachvonam1996@gmail.com', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', '0988823377', 1, '2019-12-10 19:42:50', '2019-12-10 19:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_18_145809_create_categories_table', 1),
(4, '2019_05_18_145857_create_product_types_table', 1),
(5, '2019_05_18_145917_create_products_table', 1),
(6, '2019_05_18_145941_create_orders_table', 1),
(7, '2019_05_18_150001_create_order_details_table', 1),
(8, '2019_05_18_150027_create_contacts_table', 1),
(9, '2019_05_18_150213_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUser` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monney` double(8,2) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `code_order`, `idUser`, `name`, `address`, `email`, `phone`, `monney`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'order1672036707', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:32:18', '2019-12-09 01:32:18'),
(2, 'order906868295', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:32:20', '2019-12-09 01:32:20'),
(3, 'order1940921880', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:32:21', '2019-12-09 01:32:21'),
(4, 'order1057162195', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:32:21', '2019-12-09 01:32:21'),
(5, 'order1316324871', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:34:42', '2019-12-09 01:34:42'),
(6, 'order525925185', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:34:42', '2019-12-09 01:34:42'),
(7, 'order16235537', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:34:43', '2019-12-09 01:34:43'),
(8, 'order743362538', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'admin@gmail.com', '0988823377', 34520.00, 'cứt gà', 0, '2019-12-09 01:34:43', '2019-12-09 01:34:43'),
(9, 'order1359682162', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:26', '2019-12-09 01:38:26'),
(10, 'order201135055', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:28', '2019-12-09 01:38:28'),
(11, 'order400381294', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(12, 'order1685185344', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(13, 'order19599736', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(14, 'order780663881', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(15, 'order1582834954', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:33', '2019-12-09 01:38:33'),
(16, 'order103186028', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(17, 'order1771706919', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(18, 'order518323449', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(19, 'order210361234', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(20, 'order201147180', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(21, 'order853299284', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(22, 'order2101037761', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(23, 'order103982418', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(24, 'order2000432039', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(25, 'order296173410', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(26, 'order1091485763', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(27, 'order88476798', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(28, 'order813174247', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(29, 'order1993742841', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(30, 'order1107310398', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(31, 'order1056608243', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(32, 'order1968655925', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(33, 'order645446189', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(34, 'order918930504', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(35, 'order1764083108', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(36, 'order1675007169', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(37, 'order92668124', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:39', '2019-12-09 01:38:39'),
(38, 'order714529612', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:38:39', '2019-12-09 01:38:39'),
(39, 'order176767367', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:45:20', '2019-12-09 01:45:20'),
(40, 'order1184536951', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 34520.00, NULL, 0, '2019-12-09 01:50:59', '2019-12-09 01:50:59'),
(41, 'order1103617432', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 303423.00, NULL, 0, '2019-12-09 02:04:51', '2019-12-09 02:04:51'),
(42, 'order512645187', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 303423.00, NULL, 0, '2019-12-09 02:39:26', '2019-12-09 02:39:26'),
(43, 'order2142388858', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 303423.00, NULL, 0, '2019-12-09 02:40:21', '2019-12-09 02:40:21'),
(44, 'order1144335562', 1, 'Nguyễn Huy Tuệ', 'dd', 'admin@gmail.com', '0988823377', 22834.00, NULL, 0, '2019-12-09 22:39:28', '2019-12-09 22:39:28'),
(45, 'order167885699', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'bachvonam1996@gmail.com', '0988823377', 303423.00, NULL, 0, '2019-12-10 19:43:11', '2019-12-10 19:43:11'),
(46, 'order1595266600', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'bachvonam1996@gmail.com', '0988823377', 22834.00, NULL, 0, '2019-12-10 19:51:34', '2019-12-10 19:51:34'),
(47, 'order379860557', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'bachvonam1996@gmail.com', '0988823377', 22834.00, '2342', 0, '2019-12-10 19:51:55', '2019-12-10 19:51:55'),
(48, 'order689627715', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'bachvonam1996@gmail.com', '0988823377', 22834.00, '2342', 0, '2019-12-10 19:52:44', '2019-12-10 19:52:44'),
(49, 'order1519992661', 1, 'Nguyễn Huy Tuệ', 'Số 40 đường 12c, Khu phố Chân Phúc Cẩm', 'bachvonam1996@gmail.com', '0988823377', 303423.00, NULL, 0, '2019-12-10 19:54:00', '2019-12-10 19:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE IF NOT EXISTS `orderdetail` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idOrder` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `idOrder`, `idProduct`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 3000.00, '2019-12-09 01:32:18', '2019-12-09 01:32:18'),
(2, 2, 1, 4, 3000.00, '2019-12-09 01:32:20', '2019-12-09 01:32:20'),
(3, 3, 1, 4, 3000.00, '2019-12-09 01:32:21', '2019-12-09 01:32:21'),
(4, 4, 1, 4, 3000.00, '2019-12-09 01:32:21', '2019-12-09 01:32:21'),
(5, 5, 1, 4, 3000.00, '2019-12-09 01:34:42', '2019-12-09 01:34:42'),
(6, 6, 1, 4, 3000.00, '2019-12-09 01:34:42', '2019-12-09 01:34:42'),
(7, 7, 1, 4, 3000.00, '2019-12-09 01:34:43', '2019-12-09 01:34:43'),
(8, 8, 1, 4, 3000.00, '2019-12-09 01:34:43', '2019-12-09 01:34:43'),
(9, 9, 1, 4, 3000.00, '2019-12-09 01:38:26', '2019-12-09 01:38:26'),
(10, 10, 1, 4, 3000.00, '2019-12-09 01:38:28', '2019-12-09 01:38:28'),
(11, 11, 1, 4, 3000.00, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(12, 12, 1, 4, 3000.00, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(13, 13, 1, 4, 3000.00, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(14, 14, 1, 4, 3000.00, '2019-12-09 01:38:29', '2019-12-09 01:38:29'),
(15, 15, 1, 4, 3000.00, '2019-12-09 01:38:33', '2019-12-09 01:38:33'),
(16, 16, 1, 4, 3000.00, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(17, 17, 1, 4, 3000.00, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(18, 18, 1, 4, 3000.00, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(19, 19, 1, 4, 3000.00, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(20, 20, 1, 4, 3000.00, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(21, 21, 1, 4, 3000.00, '2019-12-09 01:38:34', '2019-12-09 01:38:34'),
(22, 22, 1, 4, 3000.00, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(23, 23, 1, 4, 3000.00, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(24, 24, 1, 4, 3000.00, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(25, 25, 1, 4, 3000.00, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(26, 26, 1, 4, 3000.00, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(27, 27, 1, 4, 3000.00, '2019-12-09 01:38:35', '2019-12-09 01:38:35'),
(28, 28, 1, 4, 3000.00, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(29, 29, 1, 4, 3000.00, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(30, 30, 1, 4, 3000.00, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(31, 31, 1, 4, 3000.00, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(32, 32, 1, 4, 3000.00, '2019-12-09 01:38:36', '2019-12-09 01:38:36'),
(33, 33, 1, 4, 3000.00, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(34, 34, 1, 4, 3000.00, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(35, 35, 1, 4, 3000.00, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(36, 36, 1, 4, 3000.00, '2019-12-09 01:38:37', '2019-12-09 01:38:37'),
(37, 37, 1, 4, 3000.00, '2019-12-09 01:38:39', '2019-12-09 01:38:39'),
(38, 38, 1, 4, 3000.00, '2019-12-09 01:38:39', '2019-12-09 01:38:39'),
(39, 39, 1, 4, 3000.00, '2019-12-09 01:45:20', '2019-12-09 01:45:20'),
(40, 40, 1, 4, 3000.00, '2019-12-09 01:50:59', '2019-12-09 01:50:59'),
(41, 41, 2, 1, 234234.00, '2019-12-09 02:04:51', '2019-12-09 02:04:51'),
(42, 42, 2, 1, 234234.00, '2019-12-09 02:39:26', '2019-12-09 02:39:26'),
(43, 43, 2, 1, 234234.00, '2019-12-09 02:40:21', '2019-12-09 02:40:21'),
(44, 44, 3, 1, 2342.00, '2019-12-09 22:39:28', '2019-12-09 22:39:28'),
(45, 45, 2, 1, 234234.00, '2019-12-10 19:43:11', '2019-12-10 19:43:11'),
(46, 46, 3, 1, 2342.00, '2019-12-10 19:51:34', '2019-12-10 19:51:34'),
(47, 47, 3, 1, 2342.00, '2019-12-10 19:51:55', '2019-12-10 19:51:55'),
(48, 48, 3, 1, 2342.00, '2019-12-10 19:52:44', '2019-12-10 19:52:44'),
(49, 49, 2, 1, 234234.00, '2019-12-10 19:54:00', '2019-12-10 19:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `promotional` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idProductType` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `description`, `quantity`, `price`, `promotional`, `image`, `idCategory`, `idProductType`, `status`, `created_at`, `updated_at`) VALUES
(2, 'df', 'df', '<p>234324234</p>', 1, 34234, 234234, 'Mon-12-19191919_978716293_maxresdefault.jpg', 1, 1, 1, '2019-12-09 02:00:33', '2019-12-09 02:00:33'),
(3, 'tue', 'tue', '<p>435435324</p>', 1, 23423, 2342, 'Mon-12-19191919_2072293564_welcome.png', 1, 1, 1, '2019-12-09 02:07:00', '2019-12-09 02:07:00'),
(5, 'MÁY ẢNH CANON EOS 750D KIT EF S18-55 IS STM', 'may-anh-canon-eos-750d-kit-ef-s18-55-is-stm', '<p><strong><a href=\"https://binhminhdigital.com/canon-eos-750d-body-hang-nhap-khau.html\" target=\"_blank\" title=\"Máy Ảnh Canon EOS 750D\">M&aacute;y Ảnh Canon EOS 750D</a></strong></p>\r\n\r\n<p>- Cảm biến CMOS 24.2 megapixel.</p>\r\n\r\n<p>- Bộ xử l&yacute; h&igrave;nh ảnh DIGIC 6</p>\r\n\r\n<p>- Hệ thống đo n&eacute;t ti&ecirc;n tiến với 19 điểm</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh LCD 3.0inch cảm ứng</p>\r\n\r\n<p>- Tốc độ m&agrave;n trập 1/4000 gi&acirc;y đến 30 gi&acirc;y</p>\r\n\r\n<p>- Tốc độ chụp li&ecirc;n tục tối đa 5.0 h&igrave;nh/gi&acirc;y</p>\r\n\r\n<p>- ISO 100-6400 ( mở rộng 12800)</p>\r\n\r\n<p>- Quay phim Full HD</p>\r\n\r\n<p>- Hỗ trợ Wi-Fi v&agrave; NFC</p>\r\n\r\n<p>- Trọng lượng &nbsp;565g<br />\r\n- Pin tương th&iacute;ch LP-E17</p>\r\n\r\n<p><strong>-&nbsp;<a href=\"https://binhminhdigital.com/phu-kien-may-anh-may-quay/\" target=\"_blank\">Phụ kiện m&aacute;y ảnh đi k&egrave;m</a></strong>: Pin, sạc pin, d&acirc;y đeo,đĩa CD, cataloge, phiếu bảo h&agrave;nh</p>', 11, 12000000, 0, 'Wed-12-19191919_1842064521_canon-eos-750d-ef-s-18-55mm-f35-56-is-stm(3).jpg', 6, 12, 1, '2019-12-11 07:18:10', '2019-12-11 07:18:10'),
(6, 'MÁY ẢNH SONY ALPHA A6000 (ILCE-6000L) KIT 16-50 F3.5-5.6 OSS (ĐEN)', 'may-anh-sony-alpha-a6000-(ilce-6000lkit-16-50-f3.5-5.6-oss-(den)', '<p>&nbsp;<strong><a href=\"https://binhminhdigital.com/sony-alpha-a6000-1650-oss-f3556-lens-kit-den.html\" target=\"_blank\" title=\"Máy Ảnh Sony Alpha A6000\">M&aacute;y Ảnh Sony Alpha A6000</a></strong><br />\r\n- Cảm biến Exmor&trade; APS HD CMOS 24.3MP c&oacute; bộ xử l&yacute; BIONZ X&trade;<br />\r\n- Độ ph&acirc;n giải 24.3 MP<br />\r\n- Lấy n&eacute;t tự động Fast Hybrid<br />\r\n- Khung ngắm điện tử 1,0 cm<br />\r\n- M&agrave;n h&igrave;nh 3 inch<br />\r\n- ISO 100-25600<br />\r\n- Tốc độ chụp 11 ảnh / gi&acirc;y<br />\r\n- Chia sẻ v&agrave; kiểm so&aacute;t đơn giản c&ugrave;ng Wi-Fi&reg; v&agrave; NFC một chạm<br />\r\n- Pin tương th&iacute;ch FW50</p>', 4, 12490000, 0, 'Wed-12-19191919_92554720_sony-alpha-a6000-1650-oss-f3556-lens-kit-den.jpg', 6, 13, 1, '2019-12-11 07:19:12', '2019-12-11 07:19:12'),
(7, 'MÁY ẢNH SONY CYBERSHOT DSC W830 (BẠC)', 'may-anh-sony-cybershot-dsc-w830-(bac)', '<p>Cảm biến Super HAD CCD với điểm ảnh thực l&ecirc;n đến 20.1MP cho ph&eacute;p ghi&nbsp;lại những khoảnh khắc thật chi tiết, đạt<br />\r\nnhiễu thấp v&agrave; chất lượng h&igrave;nh ảnh tốt&nbsp;nhất so với&nbsp;<strong><a href=\"https://binhminhdigital.com/may-anh/\" target=\"_blank\" title=\"máy ảnh\">m&aacute;y ảnh</a></strong>&nbsp;c&ugrave;ng loại</p>', 5, 2490000, 0, 'Wed-12-19191919_1069411269_sony-cybershot-dsc-w830-may-anh-du-lich.jpg', 6, 13, 1, '2019-12-11 07:23:53', '2019-12-11 07:23:53'),
(8, 'MÁY ẢNH NIKON COOLPIX P900', 'may-anh-nikon-coolpix-p900', '<p>C&oacute; thể coi, sự ra đời của m&aacute;y ảnh Nikon Coolpix P900 l&agrave; bước đột ph&aacute; lớn về c&ocirc;ng nghệ với khả năng zoom l&ecirc;n tới 83x. Nếu so s&aacute;nh với một sản phẩm c&ugrave;ng h&atilde;ng l&agrave; P600 với độ zoom 60x, c&oacute; thể xem đ&acirc;y l&agrave; một cải tiến vượt bậc. C&ograve;n với những đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c, như Canon PowerShot SX60HS (zoom 65x) hay Fujifilm FinePix S1 (zoom 50x), tất cả đều thua xa. Với chiếc m&aacute;y n&agrave;y, h&atilde;ng Nikon đ&atilde; gi&agrave;nh một ưu thế rất lớn trong cuộc đua về zoom quang học tr&ecirc;n c&aacute;c m&aacute;y ảnh d&ograve;ng compact,&nbsp;c&oacute; thể n&oacute;i đ&acirc;y l&agrave; chiếc&nbsp;<strong><a href=\"hhttps://binhminhdigital.com/may-anh-sieu-zoom-nikon/\" target=\"_blank\" title=\"máy ảnh siêu zoom Nikon\">m&aacute;y ảnh si&ecirc;u zoom Nikon</a></strong>&nbsp;đ&aacute;ng ch&uacute; &yacute; t&iacute;nh đến hiện tại.</p>', 1, 11290000, 0, 'Wed-12-19191919_1735408652_may-anh-nikon-coolpix-p900-hang-nhap-khau.jpg', 6, 11, 1, '2019-12-11 07:25:02', '2019-12-11 07:25:02'),
(9, 'Máy Ảnh Nikon Coolpix W300', 'may-anh-nikon-coolpix-w300', '<p>Bạn l&agrave; người trẻ- bạn muốn vi vu khắp nơi , tham gia c&aacute;c tr&ograve; chơi mạo hiểm hay chỉ để lưu lại những khoảng khắc đ&aacute;ng nhớ b&ecirc;n người th&acirc;n , bạn b&egrave; th&igrave; Coolpix 300 vẫn lu&ocirc;n lu&ocirc;n đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường hay trong mọi cuộc vui của bạn&nbsp;. Nhờ c&aacute;c đặc t&iacute;nh chống nước, chống va đập, chống lạnh, v&agrave; chống bụi, chiếc<strong>&nbsp;<a href=\"https://binhminhdigital.com/may-anh-nikon/\">m&aacute;y ảnh COOLPIX</a></strong>&nbsp;W300 sẽ gi&uacute;p ghi lại mọi khoảnh khắc với độ r&otilde; n&eacute;t tuyệt vời nhờ cảm biến chiếu s&aacute;ng mặt sau 16,05 megapixel v&agrave; khả năng quay video 4K UHD. D&ugrave; bạn ở bất cứ đ&acirc;u, h&atilde;y lu&ocirc;n kết nối với SnapBridge để cập nhật cho bạn b&egrave; v&agrave; gia đ&igrave;nh về h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; của m&igrave;nh.</p>', 15, 8790000, 0, 'Wed-12-19191919_592845228_nikon-coolpix-w300-cam.jpg', 6, 11, 1, '2019-12-11 07:25:51', '2019-12-11 07:25:51'),
(10, 'Máy giặt Panasonic Inverter 9.5 kg NA-FS95V7LMX', 'may-giat-panasonic-inverter-9.5-kg-na-fs95v7lmx', '<ul>\r\n	<li>Giặt nước n&oacute;ng Stain Master+ gi&uacute;p sạch nhiều vết bẩn, diệt khuẩn 99,99%.</li>\r\n	<li>Hiệu ứng th&aacute;c nước đ&ocirc;i Dual Power Cascade gi&uacute;p quần &aacute;o thấm đều chất giặt tẩy.</li>\r\n	<li>C&ocirc;ng nghệ Active Foam v&agrave; hộp đ&aacute;nh tan bột giặt Turbo Mixer tạo bọt si&ecirc;u mịn đ&aacute;nh bay vết bẩn cứng đầu.</li>\r\n	<li>Động cơ Inverter v&agrave; c&ocirc;ng nghệ Econavi gi&uacute;p tiết kiệm điện, nước, thời gian giặt.</li>\r\n	<li>Chế độ Tangle Care chống xoắn rối quần &aacute;o, tiết kiệm thời gian phơi, ủi.</li>\r\n	<li>Sử dụng tốt ngay cả những khu vực c&oacute; &aacute;p lực nước yếu.</li>\r\n	<li>Chế độ vệ sinh lồng giặt Tub Hygiene loại bỏ c&aacute;c chất bẩn v&agrave; cặn đ&oacute;ng trong lồng giặt.</li>\r\n</ul>', 8, 9300000, 0, 'Wed-12-19191919_517853151_may-giat-panasonic-na-fs95v7lmx-1-4-org.jpg', 7, 14, 1, '2019-12-11 07:28:56', '2019-12-11 07:28:56'),
(11, 'Máy giặt Toshiba 9 Kg AW-H1000GV SB', 'may-giat-toshiba-9-kg-aw-h1000gv-sb', '<ul>\r\n	<li>C&ocirc;ng nghệ giặt c&ocirc; đặc bằng bọt kh&iacute; gi&uacute;p tẩy sạch mọi vết bẩn.</li>\r\n	<li>Lồng giặt ng&ocirc;i sao pha l&ecirc; gi&uacute;p giặt sạch quần &aacute;o nhẹ nh&agrave;ng hơn.</li>\r\n	<li>M&acirc;m giặt Hybrid Powerful đảo đều đồ giặt nhanh ch&oacute;ng.</li>\r\n	<li>Hiệu ứng th&aacute;c nước đ&ocirc;i n&acirc;ng hiệu quả giặt sạch l&ecirc;n 110%.</li>\r\n	<li>T&iacute;nh năng lưu giữ hương thơm Fragrance Course gi&uacute;p quần &aacute;o thơm tho v&agrave; mềm mại hơn.</li>\r\n	<li>Hộp lọc xơ vải tiện lợi v&agrave; th&aacute;o lắp dễ d&agrave;ng.</li>\r\n</ul>', 10, 6490000, 0, 'Wed-12-19191919_1206794269_may-giat-toshiba-aw-h1000gv-sb-1-2-org.jpg', 7, 15, 1, '2019-12-11 07:30:41', '2019-12-11 07:30:41'),
(12, 'Máy giặt LG Inverter 9 kg FC1409S4W', 'may-giat-lg-inverter-9-kg-fc1409s4w', '<ul>\r\n	<li>Tiết kiệm nước, điện hiệu quả, m&aacute;y chạy &ecirc;m &aacute;i với c&ocirc;ng nghệ Inverter v&agrave;&nbsp;động cơ truyền động trực tiếp.</li>\r\n	<li>Loại bỏ c&aacute;c t&aacute;c nh&acirc;n dị ứng, diệt khuẩn, chống nhăn hiệu quả với chức năng giặt hơi nước.</li>\r\n	<li>N&acirc;ng cao hiệu quả giặt sạch với c&ocirc;ng nghệ m&ocirc; phỏng 6 bước giặt tay.</li>\r\n</ul>', 45, 12960000, 0, 'Wed-12-19191919_361171360_may-giat-lg-fc1409s4w-1-org.jpg', 7, 16, 1, '2019-12-11 07:31:53', '2019-12-11 07:31:53'),
(13, 'Máy giặt sấy LG Inverter 21 kg F2721HTTV', 'may-giat-say-lg-inverter-21-kg-f2721httv', '<ul>\r\n	<li>Đột ph&aacute; với&nbsp;khối lượng giặt l&ecirc;n đến 21 kg&nbsp;v&agrave; khối lượng sấy 12 kg.</li>\r\n	<li>C&ocirc;ng nghệ Inverter tiết kiệm tối đa chi ph&iacute; điện, nước.</li>\r\n	<li>Đ&aacute;nh bay vết bẩn cứng đầu với&nbsp;c&ocirc;ng nghệ giặt TurboWash.</li>\r\n</ul>', 1, 44900000, 0, 'Wed-12-19191919_787075965_may-giat-twin-wash-lg-f2721httv-1-3-org.jpg', 7, 16, 1, '2019-12-11 07:36:28', '2019-12-11 07:36:28'),
(14, 'Tai nghe Bluetooth Chụp Tai JBL Live 650BTNC', 'tai-nghe-bluetooth-chup-tai-jbl-live-650btnc', '<h3><strong>JBL Live 650BTNC - Thiết kế khớp nối tiện lơi, trọng lượng nhẹ chỉ 249g &nbsp;</strong></h3>\r\n\r\n<p>Với khung chụp tai nghe được thiết kế &ocirc;m s&aacute;t v&agrave;o đầu c&ugrave;ng đệm tai nghe v&ocirc; c&ugrave;ng mềm mại mang đến cho bạn cảm gi&aacute;c cực kỳ thoải m&aacute;i khi sử dụng. Ngo&agrave;i ra JBL Live 650BTNC c&ograve;n c&oacute; 3 m&agrave;u trắng, n&acirc;u, xanh kết hợp với logo JBL lớn hai b&ecirc;n tai nghe tạo n&ecirc;n một thiết kế nổi bật cho bạn kết hợp khi diện thời trang.</p>', 1, 3800000, 0, 'Wed-12-19191919_1444218756_5_8_19.png', 8, 18, 1, '2019-12-11 08:41:38', '2019-12-11 08:41:38'),
(15, 'Tai nghe Bluetoth JBL Endurance PEAK', 'tai-nghe-bluetoth-jbl-endurance-peak', '<h2><a href=\"https://cellphones.com.vn/tai-nghe-bluetooth-jbl-endurance-peak.html\" target=\"_blank\" title=\"Tai nghe Bluetoth JBL Endurance PEAK\"><strong>T</strong><strong>ai nghe blueto</strong><strong>o</strong><strong>th JBL Endurance PEAK</strong></a><strong>&nbsp;-&nbsp;</strong><strong><a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/tai-nghe-khong-day.html\" target=\"_blank\" title=\"Tai nghe không dây chính hãng\">Tai nghe kh&ocirc;ng d&acirc;y</a>&nbsp;nhỏ gọn, chống nước IPX7, tự động bật tắt</strong></h2>\r\n\r\n<p><em>D&ograve;ng true wireless thể thao của h&atilde;ng JBL được nhiều chuy&ecirc;n gia trong giới &acirc;m thanh đ&aacute;nh gi&aacute; cao v&agrave; trong đ&oacute; c&oacute;&nbsp;<strong>tai nghe Bluetooth JBL Endurance PEAK</strong>. Sản phẩm nổi bật với thiết kế đẹp mắt,&nbsp;<em><a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe.html\" target=\"_blank\">tai nghe gi&aacute; rẻ</a>,</em>&nbsp;chống nước IPX7, c&ocirc;ng nghệ tự động bật tắt.</em></p>\r\n\r\n<h3><strong>JBL Endurance PEAK - Thiết kế nhỏ gọn b&aacute;m chặt v&agrave;o tai ngay cả những l&uacute;c tập luyện cường độ cao</strong></h3>\r\n\r\n<p>Về tổng thể, tai nghe bluetooth JBL Endurance PEAK c&oacute; kiểu d&aacute;ng đơn điệu v&agrave; nhỏ nhắn dễ d&agrave;ng cầm gọn v&agrave; để trong t&uacute;i quần hoặc t&uacute;i x&aacute;ch. Phần housing được l&agrave;m từ nhựa thay v&igrave; kim loại để tiết kiệm chi ph&iacute;.</p>', 1, 2700000, 0, 'Wed-12-19191919_1273654005_617jiyt061l._sl1500_.jpg', 8, 18, 1, '2019-12-11 08:43:20', '2019-12-11 08:43:20'),
(16, 'Tai Nghe Không Dây JBL JBL Free X', 'tai-nghe-khong-day-jbl-jbl-free-x', '<h2><strong><a href=\"https://cellphones.com.vn/tai-nghe-khong-day-jbl-free-x.html\" target=\"_blank\" title=\"Tai Nghe Không Dây JBL Free X\">Tai nghe JBL FREE X</a>&nbsp;-&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/tai-nghe-khong-day.html\" target=\"_blank\" title=\"Tai nghe không dây chính hãng\">Tai nghe kh&ocirc;ng d&acirc;y</a>&nbsp;chống nước mới của JBL</strong></h2>\r\n\r\n<p><em>Mới đ&acirc;y h&atilde;ng &acirc;m thanh mới của Mỹ JBL đ&atilde; cho ra mắt chiếc&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe.html\" target=\"_blank\" title=\"Tai nghe chính hãng\">tai nghe</a>&nbsp;mới&nbsp;<strong>JBL Free X</strong>&nbsp;với&nbsp; khả năng chống nước đạt chuẩn IPX5 gi&uacute;p người d&ugrave;ng c&oacute; thể sử dụng trong c&aacute;c hoạt động thể thao.&nbsp;JBL Free X</em><em>&nbsp;l&agrave; phi&ecirc;n bản n&acirc;ng cấp nhẹ từ&nbsp;JBL Free</em><em>&nbsp;với chất lượng kết nối tốt hơn, chất lượng đ&agrave;m thoại tốt hơn phi&ecirc;n bản cũ.</em></p>', 1, 3480000, 0, 'Wed-12-19191919_1967902997_jbl-free-k8v2z.jpg', 8, 18, 1, '2019-12-11 08:44:01', '2019-12-11 08:44:01'),
(17, 'Tai Nghe Không Dây JBL Reflect Flow', 'tai-nghe-khong-day-jbl-reflect-flow', '<h3><strong><strong>JBL Reflect Flow</strong><em><strong>&nbsp;-&nbsp;</strong></em>Thiết kế nhỏ gọn, tinh tế với 04 phi&ecirc;n bản m&agrave;u sắc thời trang</strong></h3>\r\n\r\n<p>Tai nghe JBL Reflect Flow c&oacute; ngoại h&igrave;nh kh&aacute; nhỏ gọn với ng&ocirc;n ngữ thiết kế tinh tế, thời trang. Chiếc&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe.html\" target=\"_blank\" title=\"Tai nghe chính hãng\">tai nghe</a>&nbsp;n&agrave;y được l&agrave;m từ c&aacute;c vật liệu cao cấp với c&aacute;c chi tiết được ho&agrave;n thiện rất tốt. C&aacute;c khớp nối, cạnh cong được cắt gọn g&ograve;n g&agrave;ng v&agrave; mượt m&agrave;. Phần cốc sạc được l&agrave;m rất chất chắn v&agrave; cũng kh&ocirc;ng k&eacute;m phần thẩm mỹ, gi&uacute;p bảo vệ an to&agrave;n cho tai nghe b&ecirc;n trong.</p>', 1, 3860000, 0, 'Wed-12-19191919_1147416367_jbl-relfect-flow-3kshop-5.jpg', 8, 18, 1, '2019-12-11 08:44:48', '2019-12-11 08:44:48'),
(18, 'Tai nghe Bluetooth JBL Everest Elite 700', 'tai-nghe-bluetooth-jbl-everest-elite-700', '<p>Tai nghe JBL Everest Elite 700 mang trong m&igrave;nh thiết kế over-ear nghĩa l&agrave; chụp tai. Tai nghe sẽ qu&agrave;ng lấy to&agrave;n bộ hai tai của bạn th&ocirc;ng qua thanh nối d&agrave;i được l&agrave;m cong v&agrave; v&ograve;ng tr&ecirc;n đầu. Do đ&oacute;, tai nghe sẽ c&oacute; k&iacute;ch thước được cho l&agrave; kh&aacute; lớn. Song với k&iacute;ch thước 76.9 x 176.5 x 169.5 mm, trọng lượng l&agrave; 273.6 g, Everest Elite 700 vẫn được đ&aacute;nh gi&aacute; l&agrave; nhỏ gọn hơn so với c&aacute;c thiết bị&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/headphones.html\" target=\"_blank\" title=\"Tai nghe chụp tai chính hãng\">tai nghe chụp tai</a>&nbsp;kh&aacute;c.</p>', 1, 3700000, 0, 'Wed-12-19191919_465150767_jbl-everest-elite-700-zpafl-products-option-image-441-1498272432-5s2vq.jpg', 8, 18, 1, '2019-12-11 08:45:38', '2019-12-11 08:45:38'),
(19, 'Điện thoại Nokia 1280', 'dien-thoai-nokia-1280', '<p>Theo bước ch&acirc;n ph&aacute;t triển của c&ocirc;ng nghệ, t&iacute;nh tiện lợi v&agrave; đa chức năng của những chiếc smartphone đang ng&agrave;y c&agrave;ng khiến ch&uacute;ng được ưu &aacute;i trong sự lựa chọn của người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, trong qu&aacute; tr&igrave;nh sử dụng, những nhược điểm cố hữu của ch&uacute;ng ng&agrave;y c&agrave;ng bộc lộ r&otilde; n&eacute;t, m&agrave; hầu hết l&agrave; sự mỏng manh, dễ hư tổn v&agrave; thời lượng pin kh&ocirc;ng đủ phục vụ nhu cầu nghe gọi của người sử dụng.</p>', 1, 189000, 150000, 'Wed-12-19191919_990828648_dien-thoai-di-dong-nokia-1280-dienmay.com-l.jpg', 1, 1, 1, '2019-12-11 08:51:06', '2019-12-11 08:51:06'),
(20, 'Nokia 1110i', 'nokia-1110i', '<p>N&oacute;i đến những sản phẩm Nokia để lại ấn tượng s&acirc;u đậm trong l&ograve;ng người Việt, kh&ocirc;ng thể bỏ qua 1110i. Sản phẩm ra đời năm 2006 với những t&iacute;nh năng cơ bản, pin đ&agrave;m thoại 5 giờ v&agrave; c&oacute; chế độ chặn cuộc gọi.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; một model thuộc ph&acirc;n kh&uacute;c gi&aacute; rẻ. Với nhiều người, đặc biệt l&agrave; thế hệ 8x, 1110i gắn với kỷ niệm về thời sinh vi&ecirc;n, học sinh của họ. Cho đến giờ, sau hơn 10 năm, vẫn c&ograve;n một số lượng người d&ugrave;ng nhất định vẫn sử dụng sản phẩm n&agrave;y.</p>\r\n\r\n<p>Những đ&agrave;n em đi sau như Nokia 1202, 1208 &nbsp;cũng đ&atilde; đạt được những th&agrave;nh c&ocirc;ng. Tuy nhi&ecirc;n n&oacute; vẫn kh&oacute; l&ograve;ng vượt qua ấn tượng mang t&ecirc;n Nokia 1110i.</p>', 1, 7000000, 0, 'Wed-12-19191919_262717068_dienthoainokia1110igiarehcm.jpg', 1, 1, 1, '2019-12-11 08:52:45', '2019-12-11 08:52:45'),
(21, 'Nokia 7.2', 'nokia-7.2', '<p><em>Nokia l&agrave; một thương hiệu sản xuất điện thoại l&acirc;u đời của thế giới. Những chiếc<strong>&nbsp;<a href=\"https://cellphones.com.vn/mobile/nokia.html\" target=\"_blank\" title=\"Điện thoại Nokia chính hãng\">điện thoại của Nokia</a>&nbsp;</strong>sản xuất lu&ocirc;n được người d&ugrave;ng ưa chuộng v&agrave; đ&aacute;nh gi&aacute; cao nhất l&agrave; độ bền m&agrave; n&oacute; mang lại. Tiếp tục ph&aacute;t huy những thế mạnh của m&igrave;nh Nokia tiếp tục cho ra chiếc&nbsp;<strong>Nokia 7.2</strong>&nbsp;với những t&iacute;nh năng theo kịp xu hướng c&ocirc;ng nghệ hiện đại.</em></p>\r\n\r\n<h3><strong>Thiết kế Nokia 7.2 sang trọng ảnh hương nhiều từ thế hệ đ&agrave;n anh Nokia 7.1</strong></h3>\r\n\r\n<p>Nokia 7.2 c&oacute; thiết kế nguy&ecirc;n khối được l&agrave;m một c&aacute;ch tỉ mỉ v&agrave; chi tiết. C&aacute;c g&oacute;c cạnh của Nokia 7.2 được bo tr&ograve;n mềm mại tạo cảm gi&aacute;c cầm nắm dễ chịu. Chất liệu l&agrave; khung kim loại tạo vẻ sang trọng v&agrave; chắc chắn cho Nokia 7.2.</p>', 1, 5290000, 0, 'Wed-12-19191919_1055959021_nokia_7.2_xanh.jpg', 1, 1, 1, '2019-12-11 08:54:02', '2019-12-11 08:54:02'),
(22, 'Samsung Galaxy Note 10+ (Plus)', 'samsung-galaxy-note-10(plus)', '<h2><strong><a href=\"https://cellphones.com.vn/samsung-galaxy-note-10-plus.html\" target=\"_blank\" title=\"Điện thoại Samsung Galaxy Note 10 Plus\">Samsung Galaxy Note 10 Plus</a>&nbsp;&ndash; M&agrave;n h&igrave;nh lớn cho trải nghiệm tuyệt đỉnh, S-Pen tiện dụng</strong></h2>\r\n\r\n<p><em>L&agrave; phi&ecirc;n bản n&acirc;ng cấp đ&aacute;ng gi&aacute; ra đời c&ugrave;ng thời điểm với&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-10-chinh-hang.html\" target=\"_blank\" title=\"Điện thoại SamSung Galaxy Note 10\">Samsung Galaxy Note 10</a>,&nbsp;<strong>Samsung Galaxy Note 10 Plus&nbsp;</strong>l&agrave; sự lựa chọn tuyệt vời cho người d&ugrave;ng đam m&ecirc; c&ocirc;ng nghệ c&oacute; nhu cầu sở hữu một chiếc điện thoại ho&agrave;n hảo về mọi mặt. Với Note 10 Plus,&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\" title=\"Điện thoại SamSung chính hãng\">Samsung</a><strong>&nbsp;</strong>đ&atilde; thật sự mang đến một chiếc điện thoại c&oacute; sức mạnh vượt trội, đ&aacute;p ứng to&agrave;n diện c&aacute;c nhu cầu về l&agrave;m việc v&agrave; giải tr&iacute; của người d&ugrave;ng.</em></p>\r\n\r\n<h3><strong>Samsung Note 10 Plus c&oacute; thiết kế vu&ocirc;ng vắn, chất liệu kim loại kết hợp thủy tinh cao cấp</strong></h3>\r\n\r\n<p>Galaxy Note 10 Plus tạo n&ecirc;n ấn tượng đặc biệt từ ban đầu bởi vẻ ngo&agrave;i đẳng cấp. Kế thừa trọn vẹn tinh hoa thiết kế của d&ograve;ng sản phẩm&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-note.html\" target=\"_blank\" title=\"Điện thoại SamSung Galaxy Note chính hãng\">Galaxy Note</a>&nbsp;nh&agrave; Samsung, Note 10 Plus c&oacute; ngoại h&igrave;nh vu&ocirc;ng vứt đầy mạnh mẽ v&agrave; tinh tế. Viền m&agrave;n h&igrave;nh cực kỳ mỏng c&ugrave;ng với độ d&agrave;y mảnh mai kh&ocirc;ng k&eacute;m, gi&uacute;p&nbsp;<strong>Note 10 Plus</strong>&nbsp;d&ugrave;ng c&oacute; k&iacute;ch thước lớn nhưng vẫn giữ được sự thanh tho&aacute;t, sang trọng.</p>', 1, 23890000, 0, 'Wed-12-19191919_1061750944_note_10_plus_xanh.jpg', 1, 2, 1, '2019-12-11 08:57:42', '2019-12-11 08:57:42'),
(23, 'iPhone Xr 64GB', 'iphone-xr-64gb', '<ul>\r\n	<li><strong>Điện Thoại iPhone XR Lock&nbsp;</strong>l&agrave; một trong 3 mẫu phi&ecirc;n bản iPhone 2018 vừa được ra mắt tại sự kiện ra tại Nh&agrave; h&aacute;t Steve Jobs, trong khu&ocirc;n vi&ecirc;n trụ sở Apple Park ở Cupertino, California. iPhone 2018 l&agrave; smartphone được chờ đợi nhất năm với những t&iacute;nh năng m&agrave; Apple quảng b&aacute; l&agrave; &ldquo;tối t&acirc;n nhất từ trước tới nay&rdquo;.</li>\r\n</ul>', 8, 9000000, 0, 'Wed-12-19191919_1987131032_1565010867834-iphone-xr-black-select-201809-min.png', 1, 10, 1, '2019-12-11 09:12:26', '2019-12-11 09:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
CREATE TABLE IF NOT EXISTS `producttype` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idCategory` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`id`, `idCategory`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'nokia', 'nokia', 1, '2019-12-09 00:58:00', '2019-12-09 00:58:00'),
(2, 1, 'Samsung', 'samsung', 1, '2019-12-09 22:33:58', '2019-12-11 07:00:30'),
(10, 1, 'Apple', 'apple', 1, '2019-12-11 07:11:04', '2019-12-11 07:11:04'),
(11, 6, 'Nikon', 'nikon', 1, '2019-12-11 07:12:27', '2019-12-11 07:12:27'),
(12, 6, 'Cannon', 'cannon', 1, '2019-12-11 07:12:40', '2019-12-11 07:12:40'),
(13, 6, 'Sony', 'sony', 1, '2019-12-11 07:12:53', '2019-12-11 07:12:53'),
(14, 7, 'Panasonic', 'panasonic', 1, '2019-12-11 07:27:21', '2019-12-11 07:27:21'),
(15, 7, 'Toshiba', 'toshiba', 1, '2019-12-11 07:27:37', '2019-12-11 07:27:37'),
(16, 7, 'LG', 'lg', 1, '2019-12-11 07:30:50', '2019-12-11 07:30:50'),
(17, 8, 'Kanen', 'kanen', 1, '2019-12-11 08:35:42', '2019-12-11 08:35:42'),
(18, 8, 'JBL', 'jbl', 1, '2019-12-11 08:38:50', '2019-12-11 08:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `social_id`, `avatar`, `role`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Huy Tuệ', 'admin@gmail.com', '$2y$10$/grGStpPL1ywcCotBl/Cy.p83OTGO/K29i5/wVAPJauiwraXm7zRe', NULL, NULL, 1, 0, NULL, NULL, '2019-12-09 00:54:52', '2019-12-09 00:54:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
