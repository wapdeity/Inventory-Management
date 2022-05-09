-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 10, 2021 at 11:42 PM
-- Server version: 5.7.35-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meetpalestine`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `role_id`, `username`, `password`, `email`, `mobile`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '$2y$10$CoUlXidaR5bxiQBAVmPDS.NfhE3l45OhiQq9G8V9usE7pplXt5OO6', 'admin@yopmail.com', '95214585475', 1, '6R54wFWXNTsWoYfO0tAICZzlL4OBArSVro6J9Mhc4OTgThrMma7KvO3DS475', NULL, NULL),
(2, 2, 'amit', '$2y$10$wRx59CtR6vW7OlMblBDt3Os9xbQFAw6lx5hURp17ol0oum7cgWmpi', 'amit@yopmail.com', '9414694262', 1, 'RiivSiTvS8KGqL4DWyRAPlHQ3IvHbCql', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(256) NOT NULL,
  `counts` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `counts`, `updated_at`, `created_at`) VALUES
(11, 'Beauty & Dead Sea Products', NULL, '2021-04-21 06:25:43', '2021-04-21 06:25:43'),
(12, 'Fashion & accessories', NULL, '2021-04-21 06:25:45', '2021-04-21 06:25:45'),
(10, 'Art - Online Gallery', NULL, '2021-04-21 06:25:41', '2021-04-21 06:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `cat_product_relation`
--

CREATE TABLE `cat_product_relation` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_product_relation`
--

INSERT INTO `cat_product_relation` (`id`, `cat_id`, `product_id`) VALUES
(34, 12, 8),
(33, 11, 7),
(32, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `price`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'India', '@', 1.00, 1, '2020-12-24 12:01:35', '2021-02-08 00:32:06'),
(4, 'USA', '$', 75.00, 0, '2020-12-27 00:40:59', '2021-01-04 21:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(60, '2014_10_12_000000_create_users_table', 1),
(61, '2014_10_12_100000_create_password_resets_table', 1),
(62, '2019_08_19_000000_create_failed_jobs_table', 1),
(63, '2020_04_03_085259_create_permission_tables', 1),
(64, '2020_03_01_062725_create_banners_table', 1),
(65, '2020_02_24_103435_create_cms_pages_table', 1),
(66, '2020_04_09_134714_create_permission_tables', 1),
(67, '2020_07_05_131109_create_policy_categories_table', 1),
(68, '2020_07_05_132357_create_ratings_table', 2),
(69, '2020_07_06_002227_create_policy_models_table', 2),
(70, '2020_07_11_031517_create_policies_table', 3),
(71, '2020_09_12_110932_create_sub_products_table', 4),
(72, '2020_12_08_171607_create_packages_table', 5),
(73, '2020_12_09_191641_create_package_details_table', 6),
(74, '2020_12_16_165040_create_orders_table', 7),
(75, '2020_12_16_172107_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wc_order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_order_track` text COLLATE utf8mb4_unicode_ci,
  `billing_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_total` float(11,2) NOT NULL DEFAULT '0.00',
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `wc_order_no`, `currency`, `date_created`, `payment_method`, `payment_status`, `payment_method_title`, `transaction_id`, `shipping_order_track`, `billing_first_name`, `billing_last_name`, `billing_email`, `billing_phone`, `billing_address_one`, `billing_address_two`, `billing_company`, `billing_city`, `billing_state`, `billing_postcode`, `billing_country`, `shipping_first_name`, `shipping_last_name`, `shipping_email`, `shipping_phone`, `shipping_address_one`, `shipping_address_two`, `shipping_company`, `shipping_city`, `shipping_state`, `shipping_postcode`, `shipping_country`, `order_total`, `shipping_id`, `tracking_id`, `created_at`, `updated_at`) VALUES
(1, '19748', 'USD', '2021-03-10 06:02:26', 'powercard_gateway', 'cancelled', 'BOP Payment', '', NULL, 'Alex', 'Kane', 'nbn.test@gmail.com', '9632587410', 'Tel Aviv', '', '', 'Tel Aviv', '', '3076', 'IL', 'Alex', 'Kane', NULL, NULL, 'Tel Aviv', '', '', 'Tel Aviv', '', '3076', 'IL', 143.00, NULL, NULL, '2021-03-16 03:13:41', '2021-03-31 07:20:27'),
(13, '153', 'INR', '2021-03-10 06:02:26', 'cod', 'cancelled', 'Cash on delivery', '', NULL, 'Ram', 'choudhary', 'rpctoworld@gmail.com', '12121212121212', 'Bholi', '', '', 'Bhilwara', 'RJ', '311001', 'IN', 'Ram', 'Narayan', NULL, NULL, 'Shastri Nagar', '', '', 'Jaipur', 'RJ', '311001', 'IN', 168.90, NULL, NULL, '2021-03-31 04:10:42', '2021-03-31 04:10:42'),
(14, '19842', 'USD', '2021-03-31 12:40:15', 'powercard_gateway', 'completed', 'BOP Payment', '109015392000', NULL, 'MARGINEAN COCA', 'MARIA', 'mioricacoca@yahoo.com', '0742541295', 'Frasinului nr 40', '', '', 'Sibiu', 'SB', '550269', 'RO', 'MARGINEAN COCA', 'MARIA', NULL, NULL, 'Frasinului nr 40', '', '', 'Sibiu', 'SB', '550269', 'RO', 62.00, NULL, NULL, '2021-03-31 07:11:55', '2021-04-15 00:57:40'),
(15, '19844', 'USD', '2021-04-01 00:53:46', 'powercard_gateway', 'completed', 'BOP Payment', '109103449200', NULL, 'Jesse', 'Zuefle', 'JesseZuefle@gmail.com', '7164812529', '317 Richmond Ave.', '', '', 'Buffalo', 'NY', '14222', 'US', 'Jesse', 'Zuefle', NULL, NULL, '317 Richmond Ave.', '', '', 'Buffalo', 'NY', '14222', 'US', 269.00, NULL, NULL, '2021-03-31 19:24:28', '2021-04-16 00:17:54'),
(16, '19785', 'USD', '2021-03-20 07:58:39', 'powercard_gateway', 'completed', 'BOP Payment', '107910461600', NULL, 'Rebekah', 'Rice', 'fmmdaraghmeh@gmail.com', '+1 503-400-1152', '67 Nine Mile Ln', '', '', 'Delmar', 'NY', '12054-5427', 'US', 'Rebekah', 'Rice', NULL, NULL, '67 Nine Mile Ln', '', '', 'Delmar', 'NY', '12054-5427', 'US', 162.00, NULL, NULL, '2021-04-02 00:32:30', '2021-04-02 00:32:30'),
(17, '19845', 'USD', '2021-04-02 17:28:46', 'powercard_gateway', 'completed', 'BOP Payment', '109220622000', NULL, 'Tim', 'Brewer', 'fmmdaraghmeh@gmail.com', '+1 406-396-3618', '1319 east broadway', 'Apt 408', '', 'missoula', 'MA', '59802-4904', 'US', 'Tim', 'Brewer', NULL, NULL, '1319 east broadway', 'Apt 408', '', 'missoula', 'MA', '59802-4904', 'US', 63.00, NULL, NULL, '2021-04-02 12:07:36', '2021-04-23 00:51:26'),
(18, '19851', 'USD', '2021-04-04 12:25:39', 'powercard_gateway', 'cancelled', 'BOP Payment', '', NULL, 'Test', 'test', 'sadas@ac.com', '232132', '23123', 'test', '', 'test', 'tes', 'ASDA', 'PS', 'Test', 'test', NULL, NULL, '23123', 'test', '', 'test', 'tes', 'ASDA', 'PS', 30.00, NULL, NULL, '2021-04-04 08:44:35', '2021-04-04 08:44:35'),
(19, '19792', 'USD', '2021-03-25 10:59:41', 'powercard_gateway', 'completed', 'BOP Payment', '108413858800', NULL, 'Abi', 'Hewitt', 'abi_hewitt@mac.com', '07525817068', '11 Kingston Quay', '', '', 'Eastbourne', 'Sussex', 'BN23 5UP', 'GB', 'Abi', 'Hewitt', NULL, NULL, '11 Kingston Quay', '', '', 'Eastbourne', 'Sussex', 'BN23 5UP', 'GB', 102.00, NULL, NULL, '2021-04-07 04:18:34', '2021-04-07 04:18:34'),
(20, '19886', 'USD', '2021-04-23 02:37:01', 'powercard_gateway', 'processing', 'BOP Payment', '111305268000', NULL, 'Madison', 'Spain', 'madisonrspain@gmail.com', '3364028665', '1156 Piedmont Ave NE', 'Apt A2', 'Little Rose Designs', 'Atlanta', 'GA', '30309', 'US', 'Madison', 'Spain', NULL, NULL, '1156 Piedmont Ave NE', 'Apt A2', 'Little Rose Designs', 'Atlanta', 'GA', '30309', 'US', 1092.00, NULL, NULL, '2021-04-22 21:10:03', '2021-04-22 21:10:03'),
(21, '19890', 'USD', '2021-04-27 10:44:07', 'powercard_gateway', 'cancelled', 'BOP Payment', '111713581600', NULL, 'Fran', 'Glab', 'fmmdaraghmeh@gmail.com', '+1 519-537-5896', '739 Boyle Dr', '', '', 'Woodstock', 'ON', 'N4S 8M1', 'CA', 'Fran', 'Glab', NULL, NULL, '739 Boyle Dr', '', '', 'Woodstock', 'ON', 'N4S 8M1', 'CA', 123.00, NULL, NULL, '2021-04-27 05:15:48', '2021-04-30 05:47:49'),
(22, '19891', 'USD', '2021-04-30 09:51:05', 'powercard_gateway', 'processing', 'BOP Payment', '112012796400', 'asadxyz', 'Martha', 'Pelaez', 'fmmdaraghmeh@gmail.com', '+1 956-225-4520', '372 Lafayette St', 'PHA', '', 'New York', 'NY', '10012-2761', 'US', 'Martha', 'Pelaez', NULL, NULL, '372 Lafayette St', 'PHA', '', 'New York', 'NY', '10012-2761', 'US', 135.00, NULL, NULL, '2021-04-30 04:22:48', '2021-04-30 04:25:40'),
(23, '19955', 'USD', '2021-05-23 21:28:42', 'powercard_gateway', 'completed', 'BOP Payment', '114400007200', NULL, 'Roberta', 'Boothe', 'fmmdaraghmeh@gmail.com', '+1 541-646-2635', '1850 Kings Hwy', '', '', 'Medford', 'OR', '97501-4423', 'US', 'Roberta', 'Boothe', NULL, NULL, '1850 Kings Hwy', '', '', 'Medford', 'OR', '97501-4423', 'US', 47.00, '1', '11111', '2021-06-08 03:03:52', '2021-07-25 05:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_subtotal` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_subtotal_tax` decimal(8,2) NOT NULL,
  `line_total` decimal(8,2) NOT NULL,
  `line_total_tax` decimal(8,2) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `variation_id`, `product_sku`, `item_type`, `item_name`, `line_subtotal`, `quantity`, `tax_class`, `line_subtotal_tax`, `line_total`, `line_total_tax`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 1, 6398, 0, 'FB0020', 'line_item', 'Stubborn Saints Wine 2018', '22', '2', '', 0.00, 22.00, 0.00, 22.00, '2021-03-16 03:13:41', '2021-03-16 03:13:41'),
(2, 1, 7490, 0, 'HH0008', 'line_item', 'Wine Glass Set', '72', '2', '', 0.00, 72.00, 0.00, 72.00, '2021-03-16 03:13:41', '2021-03-16 03:13:41'),
(3, 13, 18, 0, 'woo-belt', 'line_item', 'Belt', '55', '2', '', 0.00, 55.00, 0.00, 55.00, '2021-03-31 04:10:43', '2021-03-31 04:10:43'),
(4, 14, 6646, 0, 'FA0054', 'line_item', 'Empty Triangle Earrings', '47', '0', '', 0.00, 47.00, 0.00, 47.00, '2021-03-31 07:11:55', '2021-03-31 07:11:55'),
(5, 15, 19826, 0, 'AR017', 'line_item', 'The SAVIOR by The Hotel Manager', '126', '0', '', 0.00, 126.00, 0.00, 42.00, '2021-03-31 19:24:28', '2021-03-31 19:24:28'),
(6, 15, 19831, 0, 'AR018', 'line_item', 'Hope', '126', '0', '', 0.00, 126.00, 0.00, 42.00, '2021-03-31 19:24:28', '2021-03-31 19:24:28'),
(7, 16, 7478, 0, 'HH0007', 'line_item', 'Wine Glass Set', '100', '0', '', 0.00, 100.00, 0.00, 88.00, '2021-04-02 00:32:30', '2021-04-02 00:32:30'),
(8, 17, 6898, 0, 'OW0050', 'line_item', 'Jesus Head', '48', '0', '', 0.00, 48.00, 0.00, 96.00, '2021-04-02 12:07:37', '2021-04-02 12:07:37'),
(9, 18, 6398, 0, 'FB0020', 'line_item', 'Stubborn Saints Wine 2018', '22', '2', '', 0.00, 22.00, 0.00, 22.00, '2021-04-04 08:44:35', '2021-04-04 08:44:35'),
(10, 19, 4989, 0, 'HK0012', 'line_item', 'Ceramic Bowl - Olive', '72', '0', '', 0.00, 72.00, 0.00, 18.00, '2021-04-07 04:18:35', '2021-04-07 04:18:35'),
(11, 20, 6794, 0, 'ow1023', 'line_item', 'Mother of Pearl Cross - Small', '250', '0', '', 0.00, 250.00, 0.00, 20.00, '2021-04-22 21:10:03', '2021-04-22 21:10:03'),
(12, 20, 6721, 0, 'ow1008', 'line_item', 'Mother of Pearl Cross', '210', '0', '', 0.00, 210.00, 0.00, 14.00, '2021-04-22 21:10:03', '2021-04-22 21:10:03'),
(13, 20, 6799, 0, 'ow1024', 'line_item', 'Mother of Pearl Cross', '350', '0', '', 0.00, 350.00, 0.00, 26.00, '2021-04-22 21:10:03', '2021-04-22 21:10:03'),
(14, 20, 6788, 0, 'ow1012', 'line_item', 'Mother of Pearl Cross', '200', '0', '', 0.00, 200.00, 0.00, 80.00, '2021-04-22 21:10:03', '2021-04-22 21:10:03'),
(15, 21, 6885, 0, 'OW0042', 'line_item', 'The Good Shepherd', '98', '0', '', 0.00, 98.00, 0.00, 196.00, '2021-04-27 05:15:48', '2021-04-27 05:15:48'),
(16, 22, 6886, 0, 'OW0043', 'line_item', 'St. Michael', '110', '0', '', 0.00, 110.00, 0.00, 220.00, '2021-04-30 04:22:48', '2021-04-30 04:22:48'),
(17, 23, 4741, 0, 'ow2001', 'line_item', 'Angel with Violin', '13', '0', '', 0.00, 13.00, 0.00, 26.00, '2021-06-08 03:03:53', '2021-06-08 03:03:53'),
(18, 23, 4744, 0, 'ow2002', 'line_item', 'Angel with Flute', '9', '0', '', 0.00, 9.00, 0.00, 18.00, '2021-06-08 03:03:53', '2021-06-08 03:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'test', 0, '2020-12-26 23:18:27', '2020-12-29 11:38:01'),
(2, 'Pending', 1, '2020-12-27 00:41:46', '2020-12-27 00:41:46'),
(3, 'Process', 1, '2020-12-28 22:18:05', '2020-12-28 22:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_test`
--

CREATE TABLE `order_test` (
  `id` int(11) NOT NULL,
  `details` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_test`
--

INSERT INTO `order_test` (`id`, `details`, `created_at`) VALUES
(1, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(2, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(3, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(4, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(5, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(6, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(7, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(8, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(9, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(10, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"completed\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(11, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(12, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(13, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(14, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"completed\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(15, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(16, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(17, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(18, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"processing\",\"wc_order_no\":\"19766\",\"currency\":\"USD\",\"order_total\":\"169.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"107311061200\",\"billing_first_name\":\"Hussam\",\"billing_last_name\":\"Aqil\",\"billing_company\":\"\",\"billing_address_one\":\"Oia Residence, Detroit Street, Motor City\",\"billing_address_two\":\"254\",\"billing_city\":\"Dubai\",\"billing_state\":\"\",\"billing_postcode\":\"\",\"billing_country\":\"AE\",\"billing_email\":\"aqil.hussam@gmail.com\",\"billing_phone\":\"00971505460049\",\"shipping_first_name\":\"Hussam\",\"shipping_last_name\":\"Aqil\",\"shipping_company\":\"\",\"shipping_address_one\":\"Oia Residence, Detroit Street, Motor City\",\"shipping_address_two\":\"254\",\"shipping_city\":\"Dubai\",\"shipping_state\":\"\",\"shipping_postcode\":\"\",\"shipping_country\":\"AE\",\"product\":[{\"product_id\":\"6705\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Arabic Calligraphy Earrings\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"129\",\"line_subtotal_tax\":\"0\",\"line_total\":\"129\",\"line_total_tax\":\"0\",\"product_sku\":\"FA0070\",\"product_price\":\"129\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/f9-1.jpg\"}]}', '0000-00-00 00:00:00'),
(19, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(20, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(21, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(22, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(23, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"cancelled\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00'),
(24, '{\"api_key\":\"905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c\",\"payment_status\":\"on-hold\",\"wc_order_no\":\"19748\",\"currency\":\"USD\",\"order_total\":\"143.00\",\"payment_method\":\"powercard_gateway\",\"payment_method_title\":\"BOP Payment\",\"transaction_id\":\"\",\"billing_first_name\":\"Alex\",\"billing_last_name\":\"Kane\",\"billing_company\":\"\",\"billing_address_one\":\"Tel Aviv\",\"billing_address_two\":\"\",\"billing_city\":\"Tel Aviv\",\"billing_state\":\"\",\"billing_postcode\":\"3076\",\"billing_country\":\"IL\",\"billing_email\":\"nbn.test@gmail.com\",\"billing_phone\":\"9632587410\",\"shipping_first_name\":\"Alex\",\"shipping_last_name\":\"Kane\",\"shipping_company\":\"\",\"shipping_address_one\":\"Tel Aviv\",\"shipping_address_two\":\"\",\"shipping_city\":\"Tel Aviv\",\"shipping_state\":\"\",\"shipping_postcode\":\"3076\",\"shipping_country\":\"IL\",\"product\":[{\"product_id\":\"6398\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Stubborn Saints Wine 2018\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"22\",\"line_subtotal_tax\":\"0\",\"line_total\":\"22\",\"line_total_tax\":\"0\",\"product_sku\":\"FB0020\",\"product_price\":\"22\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/11\\/thumbnail_f434f302-c823-4ceb-9c48-18d787792d1c.jpg\"},{\"product_id\":\"7490\",\"variation_id\":\"0\",\"item_type\":\"line_item\",\"item_name\":\"Wine Glass Set\",\"quantity\":\"1\",\"tax_class\":\"\",\"line_subtotal\":\"72\",\"line_subtotal_tax\":\"0\",\"line_total\":\"72\",\"line_total_tax\":\"0\",\"product_sku\":\"HH0008\",\"product_price\":\"72\",\"imgurl\":\"https:\\/\\/meetpalestine.com\\/wp-content\\/uploads\\/2020\\/12\\/b3.jpg\"}]}', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'test1', '2020-12-09 14:53:39', '2020-12-09 14:53:39'),
(3, 'test', '2020-12-12 05:44:26', '2020-12-12 05:44:26'),
(4, 'Test Package3', '2021-03-31 06:38:35', '2021-03-31 06:38:35'),
(5, 'test4', '2021-03-31 07:21:46', '2021-03-31 07:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ml` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kg` decimal(8,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `cost_nis` decimal(8,2) NOT NULL,
  `total_cost_nis` decimal(8,2) NOT NULL,
  `retail_price` decimal(8,2) DEFAULT NULL,
  `total_retail_price` decimal(8,2) DEFAULT NULL,
  `gross_weight` decimal(8,2) DEFAULT NULL,
  `packing_notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `package_id`, `code`, `product_name`, `producer`, `ml`, `kg`, `qty`, `cost_nis`, `total_cost_nis`, `retail_price`, `total_retail_price`, `gross_weight`, `packing_notes`, `created_at`, `updated_at`) VALUES
(53, 3, NULL, '', '', 'dsfds', 1.00, 1, 1.00, 1.00, NULL, NULL, 1.00, 'fdsf', '2021-01-05 21:39:29', '2021-01-05 21:39:29'),
(54, 3, NULL, '', '', 'fdsf', 2.00, 2, 4.00, 8.00, NULL, NULL, 2.00, 'dasd', '2021-01-05 21:39:29', '2021-01-05 21:39:29'),
(87, 1, 'kfhd', 'kjhdfdhkj', '', '23', 2.00, 2, 5.00, 10.00, NULL, NULL, 4.00, 'de', '2021-03-31 02:41:00', '2021-03-31 02:41:00'),
(88, 1, 'jlkj', 'lj', '3,4', '2', 4.00, 5, 1.00, 5.00, NULL, NULL, 2.00, 'dfdsf', '2021-03-31 02:41:00', '2021-03-31 02:41:00'),
(89, 1, 'aaaa', 'ljlj', '', '2', 6.00, 2, 1.00, 2.00, NULL, NULL, 7.00, 'hhjk', '2021-03-31 02:41:00', '2021-03-31 02:41:00'),
(90, 1, 'bbbb', ',njl', '4', '1', 7.00, 8, 2.00, 16.00, NULL, NULL, NULL, NULL, '2021-03-31 02:41:00', '2021-03-31 02:41:00'),
(91, 4, 'qqq', 'test product', '4', 'New', 1.00, 3, 1.00, 3.00, NULL, NULL, 22.00, NULL, '2021-03-31 06:38:36', '2021-03-31 06:38:36'),
(92, 4, 'zzzz', 'test product2', '3,4', 'New', 2.00, 4, 1.00, 4.00, NULL, NULL, 22.00, NULL, '2021-03-31 06:38:36', '2021-03-31 06:38:36'),
(101, 5, 'ddd', 'New', '3,5', 'n', 1.00, 1, 1.00, 1.00, NULL, NULL, NULL, NULL, '2021-03-31 07:24:42', '2021-03-31 07:24:42'),
(102, 5, 'ccc', 'Fnew', '3,4', 'we', 1.00, 1, 1.00, 1.00, NULL, NULL, NULL, NULL, '2021-03-31 07:24:42', '2021-03-31 07:24:42');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_policy', 'web', '2020-04-09 02:54:50', '2020-04-09 02:54:50'),
(2, 'add_policy', 'web', '2020-04-09 02:54:50', '2020-04-09 02:54:50'),
(3, 'edit_policy', 'web', '2020-04-09 02:54:50', '2020-04-09 02:54:50'),
(4, 'delete_policy', 'web', '2020-04-09 02:54:51', '2020-04-09 02:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `name`, `mobile`, `city`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(17, 'Sawsan Qomsieh', '', '', '', 1, '2021-04-21 06:25:41', '2021-04-21 06:25:41'),
(18, 'Nablus soap', '', '', '', 1, '2021-04-21 06:25:43', '2021-04-21 06:25:43'),
(19, 'Nol collective', '', '', '', 1, '2021-04-21 06:25:45', '2021-04-21 06:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `feature_desc` text COLLATE utf8mb4_unicode_ci,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `stock_qty` double(8,2) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` double(8,2) DEFAULT NULL,
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimensions` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `pending` tinyint(4) DEFAULT NULL,
  `wholesaleprice` decimal(10,2) DEFAULT NULL,
  `custom_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_location` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `weight`, `desc`, `short_desc`, `feature_desc`, `purchase_price`, `sale_price`, `stock_qty`, `sku`, `manage_stock`, `stock_status`, `dimensions`, `is_active`, `pending`, `wholesaleprice`, `custom_unit`, `inventory_location`, `created_at`, `updated_at`) VALUES
(6, NULL, 'Close Your Ears', '', 'test update description from csv', 'Sawsan Qomsieh(Close Your Ears)', '<p>Featured description from laravel</p>', 600.00, 1000.00, NULL, 'AR015TEST', 1.00, 'Instock', '90 x 60 cm', 1, 0, 0.00, NULL, NULL, '2021-04-21 06:25:41', '2021-04-30 03:34:53'),
(7, NULL, 'Traditional Olive Oil Soap (6 bars)', '0.75 kg', NULL, '<p>Nablus soap (6 bars)</p>', NULL, 5.10, 30.00, NULL, 'DS0044', 10.00, 'Instock', NULL, 1, 0, 0.00, NULL, NULL, '2021-04-21 06:25:43', '2021-10-09 01:20:07'),
(8, NULL, 'valley sweatshirt (muted green) unisex', '0.52 kg', '', 'valley sweatshirt (muted green) unisex', NULL, 20.00, 40.00, NULL, 'FA0042', 1.00, 'Instock', 'Bust: 110 cm  Sleeve: 48 cm  Length: 66 cm', 1, 0, 32.00, NULL, NULL, '2021-04-21 06:25:45', '2021-04-30 03:34:57'),
(9, NULL, 'Test Product From Laravel', '100 GM', '<p>Test description from laravel</p>', '<p>Short descrition from laravel</p>', '<p>Feature descrition from laravel</p>', 100.00, 106.00, 100.00, 'SKU1GHT', 0.00, '1', '90*101*45 cm', 1, NULL, 101.00, NULL, NULL, '2021-04-21 06:31:55', '2021-04-21 06:35:55'),
(10, NULL, 'gdg', '61', '<p>dfgfg</p>', '<p>gdgfg</p>', '<p>fgfdgd</p>', 25.00, 2.00, NULL, '12345', NULL, NULL, NULL, 1, NULL, 11.00, '1', NULL, '2021-08-11 23:10:28', '2021-08-11 23:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'User', 'web', '2020-04-09 02:55:09', '2020-04-09 02:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` text,
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `name`, `url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ABCD', 'abcd.com', 1, '2021-07-21 16:29:26', '2021-07-21 16:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `shippings_old`
--

CREATE TABLE `shippings_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings_old`
--

INSERT INTO `shippings_old` (`id`, `shipping_method`, `shipping_url`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'test shipping', 'test shipping url', 1, '2021-07-11 05:42:07', '2021-07-11 05:42:07'),
(3, 'test shipping one', 'test shipping one url', 1, '2021-07-11 05:42:25', '2021-07-11 05:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'test supplier', 1, '2020-12-27 00:24:08', '2020-12-27 00:24:08'),
(3, 'test supplier 1', 1, '2020-12-27 00:42:03', '2020-12-27 00:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `mobile`, `city`, `state`, `designation`, `company`, `address`, `address_two`, `image`, `email`, `email_verified_at`, `email_verified`, `password`, `remember_token`, `created_at`, `status`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Amit', '5435353454', 'fdsf', 'fdfdf', NULL, NULL, 'fdfdf', NULL, '81hTIUAGsoL._UY535_.jpg', 'amit@yopmail.com', '2020-04-09 02:55:09', 1, '$2y$10$wRx59CtR6vW7OlMblBDt3Os9xbQFAw6lx5hURp17ol0oum7cgWmpi', 'zyUIF2abQrFkFe77Pxfed1jOcck8QBPGF48fEfaxm74TgSy3eyHEEyDmdUMX', '2020-04-09 02:55:09', 1, '2020-07-13 19:13:45', NULL),
(2, 2, 'Bisher', '9542547148', 'jaipur', 'fdsfsdf', NULL, NULL, NULL, NULL, 'pp.jpg', 'admin@yopmail.com', '2020-04-09 02:55:10', 1, '$2y$10$p7J0H1vOCW.MusPS/BfzNuAebGVGduUWaDx2OZ/rUeHrv.wTsa/aq', 'PHxRGOGfhtvgaclMQfaUc7sjf4MI2OdENUDmTnnMUHGv73NOo7UI4fIwlo7z', '2020-04-09 02:55:10', 0, '2020-12-27 23:31:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`),
  ADD UNIQUE KEY `admin_users_mobile_unique` (`mobile`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_product_relation`
--
ALTER TABLE `cat_product_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_wc_order_no_unique` (`wc_order_no`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_test`
--
ALTER TABLE `order_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
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
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings_old`
--
ALTER TABLE `shippings_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cat_product_relation`
--
ALTER TABLE `cat_product_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_test`
--
ALTER TABLE `order_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings_old`
--
ALTER TABLE `shippings_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
