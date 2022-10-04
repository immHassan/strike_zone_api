-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2022 at 11:58 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xhmxdjmy_strike_zone`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_us_id` int(11) NOT NULL,
  `about_us_sort_order` int(11) DEFAULT NULL,
  `about_us_main_heading` varchar(300) DEFAULT NULL,
  `about_us_paragraph` varchar(300) DEFAULT NULL,
  `section_1_heading` varchar(300) DEFAULT NULL,
  `section_1_paragraph` varchar(300) DEFAULT NULL,
  `section_1_button_text` varchar(300) DEFAULT NULL,
  `section_1_button_url` varchar(300) DEFAULT NULL,
  `section_1_background_image` varchar(300) DEFAULT NULL,
  `about_us_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `about_us_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `about_us_created_by` int(11) DEFAULT NULL,
  `about_us_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_us_id`, `about_us_sort_order`, `about_us_main_heading`, `about_us_paragraph`, `section_1_heading`, `section_1_paragraph`, `section_1_button_text`, `section_1_button_url`, `section_1_background_image`, `about_us_created_at`, `about_us_updated_at`, `about_us_created_by`, `about_us_status`) VALUES
(1, NULL, 'Who Are We', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda nobis numquam, autem dolorem consectetur odit aliquam nam rerum consequatur architecto, libero corrupti vitae?', 'About Us', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. In, vero soluta facere perspiciatis asperiores voluptates, modi molestias, debitis rem inventore doloribus velit molestiae! Omnis totam eius, nam ipsam distinctio aut error maiores ducimus fuga eligendi consequatur harum deserunt corrupti maxi', 'Book Appointment', '#', '776079-round-4.png', '2022-06-06 05:06:45', '2022-07-27 12:21:04', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `asset_id` int(11) NOT NULL,
  `asset_sort_order` int(11) DEFAULT NULL,
  `asset_tag` varchar(300) DEFAULT NULL,
  `asset_tag_property` varchar(300) DEFAULT NULL,
  `asset_tag_property_value` varchar(300) DEFAULT NULL,
  `asset_tag_type` varchar(300) DEFAULT NULL,
  `asset_tag_inner_value` varchar(300) DEFAULT NULL,
  `asset_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `asset_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `asset_created_by` int(11) DEFAULT NULL,
  `asset_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_sort_order` int(11) DEFAULT NULL,
  `banner_heading` varchar(300) DEFAULT NULL,
  `banner_paragraph` text,
  `banner_button_text` varchar(300) DEFAULT NULL,
  `banner_button_color` varchar(300) DEFAULT NULL,
  `banner_image` varchar(300) DEFAULT NULL,
  `banner_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `banner_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `banner_created_by` int(11) DEFAULT NULL,
  `banner_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_sort_order`, `banner_heading`, `banner_paragraph`, `banner_button_text`, `banner_button_color`, `banner_image`, `banner_created_at`, `banner_updated_at`, `banner_created_by`, `banner_status`) VALUES
(1, NULL, 'Life is full of choices, as a life coach I will help you find the right one for you', 'We don’t judge. We don’t tell you what should make you happy. We just explore the things you are drawn to. And we seek to', 'Read More', 'linear-gradient(90deg, rgba(120,224,247,1) 20%, rgba(25,149,179,1) 100%) !important', '220201-banner.jpg', '2022-06-02 08:17:43', '2022-07-26 15:08:00', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batch_id` int(11) NOT NULL,
  `batch_sort_order` int(11) DEFAULT NULL,
  `batch_name` varchar(300) DEFAULT NULL,
  `batch_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `batch_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch_created_by` int(11) DEFAULT NULL,
  `batch_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `batch_sort_order`, `batch_name`, `batch_created_at`, `batch_updated_at`, `batch_created_by`, `batch_status`) VALUES
(1, NULL, 'Batch 2021', '2022-08-15 09:48:36', '2022-08-15 09:49:04', NULL, 'enable'),
(2, NULL, 'Batch 2022', '2022-08-15 09:48:41', '2022-08-15 09:48:59', NULL, 'enable'),
(3, NULL, 'asasa', '2022-08-15 09:49:10', '2022-08-15 09:49:12', NULL, 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_sort_order` int(11) DEFAULT NULL,
  `category_name` varchar(300) DEFAULT NULL,
  `category_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_created_by` int(11) DEFAULT NULL,
  `category_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_sort_order`, `category_name`, `category_created_at`, `category_updated_at`, `category_created_by`, `category_status`) VALUES
(1, NULL, 'Camps $10 per hour', '2022-06-02 05:52:42', '2022-08-15 07:06:53', NULL, 'enable'),
(2, NULL, 'Batting Cages $1 a minute', '2022-06-02 05:53:37', '2022-08-15 07:07:26', NULL, 'enable'),
(3, NULL, 'Mens Fashion', '2022-06-02 05:55:18', '2022-08-15 07:08:22', NULL, 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('00bfe7eea1425ba19ecfa2bbf8f8e1c5288d6d6b', '173.252.127.25', 1658278156, '__ci_last_regenerate|i:1658278156;'),
('00ff5234ab782638359005615c9ebb2963afc881', '73.86.99.93', 1658278696, '__ci_last_regenerate|i:1658278696;'),
('0118089d650c3170904c88d6d8d319f75cacb1ab', '124.29.235.202', 1658256445, '__ci_last_regenerate|i:1658256445;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('015fcfd0cd353a8dcfa6f5130dc67760c9bfd056', '175.107.203.163', 1663150494, '__ci_last_regenerate|i:1663150209;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('01986997cbf33ae98859f4c33f808c3c72ff8153', '68.100.146.119', 1658706933, '__ci_last_regenerate|i:1658706933;'),
('01f5d39c9af23a6094c94afc9336f235733f7442', '68.100.146.119', 1658706472, '__ci_last_regenerate|i:1658706472;'),
('0265267d6c2dad956d6da414be544dbf706ccf99', '13.82.212.67', 1662776607, '__ci_last_regenerate|i:1662776607;'),
('02dcf9f65f34979ed53a86a0438fc6714a20ee0e', '76.197.214.40', 1658349119, '__ci_last_regenerate|i:1658349119;'),
('0304a97da43099224a82277a8daaf98630f305b6', '172.58.164.99', 1658625987, '__ci_last_regenerate|i:1658625987;'),
('030bb54d6f1797e0dba09267e1751237c188d27e', '68.100.146.119', 1658506095, '__ci_last_regenerate|i:1658506095;'),
('03157b88ecdc789e1a89f3d64e9edee2a5a572bc', '124.29.235.202', 1658170209, '__ci_last_regenerate|i:1658170209;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('035a30db9cf28d8495134f7d36503d155909a86b', '174.110.88.56', 1658269848, '__ci_last_regenerate|i:1658269848;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('03780d91b358a3220577137f04f5e6acd58dee01', '221.132.115.66', 1657297182, '__ci_last_regenerate|i:1657297182;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('0387e7339130cf6426c87beba8e27a83506cfe23', '166.205.147.1', 1658410757, '__ci_last_regenerate|i:1658410757;'),
('03cf9637f4fff53b3586da6789ad43b247154b73', '175.107.203.163', 1663068563, '__ci_last_regenerate|i:1663068563;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('03e52048bba06bebb5a3d39b3e420e987f657339', '66.249.83.125', 1658254835, '__ci_last_regenerate|i:1658254835;'),
('04ab71aee810426f31a677695d5bc6eb4d89672f', '66.249.88.57', 1658254801, '__ci_last_regenerate|i:1658254801;'),
('04e1fff6897d3fb674e441919605ef0659fe7776', '124.29.235.202', 1658257662, '__ci_last_regenerate|i:1658257662;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('04ef5f1d3436838047df0d79f83f6bfa93caf56c', '66.102.9.57', 1658254818, '__ci_last_regenerate|i:1658254818;'),
('050e6c1ddab926cc8b1b1a357340088bb8ab95c6', '35.89.49.3', 1658656826, '__ci_last_regenerate|i:1658656826;'),
('056d3bf61bc5ac3b3fdfe05ee6bc92338173584a', '172.58.156.97', 1658341485, '__ci_last_regenerate|i:1658341484;'),
('05a03901abc8536dde145e9ca22cedc5db2bcd5b', '20.112.217.230', 1658411371, '__ci_last_regenerate|i:1658411371;'),
('05vpc28drvdha0c1enlghcmes9f8r3cd', '::1', 1655472189, '__ci_last_regenerate|i:1655472189;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('067vn43438bje9lfaj90khu4fgoqqhnt', '::1', 1656599776, '__ci_last_regenerate|i:1656599776;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('06ac4cc9115b2f552109f7542b53cef2cff8cb76', '174.198.193.36', 1658773727, '__ci_last_regenerate|i:1658773727;'),
('06fa3e7be33e8eea6247f0ae289c3215086a3669', '172.58.159.122', 1658169358, '__ci_last_regenerate|i:1658169358;'),
('06joj20ei2nr0b68e6s0r3ktd7014s75', '::1', 1660554787, '__ci_last_regenerate|i:1660554787;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0723207bdb4665a00199063f469c01aa774760a5', '75.170.14.37', 1658261514, '__ci_last_regenerate|i:1658261514;'),
('0760d99a47e86a22fd3428f314c88505525584b6', '174.110.88.56', 1658273883, '__ci_last_regenerate|i:1658273840;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0792405f723b0383b00734ad18ba1bcc77450d4b', '174.110.88.56', 1656948215, '__ci_last_regenerate|i:1656948215;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:24;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('07bc90b0c4ab7c1f57be42b4e8b0208ac8e4fdcf', '66.249.77.77', 1658795080, '__ci_last_regenerate|i:1658795080;'),
('087f70eb9de4be4846433f224023d5004e29cf99', '124.29.235.202', 1658255270, '__ci_last_regenerate|i:1658255270;'),
('08a7c3a9459476a566ea5402ab81dea075b78a45', '174.110.88.56', 1656948528, '__ci_last_regenerate|i:1656948528;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:24;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('08cea0b15ac204108cc3257d6346d0bc1e5c2292', '69.63.189.5', 1658778325, '__ci_last_regenerate|i:1658778325;'),
('09091c73aa64f670b235489fd60e9e4881417fef', '66.249.83.106', 1658751985, '__ci_last_regenerate|i:1658751985;'),
('091cibeo8fsnu5l1udrdlc2u6g2630jh', '::1', 1659088616, '__ci_last_regenerate|i:1659088616;'),
('0945fe946728bb998b0d769ac0d198d16de0c2aa', '175.107.203.163', 1664534598, '__ci_last_regenerate|i:1664534598;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0959fdcbfef57e77dd685063ebf21e6e2f1bdd6b', '221.132.115.66', 1657297183, '__ci_last_regenerate|i:1657297182;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('09d58283682d2b0a73615ac453b0ee514875a640', '34.218.205.130', 1658673136, '__ci_last_regenerate|i:1658673136;'),
('0a4e5332f640323297fe87c761bf081b86040c29', '101.53.248.38', 1657203976, '__ci_last_regenerate|i:1657203976;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('0b31fa7ca1cc754f3e9ea70a29148b557ecf3e3b', '66.249.80.17', 1655499119, '__ci_last_regenerate|i:1655499119;'),
('0b63bf1f0cea9103cdfc58ded96467d0d5b97c32', '101.53.248.38', 1657724980, '__ci_last_regenerate|i:1657724980;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0bc1d035fd1c2a23dd51445ef12673d52a081572', '66.102.9.57', 1658254818, '__ci_last_regenerate|i:1658254818;'),
('0c8fbb634adbeb74d1a33a213667bfef3a2ad99e', '221.132.115.66', 1658826735, '__ci_last_regenerate|i:1658826621;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0cab5ee28f891a3af2f4dc221ab58dd91a7ee46d', '101.53.248.38', 1655498346, '__ci_last_regenerate|i:1655498346;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('0cf36d35b870a1839ebe468847de09ad207e6bfd', '175.107.203.163', 1664786460, '__ci_last_regenerate|i:1664786460;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0d2d2917fd6c17b07683441167aec8a2b7edc161', '173.252.83.119', 1658778281, '__ci_last_regenerate|i:1658778281;'),
('0ddc24a6b81108f296723bcae07549ecc6e2a13a', '124.29.235.202', 1655746497, '__ci_last_regenerate|i:1655746497;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0ddfd632b3080f9dee3fd4727b55856bcf9440b3', '101.53.248.38', 1657286498, '__ci_last_regenerate|i:1657286498;'),
('0e822c9c7c8f8223e507bc204ee068731a2ae10d', '96.37.236.143', 1656875393, '__ci_last_regenerate|i:1656875390;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('0ee6385143e6816c60105af86e39d3262fbfe57d', '221.132.115.66', 1658764815, '__ci_last_regenerate|i:1658764783;error|s:26:\"Invalid Email Or Password.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}'),
('0f4bd939a4b6b7cf6dea0fed6c3ba513e60c7bf1', '124.29.235.202', 1655745795, '__ci_last_regenerate|i:1655745795;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}'),
('0f64e1e7190cfa111d86c98c8ae165d72ccc5606', '174.110.88.56', 1658272910, '__ci_last_regenerate|i:1658272910;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0f92668567593f5836a040fbdd43136509832d72', '66.249.83.60', 1657725901, '__ci_last_regenerate|i:1657725901;'),
('0fefd7cf32a0d4a684b4ebb318606c9e49104ab3', '101.53.248.38', 1657209448, '__ci_last_regenerate|i:1657209448;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('0ls8rhr03geq0ifug5t6qftnjkclqk26', '::1', 1656600825, '__ci_last_regenerate|i:1656600825;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0mgkk9r5dsnvsc7drk2clk7k2tt9f41q', '::1', 1659087351, '__ci_last_regenerate|i:1659087351;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('0vqhmjm2oh0jdohfs4l19j6bdgu8ttuf', '::1', 1658922544, '__ci_last_regenerate|i:1658922544;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('10a2941f4fade42f578ba5a44f227fde66877067', '68.100.146.119', 1658705264, '__ci_last_regenerate|i:1658705264;'),
('115c452b8b120ac6528ab30d88eda4ca5ef6b69a', '101.53.248.38', 1655495902, '__ci_last_regenerate|i:1655495902;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('11nuthoir165v5b1cn4kbmiuaut9apau', '::1', 1659090716, '__ci_last_regenerate|i:1659090716;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('121ec6c0f7a5087869f851a69be732215d9a821a', '24.88.248.54', 1658783650, '__ci_last_regenerate|i:1658783650;'),
('12797f99cb52c73440d7c0f378a782797aa744e9', '66.102.9.57', 1658254775, '__ci_last_regenerate|i:1658254775;'),
('1289d592324c24b6086852a422bc174382a520a1', '166.205.147.116', 1658427998, '__ci_last_regenerate|i:1658427998;'),
('128dfe444da35cd09ddb49d242f7063e1faab896', '66.249.88.57', 1658254824, '__ci_last_regenerate|i:1658254824;'),
('12aea2a2edc4a39b2605b1aa4d868a30cbc700f3', '205.210.31.18', 1658781331, '__ci_last_regenerate|i:1658781331;'),
('12c73e0fda83f1fbc684c254dbb6b7bb10d57de6', '66.249.80.20', 1655499118, '__ci_last_regenerate|i:1655499118;'),
('1311ceb211a96852de555dbf3ad876a07cd339c8', '66.249.83.23', 1657725900, '__ci_last_regenerate|i:1657725900;'),
('1326e6f197a2e52f1b1edf24457e0f4976aea9ba', '221.132.115.66', 1663143125, '__ci_last_regenerate|i:1663143125;'),
('1366eed28b8ba6002dddfa758649499f5106c0b9', '175.107.203.163', 1662447139, '__ci_last_regenerate|i:1662447139;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('13bbe39870771c5b28d199daafba7e3577fcf157', '124.29.235.202', 1657195059, '__ci_last_regenerate|i:1657195059;'),
('13d909d6abbd9a7cb69eb865ab9a9e7180de7cc1', '101.53.248.38', 1662970540, '__ci_last_regenerate|i:1662970540;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('13ev2n1apu41dgtmn997b8at0erf9rbt', '::1', 1660551891, '__ci_last_regenerate|i:1660551891;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('14169b48d36e226a0cc056f778ffe8dcfdfe8262', '221.132.115.66', 1658259990, '__ci_last_regenerate|i:1658259960;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('14bb9fd76065601f86f1842759c916e040198979', '69.171.251.21', 1658356477, '__ci_last_regenerate|i:1658356477;'),
('14db5db1c7f250631ccd74c3c1de786a3db7fb48', '101.53.248.38', 1664471540, '__ci_last_regenerate|i:1664471539;'),
('14eb0aabacbade6f401028a169435637b7ac45c8', '175.107.203.163', 1662459316, '__ci_last_regenerate|i:1662459316;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1500ce50567df95a6b623561ed471d0e13e0b545', '68.100.146.119', 1658364988, '__ci_last_regenerate|i:1658364988;'),
('151e289edb59052017594a061b3445da2b8de90b', '174.196.129.68', 1658355125, '__ci_last_regenerate|i:1658355096;'),
('154f0d714de5e19446c4b2a477598b1af08b1047', '198.235.24.24', 1658809807, '__ci_last_regenerate|i:1658809807;'),
('1599a7514be68f0936866c22d089c8667e877421', '74.196.77.11', 1658261585, '__ci_last_regenerate|i:1658261585;'),
('15c844ecf8a69997ff6b8601f5d378799e0fcc9e', '175.107.203.163', 1661419397, '__ci_last_regenerate|i:1661419396;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('15ff1b3d87dfcf00ea1e18d240aad164e75dcfae', '185.202.220.39', 1658246581, '__ci_last_regenerate|i:1658246581;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('162cb69c88db47e81dd69ec244e98b3c536e0a28', '101.53.248.38', 1655496830, '__ci_last_regenerate|i:1655496830;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1699cdc2213561ceb69906092ed08b647f13800a', '172.75.1.222', 1658612285, '__ci_last_regenerate|i:1658612285;'),
('16ae444bda765d495c150dbaccc98b984c3b6800', '205.210.31.129', 1658353483, '__ci_last_regenerate|i:1658353483;'),
('16f38180ca05afcda40b9453dc77c26b543cf871', '101.53.248.38', 1655494768, '__ci_last_regenerate|i:1655494768;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('172f4cf4263b6558db646ea032683a0c517afa62', '175.107.203.163', 1664785350, '__ci_last_regenerate|i:1664785350;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('174123749a623feb384597ad179d4ee2e6d65254', '20.112.217.230', 1658497754, '__ci_last_regenerate|i:1658497754;'),
('177d7ce23d5d7b17e3133f42cdc595704e077753', '66.249.88.58', 1658254833, '__ci_last_regenerate|i:1658254833;'),
('17a41960bcdb421cf5ae95bdab58a24f39d4acdb', '66.249.88.57', 1658254828, '__ci_last_regenerate|i:1658254828;'),
('17aa0b9d1cde180bd3d749365608c4ade4b16903', '101.53.248.38', 1664201031, '__ci_last_regenerate|i:1664201030;'),
('17ed81692c79a5b55825abaa268abbdb27534cfd', '174.240.253.87', 1658632969, '__ci_last_regenerate|i:1658632969;'),
('1843236b10eac3b6020d13cdeb2c2070fef8446f', '124.221.186.26', 1658661283, '__ci_last_regenerate|i:1658661283;'),
('1857fd804dab63520a0cc555170537738172df54', '47.133.165.227', 1658273626, '__ci_last_regenerate|i:1658273626;'),
('18b2abd71d3e0e4a214cd0fcea969920c5cbc845', '54.149.190.145', 1658672244, '__ci_last_regenerate|i:1658672244;'),
('1978e58d9af07f118ddc1844981ef655bfcb7b9c', '68.100.146.119', 1658506095, '__ci_last_regenerate|i:1658506095;'),
('1a3e428f67a1650b3c17949c819fdb0dc85310da', '66.249.83.103', 1655499093, '__ci_last_regenerate|i:1655499092;'),
('1a456965d28b081da70633ba43a758ab57b7bfcf', '173.252.87.4', 1658282242, '__ci_last_regenerate|i:1658282242;'),
('1a5235c50cdc1f58da04fd151b6d96d484315e40', '124.29.235.202', 1655749232, '__ci_last_regenerate|i:1655749232;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1a9c8825bdb7a88d34d18baab6c08265f7257fe4', '51.222.253.11', 1658316390, '__ci_last_regenerate|i:1658316390;'),
('1b11760bd9245164c8731d09388ef336ed66156a', '34.220.152.223', 1658585028, '__ci_last_regenerate|i:1658585028;'),
('1b188618a0d78a15c58910d8b460cfc960978ceb', '174.110.88.56', 1658271432, '__ci_last_regenerate|i:1658271432;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1b29e11ebf0aeeaf3e8e28f46ed994d70da862ae', '35.89.203.235', 1658330587, '__ci_last_regenerate|i:1658330587;'),
('1b90a367396f49bb17b1e38bb0fe6178430079bc', '101.53.248.38', 1655495098, '__ci_last_regenerate|i:1655495098;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1c2llpp35q9ak7d1runkus1s2nn49agu', '::1', 1660556878, '__ci_last_regenerate|i:1660556878;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1c353d8323e5c16af3ae7be76e97d626c0742bdd', '174.110.88.56', 1658536088, '__ci_last_regenerate|i:1658536088;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1c41943e2be348be8c04e7d7bbebfb6c40d3975f', '124.29.235.202', 1658320353, '__ci_last_regenerate|i:1658320353;'),
('1c475cc7d0152c1eda9e052dd88043bb1aa9552b', '124.29.235.202', 1657186714, '__ci_last_regenerate|i:1657186714;'),
('1cbef5bf6a87c02090e4260341c22a8156ce7cc2', '101.53.248.38', 1655496291, '__ci_last_regenerate|i:1655496291;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('1ccb67d75e0d34145a10e92abe2c29a13c33a16a', '124.29.235.202', 1655745339, '__ci_last_regenerate|i:1655745339;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:24;s:11:\"total_items\";d:2;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}}'),
('1ddaafb95049c036bb1a1f7f4f58a47a0421b2be', '101.53.248.38', 1664459339, '__ci_last_regenerate|i:1664459338;'),
('1df8eb44a1c9fa48bacec0f268dc007943fe140d', '166.205.147.117', 1658261764, '__ci_last_regenerate|i:1658261764;'),
('1dfc2e48f454174a20020b9515e27d34283f0aba', '172.58.156.27', 1658410009, '__ci_last_regenerate|i:1658410008;'),
('1e171c3284a42d93b1b4b80a0a7cc72cb34d5c1f', '174.110.88.56', 1658260729, '__ci_last_regenerate|i:1658260729;'),
('1e6218c4271ad3f1b6954bf4e963943b0db21201', '24.170.234.199', 1658262328, '__ci_last_regenerate|i:1658262328;'),
('1eb03f9e5340d189d62119b4e87842c80a0aff26', '100.7.23.207', 1658620197, '__ci_last_regenerate|i:1658620197;'),
('1ec28c16dd2e37ad723427cde430639cd6eb6cd4', '221.132.115.66', 1658761630, '__ci_last_regenerate|i:1658761630;'),
('1f3cb2a0adf55605b837c000527a07d5ade98ca2', '66.102.9.61', 1658254817, '__ci_last_regenerate|i:1658254817;'),
('1g166g3ht3frfkttv517267p9ea4lgrc', '::1', 1656621204, '__ci_last_regenerate|i:1656621204;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('1lv6vn1bh8o7ncqrunf2j1o0i47i0tf6', '::1', 1656624029, '__ci_last_regenerate|i:1656623888;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('1ttq1egmedmc6nm7t89u41k1hcr87pep', '::1', 1659089796, '__ci_last_regenerate|i:1659089796;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('202f48533c74bebe865c8bd069a78f1d9f87c204', '101.53.248.38', 1657195773, '__ci_last_regenerate|i:1657195773;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('2050944ed775ac705a62ac32d24329eeb9bf566f', '119.160.2.238', 1658361742, '__ci_last_regenerate|i:1658361742;'),
('209101f6d7f511bcc6795c690959c69c4ecb3b6c', '221.132.115.66', 1657295549, '__ci_last_regenerate|i:1657295549;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('2096f77599dc91a66adb8221f432937e7e1aa1da', '17.121.114.31', 1658333993, '__ci_last_regenerate|i:1658333992;'),
('20b9aa354d3bc4502c9fbf4772c81ca2758438ae', '17.121.113.59', 1658528045, '__ci_last_regenerate|i:1658528045;'),
('20c667a13f0491771bba57a27343b2816e9fda4e', '66.249.88.58', 1658254783, '__ci_last_regenerate|i:1658254783;'),
('20d12b409289fb8b5019c0842c89575cca5ed9a8', '69.171.251.4', 1658618967, '__ci_last_regenerate|i:1658618967;'),
('213e6ec6b9c9643fb81bb275c4be936041dd42ed', '175.107.203.163', 1661419396, '__ci_last_regenerate|i:1661419396;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('2168f6c64aee6c114aeb9904d7433951d104086e', '66.249.88.231', 1658764896, '__ci_last_regenerate|i:1658764896;'),
('21982c41c7e0947fd4e3fce80e62b2add81a3f13', '101.53.248.38', 1657202075, '__ci_last_regenerate|i:1657202075;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('2208ffbea3b7404c4d24ad0f1f8cfe9ec3384679', '71.76.41.17', 1658633280, '__ci_last_regenerate|i:1658633280;'),
('2354f973b83b05ed4545b5bb9cb7412c843eb35c', '124.29.235.202', 1658258699, '__ci_last_regenerate|i:1658258699;'),
('23732d1597ce29412aa71f45aed4899f0fa065b8', '221.132.115.66', 1658259960, '__ci_last_regenerate|i:1658259960;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('24f458508548d4cb82f4cf6146e5fcce372915de', '71.77.24.147', 1658631179, '__ci_last_regenerate|i:1658631179;'),
('253cdab6a1d2a031703ecee4983eec1bb3a83dda', '175.107.203.163', 1662446754, '__ci_last_regenerate|i:1662446754;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('25491a562e18827d1d019fd8add460d73994b5e7', '73.172.202.254', 1658607420, '__ci_last_regenerate|i:1658607289;'),
('25ba10155542a456b9efde7e0cffa09d71a8361f', '66.102.7.191', 1658254837, '__ci_last_regenerate|i:1658254837;'),
('25c453c2fcbaf2cc82abf15de04fc04f410ce991', '124.29.235.202', 1657187129, '__ci_last_regenerate|i:1657187129;'),
('26211f74f6b455ea2690d0eefc95caabf16d9d46', '66.249.88.57', 1658254824, '__ci_last_regenerate|i:1658254824;'),
('2629566739af7450b54816e294aad9a94c631e33', '107.116.83.3', 1658263275, '__ci_last_regenerate|i:1658263275;'),
('26f3999dd3aa984083f72942d95962a977103018', '17.121.114.30', 1658428330, '__ci_last_regenerate|i:1658428330;'),
('2770882ce75680664b7f44047afc409431fd7726', '172.58.156.27', 1658410462, '__ci_last_regenerate|i:1658410462;'),
('2777ade99d88f233deb41161f9c54c1136d82473', '175.107.203.163', 1664786148, '__ci_last_regenerate|i:1664786148;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('27fc7f0602df3339608897506afc0a46341c1995', '192.210.141.120', 1658317587, '__ci_last_regenerate|i:1658317587;'),
('2827b3dd6e5f4ffa6f44ee4bef5ea86aacbd6662', '174.110.88.56', 1658260865, '__ci_last_regenerate|i:1658260793;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('2893d6141c9ff8f62962e7a1860a8bed45601e12', '101.53.248.38', 1657207876, '__ci_last_regenerate|i:1657207876;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('295fd49b30819fba46ef0d89cb596183a73fd0ab', '101.53.248.38', 1657205371, '__ci_last_regenerate|i:1657205371;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('2988a36815a0946adee4adf2e883caa0eed3acc1', '69.231.247.157', 1658353931, '__ci_last_regenerate|i:1658353931;'),
('29b0d1b60cbc0adad711d88c4f99cc2b83bf0694', '69.63.184.2', 1658509366, '__ci_last_regenerate|i:1658509366;'),
('2a7dba863c3e12600c4f114c6427f6ec8c2519c1', '124.29.235.202', 1657284955, '__ci_last_regenerate|i:1657284955;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('2b517bbe152b1e22304c591ce2a80199adb155a1', '167.235.52.250', 1658823203, '__ci_last_regenerate|i:1658823201;'),
('2c581df6ea24cd265dbd97236452489d760bf02c', '159.89.136.16', 1658278716, '__ci_last_regenerate|i:1658278716;'),
('2ce09a96bea135bc44a26ec598bfbad4be3e12d1', '124.29.235.202', 1660923174, '__ci_last_regenerate|i:1660923174;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('2d6fde7e73f1efd626a5ebc8180c21d72d149309', '174.206.103.174', 1658268335, '__ci_last_regenerate|i:1658268335;'),
('2d7ca44b188f9af395d7a13391b8aab6d4aaafe6', '175.107.203.163', 1664787306, '__ci_last_regenerate|i:1664787306;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('2d80f57fd21b8ed8fa61168d6d4873d58bc01915', '101.53.248.38', 1662738578, '__ci_last_regenerate|i:1662738578;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('2db0a3d5e8ffc481600ed1cac7fcf60973785030', '159.89.136.16', 1658752651, '__ci_last_regenerate|i:1658752651;'),
('2dc962003b15c3d626978d98410180ed3010d1bd', '173.252.95.23', 1658778303, '__ci_last_regenerate|i:1658778303;'),
('2dsc4tnfifsip3te15s1bp1ja5u5m4ha', '::1', 1659092017, '__ci_last_regenerate|i:1659092017;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('2ec2b6d09c051c7d1fba9da1cfd922db7c80567f', '175.107.203.163', 1664535039, '__ci_last_regenerate|i:1664535039;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('2f6d2ef97adeded9a6f26b8e635b64ea10d734f2', '124.29.235.202', 1657197601, '__ci_last_regenerate|i:1657197601;'),
('2fb3b124b02127458c611a5df83c63fd81f0f06d', '124.29.235.202', 1656693926, '__ci_last_regenerate|i:1656693926;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('2fb4e1153caf5af50baa37d093adbcf9e6848a81', '50.220.63.234', 1658262846, '__ci_last_regenerate|i:1658262846;'),
('2hd11u4lvum1sf1rabcs05g8ngogiv6o', '::1', 1658917183, '__ci_last_regenerate|i:1658917183;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('2rpvg1fuui4u1bb225neph3h53fv6n2e', '::1', 1656598625, '__ci_last_regenerate|i:1656598625;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('3028e23f4270015b3aab0b0865352a602e1cb55c', '124.29.235.202', 1656695286, '__ci_last_regenerate|i:1656695286;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";error|s:41:\"You are not allowed to visit this module.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}'),
('305d404a31fd9e4a728e512813e3a8808b9a00fb', '124.29.235.202', 1658408537, '__ci_last_regenerate|i:1658408537;'),
('30b11074012ace9df3afe4dd88831ed7f0278718', '172.58.159.177', 1658491668, '__ci_last_regenerate|i:1658491663;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('30bb3d57940facb1ee75732038f8f970c699ae9e', '101.53.248.38', 1657203130, '__ci_last_regenerate|i:1657203130;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('30m3sbdcd2tdusm6nreflcnq6m64pvm7', '::1', 1655488386, '__ci_last_regenerate|i:1655488386;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:48;s:11:\"total_items\";d:4;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}s:32:\"a87ff679a2f3e71d9181a67b7542122c\";a:7:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:16:\"Pen and Keychain\";s:5:\"price\";d:12;s:3:\"qty\";d:3;s:5:\"image\";s:46:\"94885-ce3b9de2-deda-4818-889a-d5359a7e8b01.jpg\";s:5:\"rowid\";s:32:\"a87ff679a2f3e71d9181a67b7542122c\";s:8:\"subtotal\";d:36;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('310ae19f95a61ca8736657796c962e9dcdefbaa6', '172.58.159.203', 1658503861, '__ci_last_regenerate|i:1658503861;'),
('31125267a1c1821dd1134d233be1d3d0bbd7b195', '175.107.203.163', 1661419086, '__ci_last_regenerate|i:1661419086;'),
('315f341f778f8729c0a5389165039685bd87e5d0', '101.53.248.38', 1662972743, '__ci_last_regenerate|i:1662972743;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('319ce46c5b842a51982a85d33c8cd69574dc7546', '66.249.83.199', 1655499091, '__ci_last_regenerate|i:1655499090;'),
('323b1c253ce2d318ce60205a1a5c208954f55f28', '68.100.146.119', 1658278139, '__ci_last_regenerate|i:1658278139;'),
('326b9e0e1e9e3486d86b223ac5733223edb7b1b8', '174.198.197.25', 1658506435, '__ci_last_regenerate|i:1658506435;'),
('32a4ad34eda8505fd67518aafb96b89b7a3d1d2d', '66.102.7.191', 1658254837, '__ci_last_regenerate|i:1658254837;'),
('32ac5a860957738db709ad52d67cfc8e41a91adf', '159.89.136.16', 1658351524, '__ci_last_regenerate|i:1658351524;'),
('32e1afec2fdb39c3137ac338e8ea5002f6792e55', '66.249.75.144', 1658341349, '__ci_last_regenerate|i:1658341349;'),
('333566239009d0215b7de03acffbeb61fe289a75', '66.44.110.21', 1658344700, '__ci_last_regenerate|i:1658344700;'),
('3388d2f011dbea0ca5108903922212d244baf9e7', '66.249.83.53', 1658254772, '__ci_last_regenerate|i:1658254772;'),
('33e2dd7e7ba63e03c98a11ad579bf999fb37225e', '66.249.83.125', 1658254835, '__ci_last_regenerate|i:1658254835;'),
('3440d1302837c133964f74beba82fd2915251ddf', '124.29.235.202', 1658260324, '__ci_last_regenerate|i:1658260324;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('344747bd36cee9d4d1932396e25a50f2a40934cd', '124.29.235.202', 1658764958, '__ci_last_regenerate|i:1658764828;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('3471a2d64539e0a759569765cb54e73423804cfc', '221.132.115.66', 1658254493, '__ci_last_regenerate|i:1658254493;'),
('35a323ef905291b0f3a464220e52f04201b8f66d', '35.213.241.103', 1658623261, '__ci_last_regenerate|i:1658623260;'),
('36e1862832d08b6f6a476bb01bd295b20cbf034a', '221.132.115.66', 1658257810, '__ci_last_regenerate|i:1658257810;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('37be7c7fa4cdb951ed24caaefd7b109c9636d906', '71.77.24.147', 1658621071, '__ci_last_regenerate|i:1658621071;'),
('387a9c0d9d09ceda9749c6a6f804e11043a0091d', '124.29.235.202', 1658409453, '__ci_last_regenerate|i:1658409453;'),
('38a285e26609498371ae84f57602984e5208fce1', '173.252.107.11', 1658410271, '__ci_last_regenerate|i:1658410271;'),
('396f9100fcff04d0e76139ee596cc31cdb94f5e8', '124.29.235.202', 1658172208, '__ci_last_regenerate|i:1658172208;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('397c1fddc21113f921d69f2b463f9e904667f745', '221.132.115.66', 1657817661, '__ci_last_regenerate|i:1657817661;'),
('39d08433fce7117d12809c97a2d64bf1be01a82e', '69.138.186.145', 1658351556, '__ci_last_regenerate|i:1658351508;'),
('39d32a3e4d775fa9810874b7ae30f64827f63ef1', '66.249.88.57', 1658254833, '__ci_last_regenerate|i:1658254833;'),
('3a79e564b98396a3cf10f4142502e7b234c4e520', '101.53.248.38', 1657201185, '__ci_last_regenerate|i:1657201185;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('3ab2b7c8608e36e56de50e060acea71cd1e4aa31', '66.249.77.75', 1658795112, '__ci_last_regenerate|i:1658795112;'),
('3b6df8c448a70408dbf8f37aff363703adc062fa', '67.86.220.42', 1658261201, '__ci_last_regenerate|i:1658261201;'),
('3c4d3dddf07a8ac17aba974f1a1d0db7a18fe4b8', '101.53.248.38', 1657286177, '__ci_last_regenerate|i:1657286177;'),
('3cdecf144e545b87f60d6257148c9d1c6a4d0eec', '175.107.203.163', 1656690993, '__ci_last_regenerate|i:1656690819;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('3d7852abbdee4571fa6e90f7adaacc208ea0b2e3', '108.51.45.117', 1658265463, '__ci_last_regenerate|i:1658265452;'),
('3e5a4e610008999548a617dcaef01ab42c574973', '185.202.220.39', 1658244331, '__ci_last_regenerate|i:1658244331;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('3e801ef294667ff9fbb5fdfad9e646467232df7c', '63.117.215.4', 1658494902, '__ci_last_regenerate|i:1658494901;'),
('3eacd32261ef533c02e6b733c9300192d0664b07', '175.107.203.163', 1663150209, '__ci_last_regenerate|i:1663150209;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('3hvr9dumepa85lpu6dmc0112kcf4ql24', '::1', 1656685894, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656685894;'),
('3mkurmhneieple55f01mmfq2k6pbjg16', '::1', 1656678752, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656678752;'),
('3oq9vtcaj02no2t3oavdish7v1jf361s', '::1', 1655473264, '__ci_last_regenerate|i:1655473264;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('413a63871f5518a36b989d943749b9fefbc0b5ba', '75.180.208.42', 1658625618, '__ci_last_regenerate|i:1658625618;'),
('413a84da10fabc5a0061f4aa77de4825db80f141', '175.107.203.163', 1664539318, '__ci_last_regenerate|i:1664539318;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('41542f32f17c1c885d1baaedbf8ee5c8449959e8', '172.58.159.203', 1658510395, '__ci_last_regenerate|i:1658510395;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('4165ddf2ffd449c1173b3d24b2bfe1db5cce689a', '71.163.113.20', 1658633638, '__ci_last_regenerate|i:1658633638;'),
('41ebf315f29bf97d62b9a2d83dd074eb3cacbc40', '174.110.88.56', 1658258667, '__ci_last_regenerate|i:1658258667;'),
('4213e6450171f25bc93e33e917c87dc4c05be7c4', '124.29.235.202', 1658410007, '__ci_last_regenerate|i:1658409849;'),
('42bcfbe6be8c84dd14b4ee7664308cf19a381840', '66.249.88.57', 1658254805, '__ci_last_regenerate|i:1658254805;'),
('42deb63eec383d50597da055f8468d2d7d107ea2', '221.132.115.66', 1658256971, '__ci_last_regenerate|i:1658256971;'),
('43a3020c99dfba1e88cf8776ae4281a38db8b3d6', '159.89.136.16', 1658407380, '__ci_last_regenerate|i:1658407380;'),
('440d62f885523bdc6f25887fe05e63e945e591a4', '185.202.220.39', 1658240153, '__ci_last_regenerate|i:1658240150;'),
('445f34b74c82d4cffc8b64f0fb84dde5d22947f8', '166.205.147.1', 1658410373, '__ci_last_regenerate|i:1658410373;'),
('44a22a18b366b0cf9cbe46bb29c29a2278c4bf51', '124.29.235.202', 1657282934, '__ci_last_regenerate|i:1657282934;'),
('44afeae4245027e8b93f861fb7e54f4cf75f6452', '173.252.83.2', 1658348363, '__ci_last_regenerate|i:1658348363;'),
('44c6c828604b2b690decded1777ff79d62d53102', '124.29.235.202', 1656690913, '__ci_last_regenerate|i:1656690913;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('4533ihakah0c4h43m050hjjsukoa172j', '::1', 1656678042, '__ci_last_regenerate|i:1656678042;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('45ec5b7d6ba4b07bdf44637735fa91656659d005', '159.89.136.16', 1658699634, '__ci_last_regenerate|i:1658699634;'),
('4627c0c00ded62771d9fc6193642914926a1fd7f', '66.249.88.57', 1658254810, '__ci_last_regenerate|i:1658254810;'),
('4682845628e207e82948ca9313f4ac473e9b0ce3', '75.178.74.143', 1658621215, '__ci_last_regenerate|i:1658621215;'),
('46ba292e068647ca07c85f24b03be7bd48f8fb45', '172.56.13.94', 1658686475, '__ci_last_regenerate|i:1658686475;'),
('46e1216261646f0d3b7c3d4c24a11b73d89904b1', '96.37.236.143', 1658410099, '__ci_last_regenerate|i:1658410099;'),
('474975ac05149c14aa3d029bcd1c8619c5631b1c', '124.29.235.202', 1658259993, '__ci_last_regenerate|i:1658259993;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('47a9f8a0a8ae6a181fb1b2d2501fb983c5fa393c', '52.11.240.131', 1658504666, '__ci_last_regenerate|i:1658504666;'),
('4839702be45d697d6ac32c4323ae7473221e9f66', '17.121.113.106', 1658801115, '__ci_last_regenerate|i:1658801115;'),
('4849415436c51159905e270e784363de751c5bc3', '173.252.107.118', 1658419756, '__ci_last_regenerate|i:1658419756;'),
('48cfbf8bcd677907452648c9ae841d3b231270e1', '175.107.203.163', 1662461525, '__ci_last_regenerate|i:1662461525;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('48f50430b8f4a36e5a0108205cf51133dc0c1920', '107.127.49.35', 1658261527, '__ci_last_regenerate|i:1658261364;'),
('4a2b2a0d5114425549bc45dc92b84cd700cb1625', '221.132.115.66', 1663260049, '__ci_last_regenerate|i:1663260049;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('4a60d303140e99da2976c11e4c7158e56fae1b66', '124.29.235.202', 1655743605, '__ci_last_regenerate|i:1655743605;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('4a92591567e37f48ef1fbbd8f4b22ea98ce144ed', '173.252.107.5', 1658411345, '__ci_last_regenerate|i:1658411345;'),
('4aa5255cfe116d1f298050bab5dc6f03538efd9c', '101.53.248.38', 1662982928, '__ci_last_regenerate|i:1662982928;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('4c09c3d886ca1b4bab317c7e4cfd46ac002a8475', '221.132.115.66', 1658259651, '__ci_last_regenerate|i:1658259651;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('4cb1ba07008013e80a1d199ae51e0aa6eb14c53e', '174.110.88.56', 1656946706, '__ci_last_regenerate|i:1656946706;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('4cd7d7dc9a7a30d8008496b966a3850ff445e8eb', '108.45.82.254', 1658661947, '__ci_last_regenerate|i:1658661947;'),
('4ce0bc9858c167e490221d0e95de94ac57ffeea4', '184.94.240.88', 1658404270, '__ci_last_regenerate|i:1658404270;'),
('4ce3e2a562b2399047b2119d5fba945b7f0f38d4', '73.134.45.186', 1658287569, '__ci_last_regenerate|i:1658287569;'),
('4cf54c1856a7cfde3354f9e6a6de347a9478a368', '172.58.188.13', 1658261973, '__ci_last_regenerate|i:1658261973;'),
('4d5c23fed2b825131a988cdc3b2126bf6473fdfb', '24.88.248.54', 1658783750, '__ci_last_regenerate|i:1658783650;'),
('4d6ba034d8926d283487ce5a29b4326b4df88dcc', '175.107.203.163', 1664269034, '__ci_last_regenerate|i:1664269034;'),
('4da3d2ec7f167a57ba0befcf3488be9e47430652', '66.249.88.58', 1658254810, '__ci_last_regenerate|i:1658254810;'),
('4dpg3gvi2pc799og3fdp9nri868vprpp', '::1', 1656623263, '__ci_last_regenerate|i:1656623117;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('4e21a9be9b06ad6bf7c8a6209e0b02004dd4d61e', '66.102.9.59', 1658254813, '__ci_last_regenerate|i:1658254813;'),
('4e70003da270b6aeb54acb1bad81de99959e0f17', '72.218.99.3', 1658356712, '__ci_last_regenerate|i:1658356712;'),
('4ee1cce111858bec85db719b729d33c3c742a994', '66.249.83.23', 1658166726, '__ci_last_regenerate|i:1658166726;'),
('4ef60b4cbf512f3b8caebdfdc0510f58d2a7f823', '124.29.235.202', 1655744113, '__ci_last_regenerate|i:1655744113;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('4f271856f89c25a71643dcfa424e2fc9b1d4d2f7', '124.29.235.202', 1663151604, '__ci_last_regenerate|i:1663151603;'),
('4f9d36da3aba65018bc0512f220da419b0628498', '66.249.83.53', 1658254816, '__ci_last_regenerate|i:1658254816;'),
('4fe6bd48e8613784917147c56911859a7557312d', '20.112.217.230', 1658607577, '__ci_last_regenerate|i:1658607577;'),
('4iu74vr6rohbr6ov5ipkqfekh3tb4v8r', '::1', 1660557322, '__ci_last_regenerate|i:1660557322;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('4j38247nqe9eml8ldbmb0rceejmbq104', '::1', 1658915033, '__ci_last_regenerate|i:1658915033;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('4kudg67q9a0rkab350pv0vtu895rigd2', '::1', 1656623253, '__ci_last_regenerate|i:1656623253;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('4l79t3lofvvt8mnjrlsdujcrkljkajrb', '::1', 1655491489, '__ci_last_regenerate|i:1655491489;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('4qhkocf3leqn9cpqqk40qpbq2jipbpd4', '::1', 1656673701, '__ci_last_regenerate|i:1656673701;'),
('5013ff50a8ebcf1fc41558510d4e5afa27857b3a', '185.202.220.39', 1658254728, '__ci_last_regenerate|i:1658254728;'),
('50572d305afc1df1e1b4bd60e10b67db7da26ee7', '24.211.170.14', 1658623764, '__ci_last_regenerate|i:1658623764;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('5069jq25e1j8h4cs5k20mmdce499osda', '::1', 1660543552, '__ci_last_regenerate|i:1660543552;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('50aefa8aa24a14ca6ed1461bca6d603452ccefc8', '66.249.88.58', 1658254833, '__ci_last_regenerate|i:1658254833;'),
('50ba2539f04cda70351737c26c224fcf3bf3064c', '101.53.248.38', 1662739041, '__ci_last_regenerate|i:1662739041;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('50qbpgu7687hfc5cvv7kte4v3mickjkp', '::1', 1658923615, '__ci_last_regenerate|i:1658923615;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5129839beb8f246ba31b5c2b70bd328a8d514b0f', '66.249.83.110', 1658752001, '__ci_last_regenerate|i:1658752001;'),
('52134fa960ae88b9e38801947688143ad19964df', '124.29.235.202', 1656693603, '__ci_last_regenerate|i:1656693603;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('52896a6502ffd6ece3ba605cc7dad115a0a17985', '66.220.149.13', 1658435492, '__ci_last_regenerate|i:1658435492;'),
('52c8ea56584ec0033eadf2b7b1f4c3b686ab5b2a', '172.58.157.83', 1658512817, '__ci_last_regenerate|i:1658512817;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('52e77cdcdbafe262ca30dd13fcb7f7a1c4ef9290', '124.29.235.202', 1656694310, '__ci_last_regenerate|i:1656694310;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('52f2147a98adf5eb3e0ee4799913778fa7ed5c58', '70.40.95.49', 1658778635, '__ci_last_regenerate|i:1658778635;'),
('53a34f7dda5afc0103cc54c1e6c640c3f6034f78', '18.237.207.65', 1658326954, '__ci_last_regenerate|i:1658326954;'),
('53c1cc9b46061850fc0c0b7cf4048b2cb0f246e7', '175.107.203.163', 1662445025, '__ci_last_regenerate|i:1662445025;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('54046414fc41e7721de650f355dc378262383e74', '174.110.88.56', 1656946366, '__ci_last_regenerate|i:1656946366;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('540d6046b8260ddf57b2255fc4f8806f368e143d', '172.58.184.16', 1658521621, '__ci_last_regenerate|i:1658521621;'),
('543d7ee10420d9f8739562c1500e41a9ab29462e', '104.211.53.152', 1662798894, '__ci_last_regenerate|i:1662798894;'),
('546b2beb2548e6828b0006eb080f2448a3a95edd', '174.206.109.35', 1658455195, '__ci_last_regenerate|i:1658455195;'),
('54e47f1cf1bf970499ec3e78f63e6241bf7b1587', '17.121.112.21', 1658258130, '__ci_last_regenerate|i:1658258130;'),
('5548c071995e1c98a81ee615f9b724d4206297ff', '185.202.220.39', 1658164725, '__ci_last_regenerate|i:1658164725;'),
('55a3c13d3272aa521bcafdfd9fd33651c72014ce', '124.29.235.202', 1658258581, '__ci_last_regenerate|i:1658258581;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('55aa4ef47364cc4dbc2fe0720fd16279dad51ce7', '124.221.186.26', 1658661871, '__ci_last_regenerate|i:1658661871;'),
('55dbbf5064b345f530a332449ac85119101cb31a', '124.29.235.202', 1657194509, '__ci_last_regenerate|i:1657194509;'),
('560e3ee520439d418d22cff5353c514bbeeb2aec', '173.252.95.15', 1658332062, '__ci_last_regenerate|i:1658332062;'),
('560f491228276df1ea014a016b73f148bf522f32', '66.249.88.57', 1658254828, '__ci_last_regenerate|i:1658254828;'),
('56298d52ea8a7fecd749b7aa7732df0ba9f0361b', '107.127.53.18', 1658269068, '__ci_last_regenerate|i:1658269068;'),
('56a4c8aadd5ab9b818e8ce3da8c9e2b721b34bea', '66.220.149.13', 1658435492, '__ci_last_regenerate|i:1658435492;'),
('57046ff9714af9957c302924073c099958278689', '34.212.36.122', 1658326958, '__ci_last_regenerate|i:1658326958;'),
('573d28f48ec50hl7ici4f9b8p6su9q24', '::1', 1658924600, '__ci_last_regenerate|i:1658924600;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('586fe857da7bd79df6ed76645413f2d08ed64c3d', '172.58.156.27', 1658415453, '__ci_last_regenerate|i:1658415453;'),
('58b496b4bc034df715b0e3f4593dc7ebffdbbab7', '174.110.185.103', 1658272292, '__ci_last_regenerate|i:1658272292;'),
('598d6be74363d840f37659c1ed914922df665429', '175.107.203.163', 1664381635, '__ci_last_regenerate|i:1664381635;'),
('598ee8ead4825ce1e4c3f164675b7f8d11470745', '174.110.88.56', 1658362261, '__ci_last_regenerate|i:1658362123;'),
('59a637beb9197842b51ec6bba954a2f93d21cd87', '68.100.146.119', 1658705264, '__ci_last_regenerate|i:1658705264;'),
('59d33e43b784a4bc608b502bc61763a15ddd8a89', '124.29.235.202', 1655746938, '__ci_last_regenerate|i:1655746938;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('59ivtuqrvnnjfrvjj7tf75b099e678s8', '::1', 1656611993, '__ci_last_regenerate|i:1656611993;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5ada180451ad7e7274cbfe534f9770d0eb9c494e', '69.171.251.118', 1658350692, '__ci_last_regenerate|i:1658350692;'),
('5adb0f1815bf136f2e041e3643ea7e45ce1b8c7c', '174.110.88.56', 1658258136, '__ci_last_regenerate|i:1658258136;'),
('5af51db432a8d534c49f4136a945b87113eeac14', '124.29.235.202', 1657202940, '__ci_last_regenerate|i:1657202940;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('5b2n8glibslvpkfigk46r8jf8jm1l7rt', '::1', 1656608980, '__ci_last_regenerate|i:1656608980;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5b32b5671528ac6ecd7134c4e3b0004484a546ed', '124.29.235.202', 1655747239, '__ci_last_regenerate|i:1655747239;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5beb67d8774998d39b391952071999e871cb60bc', '124.29.235.202', 1657196742, '__ci_last_regenerate|i:1657196742;'),
('5c3e472259d67ea860cf1daa3501f8e961c8d564', '174.111.200.21', 1658788230, '__ci_last_regenerate|i:1658788230;'),
('5cda4b7265b555905bf4efd608ff7f0454c0a2aa', '101.53.248.38', 1662645025, '__ci_last_regenerate|i:1662645025;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5cf5758e4c64016cda7833a1eabea8e9375761fa', '175.107.203.163', 1664269346, '__ci_last_regenerate|i:1664269346;'),
('5d612d301f03729e2fe7e0ac13988176be1d8fbf', '124.29.235.202', 1657197964, '__ci_last_regenerate|i:1657197964;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('5de67d672e1e4fc3dda7e4f8cea6a087473073f7', '98.121.248.29', 1658263280, '__ci_last_regenerate|i:1658263280;'),
('5e0021dc8271dc6cfba58857cd9c838d8d6d36d1', '173.252.107.4', 1658410265, '__ci_last_regenerate|i:1658410265;'),
('5e3ae414301f3e2668c4eb8b1c204a1fceb1b657', '35.91.76.233', 1658413042, '__ci_last_regenerate|i:1658413042;'),
('5e7dd0ff27a7a32afacc1e45d4cee5fdb365f475', '124.29.235.202', 1656694615, '__ci_last_regenerate|i:1656694615;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5e8d23055015b07b3641bf5ab452e1a9609d55e2', '101.53.248.38', 1658765110, '__ci_last_regenerate|i:1658764840;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5e8def4f7a4bb9b72368e16f3252005b3c21851d', '174.110.88.56', 1658270751, '__ci_last_regenerate|i:1658270751;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5ea7a37bb207b7531d3d0e34eac420bf19d43a99', '124.29.235.202', 1657280839, '__ci_last_regenerate|i:1657280839;'),
('5fde887f8f4cb99db84feca877003a2e86554509', '124.29.235.202', 1660932818, '__ci_last_regenerate|i:1660932623;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5gd2sni9p15e71afme41db7cficc93s5', '::1', 1659093640, '__ci_last_regenerate|i:1659093640;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('5k6aosbco72usf5dlta5618k48pv3k2i', '::1', 1660550228, '__ci_last_regenerate|i:1660550228;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5lm1d0s2tgipqgo1e868qufp8hs50vqi', '::1', 1656686622, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656686622;'),
('5nq06gf78l774dg2f80lsca57qu0qaol', '::1', 1656616868, '__ci_last_regenerate|i:1656616868;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('5seqq1n8nre17pde5euo2fdjg1ki5fn8', '::1', 1658850848, '__ci_last_regenerate|i:1658850848;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('60dea67be285b3ed1e8ff48751a4b314ba07fef2', '96.247.198.78', 1658261697, '__ci_last_regenerate|i:1658261697;'),
('6104ddf78588fba7fcffc2c6afed849140dec249', '101.53.248.38', 1657203474, '__ci_last_regenerate|i:1657203474;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('6153939ffcbfae17e3806844b18c77d3fc9bad3e', '174.110.88.56', 1658286009, '__ci_last_regenerate|i:1658286009;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('61oaiu8q0d2kvag2ucbg68d1geruv9af', '::1', 1658926348, '__ci_last_regenerate|i:1658926348;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('62a9d6aab7df78d1cdbd9e35bc6c8b7a5e877630', '168.151.135.146', 1658414755, '__ci_last_regenerate|i:1658414755;'),
('62dbfae58676b95c441cbf6691c08293ed9fb56b', '17.121.115.180', 1658534665, '__ci_last_regenerate|i:1658534665;'),
('62e63bd75851ab5a24182cdcd7af807c013d56c2', '124.29.235.202', 1655503795, '__ci_last_regenerate|i:1655503795;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('63d2223b16d3610bfb3a33ad08dc0bae1ea90382', '101.53.248.38', 1657207569, '__ci_last_regenerate|i:1657207569;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('645f96e54481370049fb5a43bebba11c5ea46e64', '184.94.240.88', 1658344320, '__ci_last_regenerate|i:1658344320;'),
('648839f40ca7b7bfd4f74cda898a35182f073617', '101.53.248.38', 1657724017, '__ci_last_regenerate|i:1657724017;'),
('655407a59e25bb2269f94c470a2f3e9574a55d04', '96.37.236.143', 1656876101, '__ci_last_regenerate|i:1656876101;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('65728499fe13dbe7a24a14ac683f6f158ee0aac5', '221.132.115.66', 1658259341, '__ci_last_regenerate|i:1658259341;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6583pqmb92d5fftshgq5djc0pi0k8r0n', '::1', 1660548721, '__ci_last_regenerate|i:1660548721;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('65cb7bd12109fe7086449ef567ae9331ebb09ac8', '124.29.235.202', 1657280380, '__ci_last_regenerate|i:1657280380;'),
('6635c30f4954635573dd2656d9dc200dcc38a5ab', '172.56.5.77', 1658262050, '__ci_last_regenerate|i:1658262050;'),
('66ebcb3a140e7458b83d146ab044333537512f90', '185.202.220.39', 1658245507, '__ci_last_regenerate|i:1658245507;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('677a3e9c5c92518329c7c542d2ee6b201b4af5b7', '66.56.165.119', 1658804700, '__ci_last_regenerate|i:1658804700;'),
('67e3da3a32eefb686d3737582847cbb8bc295fad', '17.121.113.83', 1658260337, '__ci_last_regenerate|i:1658260337;'),
('6896ec97b68b4c545e10d2d5a9d07ae3664525f1', '166.216.165.86', 1658267883, '__ci_last_regenerate|i:1658267883;'),
('68bb6bf1d6d27acf694d3ffeee63c9f0c7765939', '101.53.248.38', 1662645092, '__ci_last_regenerate|i:1662645025;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('69623d34bbcfbc6eb976a51e96603431712014f2', '124.29.235.202', 1658260681, '__ci_last_regenerate|i:1658260681;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6975482e015822e62458260602461fd7cef81700', '173.252.107.22', 1658261175, '__ci_last_regenerate|i:1658261175;'),
('698c280ecdf9906700d78f7c1cc5573542bb785d', '173.252.107.14', 1658261175, '__ci_last_regenerate|i:1658261175;'),
('699ed9f8cd2294e35a96008b5d6abfd8693d71a8', '175.107.203.163', 1662454013, '__ci_last_regenerate|i:1662454013;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('69a36c07dd170f9406d4b14347333f3e59e992fe', '175.107.203.163', 1662447963, '__ci_last_regenerate|i:1662447963;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6a10aede29f7ad6a55da29ec1b289c63c29897a5', '172.58.157.50', 1658512817, '__ci_last_regenerate|i:1658512817;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6a1d8b8e16a8888c7bb0a75e611fbe37f1e0c0ba', '175.107.203.163', 1662445427, '__ci_last_regenerate|i:1662445427;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6b1300ff1051964c57a9b7880c9147a3e55ba1fd', '52.32.29.204', 1658504396, '__ci_last_regenerate|i:1658504396;'),
('6b56d4839c1101317ce8f02e1b2853a6c6b9e96b', '166.205.147.116', 1658419705, '__ci_last_regenerate|i:1658419705;'),
('6b7jci3ni555i7hnvvatfa0gm0gfhdjh', '::1', 1659091351, '__ci_last_regenerate|i:1659091351;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('6b95354ba61ae368348aceb0b987e35324667349', '221.132.115.66', 1658256418, '__ci_last_regenerate|i:1658256418;'),
('6bbb7lcudjk9d49bv2c088go8e87kdi3', '::1', 1658920081, '__ci_last_regenerate|i:1658920081;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6bc5a83051144471ed6e7834c13c8a410cc7e7f7', '159.89.136.16', 1658607304, '__ci_last_regenerate|i:1658607304;'),
('6bca804c2c4a3fcaf14be2a01a807ccc411cb067', '76.2.38.25', 1658658329, '__ci_last_regenerate|i:1658658329;'),
('6bfe1ca4370009bf2e67eeccc44d2d4ad496778e', '124.29.235.202', 1657281267, '__ci_last_regenerate|i:1657281267;'),
('6boj78duop981lk8bu0n5a5h57t8vt0m', '::1', 1660562363, '__ci_last_regenerate|i:1660562363;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6d1677e6163ae5fe80d8f5dd9d1086c0a98e6505', '172.58.190.218', 1658505520, '__ci_last_regenerate|i:1658505520;'),
('6da08b99faf46be39e647ab9a03b28cfbe7b657b', '202.69.42.187', 1658388515, '__ci_last_regenerate|i:1658388481;'),
('6da27d44a5b160e9e06e200c78f2bcc84741e616', '67.172.218.106', 1658312171, '__ci_last_regenerate|i:1658312171;'),
('6e060c4ee6d173302c4211aa9ffac01c4e869148', '17.121.114.221', 1658264053, '__ci_last_regenerate|i:1658264053;'),
('6e2ed0b01df2e1ce466737de3c9df97764afaf29', '172.58.156.62', 1658168982, '__ci_last_regenerate|i:1658168982;'),
('6e32f02078b96fd658589bb3167e115f63fd5350', '185.202.220.39', 1658154989, '__ci_last_regenerate|i:1658154989;'),
('6e42f6f80c47149fbb7c0cdbbb30de1622c27336', '173.252.83.1', 1658778281, '__ci_last_regenerate|i:1658778281;'),
('6e97a2db23878fef09e030baf7c26e052774f38a', '174.110.88.56', 1657114227, '__ci_last_regenerate|i:1657114135;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('6f04bee8e09dfad50d8f45c0e5cbbef3e46632e5', '221.132.115.66', 1657820547, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1657820547;'),
('6f4ba5640ecf3c8c1740baf2b8026f76985e192e', '221.132.115.66', 1657296787, '__ci_last_regenerate|i:1657296787;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6f72693507b841a81a2ce286eb723515c636ebf6', '166.205.147.98', 1658619843, '__ci_last_regenerate|i:1658619843;'),
('6f9a7f5924a59b1b591e343035a5e19a82c78e9b', '172.58.158.230', 1658416512, '__ci_last_regenerate|i:1658416512;'),
('6fc1bbddac8935894bde8e12776eb5dd79025438', '124.29.235.202', 1658157548, '__ci_last_regenerate|i:1658156013;'),
('6fe6770c04e5cb82c5af1777e2da7bcd488a8b11', '47.133.125.190', 1658623740, '__ci_last_regenerate|i:1658623740;'),
('6q635212bpaact4drt6eo3ctitgf48hr', '::1', 1655465428, '__ci_last_regenerate|i:1655465428;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('6t9sv8aj82qqkua4mr3qqvvco1ng9ehm', '::1', 1659093335, '__ci_last_regenerate|i:1659093335;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('6ulpp65jlpe976rcm9qk536o60p1666j', '::1', 1656610309, '__ci_last_regenerate|i:1656610309;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('6um467hh5hbkcgeschm81vc9lrmf5g9t', '::1', 1656686281, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656686281;'),
('70391af934dc6b7a4f891426cfab484f144dbdc9', '172.58.158.159', 1658415949, '__ci_last_regenerate|i:1658415949;'),
('706eacd9b38c99559a5af4297e85a66de9705524', '175.107.203.163', 1664539367, '__ci_last_regenerate|i:1664539318;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('70c4c4e4578ded2dec872f5f61ec3719395dbe38', '68.100.146.119', 1658705264, '__ci_last_regenerate|i:1658705264;'),
('70d03a44711b809998af26d11e2dd49c944a2efe', '66.249.75.142', 1658472593, '__ci_last_regenerate|i:1658472593;'),
('70eecbbac3e02ffdbccd5cd1c1cf7aaaaf23c7f7', '124.29.235.202', 1658259671, '__ci_last_regenerate|i:1658259671;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('710812463c019e6b276a8eb7b82663e7e205c2e5', '175.107.203.163', 1662383290, '__ci_last_regenerate|i:1662383290;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('71b9184ba0c11d44c8dc3b2103af2d12ab8ffb0a', '172.58.156.27', 1658409942, '__ci_last_regenerate|i:1658409942;'),
('71c3931250f3cf738476a3d9e7c8bb2359c32a77', '66.220.149.2', 1658265118, '__ci_last_regenerate|i:1658265118;'),
('71f9f9acb6e86a52b426574ce204adbe4d089181', '71.178.54.72', 1658743812, '__ci_last_regenerate|i:1658743812;'),
('71i5jokeinrnk6i3l87kegm9891flmqj', '::1', 1655479722, '__ci_last_regenerate|i:1655479722;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('720667deb55d897544d9edce68f8ebd819a044f2', '66.102.9.59', 1658254819, '__ci_last_regenerate|i:1658254819;'),
('7286f9caa9cb8a20e43b91db7879339f1b228f4c', '173.252.83.14', 1658750798, '__ci_last_regenerate|i:1658750798;'),
('72bc213f68e8103ec151af7b87eb1472e754ae69', '174.206.112.204', 1658261903, '__ci_last_regenerate|i:1658261903;'),
('72e04ea993ed4825839093876762109eaef9d2be', '68.100.146.119', 1658364988, '__ci_last_regenerate|i:1658364988;'),
('72fc6116a2cfbbd112669ee9014363d98c0607d0', '54.214.126.42', 1658329737, '__ci_last_regenerate|i:1658329737;'),
('72kna5lgbhkjo8t19kueu0a4cusuvc1p', '::1', 1659096924, '__ci_last_regenerate|i:1659096924;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";customer_id|s:2:\"44\";'),
('72msh72chik1jc1rit4of71lbloao9qh', '::1', 1655470499, '__ci_last_regenerate|i:1655470499;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('730dce18affbf3733f1b3340af4b4d7813837df4', '172.58.189.138', 1658353006, '__ci_last_regenerate|i:1658353006;'),
('734eaabcd7961f6f50182e2631e0abdcea88b0a0', '66.249.72.172', 1658737457, '__ci_last_regenerate|i:1658737457;'),
('735f757976728b0c7cc30219bad2555f6dc3acb7', '124.29.235.202', 1660932623, '__ci_last_regenerate|i:1660932623;'),
('7396eb303dffeeb7b704f86fa742f00b5353224d', '66.249.83.29', 1658254816, '__ci_last_regenerate|i:1658254816;'),
('73b4fbb33967e524df2ffb6a25275c7cd1457723', '174.110.88.56', 1658491682, '__ci_last_regenerate|i:1658491610;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('73dd070e177b364cc3181950d3f45c297d7ee7b8', '173.252.107.117', 1658382283, '__ci_last_regenerate|i:1658382283;'),
('742a916f9d44cac2434ebb6aa02f78cffd97a242', '20.112.217.230', 1658693971, '__ci_last_regenerate|i:1658693971;'),
('748e01f4b5526b95d6f6486cd6f89b30b138dfde', '3.239.158.141', 1658612994, '__ci_last_regenerate|i:1658612994;'),
('74be4a8f78d69d3f8414af0181a7d95afc5a13f8', '174.110.88.56', 1658361088, '__ci_last_regenerate|i:1658361088;'),
('74ca6261d256dafff5ee1e55a31600e6c20c22b3', '66.249.88.59', 1658254805, '__ci_last_regenerate|i:1658254805;'),
('7501299bdb7301f15a1638b8f65dc74dc0037b23', '124.29.235.202', 1658320352, '__ci_last_regenerate|i:1658320352;'),
('753e9abce3d566a9834004966105a21ff89fb8ee', '173.252.83.17', 1658261155, '__ci_last_regenerate|i:1658261155;'),
('75b5c7bc4a77217579ad17ef24ccfa39dd1863d1', '101.53.248.38', 1655497928, '__ci_last_regenerate|i:1655497928;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('76357b3db4092d0011188ff001a4786a1ed55f20', '101.53.248.38', 1657202409, '__ci_last_regenerate|i:1657202409;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('76abff40ffcd171dde9cce8e7a798ea7ebf745df', '124.29.235.202', 1658169674, '__ci_last_regenerate|i:1658169674;'),
('7719abf87ea1c586f2cfaf8d8076acfc4cf2f902', '107.119.65.47', 1658619803, '__ci_last_regenerate|i:1658619802;'),
('77212bc46a2a0ea8953b46359c1a0906718e3c03', '174.210.77.183', 1658786792, '__ci_last_regenerate|i:1658786792;'),
('77d716c516u2ob42mmomnnmnrm9p1912', '::1', 1659092321, '__ci_last_regenerate|i:1659092321;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('77e6688cd5989a68d18e156821e239fc974b2d0d', '31.13.127.24', 1658363179, '__ci_last_regenerate|i:1658363179;'),
('77f7b39baa53bfe207f3e4be7261cde3c6ee367b', '66.249.83.123', 1658254796, '__ci_last_regenerate|i:1658254796;'),
('781b026648494b559ed5c7394558e7b908170f07', '96.37.236.143', 1658407366, '__ci_last_regenerate|i:1658407366;'),
('782b330a08ebb4090f747b9e424e9048d068590b', '172.56.3.91', 1658265563, '__ci_last_regenerate|i:1658265563;'),
('7845b9e420eb8f602492becef5ef1ce9a740b1f8', '65.21.206.45', 1658322665, '__ci_last_regenerate|i:1658322665;'),
('7860c49a7515cfa1a9eaa1260dd62999ce7a1f67', '173.61.17.172', 1658439805, '__ci_last_regenerate|i:1658439805;'),
('7860c8103007a09e06e363c5089cd6ec2eabadd8', '216.81.115.48', 1658641237, '__ci_last_regenerate|i:1658641237;'),
('7888ba8d7c7a41f35556e93a95a233327a68f624', '221.132.115.66', 1663592193, '__ci_last_regenerate|i:1663592116;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('788b61d9b4e8889cb49b71d46a9daeadbf5df435', '96.37.236.143', 1658359285, '__ci_last_regenerate|i:1658359285;'),
('78a25c7ddb1bb42ae6194ec59ef286cd4a684ce1', '66.249.83.53', 1658254788, '__ci_last_regenerate|i:1658254788;'),
('78db246ea181b5fcd416f8911594eea559e3a6d7', '101.53.248.38', 1657209140, '__ci_last_regenerate|i:1657209140;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('791e071f1fe850bf9cbae5496d5672aa151c9052', '66.249.80.17', 1655499119, '__ci_last_regenerate|i:1655499119;'),
('7a3403bc2b59e9375dfa38081f617b209f781bf7', '69.161.82.142', 1658686550, '__ci_last_regenerate|i:1658686550;'),
('7a7338e04f25e955123eb24489ead00eb269ed1b', '66.249.75.146', 1658472593, '__ci_last_regenerate|i:1658472593;'),
('7b253343d2f0c5c33d28b5e672ad5db7bf7827e2', '64.246.165.170', 1658304803, '__ci_last_regenerate|i:1658304803;'),
('7bfe7c17456e170ed80a28e36a6309eb8d7d808e', '175.107.203.163', 1663143117, '__ci_last_regenerate|i:1663143117;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('7c1810fe60db1fbb783e566da7ac40e00f8a861a', '175.107.203.163', 1664783698, '__ci_last_regenerate|i:1664783698;'),
('7c6bbe7db5c6cb405ead294a956eea6a13143390', '174.252.132.77', 1658275373, '__ci_last_regenerate|i:1658275373;'),
('7c785d50af3e420f003c02472481e1053b98c5f0', '101.53.248.38', 1657206326, '__ci_last_regenerate|i:1657206326;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('7c8971e27b0bd9edec968195bd2c32b3f02c472f', '164.82.30.22', 1658427329, '__ci_last_regenerate|i:1658427329;'),
('7ce4e58523990babb7666d16b8c0d6fa0e1f7cc9', '66.220.149.18', 1658282209, '__ci_last_regenerate|i:1658282209;'),
('7d552159bc8404b1c5c8cda9d40ba91baa27ea02', '173.252.83.16', 1658778281, '__ci_last_regenerate|i:1658778281;'),
('7ds1s49ul4gsbphq20uljokungdj7dvl', '::1', 1656678043, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656678043;'),
('7e568ee18a8fca7402fc22cddf82db6c99579d58', '69.171.251.18', 1658618967, '__ci_last_regenerate|i:1658618967;'),
('7ea44496b978ea526e0863d8636cf9a0e71b6747', '124.29.235.202', 1655749918, '__ci_last_regenerate|i:1655749692;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('7eb7b4cc1929faba2cf86e540b3bc07a4d4e5e2b', '185.202.220.39', 1658155005, '__ci_last_regenerate|i:1658154990;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('7f0fe262ed983032af2026e3a86b4fdfeb39e8ef', '173.252.87.8', 1658382251, '__ci_last_regenerate|i:1658382251;'),
('7f41317237e867081b633d31f4236f860d0f267e', '17.121.113.72', 1658596482, '__ci_last_regenerate|i:1658596482;'),
('7f7ccd6b433c6a600e2ff6330651d4eb12159d61', '101.53.248.38', 1656588657, '__ci_last_regenerate|i:1656588649;'),
('7fcc6193d57c147d4a1967d48e5af648132ed790', '221.132.115.66', 1658764783, '__ci_last_regenerate|i:1658764783;'),
('7fdff02f6825bd95c38051e93810682c256aee5e', '17.121.114.139', 1658701903, '__ci_last_regenerate|i:1658701903;'),
('7jsgq2s78fq42ek5a4sf64fc36td45a7', '::1', 1656600494, '__ci_last_regenerate|i:1656600494;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('80dbfoc08hjdrnioqods9j0naild4a0d', '::1', 1660550655, '__ci_last_regenerate|i:1660550655;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('80msgv64gpa1hjs85b9tm9qr6ebl9h5d', '::1', 1655490467, '__ci_last_regenerate|i:1655490467;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('813vo7g65hl3lmreplkg3rlfdgnqq7aj', '::1', 1659094932, '__ci_last_regenerate|i:1659094932;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|s:9:\"user1.png\";customer_id|s:2:\"44\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('81666dc6589f8681a70c1911d17e1841091d6a31', '174.110.88.56', 1658507253, '__ci_last_regenerate|i:1658507106;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('81733103733fcf74e0378d75f1b4b0a24d45f9c8', '24.145.32.243', 1658403862, '__ci_last_regenerate|i:1658403862;'),
('819e83656c44bfaa914ff2e975f14d23ff33bd0c', '174.203.245.209', 1658351229, '__ci_last_regenerate|i:1658351229;'),
('81daf7b93e16774a8f779dcd153408cede511014', '172.58.237.246', 1658271440, '__ci_last_regenerate|i:1658271440;'),
('820ce8f07e6e12aac6bf90e447cd0df401745a41', '101.53.248.38', 1657204334, '__ci_last_regenerate|i:1657204334;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('822572813a71adab4045cbe4fb44ad1b12ee63fd', '66.102.7.161', 1658254837, '__ci_last_regenerate|i:1658254837;'),
('8235d998a7076a80c741511c58ec315a7f193731', '174.216.145.94', 1658275055, '__ci_last_regenerate|i:1658275055;'),
('828ed8be63075e509198629bf3035227a67901a1', '101.53.248.38', 1657204963, '__ci_last_regenerate|i:1657204963;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('829fc8f55b09000df7fe3718c72262d9908cbf77', '174.110.88.56', 1658503703, '__ci_last_regenerate|i:1658503689;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('82a303d57e15261142ae6f2ac755d6e4e77276a5', '175.107.203.163', 1662460521, '__ci_last_regenerate|i:1662460521;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('82f6be681f182873e458e0897d64d99931da47e4', '68.0.39.133', 1658267701, '__ci_last_regenerate|i:1658267701;'),
('8337268602460cb79034b433b8522062900828b2', '175.107.203.163', 1664518960, '__ci_last_regenerate|i:1664518853;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";error|s:41:\"You are not allowed to visit this module.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"new\";}'),
('834071a678d7f46b6232b92bdde0abba451681b3', '185.202.220.39', 1658243895, '__ci_last_regenerate|i:1658243895;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('834739bcfbde6b2d98e48888f867e555aec5740d', '175.107.203.163', 1662462351, '__ci_last_regenerate|i:1662462149;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('836eefbcb51454d5817b25f134255ddf268ee285', '71.95.234.16', 1658636626, '__ci_last_regenerate|i:1658636626;'),
('83997c7f8f9b4f7915583b488a7a861625943712', '66.249.88.233', 1658764896, '__ci_last_regenerate|i:1658764896;'),
('841b9f22ef00e833204a0b32e515a805859855e1', '124.29.235.202', 1655503883, '__ci_last_regenerate|i:1655503882;'),
('84ce6hs7agett4u8cnm49s0l8eev7s6h', '::1', 1659091657, '__ci_last_regenerate|i:1659091657;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('84e263cdbed8de3e8d60dfc99f77c36b584898c2', '172.56.4.109', 1658271090, '__ci_last_regenerate|i:1658271090;'),
('84jlgunvss0ednh6574ins5kno2hvk4r', '::1', 1655465739, '__ci_last_regenerate|i:1655465739;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('84rsrvf8g5nj3b6q227qt2pd8eua8uok', '::1', 1660673778, '__ci_last_regenerate|i:1660673778;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('852eae7e21c5025898b19a5e5184861922b764b0', '124.29.235.202', 1657187732, '__ci_last_regenerate|i:1657187732;'),
('8540bce2a97e7f77565a275dbc25d141ee92c17a', '68.100.146.119', 1658505440, '__ci_last_regenerate|i:1658505440;'),
('855e60b36ba493ff24868d6e274c434cb20e939c', '54.149.121.103', 1658330715, '__ci_last_regenerate|i:1658330715;'),
('8591bae9e06de172fccc0581876dbfc383851794', '66.102.7.190', 1658254775, '__ci_last_regenerate|i:1658254775;'),
('85a82eba2c7402b11ae4e4ebc5f30d1e1fe86be6', '175.107.203.163', 1664268290, '__ci_last_regenerate|i:1664268207;'),
('860a87af9b5fa222b29fe291c4cd4e00d7b28463', '101.53.248.38', 1657208776, '__ci_last_regenerate|i:1657208776;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('86427759e79d9d9c7bf5d44ce8a343123f57849e', '184.94.240.88', 1658406157, '__ci_last_regenerate|i:1658406146;'),
('8649d4415ba24e911407016aa4745ca6f1203f8a', '167.172.70.186', 1658679362, '__ci_last_regenerate|i:1658679362;'),
('865hqgiq6ohoc89rq1oadrvdhpgm93to', '::1', 1655482559, '__ci_last_regenerate|i:1655482559;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8665fafa0ace522a3c4df51d4a257e32f86044f5', '174.192.193.142', 1658261531, '__ci_last_regenerate|i:1658261531;'),
('86958631e351db792107c428d9f9b042c1ee07c0', '124.29.235.202', 1657201460, '__ci_last_regenerate|i:1657201460;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('87c5dd8aed361e43dfbe75f871c7e3b3edd05de7', '174.192.193.76', 1658279999, '__ci_last_regenerate|i:1658279999;'),
('87e7758d5291c454dea3655572b0276607c63121', '17.121.114.148', 1658446377, '__ci_last_regenerate|i:1658446377;'),
('887bae8631fca61807572c48e7a587e89072f373', '17.121.113.109', 1658336202, '__ci_last_regenerate|i:1658336202;'),
('88b627ecbae729108aec09e8d511458b89f58879', '101.53.248.38', 1662975765, '__ci_last_regenerate|i:1662975765;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('890b38097c5c22226b053c79e29eae902bd986c6', '101.53.248.38', 1662970206, '__ci_last_regenerate|i:1662970206;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('891512a9bf768c8adf1f40c9e635f589c23865b4', '175.107.203.163', 1662458929, '__ci_last_regenerate|i:1662458929;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('899e9b22a4bdd66ec193b4b28ab5de1a59228847', '174.110.88.56', 1656947479, '__ci_last_regenerate|i:1656947479;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:24;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('89eadeb44c27ffca2306b0077bfec327f81f25e8', '174.210.77.198', 1658271721, '__ci_last_regenerate|i:1658271721;'),
('8ab6d218765fe37a716e29b44adc7b8ecb8b8aee', '175.107.203.163', 1662447661, '__ci_last_regenerate|i:1662447661;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8b83659a4970deb4b7c6152f666dd9c4e32f53d8', '174.110.88.56', 1658273840, '__ci_last_regenerate|i:1658273840;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8b97e47ed39bb7193abb61b464222b4222cc6c8a', '17.121.115.244', 1658710170, '__ci_last_regenerate|i:1658710170;'),
('8bc5cc018b165bb8936c827e6415e9abf520837e', '205.210.31.143', 1658367657, '__ci_last_regenerate|i:1658367657;'),
('8bdb924abd4f77a4829d2a267cbe4dc945ea37e0', '3.144.200.0', 1658783296, '__ci_last_regenerate|i:1658783296;'),
('8c22bbb007debe450675af5ee2c946899fd760b8', '17.121.112.4', 1658802853, '__ci_last_regenerate|i:1658802853;'),
('8c34d6230c1a94cdfbe107bb396f937f4d08c762', '124.29.235.202', 1658170977, '__ci_last_regenerate|i:1658170977;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8c47fe4f9c5efbff79acc5607d5582fbc231fe7a', '185.202.220.39', 1658242124, '__ci_last_regenerate|i:1658242124;'),
('8cc725b2104e339823ed7ee7f9180b829d3de11b', '66.249.80.20', 1655499120, '__ci_last_regenerate|i:1655499120;'),
('8d4e8eb2b7ce7732faa5020781781112a148a830', '174.235.83.11', 1658708066, '__ci_last_regenerate|i:1658708066;'),
('8e1b1edb854730e7b3726e569a10f8648d2c624a', '124.29.235.202', 1657726105, '__ci_last_regenerate|i:1657726105;'),
('8ed6ff33319c9ce01cd2acb621dd2ec914c2c342', '101.53.248.38', 1662982939, '__ci_last_regenerate|i:1662982928;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8f8d62dbe3ca341d56000d3ce6549334e49a84f5', '221.132.115.66', 1657820637, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";__ci_last_regenerate|i:1657820547;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8fd0f2e040374f031c9c5cfd7f3662f2cf6c3adb', '175.107.203.163', 1662455519, '__ci_last_regenerate|i:1662455519;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8ij7oj4m8g2be6rojoaq5q90rsdhspm7', '::1', 1655480027, '__ci_last_regenerate|i:1655480027;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('8lqdehlo7dslp08tgrsh7a2aleds86ql', '::1', 1658848590, '__ci_last_regenerate|i:1658848590;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('8oiaj2qg0dldpqda2cqvqc78imubu6tk', '::1', 1656620789, '__ci_last_regenerate|i:1656620789;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9001edfe475b22692f064c866dc333146df2937d', '101.53.248.38', 1662739132, '__ci_last_regenerate|i:1662739041;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('90f6f334fb5d8f31b24e669924e54e0a6d8d6148', '23.30.1.217', 1658268276, '__ci_last_regenerate|i:1658268276;'),
('90ktjtorv3nc5rn573q0nmk0vin1023k', '::1', 1660553659, '__ci_last_regenerate|i:1660553659;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('911e10239bfd26cd8902aae42a6c809b0d2225ea', '221.132.115.66', 1663667441, '__ci_last_regenerate|i:1663667441;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9125bce795a138772854504977a7adfb6dd79aa7', '31.13.103.120', 1658271029, '__ci_last_regenerate|i:1658271029;'),
('913a46b896c564ce6f4d3071bf21bcb08cdf46f8', '68.100.146.119', 1658706472, '__ci_last_regenerate|i:1658706472;'),
('91514a8ef6668b6276ace461e45f168e745eed5e', '23.228.131.198', 1658505446, '__ci_last_regenerate|i:1658505446;'),
('915935576c2a6080c39d6f0178dc7b955c68e6bb', '68.100.146.119', 1658348224, '__ci_last_regenerate|i:1658348224;'),
('916735691fb96345a1f4fc788866625751568ea4', '68.100.146.119', 1658279404, '__ci_last_regenerate|i:1658279404;'),
('91c54d10093a42311218b431b1c4b4c4066c6b2f', '175.107.203.163', 1664268616, '__ci_last_regenerate|i:1664268616;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('926f8d5a5a79e9f16d29f57c4bdd4f139059953a', '205.210.31.30', 1658569500, '__ci_last_regenerate|i:1658569500;'),
('929b154dbf548ff22cdb8cf233917e6e440722cc', '221.132.115.66', 1663260061, '__ci_last_regenerate|i:1663260049;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('92e47763fc1a1516101fc3cf15eb4bb9214754cd', '17.121.115.75', 1658338246, '__ci_last_regenerate|i:1658338246;'),
('92ffbcac4b1c94f69ddb11d7fc2ce7aa9047ce27', '124.29.235.202', 1655748688, '__ci_last_regenerate|i:1655748688;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9438f0dd938e025154e20841d6ac2c32459fbec6', '124.29.235.202', 1657285156, '__ci_last_regenerate|i:1657284955;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('9484c0106b8470edb4617257acd482d6bfae2949', '35.87.255.196', 1658461368, '__ci_last_regenerate|i:1658461368;'),
('94a5e512a16dcbbacc61abd562a16664be1b2f38', '185.202.220.39', 1658240153, '__ci_last_regenerate|i:1658240148;'),
('955a6f115f0ea1c9f885e65124eff9c4893518dd', '198.235.24.5', 1658449806, '__ci_last_regenerate|i:1658449806;'),
('956fac1b70d2533782915215e2fe4579e023f9c3', '101.53.248.38', 1657285828, '__ci_last_regenerate|i:1657285828;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('957a783cb89ba5e16061ff661cfe03082b39b879', '76.49.89.45', 1658699617, '__ci_last_regenerate|i:1658699617;'),
('95a99c16a688ba0dd42410e8e072e05dea4a8652', '17.121.112.112', 1658528050, '__ci_last_regenerate|i:1658528050;'),
('969e254a1c4a813c09d39ce8de360d8ac7178315', '184.191.90.30', 1658321671, '__ci_last_regenerate|i:1658321671;'),
('96d11c885e395b2292e4d1280a0d0b25a34edc59', '185.202.220.39', 1658166431, '__ci_last_regenerate|i:1658166431;'),
('972e5eb96f9b5ff5c013085c1db15e69c8a45442', '174.109.236.192', 1658261478, '__ci_last_regenerate|i:1658261478;'),
('975862c2037aaeb63768086f36318ae043d9193c', '76.104.39.171', 1658261632, '__ci_last_regenerate|i:1658261632;'),
('9778169be5674b49303e94f7e9b4823879b25a93', '96.37.236.143', 1656875089, '__ci_last_regenerate|i:1656875089;'),
('982c8cf43952fcf03467139b506b1c1b4a345670', '66.249.83.104', 1657725899, '__ci_last_regenerate|i:1657725899;'),
('9831kv64svf3a5m75viuj5rv0if83bpm', '::1', 1658919609, '__ci_last_regenerate|i:1658919609;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('986b2e3f402e80bfa344871dff38e002225ff266', '34.212.36.122', 1658330435, '__ci_last_regenerate|i:1658330435;'),
('98ccb3cd27b6b45a515c32b75966737f91c75383', '164.82.1.13', 1658339178, '__ci_last_regenerate|i:1658339172;'),
('9913974b8c780de6016fd8fb351a65d4bdb89b00', '174.203.214.242', 1658275700, '__ci_last_regenerate|i:1658275700;'),
('9967c8fc62d64772f5ff199d81ae48b005b8b566', '173.252.107.120', 1658293168, '__ci_last_regenerate|i:1658293168;'),
('99940a4ce12683ba94b24e7659c6efcc17355bec', '71.51.168.96', 1658504331, '__ci_last_regenerate|i:1658504212;'),
('9996a0ae0f4add6e97fa04f8fad83b18d31dc4b2', '98.166.142.49', 1658628887, '__ci_last_regenerate|i:1658628887;'),
('99aa0104789ae0ae3c341b1166eee5eac1b6707f', '66.249.83.53', 1658254765, '__ci_last_regenerate|i:1658254765;'),
('99daf0f081342beb3a5499de2854a81a8e4a5443', '17.121.115.29', 1658800745, '__ci_last_regenerate|i:1658800745;'),
('99eff062e2167206f17229b733c12235aa1b7c80', '202.69.42.187', 1658388481, '__ci_last_regenerate|i:1658388481;'),
('99lu46oj50i5jp3po9la77suqk1slk7g', '::1', 1656684755, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656684755;'),
('99megcc91fuvsvgq4o2vuo7brqdk09ik', '::1', 1656622461, '__ci_last_regenerate|i:1656622461;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9a1fdb5s1cgmhblo4d7b8ohjlrntip52', '::1', 1660547349, '__ci_last_regenerate|i:1660547349;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9a88bd2ab825ef261a4b76c5898748cbe0f78b2b', '173.252.87.1', 1658778291, '__ci_last_regenerate|i:1658778291;'),
('9b3fc38ff3d78db2e99753412fd1c62c40ffa082', '173.252.83.14', 1658348351, '__ci_last_regenerate|i:1658348351;'),
('9bb7a12ed1dffab056751adf1655480a93841615', '17.121.113.206', 1658797460, '__ci_last_regenerate|i:1658797460;'),
('9bd305a65d646a960c710ef09848a76bc8f74457', '124.29.235.202', 1657206225, '__ci_last_regenerate|i:1657206225;'),
('9bf669602aca014d349be376e68499ca0718b0a2', '101.53.248.38', 1655497341, '__ci_last_regenerate|i:1655497341;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9c160c174a130a71fd87dc8a12b5f8ebcce428b8', '100.15.16.145', 1658267679, '__ci_last_regenerate|i:1658267679;'),
('9d1555b6849cb8852b96618df22062902a2c91a1', '173.93.241.144', 1658433202, '__ci_last_regenerate|i:1658433201;'),
('9d1881eafb957a8f3fac6891ee8a52706e1664a4', '66.249.88.58', 1658254828, '__ci_last_regenerate|i:1658254828;'),
('9d2b62844c40a0a62471c3e9b65792655c7bced2', '175.107.203.163', 1664370171, '__ci_last_regenerate|i:1664370161;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('9e1e6d48d5ce74e65cf0245ef635caf6762b3682', '172.58.189.150', 1658619995, '__ci_last_regenerate|i:1658619972;'),
('9e3b0c68e4703b72a013900d6a20f9db683b1fb3', '205.210.31.132', 1658709276, '__ci_last_regenerate|i:1658709276;'),
('9e49dd6ca9e1a60b9fdd3823291b90f3487da54c', '101.53.248.38', 1662997030, '__ci_last_regenerate|i:1662997029;'),
('9e54b3d749157ac02da0b66fa19a958364f6ce27', '68.100.146.119', 1658505440, '__ci_last_regenerate|i:1658505440;'),
('9f8468a11dfdb405c878be043fb152420e6602dc', '31.13.127.20', 1658278190, '__ci_last_regenerate|i:1658278190;'),
('9fuihfiuni19v0490ts74g5gook37km6', '::1', 1658925217, '__ci_last_regenerate|i:1658925217;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9gq0n2t4bnac5r230e8h7ggq2g8kdlph', '::1', 1656606030, '__ci_last_regenerate|i:1656606030;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9md12u42pmjo8a3t5aidpq2o0e6nm1ot', '::1', 1656609322, '__ci_last_regenerate|i:1656609322;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9t4o43aghn2jc8o3mkpaofpipn49bs6k', '::1', 1660563537, '__ci_last_regenerate|i:1660563537;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('9t58ni7ji5ca9304br6108jmqc7mklvl', '::1', 1655482251, '__ci_last_regenerate|i:1655482251;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('9uavksg66lmf7rdv41jofnsm1squ483o', '::1', 1655478405, '__ci_last_regenerate|i:1655478405;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('9uulas13qs2l3eee2il6msh9sms9lrna', '::1', 1655471775, '__ci_last_regenerate|i:1655471775;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('a08in2r381e2vvm2irj8df72jd6a1ppn', '::1', 1656594348, '__ci_last_regenerate|i:1656594348;'),
('a1453b26beafab35f45302ed0093a9d16849237e', '159.89.136.16', 1658278716, '__ci_last_regenerate|i:1658278715;'),
('a1c40a3e09f51f795f4b4fcabda85db9a6759f38', '221.132.115.66', 1657818091, '__ci_last_regenerate|i:1657818091;'),
('a215d7c6e6f390ce1696a6a703efac9e3c025996', '175.107.203.163', 1662461826, '__ci_last_regenerate|i:1662461826;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a263b5af29bfddadd750b288f1a40b14aaafb78c', '66.249.88.57', 1658254824, '__ci_last_regenerate|i:1658254824;'),
('a26ae36812897f2c5eca0c5b2e0adf6c56d3edf5', '174.110.88.56', 1658759492, '__ci_last_regenerate|i:1658759480;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a26b5e6f4ce1d06631ad58c8f055c381035d6cf5', '66.249.88.57', 1658254828, '__ci_last_regenerate|i:1658254828;'),
('a28927911e8b004c6a223eced073bcb297b73745', '175.107.203.163', 1662454343, '__ci_last_regenerate|i:1662454343;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a2d34aff750fc03690bd91300e9c94a6fd8655d0', '216.36.20.233', 1658269959, '__ci_last_regenerate|i:1658269959;'),
('a317d692b837d671cb9761bdd855119f5893a978', '107.77.68.35', 1658267743, '__ci_last_regenerate|i:1658267743;'),
('a38f763fec63cf4fbc91755b4c29f580eb80a767', '124.29.235.202', 1655503154, '__ci_last_regenerate|i:1655503154;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('a3cd35034ff7511f61d3e84ccb50b74c632cf4cf', '66.249.83.108', 1658752001, '__ci_last_regenerate|i:1658752001;'),
('a3ebd4c53986dda48427da07b2d55afec57fd8ad', '101.53.248.38', 1657286762, '__ci_last_regenerate|i:1657286498;'),
('a4122b572dc89de28e221105aab26f0fe1310895', '124.29.235.202', 1658260905, '__ci_last_regenerate|i:1658260681;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a43144c098238ae1ac23d47e4d1b0e4b295a0f34', '137.226.113.44', 1658343615, '__ci_last_regenerate|i:1658343615;'),
('a4880bd6a3f0f2896175482308496469d2ef11f2', '66.249.88.58', 1658254811, '__ci_last_regenerate|i:1658254811;'),
('a52d04f7c3dc6b1389b6070322d1190ed5470162', '124.29.235.202', 1656695368, '__ci_last_regenerate|i:1656695286;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a5iok9l6mrl0e3b55qsjrhlv1rcklk58', '::1', 1659095281, '__ci_last_regenerate|i:1659095281;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|s:9:\"user1.png\";customer_id|s:2:\"44\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a616118caa2e61c02bd45b55262282a08190e856', '76.2.38.25', 1658626914, '__ci_last_regenerate|i:1658626914;'),
('a72521b40b2481677ac30e4633c048bb1b061fc0', '52.25.221.177', 1658758185, '__ci_last_regenerate|i:1658758185;'),
('a76128711bc49153a1bbe7ff784e1caf9291aaac', '101.53.248.38', 1657724629, '__ci_last_regenerate|i:1657724629;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a79598f3906bd1472585238849f4db5a7ea7739e', '174.252.132.77', 1658275053, '__ci_last_regenerate|i:1658275053;'),
('a7ced3df42dfcbb543180d7099cba47ba655ef20', '42.83.147.34', 1658761815, '__ci_last_regenerate|i:1658761815;'),
('a84f416bc1acd0ace6dd95f9d54fda82d2bb0222', '101.53.248.38', 1657196107, '__ci_last_regenerate|i:1657196107;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('a8odalj4rccdr06jhdinip5di23d8fct', '::1', 1656604260, '__ci_last_regenerate|i:1656604260;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('a956b621d29a893ada697dcbb7d54f48906eeda5', '159.89.136.16', 1658351526, '__ci_last_regenerate|i:1658351526;'),
('a99f112s3u3pqbtbf02coefgghqtejoo', '::1', 1655472492, '__ci_last_regenerate|i:1655472492;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('a9f093b9734257682b4206f8ede21ca3ee54722e', '68.100.146.119', 1658485298, '__ci_last_regenerate|i:1658485298;'),
('aa05a87f85ea6c9af0c9eb0b0d0e108a70d441f1', '198.235.24.33', 1658368197, '__ci_last_regenerate|i:1658368197;'),
('aa6ac85e8324db4794aef37406b4fa5347257d49', '52.32.29.204', 1658504435, '__ci_last_regenerate|i:1658504435;'),
('aa8mo6eqh4r8hcjp9nvhtstm59ediu0j', '::1', 1658920805, '__ci_last_regenerate|i:1658920805;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('aa93e000208350e00b1dcb62ed1ec856a463c675', '66.249.80.23', 1655499091, '__ci_last_regenerate|i:1655499091;'),
('ab763e7040eae96783e0bebce98c32ec1d76b017', '124.29.235.202', 1657188115, '__ci_last_regenerate|i:1657188115;'),
('aba0fff55906a3d59fceb0e8db6aca3c5ade8232', '174.110.88.56', 1658272591, '__ci_last_regenerate|i:1658272591;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ac781efa5ef271fc42fe60fd0d3258c839d24aac', '124.29.235.202', 1655749692, '__ci_last_regenerate|i:1655749692;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ac99a38f4b3da489d904fa6356d2887ca25ab065', '175.107.203.163', 1662455142, '__ci_last_regenerate|i:1662455142;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('acaef0ab2de3d4f99e1b58daaf9a7e832a71a290', '124.29.235.202', 1657187430, '__ci_last_regenerate|i:1657187430;'),
('acda282e9b46fcf330a79c384dcf7a63b4a4d84f', '66.249.80.17', 1655499120, '__ci_last_regenerate|i:1655499120;'),
('acef6c1d56756ab5a46bca9ca226374ce3cc4dc0', '174.110.88.56', 1656972217, '__ci_last_regenerate|i:1656972078;'),
('ad496435a22b80d5aa1bee8fa3e157de4ecffd14', '124.29.235.202', 1655743209, '__ci_last_regenerate|i:1655743209;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('ad5faa903c6b5ad3e689f9fc376709e639592665', '119.73.103.174', 1658773680, '__ci_last_regenerate|i:1658773666;'),
('ad8d4fcee3d541cb6bf153ca10b34fba1d76ab81', '174.110.88.56', 1658286010, '__ci_last_regenerate|i:1658286009;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ae462a24be548b0d03388ccc2a4f46bf1fc388e8', '124.29.235.202', 1656690322, '__ci_last_regenerate|i:1656690322;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('af76d1b1c7919c552116500c482cdeabeab70380', '68.100.146.119', 1658708370, '__ci_last_regenerate|i:1658708370;'),
('afe43ed993e8fa4a24a7cce8f6c5a7d4a69ca412', '124.29.235.202', 1655747583, '__ci_last_regenerate|i:1655747583;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ah3ndl60hm3amto7nn9lfvd6p5r9a276', '::1', 1659086045, '__ci_last_regenerate|i:1659086045;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ah5hvmo3u24gdg9t1umnnm3i252dh06s', '::1', 1658848278, '__ci_last_regenerate|i:1658848278;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ahek1unvva1pdqor2hn0gmkea9no6sdt', '::1', 1656688758, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656688578;'),
('ahltfkmuqh43snu2kt2chhrlcumr0q16', '::1', 1655477480, '__ci_last_regenerate|i:1655477480;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('ajpta4rg2nne1d1446juohe1ehdr0ubg', '::1', 1655492742, '__ci_last_regenerate|i:1655492469;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('aka208v67eadlk7rg8vpp8ub2cekva3v', '::1', 1658926796, '__ci_last_regenerate|i:1658926796;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('atgomd6k4dup6hhkt4t6pjp1m4jbsggp', '::1', 1656597964, '__ci_last_regenerate|i:1656597964;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('b030e50d8b16a6574658ac845f057f44416ec8f3', '124.29.235.202', 1655746188, '__ci_last_regenerate|i:1655746188;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:24;}s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}'),
('b04ca82eedd7aef0c7e8a204071d009684edb2dd', '175.107.203.163', 1662448349, '__ci_last_regenerate|i:1662448349;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('b07v12uf3qelbp7je3pc2r8thrhpc7lf', '::1', 1655479300, '__ci_last_regenerate|i:1655479300;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('b0a164a0c7a2559de79aefec511cccb8ea4f02ee', '221.132.115.66', 1663259736, '__ci_last_regenerate|i:1663259736;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('b19d4c7a0706454362b8d97974de4ee23b0ccb17', '66.102.7.216', 1657725904, '__ci_last_regenerate|i:1657725904;'),
('b1b85acc136e702d2b38ad53dcde7ee16fa29f1b', '54.218.254.117', 1658498655, '__ci_last_regenerate|i:1658498655;'),
('b1f3b3c155264a012232232ca7e588204a32f19b', '76.2.38.25', 1658773007, '__ci_last_regenerate|i:1658773007;'),
('b23a71f8cbf536531201d3cbedec995f5481541f', '172.58.159.203', 1658503861, '__ci_last_regenerate|i:1658503861;'),
('b26eed3c58db9d998cae699a9f28b5d9b7b0c38a', '93.158.91.184', 1658353678, '__ci_last_regenerate|i:1658353678;'),
('b2851578fef787180f95320e9cf7b7d9ff006840', '175.107.203.163', 1664523960, '__ci_last_regenerate|i:1664523907;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:19:\"Added Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('b286b5ca0cc5b0ae6b6c3e1ea06428d44e1748a1', '124.29.235.202', 1657281666, '__ci_last_regenerate|i:1657281666;customer_email|s:17:\"112admin@demo.com\";customer_last_name|s:4:\"John\";customer_first_name|s:4:\"phil\";user_image|N;customer_id|s:1:\"7\";'),
('b3295a57428031f37c09b94cadb56d304f690522', '198.235.24.13', 1658363598, '__ci_last_regenerate|i:1658363598;'),
('b3465c480ab7917aa7a31d98200d72473ea99559', '173.252.127.23', 1658261254, '__ci_last_regenerate|i:1658261254;'),
('b3kdq87ht9len2cmait91n5iitdf4ofh', '::1', 1660673457, '__ci_last_regenerate|i:1660673457;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('b43f075cf9ff27a8013c77a4bf35daf6d6577389', '69.63.184.4', 1658326742, '__ci_last_regenerate|i:1658326742;'),
('b572153515f0f16c2dad5ab3060a280943f823c8', '166.182.250.71', 1658285869, '__ci_last_regenerate|i:1658285869;'),
('b57711665662331a2e6c7474e474d9e646080885', '98.121.248.29', 1658263274, '__ci_last_regenerate|i:1658263261;'),
('b5cd0e3ee5f38135257a14b849cac9face137578', '172.58.156.203', 1658169358, '__ci_last_regenerate|i:1658169358;'),
('b689cad4b508dc028a64d3418094cb807f37e2ec', '31.13.103.22', 1658363212, '__ci_last_regenerate|i:1658363212;'),
('b6ac058b1b79280c98859c79f1838c805804dd6f', '34.220.87.121', 1658499653, '__ci_last_regenerate|i:1658499653;'),
('b71dd344f65be92ddcf05806ebaa2a5e721c2b1e', '75.140.196.137', 1658282186, '__ci_last_regenerate|i:1658282186;'),
('b73964effea294128d05c7c60119665751ca99d8', '185.202.220.39', 1658243183, '__ci_last_regenerate|i:1658243183;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('b73ba134ee9bad9013e6b73e768c092234ba6b84', '17.121.115.86', 1658596482, '__ci_last_regenerate|i:1658596482;'),
('b76c6fcd16d3ac9a0fd1a3db66cf601fbfc5630a', '45.206.1.53', 1658782892, '__ci_last_regenerate|i:1658782892;'),
('b89db94fb6658fe836f416dab7473f197659ed18', '221.132.115.66', 1663671532, '__ci_last_regenerate|i:1663671532;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('b8d21e9eb1ee511b40365fd61ce2d4393ad4c235', '175.107.203.163', 1664787306, '__ci_last_regenerate|i:1664787306;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('b92365bc7d47b8a8c4cf0de7086a2f96c0914606', '96.37.236.143', 1656876418, '__ci_last_regenerate|i:1656876101;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('b97c3ed6f06876475ff19ccca4bbf3389e334cf6', '66.249.83.125', 1658254835, '__ci_last_regenerate|i:1658254835;'),
('b9cb09e31dcbb836e97a006dc9ab9440f9d07ac3', '66.249.83.125', 1658764896, '__ci_last_regenerate|i:1658764896;'),
('b9fe86d4368dc55a8942f0d99afcf7aefa44b7ce', '185.202.220.39', 1658166518, '__ci_last_regenerate|i:1658166431;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ba95ad8fba5fae7764c713de02d91ae7bbea5ac2', '184.94.240.88', 1658340383, '__ci_last_regenerate|i:1658340329;'),
('ba9a1947553d1cfa52af78174b912cd272fad5f9', '66.102.7.191', 1658166726, '__ci_last_regenerate|i:1658166726;'),
('baac2183be2c999f1d11d4d8da4aeb196d962b89', '32.211.207.251', 1658286178, '__ci_last_regenerate|i:1658286178;'),
('bab141d3cd28718fdde5ac39f245e0d1a209bca5', '173.252.127.27', 1658326710, '__ci_last_regenerate|i:1658326710;'),
('bacc8d503633c81828357886ff75802bdc5ca17c', '54.190.226.182', 1658672274, '__ci_last_regenerate|i:1658672274;'),
('bapdtt201k7o8ukqrdl883co9im2geeu', '::1', 1656615425, '__ci_last_regenerate|i:1656615425;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('bb02e61d355e1e11d93c4783927c8e225b62cb58', '174.110.88.56', 1658778166, '__ci_last_regenerate|i:1658778166;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('bb2522d9fd72f944190dc73f5826eb65d94ce770', '17.121.115.217', 1658446381, '__ci_last_regenerate|i:1658446381;'),
('bc46a619094d966ae68e6097c129f0c57d970ad7', '101.53.248.38', 1657267484, '__ci_last_regenerate|i:1657267484;'),
('bc6092cf6d253fe185b03ef10370b26f1ace3ac5', '68.100.146.119', 1658279404, '__ci_last_regenerate|i:1658279404;'),
('bc711ead8b42714be2c7259ff20fa9677b2e4a8b', '175.107.203.163', 1662524118, '__ci_last_regenerate|i:1662524118;'),
('bc938dc1b6a7205541d17992b973897664d6e229', '101.53.248.38', 1657204643, '__ci_last_regenerate|i:1657204643;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('bc942e034ea2392d10537c8eb937a23d23a51af7', '185.202.220.39', 1658246000, '__ci_last_regenerate|i:1658246000;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('bcdd01ed2ed84a3a526fb601b1cddedca4014d39', '68.206.212.118', 1658619842, '__ci_last_regenerate|i:1658619842;'),
('bce0c519b0e8087f2bbc958d9685cf53c466cbe7', '24.241.12.77', 1658261547, '__ci_last_regenerate|i:1658261547;'),
('bd1faabe102ca2705bbd72f5e5380e05fc75fafd', '20.112.217.230', 1658790595, '__ci_last_regenerate|i:1658790595;'),
('be7b6d20bc923e3f2099df2cabe7c54053db01c0', '31.13.115.119', 1658778304, '__ci_last_regenerate|i:1658778304;'),
('be7f3725f2b8af68670b91f78edd6b30d31651c9', '124.29.235.202', 1657204946, '__ci_last_regenerate|i:1657204946;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('bea364b259d5dad2e88f659f4b4b21b0910e5c28', '38.66.192.34', 1658261173, '__ci_last_regenerate|i:1658261173;'),
('bfd7b01547ff9c6fde06629955fefe449762a09c', '101.53.248.38', 1657725481, '__ci_last_regenerate|i:1657725481;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('bff7cd2aa39d56461081ba314f6753a3c4513473', '174.235.50.68', 1658264132, '__ci_last_regenerate|i:1658264132;'),
('bj34v2ltor371u9qup79bjb3ltmbrh1m', '::1', 1660543873, '__ci_last_regenerate|i:1660543873;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('blk5u7jln5brg03v9gv2cl6asspa3a2f', '::1', 1660547009, '__ci_last_regenerate|i:1660547009;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('bor78s42mda4vk2g472i5mkg0pkoabqa', '::1', 1660551264, '__ci_last_regenerate|i:1660551264;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('brhbvi22ue7qis34c710enhaqtgnd9iv', '::1', 1660545988, '__ci_last_regenerate|i:1660545988;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('bt7vbe1hft240nmrr42lb58s8u3lr5n2', '::1', 1655483047, '__ci_last_regenerate|i:1655483047;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('bu0emkog3tua4cof2rl0gcb5ucfrl145', '::1', 1656594847, '__ci_last_regenerate|i:1656594847;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('buppt3mf5b8s9vqg9811ifkm8q85j5u9', '::1', 1658847626, '__ci_last_regenerate|i:1658847626;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c00966d78c2598a86f03565c3c30c447b785767a', '174.110.88.56', 1658260793, '__ci_last_regenerate|i:1658260793;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c03853sv05o287pjb82sule2f2eb5m53', '::1', 1660544366, '__ci_last_regenerate|i:1660544366;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c05fb715f6faa514d39e3311fc0376e4d7fe8368', '96.37.236.143', 1658359285, '__ci_last_regenerate|i:1658359285;'),
('c0739e143ced8eebae1e8bab83b7a2ccf5532c74', '175.107.203.163', 1664273877, '__ci_last_regenerate|i:1664273877;'),
('c0aadb6ec822d29a662ece6b02ddfe60bb484226', '173.252.83.14', 1658750798, '__ci_last_regenerate|i:1658750798;'),
('c0becddbb12d020ddcffb49e1be90ed00772b6ba', '101.53.248.38', 1655498705, '__ci_last_regenerate|i:1655498700;'),
('c1205b0b7c3fc1fd599c8b574e2cdc0c72500e57', '66.220.149.116', 1658435492, '__ci_last_regenerate|i:1658435492;'),
('c138mkca3tdvp6r3mas5viuckemui6pu', '::1', 1659095604, '__ci_last_regenerate|i:1659095604;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|s:9:\"user1.png\";customer_id|s:2:\"44\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c13bc315ca2f3c7df0089eb6b9dc6c8e68f8eaba', '101.53.248.38', 1664459369, '__ci_last_regenerate|i:1664459339;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('c1a589dc5227331d06e3c6f921b52d15fad67711', '175.107.203.163', 1664274036, '__ci_last_regenerate|i:1664273877;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c1b8d5a27b57b96715cd70ee430d1ee185165a1c', '66.249.88.59', 1658254793, '__ci_last_regenerate|i:1658254793;'),
('c20a49f4dc1922aa83da296fde8477d6b30c5005', '166.205.147.1', 1658410373, '__ci_last_regenerate|i:1658410373;'),
('c20b830a5220eb3374757c8bf23c25ad20e4564a', '198.235.24.141', 1658743312, '__ci_last_regenerate|i:1658743312;'),
('c2109080f4cbb24c2bbdcc9a691072efa00de9ec', '173.252.83.14', 1658778281, '__ci_last_regenerate|i:1658778281;'),
('c245145a35a250d88f835b58ecb2f4051f320cbd', '124.29.235.202', 1657197246, '__ci_last_regenerate|i:1657197246;'),
('c247551019771e8e19444aa105a56b1f083ae8c5', '175.107.203.163', 1662983984, '__ci_last_regenerate|i:1662983984;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c278df270672c4af355e3021a3d558a42b7ccba7', '173.252.107.4', 1658492087, '__ci_last_regenerate|i:1658492087;'),
('c27c93bba6bb664d98d4a703e9dbe0d41b6d4482', '175.107.203.163', 1663066701, '__ci_last_regenerate|i:1663066701;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('c27cbbf66f6863aeebbcc9c686fa794ada478470', '174.110.88.56', 1656948755, '__ci_last_regenerate|i:1656948528;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:24;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('c2d43b5157be94cbc0a40f315c9fff537aa8d986', '66.249.80.17', 1655499118, '__ci_last_regenerate|i:1655499118;'),
('c2d776f34be36a7b3c0a7e79652e98ee0ea8aaf6', '68.100.146.119', 1658706933, '__ci_last_regenerate|i:1658706933;'),
('c33031da5010600ffe54fabb1a10d8cbd60122c6', '71.172.232.215', 1658693453, '__ci_last_regenerate|i:1658693453;'),
('c34a8cf6e5d2eaec2d1814cde09c599c0d211411', '124.29.235.202', 1660931671, '__ci_last_regenerate|i:1660931671;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c35086dad6f57d97ad769488abc537a4dd432e4d', '124.29.235.202', 1657204205, '__ci_last_regenerate|i:1657204205;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('c359e59c755b5337c9736e86fbb044451113febe', '173.252.83.118', 1658778281, '__ci_last_regenerate|i:1658778281;'),
('c35f44cd11dcc58e9f33e0e7fa94e1121b93206d', '124.29.235.202', 1658258241, '__ci_last_regenerate|i:1658258241;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c38df38b43a9f56ab5dab0f2a84e4d9de505d805', '172.58.221.213', 1658619916, '__ci_last_regenerate|i:1658619916;'),
('c3c702383bde4cf30ffe0c92fcda5100f63bb08c', '101.53.248.38', 1660921519, '__ci_last_regenerate|i:1660921402;'),
('c3jnpg5ca500l34j28rdckeidnlc0sv4', '::1', 1656618771, '__ci_last_regenerate|i:1656618771;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c4898db8e06aa42a89d68c813d3a4180f3d668a6', '174.206.44.81', 1658262451, '__ci_last_regenerate|i:1658262451;'),
('c5406d8b906b2d779f7b02ebfb3eb475e66745cd', '175.107.203.163', 1664795594, '__ci_last_regenerate|i:1664795594;'),
('c565fd99e1fc0da8d2d8a28bf9f18d9ec4e9d251', '174.235.48.113', 1658376676, '__ci_last_regenerate|i:1658376676;'),
('c599bd6e175575b6fe709879123bdfa8090c2789', '54.202.56.6', 1658672256, '__ci_last_regenerate|i:1658672256;'),
('c660e1597912906abcf57618fde71e054ec8ccf9', '101.53.248.38', 1655494448, '__ci_last_regenerate|i:1655494448;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('c6905b1bf78bc02f72c81ec245720142a9b03ded', '221.132.115.66', 1663658978, '__ci_last_regenerate|i:1663658978;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c6b96841594732546cf61442e7282d9b6498eb41', '68.100.146.119', 1658505440, '__ci_last_regenerate|i:1658505440;'),
('c6c16fda32227ddb1fe38f49949e7a23a43d4a78', '173.252.83.22', 1658261156, '__ci_last_regenerate|i:1658261156;'),
('c7593705390414ce50b4fec03d49e5487c7d016b', '185.202.220.39', 1658247996, '__ci_last_regenerate|i:1658247993;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c75bedaed8baa9674adf13249d15a374164b5106', '69.63.189.2', 1658261287, '__ci_last_regenerate|i:1658261287;'),
('c7649b27398528b47b53d8eacc18ec7dfd04c097', '221.132.115.66', 1658256116, '__ci_last_regenerate|i:1658256116;'),
('c79aec967dcd12ac339c493ba9f182f27aaaa1df', '73.173.12.46', 1658267569, '__ci_last_regenerate|i:1658267569;'),
('c88416f56733d6797b226dc610b23142df96057f', '124.29.235.202', 1655744551, '__ci_last_regenerate|i:1655744551;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('c89004408909d1865b16f5966b1c2181ab475137', '173.252.83.23', 1658350724, '__ci_last_regenerate|i:1658350724;'),
('c8962e81e93401ec72077b93f0c35db5ede3dd65', '124.29.235.202', 1657205914, '__ci_last_regenerate|i:1657205914;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('c8a06f5de354aa20e04671d01291ad3bdd71bd66', '66.249.88.59', 1658254811, '__ci_last_regenerate|i:1658254811;'),
('c8e48041b529315b12c2fb64d15f7f6b80d10bce', '185.202.220.39', 1658247993, '__ci_last_regenerate|i:1658247993;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c8f37535d4cef38c00a9e2bac553812b34a8eae1', '221.132.115.66', 1657911742, '__ci_last_regenerate|i:1657911742;'),
('c91c63fbdff10d99fc069aad55ad3cd7e158b5d3', '31.13.127.9', 1658270997, '__ci_last_regenerate|i:1658270997;'),
('c9a47a523d85f55d74af90c59693ff6db2f21056', '175.107.203.163', 1663068603, '__ci_last_regenerate|i:1663068563;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('c9e3f4cccff5cf7bef79da9c098d6e528c5e4efa', '159.89.136.16', 1658607304, '__ci_last_regenerate|i:1658607303;'),
('c9f58ebc91c8d5db12b29156497908c5f8a4d88e', '66.102.9.59', 1658254813, '__ci_last_regenerate|i:1658254813;'),
('c9nv277ijkmgkmr1h2m4g7kjl93dnba2', '::1', 1660563039, '__ci_last_regenerate|i:1660563039;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ca4130038279dd74514f78a2e3d5d55b459f8d35', '124.29.235.202', 1660928764, '__ci_last_regenerate|i:1660928764;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ca58cad6d4d759c8f3d83277913997f9e695d092', '124.29.235.202', 1658410164, '__ci_last_regenerate|i:1658410115;'),
('cb3044db56e53f758db04f9da7d49cf6f8dd5e6d', '124.29.235.202', 1657205267, '__ci_last_regenerate|i:1657205267;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('cb962c479e244469dbf3457135aee41237591b25', '17.121.113.219', 1658528055, '__ci_last_regenerate|i:1658528055;'),
('cbab8f27c736cb0b09cd3738fef7173c062136dc', '175.107.203.163', 1662459637, '__ci_last_regenerate|i:1662459637;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('cc4ba7767f5562228408f2d09f24ad822ba47aad', '124.29.235.202', 1657202546, '__ci_last_regenerate|i:1657202546;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('ccb4e1a0c4f219223ffc96ebdb358b015fdaa014', '54.149.224.245', 1658326941, '__ci_last_regenerate|i:1658326941;'),
('ccskeum2lgrsqvh9sdd23tgja6vuv0o0', '::1', 1658918481, '__ci_last_regenerate|i:1658918481;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('cdc382296d3f7687b32e98eccbb0d757f3453f20', '68.100.146.119', 1658708370, '__ci_last_regenerate|i:1658708370;'),
('cecc7e2d04f06968294d503827aa15eb59529536', '24.213.124.123', 1658279375, '__ci_last_regenerate|i:1658279375;'),
('cf8c8a2dbb04c4a7d2a1d123c384b01ff837e140', '69.171.251.11', 1658356445, '__ci_last_regenerate|i:1658356445;'),
('cipu5mgvn6caeffro10f6escnmr5iic0', '::1', 1660674776, '__ci_last_regenerate|i:1660674773;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('d0bd75feb4c6c7af14f8a4be2ed04089d3ac1384', '101.53.248.38', 1661418964, '__ci_last_regenerate|i:1661418864;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";error|s:41:\"You are not allowed to visit this module.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"new\";}'),
('d0fbdd8e83b19ddd6fb6eede541e93887d2ffb5f', '68.33.197.33', 1658752681, '__ci_last_regenerate|i:1658752637;'),
('d11c9d91cc63b0f27c25d2fac8aaf17a9c6f2261', '173.252.127.16', 1658778335, '__ci_last_regenerate|i:1658778335;'),
('d1753af245add5a270fd53ab39485d597e0178b9', '175.107.203.163', 1662462149, '__ci_last_regenerate|i:1662462149;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('d19e8541edfee5a18cea11c01116adfdda83ede4', '98.24.235.53', 1658621262, '__ci_last_regenerate|i:1658621262;'),
('d1b1f581c317ad6267bba64cae9c4b47f7358785', '66.249.83.80', 1657725902, '__ci_last_regenerate|i:1657725902;'),
('d31e9e16ec63743e4eaf689b78a22299b6ea531a', '185.202.220.39', 1658241574, '__ci_last_regenerate|i:1658241574;'),
('d3289eff509b3559771a4303671adcbb3cac2e88', '185.202.220.39', 1658165141, '__ci_last_regenerate|i:1658165141;'),
('d3b7341e0ebaa7adf3608d57bc85988c7deb8b02', '75.139.109.152', 1658784016, '__ci_last_regenerate|i:1658784016;'),
('d40ef5299cb25ce4cd367cc792ec425ae2871ad7', '17.121.115.162', 1658268804, '__ci_last_regenerate|i:1658268804;'),
('d5240cec60302ec1b7be550d898fdfabf76d6f35', '173.252.83.16', 1658778281, '__ci_last_regenerate|i:1658778281;'),
('d5fa894b0c8812657466ebd5127beea9c3fda159', '124.29.235.202', 1657196092, '__ci_last_regenerate|i:1657196092;'),
('d624d39a81c1fdc72cfef4174e8affbd55d672f5', '159.89.136.16', 1658407379, '__ci_last_regenerate|i:1658407379;'),
('d62cd23a0eb759a1d51755638c44b5dd96b6a9ce', '173.252.107.21', 1658370274, '__ci_last_regenerate|i:1658370274;'),
('d62d24ad491d2cc4536884352c28a8949065f445', '66.249.83.125', 1658254835, '__ci_last_regenerate|i:1658254835;'),
('d63ad36014beaaf60fece7f37b4b10931f13d65b', '66.102.9.57', 1658254817, '__ci_last_regenerate|i:1658254817;'),
('d6e8920f5aa8636dcd09a52508c8d5a0e863e5b4', '172.58.191.183', 1658265084, '__ci_last_regenerate|i:1658265084;'),
('d77bee999c667ffaa7a8ff521df9ea407b9e7786', '173.252.95.9', 1658370242, '__ci_last_regenerate|i:1658370242;'),
('d807cec000618748bf99d0abe479cbd9d43e9759', '166.205.147.1', 1658410373, '__ci_last_regenerate|i:1658410373;'),
('d83fb1eade5a18d40dfef0e72f616549d69ebf44', '101.53.248.38', 1657209679, '__ci_last_regenerate|i:1657209448;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('d8470e7e4d79c91fd59e7f475f77a2f9fa5884a6', '101.53.248.38', 1656356890, '__ci_last_regenerate|i:1656356889;'),
('d86806c37cdd3a42da7092f1db78364d08c1923a', '101.53.248.38', 1662738017, '__ci_last_regenerate|i:1662738017;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:19:\"Added Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('d89e581c44fe4aa8cb8c6f89535a0da5b1f91134', '66.220.149.13', 1658265150, '__ci_last_regenerate|i:1658265150;'),
('d8b01b974056ebcd93385e4457bcf760a44ca4f7', '175.107.203.163', 1662461142, '__ci_last_regenerate|i:1662461142;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('d8f8a15f0e43187b7e28f85b9abee5de300b21fc', '101.53.248.38', 1661420288, '__ci_last_regenerate|i:1661420283;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('d92a18222936f3bc5529fd40e57689607f9f2700', '66.249.77.77', 1658795112, '__ci_last_regenerate|i:1658795112;'),
('d9f4c95196c03124f39944f9e95be7b442242070', '124.29.235.202', 1658409849, '__ci_last_regenerate|i:1658409849;'),
('d9sf8kk09l6s6kodtqret3p0h4tj3o6d', '::1', 1659094275, '__ci_last_regenerate|i:1659094275;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|s:9:\"user1.png\";customer_id|s:2:\"44\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('da73817885614e2dafaed25bd69cc191939ef407', '185.202.220.39', 1658163406, '__ci_last_regenerate|i:1658163406;'),
('da8a057502d6b6cd48a6f8dc5aa2c0521f462fb5', '185.213.155.199', 1658630391, '__ci_last_regenerate|i:1658630391;'),
('db95b87ac2e0bd8a513a0816a8c42c5584ca7d60', '175.107.203.163', 1662984057, '__ci_last_regenerate|i:1662983984;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('dbc11f307f4151b6773119e76289c6014e6feab5', '207.190.21.70', 1658261405, '__ci_last_regenerate|i:1658261405;'),
('dc536564fc0994221f244cb3f7221c6eecfe9478', '66.249.88.57', 1658254824, '__ci_last_regenerate|i:1658254824;'),
('dc71e12eb8083dc9622ebbd411b881bdf2a8f9b7', '96.37.236.143', 1656875735, '__ci_last_regenerate|i:1656875735;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('dc76e259095901962b123e15e62f3621fd57071b', '174.110.88.56', 1658536088, '__ci_last_regenerate|i:1658536088;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('dc88712a263afa59eee22f440905faf3da672bbe', '198.235.24.139', 1658737165, '__ci_last_regenerate|i:1658737165;'),
('dca46924424b670d74ecd3cd4dd1e038cf80b3d7', '50.112.200.16', 1658672245, '__ci_last_regenerate|i:1658672245;'),
('dcd4ba04f5f3ac819e0e4d323bd7e8e0761d8be5', '47.134.68.94', 1658734197, '__ci_last_regenerate|i:1658734197;'),
('dd89a6a7845ca47bad16566da5ec430509098246', '101.53.248.38', 1661420283, '__ci_last_regenerate|i:1661420283;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('de0b341130251e4547ea09a1c6d254a1dfca6ad3', '66.249.72.174', 1658737456, '__ci_last_regenerate|i:1658737456;'),
('de209148f7c381a5dd3c5a0a428db841f7be0045', '69.171.249.21', 1658778337, '__ci_last_regenerate|i:1658778337;'),
('de2d78d351273f4fe0fb76bf3ef66643d0a07cab', '172.58.156.235', 1658373604, '__ci_last_regenerate|i:1658373604;'),
('de7b6831cb6bc315ce4fcb5eac6b872aa3cd5816', '174.110.88.56', 1656947130, '__ci_last_regenerate|i:1656947130;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";cart_contents|a:4:{s:10:\"cart_total\";d:36;s:11:\"total_items\";d:3;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:2;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:24;}s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('ded60d2f3ba3e0d1443e1d787290167c6cb03dec', '17.121.113.72', 1658334608, '__ci_last_regenerate|i:1658334608;'),
('def234748723753fc299be3ce57d8f89cb23f55f', '124.29.235.202', 1657193863, '__ci_last_regenerate|i:1657193863;'),
('df4533606fd1d7dd15338db47ce9595b9e59d893', '175.107.203.163', 1664538988, '__ci_last_regenerate|i:1664538988;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dfa8c859edcec1ccdc86c8c8982829084e378ab6', '17.121.112.14', 1658594397, '__ci_last_regenerate|i:1658594397;'),
('dpfkqrkd803ug9jcm2rdam0g5oe37d5h', '::1', 1656599110, '__ci_last_regenerate|i:1656599110;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('dpjqc7ou5plfq3n3186i3iqqjtb00l27', '::1', 1655467422, '__ci_last_regenerate|i:1655467422;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('e00ab92bc74a851caf7a61875314d2a38cf5ef44', '101.53.248.38', 1655827430, '__ci_last_regenerate|i:1655827181;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('e026e452cbd9a4d244df3b72b3e65f2c72a9ed98', '68.100.146.119', 1658708370, '__ci_last_regenerate|i:1658708370;'),
('e05jlg7n5u18igiu9orurch1sn7i5bep', '::1', 1658924292, '__ci_last_regenerate|i:1658924292;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e06067c9ab7e420958c2b95c11cbdd8d00d70bc2', '69.171.251.113', 1658618967, '__ci_last_regenerate|i:1658618967;'),
('e07193ed8d825409dc3ba9f876bd4c092680be61', '141.98.212.10', 1658337212, '__ci_last_regenerate|i:1658337212;'),
('e0924e47a2d1e6c328659d592831cada20d97088', '66.220.149.21', 1658435492, '__ci_last_regenerate|i:1658435492;'),
('e0e9d625d0a13f5a20806d18b53984f83060e352', '124.29.235.202', 1657205577, '__ci_last_regenerate|i:1657205577;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('e0g2rkuktplu1lq0ffmkirecaa588su9', '::1', 1656605040, '__ci_last_regenerate|i:1656605040;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e14b379bcfaf43de591906a1db25c4fea9c414a9', '66.249.83.121', 1658254798, '__ci_last_regenerate|i:1658254798;'),
('e19rdian3afo4p4d06h50ti2nfc0ad52', '::1', 1660555098, '__ci_last_regenerate|i:1660555098;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e1ad7d0d6bcaad3f4655f775e6018d4f12af50f9', '66.220.149.10', 1658778294, '__ci_last_regenerate|i:1658778294;'),
('e1d87965360e41f1ed781fde9be67472ae99c945', '101.53.248.38', 1662971190, '__ci_last_regenerate|i:1662971190;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e1fe99e485960caad1dfa89d5f078f868d03c535', '175.107.203.163', 1662460840, '__ci_last_regenerate|i:1662460840;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e2avvfcn1ohocvj0sd8vko3dlbptlofj', '::1', 1658851583, '__ci_last_regenerate|i:1658851293;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e2d1a14c757130f232100f972ba119de2c814902', '185.202.220.39', 1658240506, '__ci_last_regenerate|i:1658240506;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e32217f840b51ab3b1e04440e74138b2b9777290', '66.249.77.78', 1658602248, '__ci_last_regenerate|i:1658602247;'),
('e33e2c995c89632632b3dbb1679033394a7cfae5', '47.132.106.133', 1658492690, '__ci_last_regenerate|i:1658492690;'),
('e3a25cff6854cfec3d63dcb07faa38af838637dd', '66.249.83.30', 1658254802, '__ci_last_regenerate|i:1658254802;'),
('e3cc7a5239858dce5170e8bf9fd7b542d3371d9f', '124.29.235.202', 1658258921, '__ci_last_regenerate|i:1658258921;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e3f52a7f3774ef2fb0d5e7006a7d4b07d971c6df', '101.53.248.38', 1657725912, '__ci_last_regenerate|i:1657725874;'),
('e42e9b68d3f83bcda072e3e69815e93718274bb4', '174.24.176.194', 1658380681, '__ci_last_regenerate|i:1658380681;'),
('e44208f44a5dbf50cc6464fc4c663dfa3950b046', '124.29.235.202', 1658172262, '__ci_last_regenerate|i:1658172208;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";error|s:41:\"You are not allowed to visit this module.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"new\";}'),
('e446b4e40d328cf9793226a632d12a12f3b91b2c', '101.53.248.38', 1657724321, '__ci_last_regenerate|i:1657724321;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e4e5ff862f330710822a2b825beb2edfa9ed3d0c', '182.189.203.135', 1658269698, '__ci_last_regenerate|i:1658269697;'),
('e51d06d9fd62171e913636b663b2bb1b37db7f3c', '172.58.158.230', 1658416512, '__ci_last_regenerate|i:1658416512;'),
('e61ea61781e1343ab2dcbc29107d8fdc7c1ab3d3', '101.53.248.38', 1657202793, '__ci_last_regenerate|i:1657202793;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('e682d9321f990c1b25ce84faefdc046b25a4739a', '66.249.75.144', 1658707845, '__ci_last_regenerate|i:1658707845;'),
('e6962d414f3b309a5b097c697162cfb415c736d9', '101.53.248.38', 1656689263, '__ci_last_regenerate|i:1656689263;'),
('e6c75a489c2016e535464e0acc7b47bd550563a8', '185.202.220.39', 1658247344, '__ci_last_regenerate|i:1658247344;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e7c07b654bad3403e28d9ddb22c1a1ae36cedd32', '173.252.83.9', 1658778287, '__ci_last_regenerate|i:1658778287;'),
('e80720fd704fc83c96dd2cd8353a267e07850c98', '71.178.54.72', 1658494900, '__ci_last_regenerate|i:1658494900;'),
('e88afcb1f54d529515695dd5c306fceaaa9f0191', '174.110.88.56', 1658361088, '__ci_last_regenerate|i:1658361088;'),
('e8r9ms48ujb15dlok90t8hka0uuoqb7k', '::1', 1656603861, '__ci_last_regenerate|i:1656603861;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e90b921c76e9739b607d62826b9e4eebdda804bb', '185.202.220.39', 1658246890, '__ci_last_regenerate|i:1658246890;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('e9131b3dd817c5b8a544d900bd47fe96c28b6a8a', '100.16.96.144', 1658272793, '__ci_last_regenerate|i:1658272793;'),
('e9462b262ee98e69f034ecdf8646f766aeb3cdf2', '185.202.220.39', 1658242771, '__ci_last_regenerate|i:1658242771;'),
('e96d78e49a4ef6a8af1a8513ea52a65edeaab3a6', '101.53.248.38', 1657723700, '__ci_last_regenerate|i:1657723700;'),
('e981176e2db2e51135ca6adcdd7d28fccc9abd4b', '66.102.9.61', 1658254819, '__ci_last_regenerate|i:1658254819;'),
('ea0667f2007e43f264ac1e9f1c6c9262cc29ad3c', '172.58.227.79', 1658429547, '__ci_last_regenerate|i:1658429547;'),
('eaep83adeoa4tiijvl390pdup0g8jadj', '::1', 1655492469, '__ci_last_regenerate|i:1655492469;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('eb1ee469349c96248fc1e67706d5040772026ea2', '175.107.203.163', 1664784214, '__ci_last_regenerate|i:1664784214;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('eb266fa5dd200eb72549a300f428085d4e84a140', '173.71.136.210', 1658698847, '__ci_last_regenerate|i:1658698847;'),
('ec1464fa6491977de05d58eff29312171740ad59', '174.110.88.56', 1658273282, '__ci_last_regenerate|i:1658273282;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ecpgca9iq1t7lngaic5e6q016bkqfvdn', '::1', 1660558355, '__ci_last_regenerate|i:1660558355;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ed1cf8b6dbc0914438d1606dd0f873b865c7549d', '66.220.149.1', 1658778326, '__ci_last_regenerate|i:1658778326;'),
('ed2e3751f74183af8c232408957b5fb79cdf3098', '124.29.235.202', 1657282420, '__ci_last_regenerate|i:1657282420;'),
('ed8e26a24f6326fe19bab8bb98b5229863bc3d8d', '17.121.112.42', 1658706741, '__ci_last_regenerate|i:1658706740;'),
('edf2bd895e41bb93760ae22cc9ddf32c7901227a', '119.160.2.238', 1658361742, '__ci_last_regenerate|i:1658361742;'),
('edfe0cb4ff1f2e10cab8c809a1372cdc90c96033', '119.160.2.155', 1658254672, '__ci_last_regenerate|i:1658254672;'),
('edtr2u2inud6h74hp0g387sn5dgvlq42', '::1', 1660545530, '__ci_last_regenerate|i:1660545530;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ee2db02fd8b9e56f46430ebaf120912c0e559256', '204.116.80.36', 1658258163, '__ci_last_regenerate|i:1658258163;'),
('ee51e25db3af47dfc9cb10932ad073f2c0df6982', '174.110.88.56', 1658260729, '__ci_last_regenerate|i:1658260729;'),
('ee9n234midb9003aiusuvi2kc0gaumfk', '::1', 1658850030, '__ci_last_regenerate|i:1658850030;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('eee4886e2eb00cccad3ca0c7ff39c40a396ab90f', '124.29.235.202', 1657203640, '__ci_last_regenerate|i:1657203640;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('eehp0317ltjc3barc61ti80gss4gb1iv', '::1', 1656688578, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656688578;'),
('eenp7gfjv20t28se4troe0n7q160fmu6', '::1', 1656620454, '__ci_last_regenerate|i:1656620454;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ef6d0a4988fa2d4dbc7af873a0e005c43fd9d830', '174.206.100.143', 1658436588, '__ci_last_regenerate|i:1658436588;'),
('efa4499365c0991b304c69fa7f583566466cb4da', '98.166.104.163', 1658621841, '__ci_last_regenerate|i:1658621841;'),
('efacf8841ad64a208c01edf4168888ed7aecb024', '101.53.248.38', 1662970843, '__ci_last_regenerate|i:1662970843;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('efc0af9b452c45d387f25a19e060218e35044226', '68.100.146.119', 1658706934, '__ci_last_regenerate|i:1658706934;'),
('efd4dd4e50b55027dcd1f0af2d66d5c03934590b', '69.63.189.112', 1658332095, '__ci_last_regenerate|i:1658332095;'),
('epjoeipkea5q9q1gcqhk16qqhi72if81', '::1', 1660674773, '__ci_last_regenerate|i:1660674773;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('epm7ibn0uknjohqt43u9po4vfsdtj7bt', '::1', 1658919294, '__ci_last_regenerate|i:1658919294;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('eqea513vh7rogq04opo8s0r0d5dekklr', '::1', 1660547668, '__ci_last_regenerate|i:1660547668;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('er3m7o9qpc39spnibajk8h2kknnseq0v', '::1', 1656687055, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656687055;'),
('f0075baa36b20bba8d503a66de74e8498f7ecbcd', '17.121.115.239', 1658706746, '__ci_last_regenerate|i:1658706746;'),
('f099128cd7c046c3b26dc6c7e038233acb158d13', '175.107.203.163', 1664795597, '__ci_last_regenerate|i:1664795594;'),
('f106770e29257d4358c2505fdede5b542730afcf', '124.29.235.202', 1658169357, '__ci_last_regenerate|i:1658169357;'),
('f11592842f85246447f4ddd243b6a05925191398', '35.89.214.223', 1658326986, '__ci_last_regenerate|i:1658326986;'),
('f11d3c619187c4fabdaa8391007730d063a16abe', '71.77.24.147', 1658279467, '__ci_last_regenerate|i:1658279467;'),
('f1921d4711fb4ab1648eabd735f8c2b11e66167e', '164.82.30.22', 1658427330, '__ci_last_regenerate|i:1658427330;'),
('f2f23f3316b94451926b142f1ce5ed83eb994e99', '185.202.220.39', 1658254771, '__ci_last_regenerate|i:1658254759;'),
('f2f2dba3bad718f9f1798830cf94703770ec6e5f', '173.252.83.13', 1658750798, '__ci_last_regenerate|i:1658750798;'),
('f33s0sv2sls47h41icf2h73sq5kvqq78', '::1', 1660556516, '__ci_last_regenerate|i:1660556516;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f387ed22d132610630d366ad773e16a60a32053a', '175.107.203.163', 1664538587, '__ci_last_regenerate|i:1664538587;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f43913d170b9b1a13002cbbc5794d83022dd15ba', '124.29.235.202', 1657206398, '__ci_last_regenerate|i:1657206225;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('f45563189b2ed322465f3de42c18d817c8749917', '175.107.203.163', 1662383369, '__ci_last_regenerate|i:1662383290;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f4aa496dd7ced4b09efa390afb353be71085e30f', '101.53.248.38', 1657201715, '__ci_last_regenerate|i:1657201715;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('f4f7b545fac6b87747ed86ddb1b9a4ea6d4061bc', '221.132.115.66', 1657818091, '__ci_last_regenerate|i:1657818091;'),
('f532e407616ef8a103de5c5b247956c64861828e', '32.142.117.138', 1658360718, '__ci_last_regenerate|i:1658360718;'),
('f541db1fe9b9dc87f3d18520355f5ec7444c33cb', '101.53.248.38', 1655498656, '__ci_last_regenerate|i:1655498656;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f5b704fddfbd4c47f06f9234de19cb516e4cd34b', '69.63.189.116', 1658778325, '__ci_last_regenerate|i:1658778325;'),
('f5c7cq5f7sf717re8r8fll67o5ptitra', '::1', 1655470800, '__ci_last_regenerate|i:1655470800;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('f5f21584690a59a633805f63a932d8622bbb8331', '221.132.115.66', 1663671532, '__ci_last_regenerate|i:1663671532;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";error|s:41:\"You are not allowed to visit this module.\";__ci_vars|a:1:{s:5:\"error\";s:3:\"new\";}'),
('f62he19ksqdejgmi9mlp1ics9vim6mcb', '::1', 1656610627, '__ci_last_regenerate|i:1656610627;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f6d8f62d01a0c486627f5fba803e461802a795e7', '172.58.184.81', 1658262396, '__ci_last_regenerate|i:1658262396;'),
('f72fc65fa62ab6802815f0757d6e2a56310badd6', '172.58.207.111', 1658529323, '__ci_last_regenerate|i:1658529323;'),
('f7602f5ec9f716f7d30cf665a70c2f396dde4b88', '66.249.88.57', 1658254833, '__ci_last_regenerate|i:1658254833;'),
('f7e2f2567095d3aa2ee05b7f17b12c35e8314638', '101.53.248.38', 1655498800, '__ci_last_regenerate|i:1655498656;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f8569e1a0125b03f74fd1a32f22eed5aba890f77', '66.249.75.142', 1658446553, '__ci_last_regenerate|i:1658446553;'),
('f8fb1c1884fffe314fb6285478d612d3062eb1b8', '101.53.248.38', 1655827181, '__ci_last_regenerate|i:1655827181;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('f93f8f639ec8f521ca429499e44688e38bc27519', '17.121.114.184', 1658428284, '__ci_last_regenerate|i:1658428284;'),
('f96613b98c67c0c5c0f3211d40b5569fa39a52ca', '124.29.235.202', 1655744923, '__ci_last_regenerate|i:1655744923;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('f979bdfe1947882fdbeeda5344d5201f5a3a7c24', '124.29.235.202', 1657203255, '__ci_last_regenerate|i:1657203255;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('f97kk7vp8c7mja8ptec5gs3gq8tcuhma', '::1', 1656688218, '__ci_last_regenerate|i:1656688218;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f9ba371a93088fa1301a62b3790b327f6c6ab80e', '124.29.235.202', 1658256763, '__ci_last_regenerate|i:1658256763;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('f9e8d423bee98df6e066d438430d5b6681750be4', '70.40.78.63', 1658261328, '__ci_last_regenerate|i:1658261328;'),
('f9ef4f60c1536ba5f3bf295323f617fc40cb161d', '124.29.235.202', 1657284585, '__ci_last_regenerate|i:1657284585;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('f9t2gapg5i44bbscms1n3nosnlnq5697', '::1', 1658847302, '__ci_last_regenerate|i:1658847302;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('fa1915a44eda3bf437af848d8e351a827a2ce5d1', '85.10.202.243', 1658258489, '__ci_last_regenerate|i:1658258489;'),
('fa2c215b417c0e367e30a16c48f250c0e9ef440e', '166.182.251.2', 1658637684, '__ci_last_regenerate|i:1658637684;'),
('fa31d5ff0b0351cdb9282dadcd9e765ea72e82db', '97.100.18.164', 1658439503, '__ci_last_regenerate|i:1658439503;'),
('fa4ddf133327dd254b4bed2fa1066ff396338aa7', '185.202.220.39', 1658244748, '__ci_last_regenerate|i:1658244748;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('fa697266778c9c26f045ac8e4415fc78ccab3fa3', '66.249.83.77', 1658764896, '__ci_last_regenerate|i:1658764896;'),
('fb289cda5bbbcdadc57d73b81fbc6a6baeeaf630', '66.102.7.191', 1658254837, '__ci_last_regenerate|i:1658254837;'),
('fb299998a2556a74c84322d52a10e3aaf7b24860', '164.82.30.22', 1658427330, '__ci_last_regenerate|i:1658427330;'),
('fb382e1eb69a8de1b661880a99608448d51930c4', '185.202.220.39', 1658242428, '__ci_last_regenerate|i:1658242428;'),
('fb77a028187807abf2956c2850dc5cedfc44e686', '172.58.157.126', 1658494991, '__ci_last_regenerate|i:1658494991;'),
('fb7b4ec32a79c1fe854e07eff7090f6e2000931a', '174.240.252.103', 1658625823, '__ci_last_regenerate|i:1658625823;'),
('fbb1ac2dbba909f1ca3bd1ace33832d46a65bcd2', '172.58.205.77', 1658619786, '__ci_last_regenerate|i:1658619488;'),
('fbc06c54923d753e8dc6e1b08aaf7a0d0cb5fafa', '175.107.203.163', 1662448990, '__ci_last_regenerate|i:1662448990;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('fc80ac4d992ea73ab8aa1d28f6a7e63a40a0ee10', '68.100.146.119', 1658706472, '__ci_last_regenerate|i:1658706472;'),
('fd1228375a5d0264fe7219168517814e11db7591', '24.211.162.101', 1658672297, '__ci_last_regenerate|i:1658672297;'),
('fda38fa0e1f6cde1dc005c6362983f67b25a3447', '124.29.235.202', 1655503473, '__ci_last_regenerate|i:1655503473;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('fdd2f45b44ed87c1fc0fa2d32a7ecb54960a90ce', '66.220.149.1', 1658778326, '__ci_last_regenerate|i:1658778326;'),
('fe424346fd64c5467423f1e510fae0c402294a86', '172.58.228.13', 1658288548, '__ci_last_regenerate|i:1658288548;'),
('fea2d606251cc556b391a5fcef0207734734b187', '174.110.88.56', 1658778239, '__ci_last_regenerate|i:1658778166;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('fec0b48ee88b4afc99612da38ae9bca217dc77a9', '124.29.235.202', 1657194183, '__ci_last_regenerate|i:1657194183;'),
('ff426fc142d9ea0231012f6f32fd40ed5fa37799', '124.29.235.202', 1657204613, '__ci_last_regenerate|i:1657204613;cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:6:\"Hoodie\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\";s:5:\"rowid\";s:32:\"eccbc87e4b5ce2fe28308fd9f2a7baf3\";s:8:\"subtotal\";d:12;}}'),
('ff6360b74e0f8fc31a5ffd4298e966c7eca0537c', '166.205.147.1', 1658410757, '__ci_last_regenerate|i:1658410757;'),
('ffdfca79e8989943f042e4b2ef115d4e8deb5b6b', '17.121.115.100', 1658594213, '__ci_last_regenerate|i:1658594213;'),
('fftg6gt2lj9q0349okfdiljedck2s66j', '::1', 1655471469, '__ci_last_regenerate|i:1655471469;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('firqidg503okusts4tg9mov6s4eclnhv', '::1', 1656678378, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656678378;'),
('fll5t7oqqvtbale7e1e4d3342epv95o4', '::1', 1660555400, '__ci_last_regenerate|i:1660555400;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('fqvoi5ojnp6k08hpjeua5vq3g9rln1l0', '::1', 1658847929, '__ci_last_regenerate|i:1658847929;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('fta9a9vsaoh6t3oaahnrcd1mfmdoa964', '::1', 1655491169, '__ci_last_regenerate|i:1655491169;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('fvadffnua2a5rls1tqpcf6mbhr2u7hok', '::1', 1659096924, '__ci_last_regenerate|i:1659096924;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";customer_id|s:2:\"44\";'),
('g1eeiajr2oa1asju1cf4c9pocvi4b126', '::1', 1660556208, '__ci_last_regenerate|i:1660556208;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('g4o6hueq29gotqtn1hig4mm2g5jteidg', '::1', 1660587338, '__ci_last_regenerate|i:1660587153;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('g5kbvjgakfvt3k74sqdc7m4suqt3vijk', '::1', 1656621562, '__ci_last_regenerate|i:1656621562;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('g84rc6laiiu9apshaemu2plr1779dq8o', '::1', 1656623575, '__ci_last_regenerate|i:1656623575;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('gm9fsrnet9j108fhjmdvj7uu3kjc2srk', '::1', 1656623117, '__ci_last_regenerate|i:1656623117;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('godjgjfos3t2s0ji2dtf5iaql9i8lbmd', '::1', 1656615065, '__ci_last_regenerate|i:1656615065;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('h69i33i48itip03gpdb8cem96cps3k6a', '::1', 1656604733, '__ci_last_regenerate|i:1656604733;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('h6ke3ue5j9apia53epqnr3d9q2ats67t', '::1', 1659093957, '__ci_last_regenerate|i:1659093957;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|s:9:\"user1.png\";customer_id|s:2:\"44\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('he8c4e2r5hgkfvnpvihjihub51ets47l', '::1', 1656611633, '__ci_last_regenerate|i:1656611633;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('hja9q2a0j6p7vq7t8s6gmf7cu1962sm8', '::1', 1656678042, '__ci_last_regenerate|i:1656678042;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('hn3fq5lr9umm7gsb5vfu9nmsvccodin7', '::1', 1656614760, '__ci_last_regenerate|i:1656614760;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('hquiqmcdfl9a92d3tc1e8otio4jq4shd', '::1', 1656609646, '__ci_last_regenerate|i:1656609646;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('hsp6453eilioohdpds21l5ljt66jbtrh', '::1', 1659091050, '__ci_last_regenerate|i:1659091050;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('i0g29btviflqtrk1ckjen2m044c2n3fn', '::1', 1659089133, '__ci_last_regenerate|i:1659089133;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('i1e5uf4k2ui4f90qf3fvh45b4brc14s2', '::1', 1660554413, '__ci_last_regenerate|i:1660554413;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('id8ipdmngvm446j9bobpffvu5r6n2n77', '::1', 1659094607, '__ci_last_regenerate|i:1659094607;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|s:9:\"user1.png\";customer_id|s:2:\"44\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ihs6pa3h3dhsioin1j9lv7095oq60kcs', '::1', 1656607746, '__ci_last_regenerate|i:1656607746;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('inp9f9mkeqk5flm8q6jr0hdmt7ct48mr', '::1', 1656616067, '__ci_last_regenerate|i:1656616067;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ipi11353jep7ql58vjgtqkubqv1odfga', '::1', 1655488764, '__ci_last_regenerate|i:1655488764;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('isi7fnm1i28891k4ailbhpdauosna5au', '::1', 1658920477, '__ci_last_regenerate|i:1658920477;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ivmq897e2qffngsvjq3clqqje77sg4d0', '::1', 1660548008, '__ci_last_regenerate|i:1660548008;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('japar8jqsj5g2uigvks1u5aavlmlk81h', '::1', 1660548420, '__ci_last_regenerate|i:1660548420;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('jinl9rqd1n0roijgd74jsicrssb02ecp', '::1', 1656619359, '__ci_last_regenerate|i:1656619359;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('jmk14fk4ttbvmjfhaa15f17v63nhri1m', '::1', 1658925593, '__ci_last_regenerate|i:1658925593;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('jmm9fpl3p6vvoo4ovhe3r5t5ss6tnjeu', '::1', 1660563538, '__ci_last_regenerate|i:1660563537;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('jp0sa590e2fklash24527oq51bi2rm4k', '::1', 1656685583, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656685583;'),
('k50sdt5gpa4nurk2nsdmsvrr8up4vmcn', '::1', 1659086696, '__ci_last_regenerate|i:1659086696;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('kbgg1r21b8nqesibsneeb2m0fm973fmm', '::1', 1659092646, '__ci_last_regenerate|i:1659092646;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('kji4jk48e8iledgf8oiccr6808pdsbes', '::1', 1655481900, '__ci_last_regenerate|i:1655481900;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('koftp4kjls3q341qprdl04t7htnlhrhc', '::1', 1655483361, '__ci_last_regenerate|i:1655483361;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ks8ek5iboq5d0vis8uvr9pvsos1pk7nh', '::1', 1656675040, '__ci_last_regenerate|i:1656675040;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ktb680t2af7r9e8kpn8gfgak90kfe795', '::1', 1658916848, '__ci_last_regenerate|i:1658916848;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('kub41kdvdte605oishl0icd1dqb14i2i', '::1', 1656687369, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656687369;'),
('kuhr9skqoert29102adsoe32b83afbbq', '::1', 1655470188, '__ci_last_regenerate|i:1655470188;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('kvdsd0btqsj6drr3lceveqdjhgh3mnr7', '::1', 1656688740, '__ci_last_regenerate|i:1656688705;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('l2s5gc4cft5s5b8t1v84r8ajlifc10tn', '::1', 1656605536, '__ci_last_regenerate|i:1656605536;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('lhodqc4lgdnfb7vnerajpdj6a45igj6t', '::1', 1660562706, '__ci_last_regenerate|i:1660562706;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ln1qv4p4lt8dnqiibfqimba1po0vnv1m', '::1', 1660546341, '__ci_last_regenerate|i:1660546341;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('lpubpri0101kp4j90o1ko2435fomoco1', '::1', 1660549764, '__ci_last_regenerate|i:1660549764;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('lsta9pcbii966f60ifb84d7pu91msl24', '::1', 1656600193, '__ci_last_regenerate|i:1656600193;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ltrgv3ceofdgkst8rm22l86og9n081ph', '::1', 1656609965, '__ci_last_regenerate|i:1656609965;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('m1v29rbqnvla71f4kq9hcbh7b62q6fke', '::1', 1655480329, '__ci_last_regenerate|i:1655480329;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('m422gck4p2koks7is46aof47jcuni949', '::1', 1655484341, '__ci_last_regenerate|i:1655484341;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";cart_contents|a:3:{s:10:\"cart_total\";d:12;s:11:\"total_items\";d:1;s:32:\"c81e728d9d4c2f636f067f89cc14862c\";a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:3:\"Cap\";s:5:\"price\";d:12;s:3:\"qty\";d:1;s:5:\"image\";s:50:\"26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\";s:5:\"rowid\";s:32:\"c81e728d9d4c2f636f067f89cc14862c\";s:8:\"subtotal\";d:12;}}user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('mbrc00kn3gekjg49eua0jt0lqu0qs0gq', '::1', 1658851293, '__ci_last_regenerate|i:1658851293;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('mkpr4pck4orlqkj05h9be4ogg68dsut9', '::1', 1659333351, '__ci_last_regenerate|i:1659333348;'),
('mmt3frof48t8qscs0al6gfviguctt2g3', '::1', 1656623888, '__ci_last_regenerate|i:1656623888;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('mp3cm8hpjjrquhpfp6s044kgp436otdb', '::1', 1658987881, '__ci_last_regenerate|i:1658987878;'),
('mueafu27kua8ca6h8s4k0ke40qh2m03p', '::1', 1659096146, '__ci_last_regenerate|i:1659096146;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";customer_id|s:2:\"44\";'),
('mukkduko9p03to25pjhv2ibslksefs54', '::1', 1660557995, '__ci_last_regenerate|i:1660557995;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('n2pg9go827onj7anmttr0inub3qgavd8', '::1', 1658923311, '__ci_last_regenerate|i:1658923311;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('n5hl7rlg5aa57cn8uil282ddhg7tibgc', '::1', 1655490814, '__ci_last_regenerate|i:1655490814;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('nkanr2gaig0pli5if39i154rdjjc3b26', '::1', 1658922989, '__ci_last_regenerate|i:1658922989;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('nobqqd316imeldqgg48r0gmkaes50scb', '::1', 1655471167, '__ci_last_regenerate|i:1655471167;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('nrmg9f8lrhvvjpq872b4ikni08t5ogj2', '::1', 1659089490, '__ci_last_regenerate|i:1659089490;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('ns897oad14erm184th4rvofcaputvm7s', '::1', 1655491792, '__ci_last_regenerate|i:1655491792;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|N;user_id|s:1:\"1\";user_role|s:1:\"1\";customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";customer_id|s:1:\"2\";'),
('nti9bc9dnhn4k0lfc5i5583bjp8qt63o', '::1', 1659088027, '__ci_last_regenerate|i:1659088027;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('nv6pob1b83lc69tvutaj9d5a2nh3v5dd', '::1', 1655477801, '__ci_last_regenerate|i:1655477801;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('omkg54n9haihioit97lulmtv44tdmo60', '::1', 1656616398, '__ci_last_regenerate|i:1656616398;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ov9cdee8o9d41of8i3i790dej65utt6h', '::1', 1658922150, '__ci_last_regenerate|i:1658922150;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('p6qsesfb04rb48j6smr89320kc3a3vbo', '::1', 1660558706, '__ci_last_regenerate|i:1660558706;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('pa2b81h9p3dj306b7c56r238l5naf012', '::1', 1660669261, '__ci_last_regenerate|i:1660669261;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('pcvh9ll8a3v51okk9iilh1huac8u2e61', '::1', 1660553987, '__ci_last_regenerate|i:1660553987;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('pfq6avts7vkuod9hmjlahhnn365g5tgp', '::1', 1656622810, '__ci_last_regenerate|i:1656622810;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('pjd6f75t0drgd2qano089sv184e2bpun', '::1', 1658926874, '__ci_last_regenerate|i:1658926796;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('pqd0kt4gn6ca13acv9ae3n6eesi45mdh', '::1', 1660555719, '__ci_last_regenerate|i:1660555719;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('psff8iisrqvu757im8cg3bnfl4ppusbm', '::1', 1659093005, '__ci_last_regenerate|i:1659093005;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('psumtlq1tbu2uodj5hbehmj98d7b63n0', '::1', 1656620131, '__ci_last_regenerate|i:1656620131;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ptiodjq592uqkd16pjemk2csbf14krt0', '::1', 1656688129, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656688129;'),
('pv1nhcjstgm9e1s52u372mqr1f4bb7t2', '::1', 1660550957, '__ci_last_regenerate|i:1660550957;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('q354foele2fthemtod7tm5u8lgdc05d3', '::1', 1660549026, '__ci_last_regenerate|i:1660549026;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('q4bdnqtfb5bc8mn0ems6p36fr0b85534', '::1', 1655467121, '__ci_last_regenerate|i:1655467121;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('q54bqehh51nikesp34752vvip1bcpj52', '::1', 1655472961, '__ci_last_regenerate|i:1655472961;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('qdnaub4cri513q8p02cam4fre4u6fvle', '::1', 1658923980, '__ci_last_regenerate|i:1658923980;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('qf0ebgv6i5dm5f53ptnj8fbu3r43fsu8', '::1', 1656687791, '__ci_last_regenerate|i:1656687791;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('qtsbk7pp4ab6jqskmjfj6kl80in4cgsh', '::1', 1656677734, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656677734;'),
('r0oe27bpnie2u4lqongg9a7m328popoo', '::1', 1656622018, '__ci_last_regenerate|i:1656622018;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('r5s4ml4csv8o1cl78sn4vmvvvgpt119l', '::1', 1656619804, '__ci_last_regenerate|i:1656619804;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('r8enl5e6nvlkh119qa5nku0ih0lq27tt', '::1', 1656608336, '__ci_last_regenerate|i:1656608336;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('rjfe7vb84h1aeru5u4cmt4pcge81mrii', '::1', 1655467927, '__ci_last_regenerate|i:1655467927;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('rlpge0va0tdk0rk8lc8rf08i3qqg7upl', '::1', 1658925920, '__ci_last_regenerate|i:1658925920;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('rogsuvn44ls2mc446pbrgkko86pkpapf', '::1', 1656674012, '__ci_last_regenerate|i:1656674012;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:21:\"Updated Successfully.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),
('rqrka3f6e3sgsurmt7tj3okkk2o3fiar', '::1', 1656610934, '__ci_last_regenerate|i:1656610934;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('s3meg5cs9lm9k112cliauqd518lb65gm', '::1', 1659087048, '__ci_last_regenerate|i:1659087048;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('s3udofovrp9t5sr8sj2pvmtsc3lqkq7t', '::1', 1660551568, '__ci_last_regenerate|i:1660551568;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('s4gm9qsa1kdrvm2fgi84dndpni43o696', '::1', 1656611313, '__ci_last_regenerate|i:1656611313;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|s:9:\"user1.png\";customer_id|s:1:\"2\";user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('scmle8i0v9lsjtvgld5q12meo9fen1l2', '::1', 1655473585, '__ci_last_regenerate|i:1655473585;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('sdjvlsc7dp6urcecvrc58v6brqo94039', '::1', 1655478103, '__ci_last_regenerate|i:1655478103;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('skn2at26dvqjkpsv7ead9sdmng3mt1kp', '::1', 1658915054, '__ci_last_regenerate|i:1658915033;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('sn6qdtcj9dsqdabcdud8qs1p0q5q2khd', '::1', 1656688705, '__ci_last_regenerate|i:1656688705;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('t1gk33b384h72g9l9gvmdakufh65hte1', '::1', 1656687785, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656687785;'),
('t1t9kf78j5a12bfpspqice3q7e7jugq4', '::1', 1655466813, '__ci_last_regenerate|i:1655466813;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:7:\"Carter2\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('tcr8th52hps7qgeueahsleisb9f1u8f9', '::1', 1660668383, '__ci_last_regenerate|i:1660668383;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";success|s:18:\"Login Successfull.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),
('tjdfpdgu8easvot5j9b5g909u0864t83', '::1', 1656676524, 'customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";__ci_last_regenerate|i:1656676524;'),
('tjtttf7ov9p3rk2gkhicv4ths2khl8ev', '::1', 1658921498, '__ci_last_regenerate|i:1658921498;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('tmm25s9br6i353rkvb80sfj46fudehrp', '::1', 1659090415, '__ci_last_regenerate|i:1659090415;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";'),
('tmvvtrnusqe62ima5sc0l3ihb5l37cm1', '::1', 1658918812, '__ci_last_regenerate|i:1658918812;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('tpkl7hm7k565qk396jc362g6lin2m0h7', '::1', 1660541971, '__ci_last_regenerate|i:1660541909;'),
('u2b7qdmevm24kbv2ekf00urcm72i7k1v', '::1', 1660557636, '__ci_last_regenerate|i:1660557636;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('u31gnh8dc2fbrav5d7qv1fuple3nle66', '::1', 1660549400, '__ci_last_regenerate|i:1660549400;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('ue1o4ps4r9d1nl6i86m3glmg3ddhiroc', '::1', 1656676562, '__ci_last_regenerate|i:1656676562;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('uo5cj059nqqkt7ginpplfe9rpfs8gm5d', '::1', 1658921809, '__ci_last_regenerate|i:1658921809;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('uo8sglkv92565n394q448glc7eovt9ok', '::1', 1656599413, '__ci_last_regenerate|i:1656599413;customer_email|s:22:\"jason.carter@gmail.com\";customer_last_name|s:6:\"Carter\";customer_first_name|s:5:\"Jason\";user_image|N;customer_id|s:1:\"2\";'),
('utm2r46h5hibj59kpb21eeuhbg7q29o6', '::1', 1658921169, '__ci_last_regenerate|i:1658921169;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('v56r7lg0jveil1gtrpn59npq8lt9kj9i', '::1', 1659086348, '__ci_last_regenerate|i:1659086348;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('v8est8hvt5iuql2tfh2ia1hk7hcdd4lm', '::1', 1660669645, '__ci_last_regenerate|i:1660669645;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('vc87fqnk2b3pnd5avv41jfgbts4hu1vl', '::1', 1658924911, '__ci_last_regenerate|i:1658924911;user_email|s:20:\"masteradmin@demo.com\";user_name|s:12:\"Master Admin\";user_image|s:9:\"user1.png\";user_id|s:1:\"1\";user_role|s:1:\"1\";'),
('vpgttr7ono8i2978me7psigl1kl9rdse', '::1', 1659090114, '__ci_last_regenerate|i:1659090114;customer_email|s:14:\"Alex@gmail.com\";customer_name|s:4:\"Alex\";user_image|N;customer_id|s:2:\"44\";');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classes_id` int(11) NOT NULL,
  `classes_sort_order` int(11) DEFAULT NULL,
  `classes_title` varchar(300) DEFAULT NULL,
  `classes_batch` varchar(300) DEFAULT NULL,
  `classes_description` varchar(300) DEFAULT NULL,
  `classes_start_time` time DEFAULT NULL,
  `classes_end_time` time DEFAULT NULL,
  `classes_working_days` text,
  `classes_students` text,
  `classes_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `classes_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `classes_created_by` int(11) DEFAULT NULL,
  `classes_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classes_id`, `classes_sort_order`, `classes_title`, `classes_batch`, `classes_description`, `classes_start_time`, `classes_end_time`, `classes_working_days`, `classes_students`, `classes_created_at`, `classes_updated_at`, `classes_created_by`, `classes_status`) VALUES
(1, NULL, 'Class A', '1', 'Class A', '15:00:00', '15:03:00', '[\"1\",\"2\",\"5\"]', '[\"23\",\"48\"]', '2022-08-15 10:14:35', '2022-09-06 10:57:58', NULL, 'enable'),
(2, NULL, 'asas', '1', 'asas', '00:00:00', '00:23:23', 'Tuesday', '23', '2022-08-15 11:23:16', '2022-09-09 15:40:23', NULL, 'disable'),
(3, NULL, 'Class A', '1', 'Class B', '17:05:00', '20:05:00', '[\"1\",\"5\"]', '[\"22\"]', '2022-09-06 11:05:39', '2022-09-08 13:52:21', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `class_student`
--

CREATE TABLE `class_student` (
  `class_student_id` int(11) NOT NULL,
  `class_student_class_id` int(11) NOT NULL,
  `class_student_student_id` int(11) NOT NULL,
  `class_student_status` enum('enable','disable') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enable',
  `class_student_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_student`
--

INSERT INTO `class_student` (`class_student_id`, `class_student_class_id`, `class_student_student_id`, `class_student_status`, `class_student_created_at`) VALUES
(12, 1, 22, 'enable', '2022-09-06 11:05:14'),
(13, 1, 48, 'enable', '2022-09-06 11:05:14'),
(14, 3, 48, 'enable', '2022-09-06 11:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_us_id` int(11) NOT NULL,
  `contact_us_sort_order` int(11) DEFAULT NULL,
  `contact_us_heading` text,
  `contact_us_paragraph` text,
  `contact_us_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_us_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contact_us_created_by` int(11) DEFAULT NULL,
  `contact_us_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_us_id`, `contact_us_sort_order`, `contact_us_heading`, `contact_us_paragraph`, `contact_us_created_at`, `contact_us_updated_at`, `contact_us_created_by`, `contact_us_status`) VALUES
(1, NULL, 'Contact Us', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda nobis numquam, autem dolorem consectetur odit aliquam nam rerum consequatur architecto, libero corrupti vitae?', '2022-06-06 05:19:54', '2022-07-27 12:27:37', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_sort_order` int(11) DEFAULT NULL,
  `currency_name` varchar(300) DEFAULT NULL,
  `currency_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currency_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `currency_created_by` int(11) DEFAULT NULL,
  `currency_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_sort_order`, `currency_name`, `currency_created_at`, `currency_updated_at`, `currency_created_by`, `currency_status`) VALUES
(1, NULL, '$', '2022-06-02 06:27:55', '2022-06-03 06:11:00', NULL, 'enable'),
(2, NULL, 'EUR', '2022-06-02 06:28:03', '2022-06-02 06:28:03', NULL, 'enable'),
(3, NULL, 'PKR', '2022-06-02 06:28:06', '2022-06-17 20:12:16', NULL, 'disable'),
(4, NULL, 'AUD', '2022-06-02 06:28:18', '2022-06-02 06:28:18', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_sort_order` int(11) DEFAULT NULL,
  `event_title` varchar(300) DEFAULT NULL,
  `event_description` text,
  `event_date` varchar(300) DEFAULT NULL,
  `event_image` varchar(300) DEFAULT NULL,
  `event_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_created_by` int(11) DEFAULT NULL,
  `event_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_sort_order`, `event_title`, `event_description`, `event_date`, `event_image`, `event_created_at`, `event_updated_at`, `event_created_by`, `event_status`) VALUES
(1, NULL, 'OFF THE RAMPS', 'SHAYSIDE DRAGWAY WILL BE ELECTRIC WHEN SOME THE GRUDGE GAMES BRIGHTEST STARS AND FASTEST CARS ', '12-22-22', '99000-1-le-mans-2017-prev-620_0.jpg', '2022-07-01 14:32:33', '2022-07-20 03:00:09', NULL, 'enable'),
(2, NULL, '10 Best Motor Races You Need to See In Person', 'Every car guy has their bucket list of things they want to do that are car-related before they die. For some of us at Supercars.net, we want to hit up all of the best motorsports event in the world. There are many.\r\n\r\n\r\nBut there are only 10 we consider to be the pinnacle motorsport events, the top races that every car fanatic should see in their lifetime. With another epic 24 Hours of Le Mans just finished, the timing is right to get these down on paper (or online I guess) and let people know what we consider to be the Top 10 most prestigious motor races in the world.\r\n\r\n', '12-22-22', '847592-Le-Mans-2015-car-group-shot.jpg', '2022-07-01 14:34:44', '2022-07-01 14:34:44', NULL, 'enable'),
(3, NULL, 'The Most Famous Car Races in the World', 'From the World Series to Wimbledon, every sport has a prestigious event. You know, the event that determines the best of the best. In the sport of racing, it’s no different. Drivers from around the world compete in these events in order to win their career defining title.\r\n\r\nFrom NASCAR to Formula One, below are six of the most famous car races in the world.\r\n\r\n \r\n\r\n1. Monaco Grand Prix\r\nThe Formula One Monaco Grand Prix is held annually on the Circuit de Monaco since 1929. The race weaves around the small city streets of Monaco, which includes tight corners, elevation changes and tunnels. The international racing series, Formula One consists of drivers that must have cars that fit to yearly changing rules and is the most expensive form of racing in the world. Additionally, the Monaco Grand Prix is one of the most challenging courses on tour and happens during the last weekend of May.\r\n\r\n \r\n\r\n2. Indianapolis 500\r\nIndyCar is a form of American open wheel racing and according to Business Insider, is “arguably the fastest racing series in America.” Occurring during Memorial Day weekend, the inaugural race was held in 1911. This race consists of 200 laps counterclockwise around the Indianapolis Motor Speedway. Winners traditionally kiss the brick finish line, as the venus was one paved in all bricks, and also is presented with a bottle of milk. \r\n\r\n \r\n\r\n3. 24 Hours of Le Mans\r\nOften called the “Grand Prix of Endurance and Efficiency” the 24 Hours of Le Mans was first held in 1923. This, along with the Indy 500 and Monaco Grand Prix makes up the Triple Crown of Motorsport. The race is run on the Circuit de le Sarthe, which is a mix of specialized racing roads and closed public roads. The race is held in June and begins in the mid-afternoon and finishes the following day in the same hour the race started. The race is comprised of over 3,110 miles. Three drives are allowed to drive a competing vehicle, giving the drivers time to eat and rest. In order to keep the drivers safe, and due to its unique 24 hour competition, the rules and regulations have changed over the years.\r\n\r\n \r\n\r\n4. Daytona 500\r\nUnlike other sports, the Daytona 500 is NASCAR’s prestigious event and is the first race of the year in the NASCAR Sprint Cup Series.The inaugural Daytona 500 was held in 1959. Located in the birthplace of NASCAR–Daytona Beach, Florida–the 500 mile long race is held annually in late February. The Daytona 500 also carries the largest purse and highest television viewership. According to thepostgame.com, “The Daytona 500 is one of four ‘restrictor plate’ races on NASCAR’s calendar, given both safety and competitive concerns for the long track and its famous 31-degree banking in its four corners.” Richard Petty has the most wins, with 7 titles at Daytona.\r\n\r\n \r\n\r\n5. Bathurst 1000\r\nThis event is held annually in early October on the Mount Panorama Circuit in Bathurst, New South Wales, Australia. As the pinnacle of motorsport in Australia, this race began in 1960, moving to Mount Panorama in 1963. The race track is made up of public roads, but its elevation is a challenge for the drivers along with the sharp turns and tight roads. The V8 supercar race is now renamed Supercars Championship and is always a highly contested race.\r\n\r\n \r\n\r\n6. Rally Finland\r\nKnown as the Grand Prix of rallying, Rally Finland is a rally competition the is held in Central Finland and is the fastest event in the World Rally Championship. It was first held in 1951, but by the late 1950s had adapted to a rally format. Now it occurs during the July and August months, with modified road cars as opposed to off-road vehicles. The race is driven on smooth and wide gravel roads with big jumps and blind crests. This rally also attracts thousands of spectators.', '12-22-22', '99000-1-le-mans-2017-prev-620_01.jpg', '2022-07-01 14:34:53', '2022-07-01 15:03:33', NULL, 'enable'),
(4, NULL, '10 Best Motor Races You Need to See In Person', 'Every car guy has their bucket list of things they want to do that are car-related before they die. For some of us at Supercars.net, we want to hit up all of the best motorsports event in the world. There are many.\r\n\r\n\r\nBut there are only 10 we consider to be the pinnacle motorsport events, the top races that every car fanatic should see in their lifetime. With another epic 24 Hours of Le Mans just finished, the timing is right to get these down on paper (or online I guess) and let people know what we consider to be the Top 10 most prestigious motor races in the world.\r\n\r\n', '12-22-22', '847592-Le-Mans-2015-car-group-shot.jpg', '2022-07-01 14:35:02', '2022-07-01 14:35:02', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_sort_order` int(11) DEFAULT NULL,
  `faq_question` text,
  `faq_answer` text,
  `faq_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `faq_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `faq_created_by` int(11) DEFAULT NULL,
  `faq_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_sort_order`, `faq_question`, `faq_answer`, `faq_created_at`, `faq_updated_at`, `faq_created_by`, `faq_status`) VALUES
(1, NULL, '19460-settings_logo.png', 'test ', '2022-06-01 10:54:42', '2022-06-01 10:59:49', NULL, 'enable'),
(2, NULL, 'test', 'test', '2022-06-01 10:54:52', '2022-06-01 10:54:52', NULL, 'enable'),
(3, NULL, 'user.png', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis tortor eu elit laoreet euismod. Aliquam nec sem augue. Phasellus pharetra, nulla eu egestas vestibulum, felis odio consectetur massa, finibus placerat erat erat non purus. Suspendisse at vehicula sapien, id vulputate est. Proin pretium egestas dolor eget molestie. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam eu enim non velit scelerisque malesuada commodo in eros. Fusce interdum nec dolor nec luctus. Proin id rhoncus leo. Nulla id consequat urna. Integer blandit sit amet est quis maximus. Nullam consectetur blandit odio non bibendum. In condimentum, mauris ut sodales vehicula, nulla sem consectetur diam, nec suscipit dolor elit sed nulla. Nulla vehicula non mauris id elementum.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam consequat diam vitae dui volutpat cursus. Curabitur et elit sed purus facilisis pretium ut a enim. Quisque congue molestie magna, at laoreet sapien cursus ut. Phasellus quis enim bibendum, sollicitudin enim ut, hendrerit turpis. Aenean ullamcorper justo in cursus fermentum. Morbi orci nibh, blandit eu justo at, consectetur aliquet lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean porta mauris ut dolor faucibus, non vestibulum neque tristique. Integer vitae eros pulvinar, finibus quam quis, blandit leo. Curabitur commodo lectus non vestibulum ullamcorper. Nam ut metus aliquet, semper dui mollis, tristique mi. Curabitur quis quam vitae felis porttitor egestas. Integer massa ante, pellentesque sed dolor in, sagittis cursus dolor. Nulla facilisi.\r\n\r\nDonec et tellus sit amet sem efficitur viverra quis nec ex. Pellentesque ac placerat magna. Integer a est lobortis, euismod mi non, ullamcorper massa. Vestibulum ut orci et ligula viverra blandit. Donec ultricies, nunc id tincidunt euismod, sem nulla euismod ante, et feugiat erat mauris vel urna. Curabitur ultricies blandit congue. Morbi posuere auctor sollicitudin. Curabitur dignissim elit sapien, vitae viverra dolor sodales a. Proin vel tortor eu metus bibendum maximus eget eu ante. Aenean vestibulum posuere facilisis. Praesent a elementum lorem. Donec porta nunc augue, quis lacinia purus tristique in. Donec risus est, vulputate id posuere vitae, facilisis vel massa. Proin tincidunt volutpat nisi, vitae vehicula ante fringilla ut. Cras sollicitudin sapien eget volutpat vehicula. Donec id arcu vitae nisl euismod dignissim non sed leo.', '2022-06-01 12:18:05', '2022-06-01 12:18:05', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `footer_id` int(11) NOT NULL,
  `footer_sort_order` int(11) DEFAULT NULL,
  `footer_address` varchar(300) DEFAULT NULL,
  `footer_phone` varchar(300) DEFAULT NULL,
  `footer_email` varchar(300) DEFAULT NULL,
  `footer_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `footer_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `footer_created_by` int(11) DEFAULT NULL,
  `footer_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`footer_id`, `footer_sort_order`, `footer_address`, `footer_phone`, `footer_email`, `footer_created_at`, `footer_updated_at`, `footer_created_by`, `footer_status`) VALUES
(1, NULL, 'Design & Crafted by American Web Builders', '469-222-4483', 'info@abrahamcoachingandconsulting.com', '2022-06-02 08:11:44', '2022-07-26 15:14:47', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_sort_order` int(11) DEFAULT NULL,
  `gallery_title` varchar(300) DEFAULT NULL,
  `gallery_description` varchar(300) DEFAULT NULL,
  `gallery_image` varchar(300) DEFAULT NULL,
  `gallery_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gallery_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gallery_created_by` int(11) DEFAULT NULL,
  `gallery_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_sort_order`, `gallery_title`, `gallery_description`, `gallery_image`, `gallery_created_at`, `gallery_updated_at`, `gallery_created_by`, `gallery_status`) VALUES
(1, NULL, 'gallery image', 'gallery image', '15629-gallery-01.jpg', '2022-06-02 04:54:20', '2022-07-19 23:17:46', NULL, 'disable'),
(2, NULL, 'gallery image', 'gallery image', '14956-gallery-02.jpg', '2022-06-02 10:10:08', '2022-07-19 23:17:47', NULL, 'disable'),
(3, NULL, 'gallery image', 'gallery image', '16789-gallery-03.jpg', '2022-06-02 10:12:27', '2022-07-19 23:17:48', NULL, 'disable'),
(4, NULL, 'gallery image', 'gallery image', '17315-gallery-04.jpg', '2022-06-02 10:12:32', '2022-07-19 23:17:49', NULL, 'disable'),
(5, NULL, 'gallery image', 'gallery image', '19234-gallery-05.jpg', '2022-06-02 10:12:36', '2022-07-19 23:17:50', NULL, 'disable'),
(6, NULL, 'gallery image', 'gallery image', '11609-gallery-06.jpg', '2022-06-02 10:12:40', '2022-07-19 23:17:50', NULL, 'disable'),
(7, NULL, 'gallery image', 'gallery image', '19256-gallery-07.jpg', '2022-06-02 10:12:45', '2022-07-19 23:17:51', NULL, 'disable'),
(8, NULL, 'gallery image', 'gallery image', '17142-gallery-08.jpg', '2022-06-02 10:12:51', '2022-07-19 23:17:52', NULL, 'disable'),
(9, NULL, 'player1', 'player1', '26860-Mask_Group_2.png', '2022-07-19 23:18:35', '2022-08-15 07:03:45', NULL, 'enable'),
(10, NULL, 'player2', 'player2', '28171-Mask_Group_3.png', '2022-07-19 23:19:17', '2022-08-15 07:04:04', NULL, 'enable'),
(11, NULL, 'player3', 'player3', '22360-Mask_Group_4.png', '2022-07-19 23:19:44', '2022-08-15 07:04:26', NULL, 'enable'),
(12, NULL, 'player4', 'player4', '30435-Mask_Group_6.png', '2022-07-19 23:20:20', '2022-08-15 07:04:46', NULL, 'enable'),
(13, NULL, 'GRUDGING FOR CASH', 'FREE MONEY', '45298-holla_dollaz_6.jpg', '2022-07-19 23:20:55', '2022-08-15 07:05:00', NULL, 'disable'),
(14, NULL, 'GRUDGING FOR CASH', 'FREE MONEY', '73298-holla_dollaz_7.jpg', '2022-07-19 23:21:23', '2022-08-15 07:04:59', NULL, 'disable'),
(15, NULL, 'GRUDGING FOR CASH', 'FREE MONEY', '61692-holla_dollaz_8.jpg', '2022-07-19 23:21:50', '2022-08-15 07:04:57', NULL, 'disable'),
(16, NULL, 'CHAIRMAN OF THE BOARD 13', 'FREE MONEY', '357103-GFC_Chairmans_Photo_-_Week_13.jpg', '2022-07-19 23:23:01', '2022-08-15 07:04:57', NULL, 'disable'),
(17, NULL, 'CHAIRMAN OF THE BOARD 16', 'FREE MONEY', '335414-GFC_Chairmans_Photo_-_Week_16.jpg', '2022-07-19 23:28:02', '2022-08-15 07:04:54', NULL, 'disable'),
(18, NULL, 'CHAIRMAN OF THE BOARD 18', 'FREE MONEY', '341828-GFC_Chairmans_Photo_-_Week_18.jpg', '2022-07-19 23:28:24', '2022-08-15 07:04:50', NULL, 'disable'),
(19, NULL, 'player5', 'player5', '30435-Mask_Group_6.png', '2022-09-15 16:34:05', '2022-09-15 16:34:05', NULL, 'enable'),
(20, NULL, 'player6', 'player6', '28171-Mask_Group_3.png', '2022-09-30 07:45:59', '2022-09-30 07:45:59', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `header_navbar`
--

CREATE TABLE `header_navbar` (
  `header_navbar_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `header_navbar_text` varchar(300) DEFAULT NULL,
  `header_navbar_link` text,
  `header_navbar_column_1` text,
  `header_navbar_column_2` text,
  `header_navbar_order_id` int(11) NOT NULL,
  `header_navbar_parent_id` int(11) NOT NULL,
  `header_navbar_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `header_navbar_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `header_navbar_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header_navbar`
--

INSERT INTO `header_navbar` (`header_navbar_id`, `tenant_id`, `header_navbar_text`, `header_navbar_link`, `header_navbar_column_1`, `header_navbar_column_2`, `header_navbar_order_id`, `header_navbar_parent_id`, `header_navbar_created_at`, `header_navbar_updated_at`, `header_navbar_status`) VALUES
(1, 0, 'test', 'test', NULL, NULL, 0, 0, '2020-10-08 14:17:32', '2020-10-08 14:17:32', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE `homepage` (
  `homepage_id` int(11) NOT NULL,
  `homepage_sort_order` int(11) DEFAULT NULL,
  `section_2_heading_1` text,
  `section_2_para_1` text,
  `section_2_url_text_1` varchar(300) DEFAULT NULL,
  `section_2_url_text_color_1` varchar(300) DEFAULT NULL,
  `section_2_url_1` varchar(300) DEFAULT NULL,
  `section_2_img_1` varchar(300) DEFAULT NULL,
  `section_2_heading_2` text,
  `section_2_para_2` text,
  `section_2_url_text_2` varchar(300) DEFAULT NULL,
  `section_2_url_text_color_2` varchar(300) DEFAULT NULL,
  `section_2_url_2` varchar(300) DEFAULT NULL,
  `section_2_img_2` varchar(300) DEFAULT NULL,
  `section_2_heading_3` text,
  `section_2_para_3` text,
  `section_2_url_text_3` varchar(300) DEFAULT NULL,
  `section_2_url_text_color_3` varchar(300) DEFAULT NULL,
  `section_2_url_3` varchar(300) DEFAULT NULL,
  `section_2_img_3` varchar(300) DEFAULT NULL,
  `section_3_heading` text,
  `section_3_para` text,
  `section_3_button_text` varchar(300) DEFAULT NULL,
  `section_3_button_background_color` varchar(300) DEFAULT NULL,
  `section_3_background_image` varchar(300) DEFAULT NULL,
  `section_4_heading_1` text,
  `section_4_para_1` text,
  `section_5_para` text,
  `section_5_button_text` text,
  `section_5_button_color` varchar(300) DEFAULT NULL,
  `section_5_button_url` varchar(300) DEFAULT NULL,
  `section_5_img_3` varchar(300) DEFAULT NULL,
  `homepage_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `homepage_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `homepage_created_by` int(11) DEFAULT NULL,
  `homepage_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `section_3_backlground_image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`homepage_id`, `homepage_sort_order`, `section_2_heading_1`, `section_2_para_1`, `section_2_url_text_1`, `section_2_url_text_color_1`, `section_2_url_1`, `section_2_img_1`, `section_2_heading_2`, `section_2_para_2`, `section_2_url_text_2`, `section_2_url_text_color_2`, `section_2_url_2`, `section_2_img_2`, `section_2_heading_3`, `section_2_para_3`, `section_2_url_text_3`, `section_2_url_text_color_3`, `section_2_url_3`, `section_2_img_3`, `section_3_heading`, `section_3_para`, `section_3_button_text`, `section_3_button_background_color`, `section_3_background_image`, `section_4_heading_1`, `section_4_para_1`, `section_5_para`, `section_5_button_text`, `section_5_button_color`, `section_5_button_url`, `section_5_img_3`, `homepage_created_at`, `homepage_updated_at`, `homepage_created_by`, `homepage_status`, `section_3_backlground_image`) VALUES
(1, NULL, 'Mission', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus facilisis dui', 'Read More', 'repeating-linear-gradient(to right, #7baae1 0%, #3e71a7 100%) !important', '#', '318470-im12.png', 'Our Vision', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus facilisis dui', 'Read More', 'repeating-linear-gradient(to right, #7be1c6 0%, #12a081 100%) !important', '#', '346231-im22.png', 'Empower People', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus facilisis dui', 'Read More', 'repeating-linear-gradient(to right, #ec8a7d 0%, #d14e47 100%) !important', '#', '376269-im32.png', 'Schedule a Session', 'Duis faucibus massa diam, et ultrices massa egestas vel.', 'Book Appointment', 'transparent !important', NULL, 'What We Do', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus', 'Humans are good at so much more than just surviving. Join us, Lets do this! Learning to fly may be the best thing ever.', 'Book Appointment', 'transparent !important', '#', '609276-g-12.png', '2022-07-27 10:15:55', '2022-07-27 12:34:16', NULL, 'enable', '776079-round-42.png');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_form`
--

CREATE TABLE `inquiry_form` (
  `inquiry_form_id` int(11) NOT NULL,
  `inquiry_form_sort_order` int(11) DEFAULT NULL,
  `inquiry_form_name` varchar(300) DEFAULT NULL,
  `inquiry_form_email` varchar(300) DEFAULT NULL,
  `inquiry_form_subject` varchar(300) DEFAULT NULL,
  `inquiry_form_phone` varchar(300) DEFAULT NULL,
  `inquiry_form_message` varchar(1000) DEFAULT NULL,
  `inquiry_form_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inquiry_form_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inquiry_form_created_by` int(11) DEFAULT NULL,
  `inquiry_form_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inquiry_form`
--

INSERT INTO `inquiry_form` (`inquiry_form_id`, `inquiry_form_sort_order`, `inquiry_form_name`, `inquiry_form_email`, `inquiry_form_subject`, `inquiry_form_phone`, `inquiry_form_message`, `inquiry_form_created_at`, `inquiry_form_updated_at`, `inquiry_form_created_by`, `inquiry_form_status`) VALUES
(1, NULL, 'hassan', 'hassan@gmail.com', 'Website', NULL, 'website', '2022-06-06 07:18:15', '2022-06-17 18:27:58', NULL, 'disable'),
(2, NULL, 'hassan', 'hassan@gmail.com2', 'Website', NULL, 'website', '2022-06-06 07:18:31', '2022-06-17 18:27:59', NULL, 'disable'),
(3, NULL, 'John', 'test@test.com', 'Website', NULL, 'test', '2022-06-06 07:19:54', '2022-06-17 20:43:48', NULL, 'enable'),
(4, NULL, 'John', 'john@gmail.com', 'test', NULL, 'testing', '2022-07-27 11:57:22', '2022-07-27 11:57:22', NULL, 'enable'),
(5, NULL, 'test', 'test@gmail.com', 'test@gmail.com', NULL, 'test@gmail.com', '2022-07-27 12:03:29', '2022-07-27 12:03:29', NULL, 'enable'),
(6, NULL, 'new', 'masteradmin@demo.com', 'test', 'test', 'test', '2022-07-27 12:06:53', '2022-07-27 12:06:53', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `lock_in_form`
--

CREATE TABLE `lock_in_form` (
  `lock_in_form_id` int(11) NOT NULL,
  `lock_in_form_sort_order` int(11) DEFAULT NULL,
  `customer_id` varchar(300) DEFAULT NULL,
  `lock_in_form_event_name` varchar(300) DEFAULT NULL,
  `lock_in_form_car1_car_name` varchar(300) DEFAULT NULL,
  `lock_in_form_car2_car_name` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_advance_lock_in` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_event` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_travel_hours` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_swag` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_negotiating` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_win` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_lose` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_recieved_dp` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_paid_dp` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_recieved_punkout` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_paid_punkout` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_no_show` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_advance_lock_in` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_event` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_travel_hours` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_swag` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_negotiating` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_win` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_lose` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_recieved_dp` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_paid_dp` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_recieved_punkout` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_paid_punkout` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_no_show` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car1_stud_up` varchar(300) DEFAULT NULL,
  `lock_in_form_points_car2_stud_up` varchar(300) DEFAULT NULL,
  `lock_in_form_winner` varchar(300) DEFAULT NULL,
  `lock_in_form_current_status` varchar(25) NOT NULL DEFAULT 'pending',
  `lock_in_form_event_date` varchar(300) DEFAULT NULL,
  `lock_in_form_lock_in_date` varchar(300) DEFAULT NULL,
  `lock_in_form_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lock_in_form_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lock_in_form_created_by` int(11) DEFAULT NULL,
  `lock_in_form_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lock_in_form`
--

INSERT INTO `lock_in_form` (`lock_in_form_id`, `lock_in_form_sort_order`, `customer_id`, `lock_in_form_event_name`, `lock_in_form_car1_car_name`, `lock_in_form_car2_car_name`, `lock_in_form_points_car1_advance_lock_in`, `lock_in_form_points_car1_event`, `lock_in_form_points_car1_travel_hours`, `lock_in_form_points_car1_swag`, `lock_in_form_points_car1_negotiating`, `lock_in_form_points_car1_win`, `lock_in_form_points_car1_lose`, `lock_in_form_points_car1_recieved_dp`, `lock_in_form_points_car1_paid_dp`, `lock_in_form_points_car1_recieved_punkout`, `lock_in_form_points_car1_paid_punkout`, `lock_in_form_points_car1_no_show`, `lock_in_form_points_car2_advance_lock_in`, `lock_in_form_points_car2_event`, `lock_in_form_points_car2_travel_hours`, `lock_in_form_points_car2_swag`, `lock_in_form_points_car2_negotiating`, `lock_in_form_points_car2_win`, `lock_in_form_points_car2_lose`, `lock_in_form_points_car2_recieved_dp`, `lock_in_form_points_car2_paid_dp`, `lock_in_form_points_car2_recieved_punkout`, `lock_in_form_points_car2_paid_punkout`, `lock_in_form_points_car2_no_show`, `lock_in_form_points_car1_stud_up`, `lock_in_form_points_car2_stud_up`, `lock_in_form_winner`, `lock_in_form_current_status`, `lock_in_form_event_date`, `lock_in_form_lock_in_date`, `lock_in_form_created_at`, `lock_in_form_updated_at`, `lock_in_form_created_by`, `lock_in_form_status`) VALUES
(1, NULL, '2', '1st Cars Down Track', 'Hulk', 'Spiderman', '1200', '500', '900', '500', '300', '0', '100', '200', '0', '500', '0', '-10000', '1200', '500', '900', '700', '300', '300', '0', '0', '-400', '0', '-800', '', '100', NULL, 'car1', 'publish to leaderboard', '2022-08-25', '2022-06-30', '2022-06-30 20:25:12', '2022-07-01 15:07:39', NULL, 'enable'),
(4, NULL, '2', '1st Cars Down Track', 'Hulk', 'Thor', '700', '500', '500', '300', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', '500', '900', '400', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-07-21', '2022-06-30', '2022-06-30 20:55:47', '2022-06-30 21:07:38', NULL, 'disable'),
(5, NULL, '2', '1st Cars Down Track', 'Thor', 'Hulk', '1200', '500', '900', '500', '2200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', '500', '500', '500', '2200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-08-18', '2022-06-30', '2022-06-30 21:01:56', '2022-06-30 21:07:39', NULL, 'disable'),
(6, NULL, '2', '1st Cars Down Track', 'Thor', 'Hulk', '1200', '500', '900', '500', '2200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', '500', '500', '500', '1700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-08-18', '2022-06-30', '2022-06-30 21:07:08', '2022-06-30 21:07:40', NULL, 'disable'),
(7, NULL, '2', '1st Cars Down Track', 'Hulk', 'Thor', '700', '500', '700', '500', '2200', '', '100', '200', '-400', '500', '-800', '-10000', '700', '500', '500', '300', '2200', '300', '', '200', '-400', '500', '-800', '', '100', '', '', 'approved', '2022-07-29', '2022-07-01', '2022-07-01 15:10:13', '2022-07-04 15:32:35', NULL, 'enable'),
(8, NULL, '2', '1st Grudge Event', 'Predator', 'Suga', '1200', '400', '500', '500', '1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', '400', '900', '300', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-08-13', '2022-07-04', '2022-07-04 14:57:33', '2022-07-04 14:57:33', NULL, 'enable'),
(9, NULL, '2', '1st Grudge Event', 'Predator', 'Suga', '1200', '400', '500', '500', '1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', '400', '900', '300', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-08-13', '2022-07-04', '2022-07-04 14:58:26', '2022-07-04 14:58:26', NULL, 'enable'),
(10, NULL, '2', '', 'Predator', 'Suga', '0', '', '700', '500', '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', '300', '700', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-08-20', '', '2022-07-04 15:28:25', '2022-07-04 15:28:25', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `meeting_id` int(11) NOT NULL,
  `meeting_sort_order` int(11) DEFAULT NULL,
  `meeting_topic` varchar(300) DEFAULT NULL,
  `meeting_description` text,
  `meeting_duration` varchar(300) DEFAULT NULL,
  `meeting_password` varchar(300) DEFAULT NULL,
  `meeting_members` varchar(300) DEFAULT NULL,
  `meeting_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `meeting_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `meeting_created_by` int(11) DEFAULT NULL,
  `meeting_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `meeting_url` text,
  `meeting_zoom_id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`meeting_id`, `meeting_sort_order`, `meeting_topic`, `meeting_description`, `meeting_duration`, `meeting_password`, `meeting_members`, `meeting_created_at`, `meeting_updated_at`, `meeting_created_by`, `meeting_status`, `meeting_url`, `meeting_zoom_id`) VALUES
(1, NULL, 'New', 'new', '10', '12345', '44', '2022-07-29 09:11:24', '2022-07-29 11:56:45', NULL, 'enable', 'https://zoom.us/j/93572508631?pwd=cmJDMzJxZnpaVzdnQ3ZoOVZFdHA4QT09', '93572508631'),
(2, NULL, 'Custom team meeting', 'Custom team meeting', '20', '12345', '44', '2022-07-29 11:23:25', '2022-07-29 11:23:25', NULL, 'enable', 'https://zoom.us/j/97291621130?pwd=K0FlMUJsWDh4RHdsOWdYU0NrR1liZz09', '97291621130');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_sort_order` int(11) DEFAULT NULL,
  `news_title` text,
  `news_description` text,
  `news_image` varchar(300) DEFAULT NULL,
  `news_slug` varchar(300) DEFAULT NULL,
  `news_author_name` varchar(300) DEFAULT NULL,
  `news_publish` varchar(300) DEFAULT NULL,
  `news_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `news_created_by` int(11) DEFAULT NULL,
  `news_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_sort_order`, `news_title`, `news_description`, `news_image`, `news_slug`, `news_author_name`, `news_publish`, `news_created_at`, `news_updated_at`, `news_created_by`, `news_status`) VALUES
(1, NULL, 'FREE MONEY ON THE LINE FOR ALL NGRA MEMBERS', '<p><br></p><strong><span xss=removed><sup></sup><sup xss=removed>YOU\'VE ENTERED THE MONEY ZONE $$$$$ ALL YOU NEEED IS A MEMBERSHIP & A PHONE</sup></span><sup></sup></strong>', '644643-NGRA_WANTS_YOU_-_UPDATED.jpg', 'THE MONEY ZONE', '', 'true', '2022-06-01 13:11:33', '2022-07-19 22:45:51', NULL, 'enable'),
(2, NULL, 'THE GRUDGING FOR CASH CHALLENGE IS HEATING UP', 'The grudge boyz are battling it out every week in the hopes of claiming the Top Honor in the grudge game of earning the prestigious title ofhttps://www.facebook.com/SmackTalkNation/videos/604913827598596. THE BATTLE IS RAGING, BUT THERE IS HALF A SEASON TO GO, SO WE WILL SEE WHICH CREAM RISES TO THE top...!', '341828-GFC_Chairmans_Photo_-_Week_18.jpg', 'GFC CHALLENGE HEATS UP', '', 'true', '2022-06-01 13:13:17', '2022-07-19 22:57:12', NULL, 'enable'),
(3, NULL, 'EVERY MONDAY IS ANOTHER NGRA PAYDAY', '<p><img src=\"https://www.facebook.com/photo/?fbid=355117486759721&set=g.1185026955238891\" alt=\"\" xss=removed>Every Monday in 2022, NGRA will give away free money on its weekly Smack Talk Show hosted by Prostock Joe. There are many ways to Win Free Money from the NGRA, but the easiest ways are </p><p>1) <strong><span xss=removed>Racing </span></strong>$$$$$$ earn the most points Grudging For Cash each week *<strong><span xss=removed> $1,000</span></strong></p><p>2) <span xss=removed><strong>Recruiting </strong></span>$$$$$$ recruit the most new NGRA member each week * <strong><span xss=removed>$200</span></strong></p><p>3) <span xss=removed><strong>Responding </strong></span>$$$$$$ be the 1st caller to respond to the winning phrase \"Holla Dollaz Time\" *<span xss=removed><strong> $100</strong></span></p>', '92861-holla_dollaz_5.jpg', 'FREE MONEY IN THE NGRA MONEY ZONE', '', 'true', '2022-06-01 13:14:08', '2022-07-19 23:16:31', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `newsletter_sort_order` int(11) DEFAULT NULL,
  `newsletter_email` varchar(300) DEFAULT NULL,
  `newsletter_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `newsletter_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `newsletter_created_by` int(11) DEFAULT NULL,
  `newsletter_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `newsletter_sort_order`, `newsletter_email`, `newsletter_created_at`, `newsletter_updated_at`, `newsletter_created_by`, `newsletter_status`) VALUES
(1, NULL, 'test@gmail.com', '2022-06-03 06:25:32', '2022-06-03 06:25:32', NULL, 'enable'),
(2, NULL, 'test@gmail.com', '2022-06-03 06:41:35', '2022-06-03 06:41:35', NULL, 'enable'),
(3, NULL, 'test@gmail.com', '2022-06-03 06:43:09', '2022-06-03 06:43:09', NULL, 'enable'),
(4, NULL, 'test@gmail.com', '2022-06-03 06:43:25', '2022-06-03 06:43:25', NULL, 'enable'),
(5, NULL, 'Enter email address', '2022-06-06 05:51:17', '2022-06-06 05:51:17', NULL, 'enable'),
(6, NULL, 'Enter email address', '2022-06-06 05:52:15', '2022-06-06 05:52:15', NULL, 'enable'),
(7, NULL, 'Enter email address', '2022-06-06 05:52:49', '2022-06-06 05:52:49', NULL, 'enable'),
(8, NULL, 'test', '2022-06-06 07:20:20', '2022-06-06 07:20:20', NULL, 'enable'),
(9, NULL, 'test@gmail.com', '2022-06-06 07:32:41', '2022-06-06 07:32:41', NULL, 'enable'),
(10, NULL, 'test@gmail.com', '2022-06-06 07:32:48', '2022-06-06 07:32:48', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_sort_order` int(11) DEFAULT NULL,
  `Payment_invoice_no` varchar(300) DEFAULT NULL,
  `Payment_customer_id` varchar(300) DEFAULT NULL,
  `Payment_customer_amount` varchar(300) DEFAULT NULL,
  `Payment_customer_description` varchar(300) DEFAULT NULL,
  `Payment_type` varchar(300) DEFAULT NULL,
  `payment_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_created_by` int(11) DEFAULT NULL,
  `payment_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `payment_object` text,
  `subscription_name` varchar(500) DEFAULT NULL,
  `subscription_description` varchar(1000) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_sort_order`, `Payment_invoice_no`, `Payment_customer_id`, `Payment_customer_amount`, `Payment_customer_description`, `Payment_type`, `payment_created_at`, `payment_updated_at`, `payment_created_by`, `payment_status`, `payment_object`, `subscription_name`, `subscription_description`, `type_id`) VALUES
(1, NULL, 'pi_3LokTdLOY8hzG4LY1XnHl5hH', '47', '40', NULL, 'Subscription', '2022-10-03 14:58:22', '2022-10-03 14:58:22', NULL, 'enable', '{\"shipping\":null,\"lastPaymentError\":null,\"paymentMethodId\":\"pm_1LokTfLOY8hzG4LY0s5C9psv\",\"currency\":\"usd\",\"captureMethod\":\"Automatic\",\"status\":\"Succeeded\",\"description\":null,\"amount\":4000,\"confirmationMethod\":\"Automatic\",\"livemode\":false,\"clientSecret\":\"pi_3LokTdLOY8hzG4LY1XnHl5hH_secret_PUsEI9UCJuzG7xpLfnevEHFvD\",\"created\":\"1664787497000\",\"receiptEmail\":null,\"canceledAt\":\"0\",\"nextAction\":null,\"id\":\"pi_3LokTdLOY8hzG4LY1XnHl5hH\"}', 'Gold $50', 'We will set up all activities and manage the flow and training of the players while you can either wait and observe your student, our just drop them off with our fully trained staff.', 12),
(2, NULL, 'pi_3LokYCLOY8hzG4LY15UbKtRq', '47', '10', NULL, 'Product', '2022-10-03 15:03:05', '2022-10-03 15:03:05', NULL, 'enable', '{\"shipping\":null,\"lastPaymentError\":null,\"paymentMethodId\":\"pm_1LokYDLOY8hzG4LYxiFhB4vt\",\"currency\":\"usd\",\"captureMethod\":\"Automatic\",\"status\":\"Succeeded\",\"description\":null,\"amount\":1000,\"confirmationMethod\":\"Automatic\",\"livemode\":false,\"clientSecret\":\"pi_3LokYCLOY8hzG4LY15UbKtRq_secret_xcHVebSorYV3koa6dtBwkMZdr\",\"created\":\"1664787780000\",\"receiptEmail\":null,\"canceledAt\":\"0\",\"nextAction\":null,\"id\":\"pi_3LokYCLOY8hzG4LY15UbKtRq\"}', NULL, NULL, 19),
(3, NULL, 'pi_3LokZdLOY8hzG4LY0clzzeR6', '47', '10', NULL, 'Product', '2022-10-03 15:04:35', '2022-10-03 15:04:35', NULL, 'enable', '{\"shipping\":null,\"lastPaymentError\":null,\"paymentMethodId\":\"pm_1LokZfLOY8hzG4LY95X1OW4m\",\"currency\":\"usd\",\"captureMethod\":\"Automatic\",\"status\":\"Succeeded\",\"description\":null,\"amount\":1000,\"confirmationMethod\":\"Automatic\",\"livemode\":false,\"clientSecret\":\"pi_3LokZdLOY8hzG4LY0clzzeR6_secret_JxWyg51Xw94gxgBKtYxuNjgTY\",\"created\":\"1664787869000\",\"receiptEmail\":null,\"canceledAt\":\"0\",\"nextAction\":null,\"id\":\"pi_3LokZdLOY8hzG4LY0clzzeR6\"}', NULL, NULL, 19),
(4, NULL, 'pi_3LosBZLOY8hzG4LY1FgIeQXM', '56', '12', NULL, 'Product', '2022-10-03 23:12:15', '2022-10-03 23:12:15', NULL, 'enable', '{\"amount\":1200,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817129000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosBZLOY8hzG4LY1FgIeQXM_secret_ZCjm56rJbow4XPxlU1lfuuSMY\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosBbLOY8hzG4LYqxIYMWrj\",\"id\":\"pi_3LosBZLOY8hzG4LY1FgIeQXM\"}', NULL, NULL, 8),
(5, NULL, 'pi_3LosBaLOY8hzG4LY0IptKDLV', '56', '12', NULL, 'Product', '2022-10-03 23:12:15', '2022-10-03 23:12:15', NULL, 'enable', '{\"amount\":1200,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817130000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosBaLOY8hzG4LY0IptKDLV_secret_sflD3qluR3yhxVjIcDO3rEI9h\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosBbLOY8hzG4LYy6N2qVJg\",\"id\":\"pi_3LosBaLOY8hzG4LY0IptKDLV\"}', NULL, NULL, 8),
(6, NULL, 'pi_3LosBbLOY8hzG4LY1iw92Yyg', '56', '12', NULL, 'Product', '2022-10-03 23:12:15', '2022-10-03 23:12:15', NULL, 'enable', '{\"amount\":1200,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817131000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosBbLOY8hzG4LY1iw92Yyg_secret_yZxtZiGDNFd7ryrB5y5w0XYDK\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosBbLOY8hzG4LYrpDP2hJ8\",\"id\":\"pi_3LosBbLOY8hzG4LY1iw92Yyg\"}', NULL, NULL, 8),
(7, NULL, 'pi_3LosBhLOY8hzG4LY04Ym9t9r', '56', '12', NULL, 'Product', '2022-10-03 23:12:21', '2022-10-03 23:12:21', NULL, 'enable', '{\"amount\":1200,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817137000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosBhLOY8hzG4LY04Ym9t9r_secret_aTlJ0CM9wfRqFZnAGDj5mVLDe\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosBiLOY8hzG4LYBnXWcHu8\",\"id\":\"pi_3LosBhLOY8hzG4LY04Ym9t9r\"}', NULL, NULL, 8),
(8, NULL, 'pi_3LosCALOY8hzG4LY02whnAdT', '56', '12', NULL, 'Product', '2022-10-03 23:12:50', '2022-10-03 23:12:50', NULL, 'enable', '{\"amount\":1200,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817166000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosCALOY8hzG4LY02whnAdT_secret_5btfVkgh1FVNkmDLDIksEmI1y\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosCBLOY8hzG4LYoxQXJ47l\",\"id\":\"pi_3LosCALOY8hzG4LY02whnAdT\"}', NULL, NULL, 8),
(9, NULL, 'pi_3LosC9LOY8hzG4LY0SaaaQzB', '56', '12', NULL, 'Product', '2022-10-03 23:12:50', '2022-10-03 23:12:50', NULL, 'enable', '{\"amount\":1200,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817165000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosC9LOY8hzG4LY0SaaaQzB_secret_igyo0s9flg0j0Y7ExQvFe71VJ\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosCALOY8hzG4LYW94E21qE\",\"id\":\"pi_3LosC9LOY8hzG4LY0SaaaQzB\"}', NULL, NULL, 8),
(10, NULL, 'pi_3LosCpLOY8hzG4LY1sFXl5Jm', '56', '12', NULL, 'Product', '2022-10-03 23:13:31', '2022-10-03 23:13:31', NULL, 'enable', '{\"amount\":1200,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817207000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosCpLOY8hzG4LY1sFXl5Jm_secret_UK63rIDHZtk0sp9KwCnjrVPhT\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosCqLOY8hzG4LYudMmLMGv\",\"id\":\"pi_3LosCpLOY8hzG4LY1sFXl5Jm\"}', NULL, NULL, 8),
(11, NULL, 'pi_3LosDnLOY8hzG4LY0y384YIg', '56', '10', NULL, 'Product', '2022-10-03 23:14:31', '2022-10-03 23:14:31', NULL, 'enable', '{\"amount\":1000,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817267000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosDnLOY8hzG4LY0y384YIg_secret_h7Hb9NHTNnI6nMCFN51FI6oKQ\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosDoLOY8hzG4LYlejxvrlr\",\"id\":\"pi_3LosDnLOY8hzG4LY0y384YIg\"}', NULL, NULL, 10),
(12, NULL, 'pi_3LosEFLOY8hzG4LY1HxKjORa', '56', '40', NULL, 'Subscription', '2022-10-03 23:14:58', '2022-10-03 23:14:58', NULL, 'enable', '{\"amount\":4000,\"shipping\":null,\"lastPaymentError\":null,\"nextAction\":null,\"captureMethod\":\"Automatic\",\"created\":\"1664817295000\",\"description\":null,\"status\":\"Succeeded\",\"canceledAt\":\"0\",\"clientSecret\":\"pi_3LosEFLOY8hzG4LY1HxKjORa_secret_tKnClmaGLkJUY2lT2Dlg37INU\",\"confirmationMethod\":\"Automatic\",\"currency\":\"usd\",\"livemode\":false,\"receiptEmail\":null,\"paymentMethodId\":\"pm_1LosEFLOY8hzG4LYGQedYc5B\",\"id\":\"pi_3LosEFLOY8hzG4LY1HxKjORa\"}', 'Silver $40', 'We will set up all activities and manage the flow and training of the players while you can either wait and observe your student, our just drop them off with our fully trained staff.', 11),
(13, NULL, 'pi_3LosdfLOY8hzG4LY0f0h3yYt', '57', '10', NULL, 'Product', '2022-10-03 23:41:15', '2022-10-03 23:41:15', NULL, 'enable', '{\"shipping\":null,\"lastPaymentError\":null,\"paymentMethodId\":\"pm_1LosdgLOY8hzG4LY1jAGeMvt\",\"currency\":\"usd\",\"captureMethod\":\"Automatic\",\"status\":\"Succeeded\",\"description\":null,\"amount\":1000,\"confirmationMethod\":\"Automatic\",\"livemode\":false,\"clientSecret\":\"pi_3LosdfLOY8hzG4LY0f0h3yYt_secret_RqyvyikRacfvu4QErX1e1Gjdo\",\"created\":\"1664818871000\",\"receiptEmail\":null,\"canceledAt\":\"0\",\"nextAction\":null,\"id\":\"pi_3LosdfLOY8hzG4LY0f0h3yYt\"}', NULL, NULL, 19);

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `payment_detail_id` int(11) NOT NULL,
  `payment_detail_product_title` varchar(50) DEFAULT NULL,
  `payment_detail_product_duration` int(11) DEFAULT NULL,
  `payment_detail_product_duration_type` varchar(50) DEFAULT NULL,
  `payment_detail_product_price` float DEFAULT NULL,
  `payment_detail_product_image` text,
  `payment_id` int(11) DEFAULT NULL,
  `payment_detail_status` enum('enable','disable') DEFAULT 'enable',
  `rental_date_from` datetime DEFAULT NULL,
  `rental_date_to` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_detail`
--

INSERT INTO `payment_detail` (`payment_detail_id`, `payment_detail_product_title`, `payment_detail_product_duration`, `payment_detail_product_duration_type`, `payment_detail_product_price`, `payment_detail_product_image`, `payment_id`, `payment_detail_status`, `rental_date_from`, `rental_date_to`, `updated_at`, `created_at`) VALUES
(1, 'Football Camp', 1, 'Per hour', 10, '17045-Mask_Group_19.png', 24, 'enable', '2022-08-16 14:12:35', '2022-08-16 15:12:35', '2022-09-30 11:41:14', '2022-09-30 11:41:14'),
(2, 'Football Camp', 1, 'Per hour', 10, '17045-Mask_Group_19.png', 21, 'enable', '2022-08-16 14:12:35', '2022-08-16 15:12:35', '2022-09-30 11:41:14', '2022-09-30 11:41:14'),
(3, 'Baseball Camp', 2, 'Per hour', 10, '17055-Mask_Group_20.png', 22, 'enable', '2022-08-15 14:12:03', '2022-08-15 16:12:14', '2022-09-30 11:41:14', '2022-09-30 11:41:14'),
(4, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', NULL, 'enable', '2022-09-30 11:40:00', '2022-09-30 11:40:00', '2022-09-30 17:44:17', '2022-09-30 17:44:17'),
(5, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', NULL, 'enable', '2022-09-30 11:40:00', '2022-09-30 11:40:00', '2022-09-30 17:48:52', '2022-09-30 17:48:52'),
(6, 'Softball Camp', 2, 'Per Hour', 10, '244330-itwasonlyadreamfeb19.jpg', 110, 'enable', '2022-10-02 11:40:00', '2022-10-02 11:40:00', '2022-09-30 17:55:59', '2022-09-30 17:55:59'),
(7, 'Softball Camp', 2, 'Per Hour', 10, '13663-Mask_Group_21.png', 111, 'enable', '2022-10-03 07:50:00', '2022-10-03 07:50:00', '2022-10-03 14:02:48', '2022-10-03 14:02:48'),
(8, 'Softball Camp', 2, 'Per Hour', 10, '244330-itwasonlyadreamfeb19.jpg', 2, 'enable', '2022-10-03 09:02:00', '2022-10-03 09:02:00', '2022-10-03 15:03:05', '2022-10-03 15:03:05'),
(9, 'Softball Camp', 2, 'Per Hour', 10, '244330-itwasonlyadreamfeb19.jpg', 3, 'enable', '2022-10-04 09:02:00', '2022-10-04 09:02:00', '2022-10-03 15:04:35', '2022-10-03 15:04:35'),
(10, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', 4, 'enable', '2022-10-03 17:07:00', '2022-10-03 17:07:00', '2022-10-03 23:12:15', '2022-10-03 23:12:15'),
(11, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', 5, 'enable', '2022-10-03 17:07:00', '2022-10-03 17:07:00', '2022-10-03 23:12:15', '2022-10-03 23:12:15'),
(12, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', 6, 'enable', '2022-10-03 17:07:00', '2022-10-03 17:07:00', '2022-10-03 23:12:15', '2022-10-03 23:12:15'),
(13, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', 7, 'enable', '2022-10-03 17:07:00', '2022-10-03 17:07:00', '2022-10-03 23:12:21', '2022-10-03 23:12:21'),
(14, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', 8, 'enable', '2022-10-03 17:07:00', '2022-10-03 17:07:00', '2022-10-03 23:12:50', '2022-10-03 23:12:50'),
(15, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', 9, 'enable', '2022-10-03 17:07:00', '2022-10-03 17:07:00', '2022-10-03 23:12:50', '2022-10-03 23:12:50'),
(16, 'Football Camp', 2, 'Per Minute', 12, '17045-Mask_Group_19.png', 10, 'enable', '2022-10-03 17:07:00', '2022-10-03 17:07:00', '2022-10-03 23:13:31', '2022-10-03 23:13:31'),
(17, 'Speed Camp', 2, 'Per Hour', 10, '20314-Mask_Group_22.png', 11, 'enable', '2022-10-10 17:13:00', '2022-10-25 17:13:00', '2022-10-03 23:14:31', '2022-10-03 23:14:31'),
(18, 'Softball Camp', 2, 'Per Hour', 10, '244330-itwasonlyadreamfeb19.jpg', 13, 'enable', '2022-10-04 12:00:00', '2022-10-05 12:00:00', '2022-10-03 23:41:15', '2022-10-03 23:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(25, 'App\\Models\\Student', 48, 'sz', '2094967c14515a7347ab76ac357db4f841c709494827a0b91d7dc3f3d2f0454b', '[\"*\"]', NULL, '2022-08-25 15:46:53', '2022-08-25 15:46:53'),
(26, 'App\\Models\\Student', 47, 'sz', '4fb37eeca6ca3490e2aae62230eefeb1b427a3897bbb6baa6e664ec30fd7d1e2', '[\"*\"]', NULL, '2022-08-25 16:20:49', '2022-08-25 16:20:49'),
(27, 'App\\Models\\Student', 47, 'sz', '1c552a13791aeadad61bc89bf0843d46a09ca4c52bd66345d374ade6c8251cec', '[\"*\"]', NULL, '2022-08-25 17:47:14', '2022-08-25 17:47:14'),
(28, 'App\\Models\\Student', 47, 'sz', '8739e30c14a130685dcd499e84662b2066848c5d9176ea245956723b42224f21', '[\"*\"]', NULL, '2022-08-25 18:09:06', '2022-08-25 18:09:06'),
(29, 'App\\Models\\Student', 47, 'sz', 'bca4288051c1aed4b2501189edec7e25f5b6205bf2bb2b2ad3b54689b0577407', '[\"*\"]', NULL, '2022-08-25 18:09:21', '2022-08-25 18:09:21'),
(30, 'App\\Models\\Student', 47, 'sz', '317c1ee2a7297355b2a336dc273d694daf1eabfec077913c76a1d2846124667e', '[\"*\"]', NULL, '2022-08-25 18:09:24', '2022-08-25 18:09:24'),
(31, 'App\\Models\\Student', 47, 'sz', '55eeee58a7d8e23ce32c38f539a500d93a1df01680dd9d6be3775d94a5095e6c', '[\"*\"]', NULL, '2022-08-25 18:11:31', '2022-08-25 18:11:31'),
(32, 'App\\Models\\Student', 47, 'sz', 'd3288a3676a20730ed83e622057e121e19c099a797ec73e8900f2d652bebbe1f', '[\"*\"]', NULL, '2022-08-25 19:03:31', '2022-08-25 19:03:31'),
(33, 'App\\Models\\Student', 47, 'sz', '682258c2f85982e03a22957528e964619f7a004d861b6f35378c4585bea4bc7f', '[\"*\"]', NULL, '2022-08-25 19:09:56', '2022-08-25 19:09:56'),
(34, 'App\\Models\\Student', 47, 'sz', 'a5e72657487b8b5987856fd5fcc67cbd466c94a623bf1da94491f172e7ad4a9a', '[\"*\"]', NULL, '2022-08-25 19:16:17', '2022-08-25 19:16:17'),
(35, 'App\\Models\\Student', 47, 'sz', '56ebe9385f1cde27c58037634b40191db822c51a5758092fd096afd832f7c84c', '[\"*\"]', NULL, '2022-08-25 21:16:56', '2022-08-25 21:16:56'),
(36, 'App\\Models\\Student', 47, 'sz', '0b904a3b058cdbfb4d223f18dba23c5c28447dd20ede9a91b5bc05e86e8733b1', '[\"*\"]', NULL, '2022-08-25 21:17:46', '2022-08-25 21:17:46'),
(37, 'App\\Models\\Student', 47, 'sz', 'd44e6ab4448c11f17507c873c6c607f9afe0abda545e708bc6dfef903c155144', '[\"*\"]', NULL, '2022-08-25 21:21:56', '2022-08-25 21:21:56'),
(38, 'App\\Models\\Student', 47, 'sz', '2859239ee345759a909022303cf2bdea0340b6f43448d0b20a0081f7b68d9056', '[\"*\"]', NULL, '2022-08-25 21:24:39', '2022-08-25 21:24:39'),
(39, 'App\\Models\\Student', 47, 'sz', 'bee602b1b20f36063aa82acc87a5a51ae3dd8543b741321cc32ed29a60cb8b64', '[\"*\"]', NULL, '2022-08-25 21:32:00', '2022-08-25 21:32:00'),
(40, 'App\\Models\\Student', 47, 'sz', '51dd396a111b6c30a84f66facb21d6751bdf81698bb2c62971107348af3753cb', '[\"*\"]', NULL, '2022-08-25 21:45:55', '2022-08-25 21:45:55'),
(41, 'App\\Models\\Student', 47, 'sz', '6e72b1898ee52d206784fca2216b77799616f467d3f63390094f260610b00be3', '[\"*\"]', NULL, '2022-08-25 21:47:39', '2022-08-25 21:47:39'),
(42, 'App\\Models\\Student', 46, 'sz', 'a0b564ef1a3eaf2644281418dcc0e25a4e5f98ae645c3217c446fb4397c7bb8d', '[\"*\"]', NULL, '2022-08-26 13:15:43', '2022-08-26 13:15:43'),
(43, 'App\\Models\\Student', 49, 'sz', '421edd5b3bf1b8b2383ca23eece76ef17b174b6c6e35bff4f8fb7e7c2defea13', '[\"*\"]', NULL, '2022-08-26 16:17:43', '2022-08-26 16:17:43'),
(44, 'App\\Models\\Student', 47, 'sz', '882e1176e2437483c58ecbece3c491d615b60876041ae202c82baaa51fe07cb8', '[\"*\"]', NULL, '2022-08-26 18:21:22', '2022-08-26 18:21:22'),
(45, 'App\\Models\\Student', 50, 'sz', '30449fae82b096a9a7fc1ae832f53666b72472f7a621ef112dff543dea932d58', '[\"*\"]', NULL, '2022-08-26 18:58:29', '2022-08-26 18:58:29'),
(46, 'App\\Models\\Student', 47, 'sz', 'b5b433a1eda35e160b99e8db468d611649de82abd40c072011486c1858a56338', '[\"*\"]', NULL, '2022-08-26 19:06:41', '2022-08-26 19:06:41'),
(47, 'App\\Models\\Student', 47, 'sz', 'd04813b8551b017839c4178c373b2739e89fa76dc47eb3f73bfba190eb913531', '[\"*\"]', NULL, '2022-08-26 19:11:45', '2022-08-26 19:11:45'),
(48, 'App\\Models\\Student', 51, 'sz', 'eeb93510b121447ed6f4895dc31039ec62bbfe75981f055e369ca13ef0a66711', '[\"*\"]', NULL, '2022-08-26 19:51:42', '2022-08-26 19:51:42'),
(49, 'App\\Models\\Student', 47, 'sz', '890e784ed10edeca3ab54abe769c3f9d7fd4c693a433a738f9eaf72fc799f2dd', '[\"*\"]', NULL, '2022-09-05 13:53:59', '2022-09-05 13:53:59'),
(50, 'App\\Models\\Student', 47, 'sz', 'fd1760aad2d1fef6aab161d6d2d4c28538a0e22216e2fa3c9115d53a39fffd92', '[\"*\"]', NULL, '2022-09-05 14:09:09', '2022-09-05 14:09:09'),
(51, 'App\\Models\\Student', 47, 'sz', '1235be76af0f8ffb8cb3843fb1be26f6d7f8496c938e7a1aff75db0563e09798', '[\"*\"]', NULL, '2022-09-05 14:43:50', '2022-09-05 14:43:50'),
(52, 'App\\Models\\Student', 47, 'sz', 'ed3846f396b6f75ea0b9ee0cce8606ffcb8fdb520c6a426f9749f45bfb57ff30', '[\"*\"]', NULL, '2022-09-05 17:28:15', '2022-09-05 17:28:15'),
(53, 'App\\Models\\Student', 47, 'sz', '3234b11db481acff6d66bd792111472ccf33089100e679545c1420ad0c726ec6', '[\"*\"]', NULL, '2022-09-05 17:48:24', '2022-09-05 17:48:24'),
(54, 'App\\Models\\Student', 47, 'sz', '0c3f6607c3c0e4abd2dcabda681556d8b1e91e80e42c61b42793b0379d66367d', '[\"*\"]', NULL, '2022-09-05 18:02:02', '2022-09-05 18:02:02'),
(55, 'App\\Models\\Student', 47, 'sz', 'b1cf99c2cbbfdab0f5efb25882cb05691a6d24b8272c0ad8f33f84162b3929b6', '[\"*\"]', NULL, '2022-09-05 18:02:08', '2022-09-05 18:02:08'),
(56, 'App\\Models\\Student', 47, 'sz', 'ffbde88d2d2c7eab3c74daf830d8ab987089488eecbe3c721e97796f1cd4f6fb', '[\"*\"]', NULL, '2022-09-05 18:02:18', '2022-09-05 18:02:18'),
(57, 'App\\Models\\Student', 47, 'sz', 'b4fc00897aab2c0df9025643689b4a8c4ae7c32bad9776aeec1a03e10f5b92fe', '[\"*\"]', NULL, '2022-09-05 18:03:17', '2022-09-05 18:03:17'),
(58, 'App\\Models\\Student', 47, 'sz', 'b053acc0bd7540743ca1c6b3e5d7bfb0202683e469e80fc6c47ef7f4e7ca4fd1', '[\"*\"]', NULL, '2022-09-05 18:03:45', '2022-09-05 18:03:45'),
(59, 'App\\Models\\Student', 47, 'sz', '877a6e0fc80bf57c2f979b1da0c6d10901f63978f9dcbe8ea2d539a0905e58c4', '[\"*\"]', NULL, '2022-09-05 18:04:21', '2022-09-05 18:04:21'),
(60, 'App\\Models\\Student', 46, 'sz', 'f2766c05efa6c5e00ba49c6ecf58e3e0896146bad86a68928ced443261ddddad', '[\"*\"]', NULL, '2022-09-05 22:14:34', '2022-09-05 22:14:34'),
(61, 'App\\Models\\Student', 47, 'sz', '5b17bc67b532617adaa15f556a420bb5193ce891f167a0cd9fa2fd114f222ea4', '[\"*\"]', NULL, '2022-09-06 11:51:41', '2022-09-06 11:51:41'),
(62, 'App\\Models\\Student', 47, 'sz', 'eeb6fefbc1d021f9f26196a1687993ef16e715c667c5a96a32b1f9c90815e68e', '[\"*\"]', NULL, '2022-09-06 13:19:40', '2022-09-06 13:19:40'),
(63, 'App\\Models\\Student', 47, 'sz', '9a846e7d91e90c28f2444bafc666d96c88749712615f45443932634607b1009e', '[\"*\"]', NULL, '2022-09-06 13:26:52', '2022-09-06 13:26:52'),
(64, 'App\\Models\\Student', 47, 'sz', 'acefa98509d1ad5f32b51a4fe2722b7fff967c41152068349d2a2fd6141b6be0', '[\"*\"]', NULL, '2022-09-06 13:28:33', '2022-09-06 13:28:33'),
(65, 'App\\Models\\Student', 47, 'sz', '11649cf7c0632ebfcbf555a3c66b251b89df645b770a52c1ea57ec8a054c3908', '[\"*\"]', NULL, '2022-09-06 13:32:42', '2022-09-06 13:32:42'),
(66, 'App\\Models\\Student', 47, 'sz', '7beb0f7a76467a1dba71167f1069ce0af1890fdb822b2c3a9ae08a9c4690530b', '[\"*\"]', NULL, '2022-09-06 14:47:42', '2022-09-06 14:47:42'),
(67, 'App\\Models\\Student', 47, 'sz', 'cd3c3a66bfe5e36da1687850fdbafcd110eeea29dc9d4354da544204d053e40d', '[\"*\"]', NULL, '2022-09-06 14:55:39', '2022-09-06 14:55:39'),
(68, 'App\\Models\\Student', 47, 'sz', '60e4d4a48c7212ff17867182d16d089962a662a56cd3120ed6199996e3c607c5', '[\"*\"]', NULL, '2022-09-06 15:12:11', '2022-09-06 15:12:11'),
(69, 'App\\Models\\Student', 47, 'sz', 'e9f380478c3487cbb78f9be43f5d170e2e42deccf2e83182f1e69a05142055d5', '[\"*\"]', NULL, '2022-09-06 16:21:19', '2022-09-06 16:21:19'),
(70, 'App\\Models\\Student', 47, 'sz', '60272a85da0e39213f7e6ac960727bd44a67569ee4b1c7150be72dee9c62f262', '[\"*\"]', NULL, '2022-09-06 16:35:14', '2022-09-06 16:35:14'),
(71, 'App\\Models\\Student', 47, 'sz', 'f3de3ab1dff05bf5895133e859af25acbd6705ba0b3f566487e2f113a91efee2', '[\"*\"]', NULL, '2022-09-06 16:42:56', '2022-09-06 16:42:56'),
(72, 'App\\Models\\Student', 47, 'sz', 'c7142ea42ae70496a3ecdc2e0aea7fb53a8355e883513afb5d79cc09e50c3071', '[\"*\"]', NULL, '2022-09-06 16:45:05', '2022-09-06 16:45:05'),
(73, 'App\\Models\\Student', 47, 'sz', '258a13e151bf84f043a9215e5898ebf5856bae3f4bdc9e6b1b19003dff74194d', '[\"*\"]', NULL, '2022-09-06 17:19:37', '2022-09-06 17:19:37'),
(74, 'App\\Models\\Student', 47, 'sz', '13e3e6eb4f00f5878b89b9f394044090314b3302533d543ff18ae8ee9763cb55', '[\"*\"]', NULL, '2022-09-06 17:27:42', '2022-09-06 17:27:42'),
(75, 'App\\Models\\Student', 47, 'sz', '939dd9ddcf59a63cf639efb82abc572bffed07efea123c20f257c2fe972a4adf', '[\"*\"]', NULL, '2022-09-06 17:35:34', '2022-09-06 17:35:34'),
(76, 'App\\Models\\Student', 47, 'sz', 'fe655c2d97a8169a8636636f6ec623b2986a2d28c6e922074ccbfd32dd8f4fae', '[\"*\"]', NULL, '2022-09-06 17:46:53', '2022-09-06 17:46:53'),
(77, 'App\\Models\\Student', 47, 'sz', '555086533bad4717455c000bc0b8f718ff213584fdb24e04c01b38b1bad04be0', '[\"*\"]', NULL, '2022-09-06 17:53:41', '2022-09-06 17:53:41'),
(78, 'App\\Models\\Student', 47, 'sz', '647fd7322b74635ae01105d43fcd7c044d15b2f0360ca271d9f5e5223cb7ad17', '[\"*\"]', NULL, '2022-09-06 18:15:46', '2022-09-06 18:15:46'),
(79, 'App\\Models\\Student', 47, 'sz', 'f71da35255726fdaddf12ce88b658f7310d084cbc9b39f74a078744e105c06fb', '[\"*\"]', NULL, '2022-09-06 18:18:49', '2022-09-06 18:18:49'),
(80, 'App\\Models\\Student', 47, 'sz', 'b504c7ed7df9dcb075f59e88cedb38fcfe70f840e1d4f6e0e68b17a981151511', '[\"*\"]', NULL, '2022-09-06 19:13:03', '2022-09-06 19:13:03'),
(81, 'App\\Models\\Student', 47, 'sz', '4ccc0a44e20b025ead230af856f42c1a95330156cdd3d3379a375813fc2ce93c', '[\"*\"]', NULL, '2022-09-06 19:24:17', '2022-09-06 19:24:17'),
(82, 'App\\Models\\Student', 47, 'sz', '8a16bfdcb5fa0a484294637e6996d087d448674899458383b3f9cc588b980993', '[\"*\"]', NULL, '2022-09-06 19:43:45', '2022-09-06 19:43:45'),
(83, 'App\\Models\\Student', 47, 'sz', 'cae40c4328f83c954313f30fc8f9c87ab8e7f09703b5feff212d2206f388ed50', '[\"*\"]', NULL, '2022-09-06 19:49:56', '2022-09-06 19:49:56'),
(84, 'App\\Models\\Student', 47, 'sz', '689fa8e39e37465a5dab3e361f4f9202eeeb88466bb697ee94cc6a5da58d943b', '[\"*\"]', NULL, '2022-09-07 10:31:39', '2022-09-07 10:31:39'),
(85, 'App\\Models\\Student', 47, 'sz', '168d017134a5f3ed68fe9205811be1119ed84422798d1b398294a8089c5c4b2c', '[\"*\"]', NULL, '2022-09-07 10:41:11', '2022-09-07 10:41:11'),
(86, 'App\\Models\\Student', 47, 'sz', 'f4cc1758dae6f477ff2b99c019ba53b5c2e94e55308a20fad4d41b3a5b1f18a0', '[\"*\"]', NULL, '2022-09-07 10:49:29', '2022-09-07 10:49:29'),
(87, 'App\\Models\\Student', 47, 'sz', 'ff15872d9760cf870afab1dfbae7c497721111d00c3f97e730b420eeb5afec40', '[\"*\"]', NULL, '2022-09-07 10:57:00', '2022-09-07 10:57:00'),
(88, 'App\\Models\\Student', 47, 'sz', '750339b00f036c591141589a6e3daef6738270baf7b2e1e9366a95fc9a5b7cb7', '[\"*\"]', NULL, '2022-09-07 16:09:48', '2022-09-07 16:09:48'),
(89, 'App\\Models\\Student', 47, 'sz', '435ffbb3473e2f59d5e1bee8cf7874b81683ac9f1889e02f09943921b8edeb5a', '[\"*\"]', NULL, '2022-09-07 16:14:14', '2022-09-07 16:14:14'),
(90, 'App\\Models\\Student', 47, 'sz', 'cd1bf8e0be78c24b2e4a46dee4e63036f74011a8bb00ecfa2c3c40e5c27546e9', '[\"*\"]', NULL, '2022-09-07 16:15:43', '2022-09-07 16:15:43'),
(91, 'App\\Models\\Student', 47, 'sz', 'dcb6e068a67f00684c8c9847d745d05d5393e1a5bc3bcdaa2a4136fb72589735', '[\"*\"]', NULL, '2022-09-07 16:19:54', '2022-09-07 16:19:54'),
(92, 'App\\Models\\Student', 47, 'sz', '05ae185b475e1f5aaa638622bf91f07eae9ad5653286755099aa5d6b30168884', '[\"*\"]', NULL, '2022-09-07 16:27:41', '2022-09-07 16:27:41'),
(93, 'App\\Models\\Student', 47, 'sz', 'ba99bf2cfde55b1ae58c95b081ccef392eb3fe9df3273924d96bb97490fdd5c1', '[\"*\"]', NULL, '2022-09-07 16:52:32', '2022-09-07 16:52:32'),
(94, 'App\\Models\\Student', 47, 'sz', '1fa96485dabf674e9229a24b692a3aa86ab562901c0e971731c6ba0faa933fbc', '[\"*\"]', NULL, '2022-09-07 16:56:53', '2022-09-07 16:56:53'),
(95, 'App\\Models\\Student', 47, 'sz', 'fec0bd270ab1dbc0f520fa57fc312f6001f52668cfcc7c283c8c96ea671b0e6e', '[\"*\"]', NULL, '2022-09-07 16:59:11', '2022-09-07 16:59:11'),
(96, 'App\\Models\\Student', 47, 'sz', 'a66d4901f54c3e44c01dce784c0da14a6f226aed05949921978e2e0ef0b5c6c1', '[\"*\"]', NULL, '2022-09-07 17:07:57', '2022-09-07 17:07:57'),
(97, 'App\\Models\\Student', 47, 'sz', 'cd5b76a89f35e9e98820f7184d2f0ef6f4745d70e6eb547c58375bad1f7d8bd0', '[\"*\"]', NULL, '2022-09-07 17:08:52', '2022-09-07 17:08:52'),
(98, 'App\\Models\\Student', 47, 'sz', '5fcfb246211eaa25a0c4576885a9bdf1aada6c0f4f8424c35be6f3722def9f2a', '[\"*\"]', NULL, '2022-09-07 17:09:18', '2022-09-07 17:09:18'),
(99, 'App\\Models\\Student', 47, 'sz', '946b329a80b2be6d3b303ec8b598c69f7274b874116e56db55af0968cc7940f5', '[\"*\"]', NULL, '2022-09-07 17:11:23', '2022-09-07 17:11:23'),
(100, 'App\\Models\\Student', 47, 'sz', '75d89d316dfdc26dbdddf2473c0bda127f7b7f788f18f5a0231a2c7e78b681de', '[\"*\"]', NULL, '2022-09-07 17:14:53', '2022-09-07 17:14:53'),
(101, 'App\\Models\\Student', 47, 'sz', '85776e49d910e39846a96e7e137649e4fa9b6e029a2a8202cf119db71d4f7e2b', '[\"*\"]', NULL, '2022-09-07 17:32:32', '2022-09-07 17:32:32'),
(102, 'App\\Models\\Student', 47, 'sz', '6024d10dc8ccd7199444d3e1776f8f99ab560ddd1c82bedaeb0b11d554d74000', '[\"*\"]', NULL, '2022-09-07 17:37:20', '2022-09-07 17:37:20'),
(103, 'App\\Models\\Student', 47, 'sz', '0562a8e21da56aea9494a56635e0253826877ef3f3a6c3eb6f89b43257f7a7ab', '[\"*\"]', NULL, '2022-09-07 17:38:15', '2022-09-07 17:38:15'),
(104, 'App\\Models\\Student', 47, 'sz', 'a6f83eeae5442e9ac13e9ff4918ad9115a4083cbcb3c199853591aeb521959ce', '[\"*\"]', NULL, '2022-09-07 17:40:27', '2022-09-07 17:40:27'),
(105, 'App\\Models\\Student', 47, 'sz', 'dae3a99b3c703fc8d205716228f744ecbf2580a09ba5fb90794e391dfd4cccdd', '[\"*\"]', NULL, '2022-09-08 12:11:04', '2022-09-08 12:11:04'),
(106, 'App\\Models\\Student', 47, 'sz', '0dea014a1cb8d8bfcd371e5d8c80dfa9b7ff3c144ec7f3c30e42b2a3ba49fd3c', '[\"*\"]', NULL, '2022-09-08 12:23:50', '2022-09-08 12:23:50'),
(107, 'App\\Models\\Student', 47, 'sz', '7d7fc0309d05bfc83afb78b270ed32dc31e287df0f475dc072a93bfc09cb6fa7', '[\"*\"]', NULL, '2022-09-08 12:27:25', '2022-09-08 12:27:25'),
(108, 'App\\Models\\Student', 47, 'sz', 'a1a79c3d91d3c351507416bb4ed79743cbbe08818d584bfda74fb2eefc665fe6', '[\"*\"]', NULL, '2022-09-08 12:35:25', '2022-09-08 12:35:25'),
(109, 'App\\Models\\Student', 47, 'sz', '6ce9951833224e0267f220b19fc0680d88129d58aa695e8066d48c3286386d11', '[\"*\"]', NULL, '2022-09-08 12:44:08', '2022-09-08 12:44:08'),
(110, 'App\\Models\\Student', 47, 'sz', 'f96c72648a62ad4ee916c8949a15b06243cb11ab8ad084caafb0486cd4fc55ac', '[\"*\"]', NULL, '2022-09-08 13:27:17', '2022-09-08 13:27:17'),
(111, 'App\\Models\\Student', 47, 'sz', '7b1919e25c87ffbcca6468f83fbcfc7e70654748780beeb02e49f33cebf285ff', '[\"*\"]', NULL, '2022-09-08 17:12:16', '2022-09-08 17:12:16'),
(112, 'App\\Models\\Student', 47, 'sz', 'fe4e7cb73589afc1577dbcfece3f51a8cc631f31c6ef3162c11f61af00a5968f', '[\"*\"]', NULL, '2022-09-08 17:26:37', '2022-09-08 17:26:37'),
(113, 'App\\Models\\Student', 47, 'sz', '0d786149dd88111a521d1c20e4f761dd8648bb685d3e8d93da604f6b1cf81d3a', '[\"*\"]', NULL, '2022-09-08 17:30:18', '2022-09-08 17:30:18'),
(114, 'App\\Models\\Student', 47, 'sz', 'bc9ed33c937de03f5fc9d935c4875700316766b4d5fe996c16cbd3325b65a2e2', '[\"*\"]', NULL, '2022-09-08 17:51:19', '2022-09-08 17:51:19'),
(115, 'App\\Models\\Student', 47, 'sz', '11912a96b315ddd30666afff5811cc01b306a10af862b3fc90eeb5c947999367', '[\"*\"]', NULL, '2022-09-08 17:51:28', '2022-09-08 17:51:28'),
(116, 'App\\Models\\Student', 47, 'sz', '34f0071b042c6422c2b3d0137469d7ccd647de3761942500fd2967cfa9443cbd', '[\"*\"]', NULL, '2022-09-08 18:13:44', '2022-09-08 18:13:44'),
(117, 'App\\Models\\Student', 47, 'sz', '0f9a822ba746f79efff348723f63dadf7bec831201171c43c617c9cbf559b06f', '[\"*\"]', NULL, '2022-09-08 18:16:23', '2022-09-08 18:16:23'),
(118, 'App\\Models\\Student', 47, 'sz', '31c4430a06f97636fda73b9ba74c291edfc1fa4b8c48b1081f192de0e139b76f', '[\"*\"]', NULL, '2022-09-08 18:23:55', '2022-09-08 18:23:55'),
(119, 'App\\Models\\Student', 47, 'sz', 'ca6ae349d98ec2e7f79e6a8f53ec5b56fb57ffb71515cda36c16712233297fdb', '[\"*\"]', NULL, '2022-09-08 18:26:12', '2022-09-08 18:26:12'),
(120, 'App\\Models\\Student', 47, 'sz', '61fb78039a1a5b501a660125a6acb27b4d5c95a40f1efe4350b8080e1eb22e72', '[\"*\"]', NULL, '2022-09-08 18:27:17', '2022-09-08 18:27:17'),
(121, 'App\\Models\\Student', 47, 'sz', '57cd2b055796a85b34a922a4c258eba09f7fb7776305372423f847d5d1f7c354', '[\"*\"]', NULL, '2022-09-08 18:35:33', '2022-09-08 18:35:33'),
(122, 'App\\Models\\Student', 47, 'sz', '78c935eedc059dfbe28308d62c52291b374fa3cbb113235864612ae5b9594737', '[\"*\"]', NULL, '2022-09-08 18:40:39', '2022-09-08 18:40:39'),
(123, 'App\\Models\\Student', 47, 'sz', 'e7b3d05e7c9a6e2000a90c42e78ba82b6f21e6b2c1f3506c30756fc5063bceef', '[\"*\"]', NULL, '2022-09-08 18:44:26', '2022-09-08 18:44:26'),
(124, 'App\\Models\\Student', 47, 'sz', '13f0bcedb6d1e13ad15c1364a20b5fd5a4e60a115a4b2f1dcf7e0b67badfb470', '[\"*\"]', NULL, '2022-09-08 18:54:19', '2022-09-08 18:54:19'),
(125, 'App\\Models\\Student', 47, 'sz', '21c08db37a3795a69ffee85e5357cb8a840eed8e5e5662347e1ed746014fc8b9', '[\"*\"]', NULL, '2022-09-08 19:35:46', '2022-09-08 19:35:46'),
(126, 'App\\Models\\Student', 47, 'sz', '093aebfca851181d46f6ca6043507786d7f6306e1e0299bf3ac0ae97ab660949', '[\"*\"]', NULL, '2022-09-08 20:57:01', '2022-09-08 20:57:01'),
(127, 'App\\Models\\Student', 47, 'sz', 'f277b3f66efe973b110adea2ecf00a792eff208b9e2eae9f9c49b6676116beff', '[\"*\"]', NULL, '2022-09-09 12:41:42', '2022-09-09 12:41:42'),
(128, 'App\\Models\\Student', 47, 'sz', '3a5210a3da1a083de042fb1ddc25cdb3489d3605ae8e19fb07cbbb76361aeabb', '[\"*\"]', NULL, '2022-09-09 17:38:05', '2022-09-09 17:38:05'),
(129, 'App\\Models\\Student', 47, 'sz', '4f1610f7b333a24857324d935a2bb05358f455be99c22c917a7c853e7bc4198c', '[\"*\"]', NULL, '2022-09-09 17:41:33', '2022-09-09 17:41:33'),
(130, 'App\\Models\\Student', 47, 'sz', '88c9ba21af6c3de07095c44c102635b678a1c8921132ef618294cea078b2b858', '[\"*\"]', NULL, '2022-09-09 17:43:17', '2022-09-09 17:43:17'),
(131, 'App\\Models\\Student', 47, 'sz', '9ca8b413f22627de449632907ef0a243448d2be61d5f3b5109f02a78594bac5a', '[\"*\"]', NULL, '2022-09-09 17:45:14', '2022-09-09 17:45:14'),
(132, 'App\\Models\\Student', 47, 'sz', '7379c7b16a73913f2e1b8bad40ce633569511a256c80d79b1462282aca835b64', '[\"*\"]', NULL, '2022-09-09 19:40:37', '2022-09-09 19:40:37'),
(133, 'App\\Models\\Student', 47, 'sz', 'b3ceda3e55aef7345904742c9749be9c047e76e20d2fcf52adca7b3ae588272a', '[\"*\"]', NULL, '2022-09-09 19:54:57', '2022-09-09 19:54:57'),
(134, 'App\\Models\\Student', 47, 'sz', 'ba9d8901e52f50965354ea96a6de927de98aaefee6fc625936e563059e74f94b', '[\"*\"]', NULL, '2022-09-09 19:57:22', '2022-09-09 19:57:22'),
(135, 'App\\Models\\Student', 47, 'sz', '6c302ce9f6320f394bade58bd6c6884afa8b57c9466199d46f3346effabac2f3', '[\"*\"]', NULL, '2022-09-09 21:39:55', '2022-09-09 21:39:55'),
(136, 'App\\Models\\Student', 47, 'sz', 'a8f820a258b56c03d35e457661df332d5a7ea01d42dcc3e11fd8785064a36259', '[\"*\"]', NULL, '2022-09-09 21:49:17', '2022-09-09 21:49:17'),
(137, 'App\\Models\\Student', 47, 'sz', '46f6684b59278337207e0440e86f8251eb661a54aa4aed4a21cc2a1304588707', '[\"*\"]', NULL, '2022-09-09 21:50:23', '2022-09-09 21:50:23'),
(138, 'App\\Models\\Student', 47, 'sz', 'fe3cef1f178092a76441257065b24d0d7050db7275715661ca80177f5672b06a', '[\"*\"]', NULL, '2022-09-09 21:55:50', '2022-09-09 21:55:50'),
(139, 'App\\Models\\Student', 47, 'sz', '97f82dfbce77c16c3c88b8a3040e871b698131614e169b0e34ea657764bccd67', '[\"*\"]', NULL, '2022-09-09 21:57:15', '2022-09-09 21:57:15'),
(140, 'App\\Models\\Student', 47, 'sz', 'df6e75e59f933f7477cef647a12cef68322683fbc788638dbff05920bc0ac256', '[\"*\"]', NULL, '2022-09-11 21:37:45', '2022-09-11 21:37:45'),
(141, 'App\\Models\\Student', 47, 'sz', '88835a2fe6b3f2f3a4dabfc0d9d46721e2d8a2d2fa20f6665c32a4dcbff9bc30', '[\"*\"]', NULL, '2022-09-11 23:02:19', '2022-09-11 23:02:19'),
(142, 'App\\Models\\Student', 47, 'sz', '6535af66401e10f825d19c7ba40014ecaf711b6f458e455cb353739b6f2e7542', '[\"*\"]', NULL, '2022-09-12 14:12:47', '2022-09-12 14:12:47'),
(143, 'App\\Models\\Student', 47, 'sz', '42a06dcf5a0ceef20325b399854e1e8c114653373f239d87d687769406e6f628', '[\"*\"]', NULL, '2022-09-12 14:20:16', '2022-09-12 14:20:16'),
(144, 'App\\Models\\Student', 47, 'sz', '8763012f23f958821111a208c183aa7983def96c57abf76de21a423aab096be3', '[\"*\"]', NULL, '2022-09-12 14:22:20', '2022-09-12 14:22:20'),
(145, 'App\\Models\\Student', 47, 'sz', 'f4ea121d35bd82381b22f6977eb84666e0e1fbc6964ba622d9ed3d4ab6232353', '[\"*\"]', NULL, '2022-09-12 14:23:42', '2022-09-12 14:23:42'),
(146, 'App\\Models\\Student', 47, 'sz', '829dab488433cd5245773319ab1b01501241b6bcc94a6562a33c4d6f69f02a11', '[\"*\"]', NULL, '2022-09-12 14:28:04', '2022-09-12 14:28:04'),
(147, 'App\\Models\\Student', 47, 'sz', '39ecb672e8f09b55a9c3d3bb827e1a39cf739ba67506dfcee2042577d2acf2db', '[\"*\"]', NULL, '2022-09-12 14:50:12', '2022-09-12 14:50:12'),
(148, 'App\\Models\\Student', 47, 'sz', '4b83695c6fa98c38defe8f9c713bdeb5b3847197396154e8a98071aaecbeb718', '[\"*\"]', NULL, '2022-09-12 14:53:08', '2022-09-12 14:53:08'),
(149, 'App\\Models\\Student', 47, 'sz', '94d6b4b9222bae000099325821dfe36c9221de4405fc7788e610cb916f4e17fd', '[\"*\"]', NULL, '2022-09-12 15:04:02', '2022-09-12 15:04:02'),
(150, 'App\\Models\\Student', 47, 'sz', '382a2d70dac8a17d108dafd89d556432fa01f4b15149d27ef1af72be72a6f43e', '[\"*\"]', NULL, '2022-09-12 15:18:52', '2022-09-12 15:18:52'),
(151, 'App\\Models\\Student', 47, 'sz', 'fa29ac85f25571a543586c45ec52373e1a0b3e51578c18843c823c261be1071f', '[\"*\"]', NULL, '2022-09-12 15:49:59', '2022-09-12 15:49:59'),
(152, 'App\\Models\\Student', 47, 'sz', 'dd94692fdd2fe9f2045f44acfd096cc8d31cef8415a1a35697c2d68a19077f85', '[\"*\"]', NULL, '2022-09-12 17:39:50', '2022-09-12 17:39:50'),
(153, 'App\\Models\\Student', 47, 'sz', '7ec356253933bdfbd13bb34bbe62a6ffcf21e8ac559beadc91cfcb81f00d5e03', '[\"*\"]', NULL, '2022-09-12 18:01:03', '2022-09-12 18:01:03'),
(154, 'App\\Models\\Student', 47, 'sz', '96fc6cd638614ee01aac08e906adcb9d6a3af52d632ba8d2cdffcf55bdd57929', '[\"*\"]', NULL, '2022-09-12 18:15:38', '2022-09-12 18:15:38'),
(155, 'App\\Models\\Student', 47, 'sz', '6561c1a549eccbd32b9cdc348c84cae2b2ace35927986f87140f80aae2eaa22b', '[\"*\"]', NULL, '2022-09-12 18:16:21', '2022-09-12 18:16:21'),
(156, 'App\\Models\\Student', 47, 'sz', 'bfb39b97201d84c0b9113eed3fec308195a6d132671d57fcc1b431af2a917339', '[\"*\"]', NULL, '2022-09-12 18:17:46', '2022-09-12 18:17:46'),
(157, 'App\\Models\\Student', 47, 'sz', '573ee30c957184d8d351b08a685b18da703a0ee1a915ed1f1c1db2c830cd464a', '[\"*\"]', NULL, '2022-09-12 19:08:37', '2022-09-12 19:08:37'),
(158, 'App\\Models\\Student', 47, 'sz', '5ba358b949572f0a142f0eca49093a9dad7b531d21ffd93e7f7e39fd0944eeb2', '[\"*\"]', NULL, '2022-09-12 19:32:21', '2022-09-12 19:32:21'),
(159, 'App\\Models\\Student', 47, 'sz', 'c3d0796fd4831c6acf723bad9489c163da05cd6e8c40531d211ac0162d81c7a0', '[\"*\"]', NULL, '2022-09-12 19:39:22', '2022-09-12 19:39:22'),
(160, 'App\\Models\\Student', 47, 'sz', 'a7d9eba60d19c675f8a99ebc83e452dd7d32c66853c1b517d966fb8d0098f431', '[\"*\"]', NULL, '2022-09-12 19:40:34', '2022-09-12 19:40:34'),
(161, 'App\\Models\\Student', 47, 'sz', 'd206a047bc7a81e9e30870279ddd37e8502a11278278e5dcbe396787f499c842', '[\"*\"]', NULL, '2022-09-12 20:50:50', '2022-09-12 20:50:50'),
(162, 'App\\Models\\Student', 47, 'sz', 'd8b6756b7e4a775bf8df08cc80d80ff376efb11787de3b9c4d2a9281466a0ad0', '[\"*\"]', NULL, '2022-09-12 21:28:13', '2022-09-12 21:28:13'),
(163, 'App\\Models\\Student', 47, 'sz', '9ff95065417c0e4ab4f7770ece39d85a765e52e3d5641b42001e1f14925bada3', '[\"*\"]', NULL, '2022-09-12 21:29:12', '2022-09-12 21:29:12'),
(164, 'App\\Models\\Student', 47, 'sz', '817ddb5351fb9697cb549ecd770c0711e9bc198f5ccd6db6fabc57ab3f69f59a', '[\"*\"]', NULL, '2022-09-12 21:40:48', '2022-09-12 21:40:48'),
(165, 'App\\Models\\Student', 47, 'sz', '41a6d7ddc72464ae2bb46da24c0aeae354a23ad53fc66f7a56fd39321c6b9ac7', '[\"*\"]', NULL, '2022-09-12 22:11:57', '2022-09-12 22:11:57'),
(166, 'App\\Models\\Student', 47, 'sz', '028bca6a35bee6bd5b0f5cdf8ca82b1e9931b82cbe36743a3791de1e0c9acffa', '[\"*\"]', NULL, '2022-09-12 22:32:26', '2022-09-12 22:32:26'),
(167, 'App\\Models\\Student', 47, 'sz', '771d42759608fb5a99a0ebd5f975c9105c5e6ee99ad7061e6a36bde29cd1f510', '[\"*\"]', NULL, '2022-09-13 14:59:40', '2022-09-13 14:59:40'),
(168, 'App\\Models\\Student', 47, 'sz', '2171266cd81b87be0f1f11accd3c1a39a90248eba20cbf733665a2756c429023', '[\"*\"]', NULL, '2022-09-13 15:10:51', '2022-09-13 15:10:51'),
(169, 'App\\Models\\Student', 47, 'sz', '3e33d08aa04b35693798d016bdaa38947ed956fd65182a1ce86873b7df194310', '[\"*\"]', NULL, '2022-09-13 15:11:58', '2022-09-13 15:11:58'),
(170, 'App\\Models\\Student', 47, 'sz', '57144d356b17948c17617d45a15bda2f0f9136cd8a4c2bead2a12b15a8ffca03', '[\"*\"]', NULL, '2022-09-13 15:14:50', '2022-09-13 15:14:50'),
(171, 'App\\Models\\Student', 47, 'sz', 'c9b50cb96f855545328280688705689d66affc2db16d02317760a9b1b36b6c9d', '[\"*\"]', NULL, '2022-09-13 16:22:34', '2022-09-13 16:22:34'),
(172, 'App\\Models\\Student', 47, 'sz', '0ecd39cd245b89d46138b6a593c104b9a034c557ae40057ef84f5516a6e74535', '[\"*\"]', NULL, '2022-09-13 16:25:57', '2022-09-13 16:25:57'),
(173, 'App\\Models\\Student', 47, 'sz', '8faf9fb99a538a1ffb06ca98fd0e9fc9ce61d4c8a5e5c85b2aa0e032ff5522e2', '[\"*\"]', NULL, '2022-09-13 16:29:56', '2022-09-13 16:29:56'),
(174, 'App\\Models\\Student', 47, 'sz', 'bb1dd2cbc26b5a576d5f8497b6cbf5dbea727acbc7a46583a2a0e923aa412371', '[\"*\"]', NULL, '2022-09-13 16:31:05', '2022-09-13 16:31:05'),
(175, 'App\\Models\\Student', 47, 'sz', 'f6492474d7379758198ad6051f3793ee49dbe0df5e30d54607e146dc9580b9dd', '[\"*\"]', NULL, '2022-09-13 16:33:23', '2022-09-13 16:33:23'),
(176, 'App\\Models\\Student', 47, 'sz', '59413aded035055f6f1a57b115ac7f01553c1607b4268fda10cabf6012bd5d62', '[\"*\"]', NULL, '2022-09-13 21:38:26', '2022-09-13 21:38:26'),
(177, 'App\\Models\\Student', 47, 'sz', '06631df4fdadfa94dbfebab9b06fee1feb3134856d968fac16ad7af48a64980b', '[\"*\"]', NULL, '2022-09-13 21:40:08', '2022-09-13 21:40:08'),
(178, 'App\\Models\\Student', 47, 'sz', 'ddb2f5efa720dab2f3aa644ae8be488e5a3807f6e7adb2567dfda00f1ce8cc51', '[\"*\"]', NULL, '2022-09-13 21:41:45', '2022-09-13 21:41:45'),
(179, 'App\\Models\\Student', 47, 'sz', 'cc1d994d491bac966126727bd89f5ab89692f8c56aa9758e0599779ad53a206d', '[\"*\"]', NULL, '2022-09-13 21:42:43', '2022-09-13 21:42:43'),
(180, 'App\\Models\\Student', 47, 'sz', '912236dcfa7f33d8c0bb33f177d1b46114071e5b1ccb1801f1bc8c95dfa4d5d7', '[\"*\"]', NULL, '2022-09-13 21:54:40', '2022-09-13 21:54:40'),
(181, 'App\\Models\\Student', 47, 'sz', '22c69b9f52e38c0eda06415572a52230518a1cd9b627ecc10dea5160d524f4d6', '[\"*\"]', NULL, '2022-09-13 22:01:39', '2022-09-13 22:01:39'),
(182, 'App\\Models\\Student', 47, 'sz', 'fad67b860458f97b07b79996e283b32cd57933735b61322fcb7ea506aa3c1d78', '[\"*\"]', NULL, '2022-09-13 22:05:15', '2022-09-13 22:05:15'),
(183, 'App\\Models\\Student', 47, 'sz', '445830bf899000a5ee81dea9f555f9b8b5470742a0f631fa7c81d674e6346f6a', '[\"*\"]', NULL, '2022-09-13 22:08:55', '2022-09-13 22:08:55'),
(184, 'App\\Models\\Student', 47, 'sz', '68942abd7eb4a1ab25c25e7da4698ed3bab8097b5643f42d7d07b1c33e55c40e', '[\"*\"]', NULL, '2022-09-13 22:09:37', '2022-09-13 22:09:37'),
(185, 'App\\Models\\Student', 47, 'sz', 'bccb1939bf877f696039f7a41482a3451ee103b35d6b59e44c82ee2bfab27b28', '[\"*\"]', NULL, '2022-09-13 22:18:56', '2022-09-13 22:18:56'),
(186, 'App\\Models\\Student', 47, 'sz', 'b3ab469a6611c1487f47a35022f2a2b811606dc7a4da871949c83974aa10a8f8', '[\"*\"]', NULL, '2022-09-13 22:34:33', '2022-09-13 22:34:33'),
(187, 'App\\Models\\Student', 47, 'sz', 'e5b25c59a81f427618616235bc6a2cd42b4d946ad0bbb7209b9c75f84658a2fa', '[\"*\"]', NULL, '2022-09-13 22:36:30', '2022-09-13 22:36:30'),
(188, 'App\\Models\\Student', 47, 'sz', '09f8668d2023df58a13b5745bedfbc32aacd57f85110d14292ff99a55ca54557', '[\"*\"]', NULL, '2022-09-13 22:41:32', '2022-09-13 22:41:32'),
(189, 'App\\Models\\Student', 47, 'sz', 'd8eb15f9e3014d100021292628e47bd8e954ebd1c49c7fa91410676e9b5cacbb', '[\"*\"]', NULL, '2022-09-13 22:43:15', '2022-09-13 22:43:15'),
(190, 'App\\Models\\Student', 47, 'sz', 'a0beb48f85ba749f94a47cd92c508302e2079c53dd88ec85a594316fca9de675', '[\"*\"]', NULL, '2022-09-14 12:06:12', '2022-09-14 12:06:12'),
(191, 'App\\Models\\Student', 47, 'sz', '99cf064a0ba1d6b6dc0ebf4ee189fc9afa8564084aaf9262309c046b76afbe64', '[\"*\"]', NULL, '2022-09-14 12:12:39', '2022-09-14 12:12:39'),
(192, 'App\\Models\\Student', 47, 'sz', '8c7cf9e2d02098236c8d68c11009c17cc8f2fd01721a1beb8b2c0602fa77aa0e', '[\"*\"]', NULL, '2022-09-14 12:18:04', '2022-09-14 12:18:04'),
(193, 'App\\Models\\Student', 47, 'sz', 'e76fc4cf7bb146294b0c81d8d41ca131acb686a26b4d0b5950e10017f419fb42', '[\"*\"]', NULL, '2022-09-14 12:49:09', '2022-09-14 12:49:09'),
(194, 'App\\Models\\Student', 47, 'sz', '785f4a91edb750c2a541361bb961d7be528f9d01c62880dad7d70744d9fd2b23', '[\"*\"]', NULL, '2022-09-14 13:01:58', '2022-09-14 13:01:58'),
(195, 'App\\Models\\Student', 47, 'sz', '0e831236348d75ef57b0048cccf483581b295d01934a4e6b1ce2cf5bae825d4b', '[\"*\"]', NULL, '2022-09-14 14:02:53', '2022-09-14 14:02:53'),
(196, 'App\\Models\\Student', 47, 'sz', 'b8b251ce653cae87805cffc4adb1287279c852a3a4209e13b4d4847c63784c8e', '[\"*\"]', NULL, '2022-09-14 14:55:58', '2022-09-14 14:55:58'),
(197, 'App\\Models\\Student', 47, 'sz', 'a66daddd469481368b4a8964d4b1334a3e2ef1f61f299f50530d7968e1e5a474', '[\"*\"]', NULL, '2022-09-14 16:24:40', '2022-09-14 16:24:40'),
(198, 'App\\Models\\Student', 47, 'sz', 'eb1ebb42d11bba08834930be2a0686a6a5aa3855ee0dc339ef82ff7397e36ba8', '[\"*\"]', NULL, '2022-09-14 16:52:29', '2022-09-14 16:52:29'),
(199, 'App\\Models\\Student', 47, 'sz', 'cda3c089e49267cdc7116c805e9ec2561922f03fa842ba7d069a3853933ca70f', '[\"*\"]', NULL, '2022-09-14 16:55:49', '2022-09-14 16:55:49'),
(200, 'App\\Models\\Student', 47, 'sz', 'f9070696649e494cb32e20ed86f3cf2ac96431124f33a976e669ea390c5c3f1b', '[\"*\"]', NULL, '2022-09-14 16:57:37', '2022-09-14 16:57:37'),
(201, 'App\\Models\\Student', 47, 'sz', '314a4507d5bb18f92496880dad2dd8c9e0aab7866b832b8bdb503cbc95f2bca1', '[\"*\"]', NULL, '2022-09-14 17:00:52', '2022-09-14 17:00:52'),
(202, 'App\\Models\\Student', 47, 'sz', 'fa35d1495cd6033c2280ebbdc5aa08835e8c8920fd06a6318008f9d26dee3423', '[\"*\"]', NULL, '2022-09-14 17:19:46', '2022-09-14 17:19:46'),
(203, 'App\\Models\\Student', 47, 'sz', 'f3ab7f1440a813a63feea4585e86269e740ec68200175398c032f9925ccd6aaa', '[\"*\"]', NULL, '2022-09-14 17:38:18', '2022-09-14 17:38:18'),
(204, 'App\\Models\\Student', 47, 'sz', 'be8d91c794d7b1c791ec4e5aee68063cad31047bc7d8acb906a3904b98e6ab84', '[\"*\"]', NULL, '2022-09-14 17:39:47', '2022-09-14 17:39:47'),
(205, 'App\\Models\\Student', 47, 'sz', '04bb37cb0a6792e597263c1248eff4c68ed6b7068e8130d74958d35d3b290e72', '[\"*\"]', NULL, '2022-09-14 20:04:57', '2022-09-14 20:04:57'),
(206, 'App\\Models\\Student', 47, 'sz', 'fd88500fd348b54590250a894af0ed05e3766f697be663a408f821222e58f939', '[\"*\"]', NULL, '2022-09-14 20:05:50', '2022-09-14 20:05:50'),
(207, 'App\\Models\\Student', 47, 'sz', '3602a55a0bbeed244b12117042e353a3e43ed5939410a2c57952c35380238285', '[\"*\"]', NULL, '2022-09-14 20:06:27', '2022-09-14 20:06:27'),
(208, 'App\\Models\\Student', 47, 'sz', 'c0378c399bfefaec164d488ecdb289cf008ebeddc6bc8ed074fab19dc10a97c5', '[\"*\"]', NULL, '2022-09-14 20:06:48', '2022-09-14 20:06:48'),
(209, 'App\\Models\\Student', 47, 'sz', 'dc7ef58c87d673a6c770bce847e20592ac745a1929af21634926d4f4bf4b174e', '[\"*\"]', NULL, '2022-09-14 20:07:07', '2022-09-14 20:07:07'),
(210, 'App\\Models\\Student', 47, 'sz', '94f34377bc05f248562c4a7861c9b9435d661905930ec37cab53a8de62035e54', '[\"*\"]', NULL, '2022-09-14 20:07:33', '2022-09-14 20:07:33'),
(211, 'App\\Models\\Student', 47, 'sz', 'e11b9ae654bcc1ece81329e2053eca8491857945932e4ca72fd774d85e0f1afa', '[\"*\"]', NULL, '2022-09-14 20:08:07', '2022-09-14 20:08:07'),
(212, 'App\\Models\\Student', 47, 'sz', 'e5cf5a381a4789ecb2d5d18adc1e30ffbc3928cd62bcff73d395b13b3dad9035', '[\"*\"]', NULL, '2022-09-14 20:08:35', '2022-09-14 20:08:35'),
(213, 'App\\Models\\Student', 47, 'sz', 'db5bde84137cca44a0e3fa19ca89759a1c4dbacf076397f7836710c7ca6230e4', '[\"*\"]', NULL, '2022-09-14 20:09:22', '2022-09-14 20:09:22'),
(214, 'App\\Models\\Student', 47, 'sz', '467587221c2da0bf60f9cdcd2ee7b8fda0ed9c2bc582ad2027b3e8ed14bbffe9', '[\"*\"]', NULL, '2022-09-14 20:10:21', '2022-09-14 20:10:21'),
(215, 'App\\Models\\Student', 47, 'sz', 'b5c6c33ad0504293801f21e5d5c6b3af426e702a317008716ca9bffa7918d84e', '[\"*\"]', NULL, '2022-09-15 13:14:38', '2022-09-15 13:14:38'),
(216, 'App\\Models\\Student', 47, 'sz', '315cc9c107990f3256351d948aa7a65363d8268e04bc1f1ee02b39a3be1a2f19', '[\"*\"]', NULL, '2022-09-15 16:09:06', '2022-09-15 16:09:06'),
(217, 'App\\Models\\Student', 47, 'sz', '24d06705694c57149459d6bcd6c46fb8c8ef1e737d95360dd1f42d633943d381', '[\"*\"]', NULL, '2022-09-15 16:13:08', '2022-09-15 16:13:08'),
(218, 'App\\Models\\Student', 47, 'sz', '4b5a765f629df8b25497a52934896d7b1874696aeae7ee3c75de5a9c0bc495d6', '[\"*\"]', NULL, '2022-09-15 17:59:21', '2022-09-15 17:59:21'),
(219, 'App\\Models\\Student', 47, 'sz', 'b0245735e26cb649535f3bbc06192f2f3a7257d23ce2a186956c3926843814a5', '[\"*\"]', NULL, '2022-09-15 18:40:08', '2022-09-15 18:40:08'),
(220, 'App\\Models\\Student', 47, 'sz', 'ee012704478aa691234ab8714edd36619ede01aea323c976ffbcc759317ea705', '[\"*\"]', NULL, '2022-09-15 20:49:05', '2022-09-15 20:49:05'),
(221, 'App\\Models\\Student', 47, 'sz', '39b4b7d74f6cbb22e37f7a21b25ef27aac2060d8834b20b23b1db1b17d56af50', '[\"*\"]', NULL, '2022-09-15 22:11:07', '2022-09-15 22:11:07'),
(222, 'App\\Models\\Student', 47, 'sz', 'c587242a1d32ab1e0ad78f51d6efb99d0eb3a5f74e168dcea0d35459945a0a93', '[\"*\"]', NULL, '2022-09-15 22:34:56', '2022-09-15 22:34:56'),
(223, 'App\\Models\\Student', 47, 'sz', '7eea66afd4153d0d7fdfff306c8a1c43a4e2f328d7cc0fee43eddc24298b4290', '[\"*\"]', NULL, '2022-09-15 22:38:42', '2022-09-15 22:38:42'),
(224, 'App\\Models\\Student', 47, 'sz', 'c5088595c4a0e3ef21f306cc19312d41c2265fc01615dea4ef295b275b39268a', '[\"*\"]', NULL, '2022-09-15 22:45:15', '2022-09-15 22:45:15'),
(225, 'App\\Models\\Student', 47, 'sz', '99f421b5c46b8b3aae6cb77ef44c20663b1d03a522f8748861ee13895554e000', '[\"*\"]', NULL, '2022-09-19 12:54:56', '2022-09-19 12:54:56'),
(226, 'App\\Models\\Student', 47, 'sz', 'ade8a43521857f4bee209c21c079405c4518c485d05d62990b1c1e8d8a996bde', '[\"*\"]', NULL, '2022-09-19 12:59:06', '2022-09-19 12:59:06'),
(227, 'App\\Models\\Student', 47, 'sz', '223379be195cb3dbf0893aa61fb7f2d3a2437555e6210f804bf446cf3c148818', '[\"*\"]', NULL, '2022-09-19 17:42:54', '2022-09-19 17:42:54'),
(228, 'App\\Models\\Student', 47, 'sz', '2157e47293ceea7b628c75fc55e6fd23cbca0ad470897c95f3fcf1d80936fef8', '[\"*\"]', NULL, '2022-09-19 18:07:28', '2022-09-19 18:07:28'),
(229, 'App\\Models\\Student', 47, 'sz', '526a77235b805e64d4d4d4b1379f44d0ef11672fb5fc1306d1d86d24f5a3db49', '[\"*\"]', NULL, '2022-09-19 18:33:32', '2022-09-19 18:33:32'),
(230, 'App\\Models\\Student', 47, 'sz', '47b7993ff011fe385f56b88064343bb2510cc7b22bea7ad4654cac25746223ba', '[\"*\"]', NULL, '2022-09-19 20:26:58', '2022-09-19 20:26:58'),
(231, 'App\\Models\\Student', 47, 'sz', 'bde4f63e7c3d6076b7fa29782d47df86130c3e9b98df06784d0dc5a4e78ab2b5', '[\"*\"]', NULL, '2022-09-20 12:18:11', '2022-09-20 12:18:11'),
(232, 'App\\Models\\Student', 47, 'sz', 'b3f06f73ebf8087a9e0e9ce8b3df1a35c5e26f51c140336c2bfbe50d4f1529ed', '[\"*\"]', NULL, '2022-09-20 12:22:59', '2022-09-20 12:22:59'),
(233, 'App\\Models\\Student', 47, 'sz', 'e5842ef20c907da0104de1d5927218a81ae0db93c6acfa3f67438386337b8dd1', '[\"*\"]', NULL, '2022-09-20 12:30:24', '2022-09-20 12:30:24'),
(234, 'App\\Models\\Student', 47, 'sz', '22ce7f812b02036b0d32a8f598d511ca0c5bebfce9618b7412f61ec0a9af1b50', '[\"*\"]', NULL, '2022-09-20 12:33:23', '2022-09-20 12:33:23'),
(235, 'App\\Models\\Student', 47, 'sz', 'b22d9a996f802eb81fa1271f256125d25b09eb9c02d5292e6e8b21ae447317b8', '[\"*\"]', NULL, '2022-09-20 12:45:49', '2022-09-20 12:45:49'),
(236, 'App\\Models\\Student', 47, 'sz', '3ccd030d67b8f60645ea2ea0056e530d01815b3e348a5bf3173182c8aeaa5219', '[\"*\"]', NULL, '2022-09-20 12:47:46', '2022-09-20 12:47:46'),
(237, 'App\\Models\\Student', 47, 'sz', '12f2d2f61db025d16e23a2f06df199f3b94e48b70d60cc35f9223b0530357d74', '[\"*\"]', NULL, '2022-09-20 13:28:27', '2022-09-20 13:28:27'),
(238, 'App\\Models\\Student', 47, 'sz', 'b02be08785bf9ad771025db7a19d0deb4092c69bbc22ad8d6cdcfd7a13a13fb2', '[\"*\"]', NULL, '2022-09-20 14:06:58', '2022-09-20 14:06:58'),
(239, 'App\\Models\\Student', 47, 'sz', '4001fb90c8ee959e1d45204c9cc63121ca1957f7d77704bfb626f4b6cbf3fa12', '[\"*\"]', NULL, '2022-09-20 14:20:04', '2022-09-20 14:20:04'),
(240, 'App\\Models\\Student', 47, 'sz', '7fc404ed67a1f3a22c8bc826c313a3d4735d8e9b337da5778f5140c47c87f8a3', '[\"*\"]', NULL, '2022-09-20 14:28:19', '2022-09-20 14:28:19'),
(241, 'App\\Models\\Student', 47, 'sz', 'a2535c5c798fddff82ecd7df2d8176c594bac0e916b9f2025cf20e08856b8e9b', '[\"*\"]', NULL, '2022-09-20 16:39:39', '2022-09-20 16:39:39'),
(242, 'App\\Models\\Student', 47, 'sz', 'bb087b42e5931bafccca97ee024de5ddcad1599a0e9278864bcefece3d0d3815', '[\"*\"]', NULL, '2022-09-20 16:56:56', '2022-09-20 16:56:56'),
(243, 'App\\Models\\Student', 47, 'sz', '2c71d3df63800e4a69c228974b4f8360a35188cb0ff28b6e71d15334edfd77ee', '[\"*\"]', NULL, '2022-09-20 17:02:53', '2022-09-20 17:02:53'),
(244, 'App\\Models\\Student', 47, 'sz', 'd3b6fd7c5e6212f3ba7bcd10bbfc4064bb2c252a062c804e414bef3bf471e527', '[\"*\"]', NULL, '2022-09-20 17:20:54', '2022-09-20 17:20:54'),
(245, 'App\\Models\\Student', 47, 'sz', 'de28f52caa34b23382287f54982818cb9afd607b3d6ef077a02c258d579bfa28', '[\"*\"]', NULL, '2022-09-20 18:00:33', '2022-09-20 18:00:33'),
(246, 'App\\Models\\Student', 47, 'sz', '47f188090f87a49d990c518d7a328dbeb6d233f587ea6060830bec15a6aa6f29', '[\"*\"]', NULL, '2022-09-21 12:49:25', '2022-09-21 12:49:25'),
(247, 'App\\Models\\Student', 47, 'sz', '77cacfa6976bc75a1ed4cdac3e7d8b746818cbe2cede4df602c24461f02e3aea', '[\"*\"]', NULL, '2022-09-21 16:53:27', '2022-09-21 16:53:27'),
(248, 'App\\Models\\Student', 47, 'sz', '68fb073fd6b3c4b4d2f105d72297c9305f173d91d23bf6d9a45398d14e9d89e8', '[\"*\"]', NULL, '2022-09-21 18:01:57', '2022-09-21 18:01:57'),
(249, 'App\\Models\\Student', 47, 'sz', 'f4cf7b481fab0ff070511af8af1f1323a5ab1c5fd60509cf4aaedea6573b70b0', '[\"*\"]', NULL, '2022-09-21 20:17:24', '2022-09-21 20:17:24'),
(250, 'App\\Models\\Student', 47, 'sz', '37f9c31d5d816e9861c63187755525b2057ad56d84d331ff9d2f8fb95f2b14e1', '[\"*\"]', NULL, '2022-09-21 20:17:24', '2022-09-21 20:17:24'),
(251, 'App\\Models\\Student', 47, 'sz', '9d2d14ba05f0c6e24bbc836a73e33a6a27b0e6ffa6fad032601a7b6af47f76bf', '[\"*\"]', NULL, '2022-09-21 20:21:13', '2022-09-21 20:21:13'),
(252, 'App\\Models\\Student', 47, 'sz', '74dcf06db5fc481acb07b04df2fbd8abe44ab1659f288cc715a0f5993b3224e9', '[\"*\"]', NULL, '2022-09-22 13:06:25', '2022-09-22 13:06:25'),
(253, 'App\\Models\\Student', 47, 'sz', 'ea8ec4edf73d7ad83244e914890c178ec16a4fbc66e1f2121cdddc2237f1589f', '[\"*\"]', NULL, '2022-09-22 13:25:39', '2022-09-22 13:25:39'),
(254, 'App\\Models\\Student', 47, 'sz', '2890fb47dde7aabeac6e96b16028204cf570ab8f0ca21ee61e8f2e08acb36f52', '[\"*\"]', NULL, '2022-09-22 13:26:14', '2022-09-22 13:26:14'),
(255, 'App\\Models\\Student', 47, 'sz', '329b1648c8c31eca59df5238e69627393d01e05cee01641ce1f59c2f20d76f3d', '[\"*\"]', NULL, '2022-09-22 13:50:16', '2022-09-22 13:50:16'),
(256, 'App\\Models\\Student', 47, 'sz', 'de8ca641da4c4e2665fda567954bf6c4d5394f74bbd5f0377332a1d4f80f4d59', '[\"*\"]', NULL, '2022-09-22 13:51:13', '2022-09-22 13:51:13'),
(257, 'App\\Models\\Student', 47, 'sz', '438c636736fc82e3bd40c35cbd3eca3607e0954da06499a8213048bdfd8445d0', '[\"*\"]', NULL, '2022-09-22 14:23:16', '2022-09-22 14:23:16'),
(258, 'App\\Models\\Student', 47, 'sz', 'cee19294f5969f4d59e021a4c2940a23184b45462aee5249c80a23d40412dde8', '[\"*\"]', NULL, '2022-09-22 14:25:59', '2022-09-22 14:25:59'),
(259, 'App\\Models\\Student', 47, 'sz', '8dea5c6b7fb35affd862aa6c5dc2f91490e9cec1d571588ac494779ad570ce16', '[\"*\"]', NULL, '2022-09-22 14:27:50', '2022-09-22 14:27:50'),
(260, 'App\\Models\\Student', 47, 'sz', '2a8a476df86bdf45194a43acd84df9f9d604fa7613f5a3b254b84b0f421a2e42', '[\"*\"]', NULL, '2022-09-22 14:39:25', '2022-09-22 14:39:25'),
(261, 'App\\Models\\Student', 47, 'sz', 'cbcbe06e0ae8f9cdc0205068a90184154dd851c3c36ea3ba522f5b7fbb7be5a7', '[\"*\"]', NULL, '2022-09-22 14:41:23', '2022-09-22 14:41:23'),
(262, 'App\\Models\\Student', 47, 'sz', '2757b721ef780abe5e1c5330b652d24024f9a4958872c2fa837f597b4d7488f4', '[\"*\"]', NULL, '2022-09-22 14:42:55', '2022-09-22 14:42:55'),
(263, 'App\\Models\\Student', 47, 'sz', 'f531613031caf0ccc0b34b283026023b6093e0729851be8e414cb38c32e9733f', '[\"*\"]', NULL, '2022-09-22 14:46:55', '2022-09-22 14:46:55'),
(264, 'App\\Models\\Student', 47, 'sz', '1bb29176136ceaaee9ea8a69d5b4abece86159be6882072ab834ee99675aa233', '[\"*\"]', NULL, '2022-09-22 14:55:13', '2022-09-22 14:55:13'),
(265, 'App\\Models\\Student', 47, 'sz', 'eafa49858622e42dc9dba37a118f092edc858d3f5eb763ae7f09d48b9df84cc3', '[\"*\"]', NULL, '2022-09-22 14:57:29', '2022-09-22 14:57:29'),
(266, 'App\\Models\\Student', 47, 'sz', '388ac804a2338839c6e4d371a243f146414d79a9c2d95ebd12028fb62a09e08e', '[\"*\"]', NULL, '2022-09-22 15:42:23', '2022-09-22 15:42:23'),
(267, 'App\\Models\\Student', 47, 'sz', '13096af917f3007f42605d44cf1a4954c43b8327b69b2cd952082cb1353aa5e2', '[\"*\"]', NULL, '2022-09-22 18:32:12', '2022-09-22 18:32:12'),
(268, 'App\\Models\\Student', 47, 'sz', 'fa22a953f4b7a726b8ce7249f3b2fe1c3523afcee34f445f566338edffe29f52', '[\"*\"]', NULL, '2022-09-22 18:32:17', '2022-09-22 18:32:17'),
(269, 'App\\Models\\Student', 47, 'sz', '441b4201384a9e1cdf2fe111458a6e842f384a88a62281cf0ad919bcc9720c3e', '[\"*\"]', NULL, '2022-09-22 18:32:31', '2022-09-22 18:32:31'),
(270, 'App\\Models\\Student', 47, 'sz', '4253cbad6fb7413894011bf1ca8071d023da1c6b033e08b62d773a7964cbdf0c', '[\"*\"]', NULL, '2022-09-22 18:33:27', '2022-09-22 18:33:27'),
(271, 'App\\Models\\Student', 47, 'sz', '256cf4893aded8f5881504c6cb24bc70595306d813066288e835a6a4d5e2f778', '[\"*\"]', NULL, '2022-09-22 18:34:23', '2022-09-22 18:34:23'),
(272, 'App\\Models\\Student', 47, 'sz', 'caddd87b0be0493c36e85c57ce7f2976079374c3c989d64989f712e9433911f5', '[\"*\"]', NULL, '2022-09-22 18:35:47', '2022-09-22 18:35:47'),
(273, 'App\\Models\\Student', 47, 'sz', '968c38a05bb13fdb4d6aa79048c977826763575eebe9cf96884dba124c9bc5f7', '[\"*\"]', NULL, '2022-09-22 18:37:11', '2022-09-22 18:37:11'),
(274, 'App\\Models\\Student', 47, 'sz', '6383cc50d3e0751d6b0f7c506911a67a753efee60500c5237b6389d68481ac02', '[\"*\"]', NULL, '2022-09-22 18:39:07', '2022-09-22 18:39:07'),
(275, 'App\\Models\\Student', 47, 'sz', '477e2c2d1353b164c4b1413292f13a9b018b1c006d496b23a883a32f48150531', '[\"*\"]', NULL, '2022-09-22 18:40:34', '2022-09-22 18:40:34'),
(276, 'App\\Models\\Student', 47, 'sz', '1738fbb868c2726fa8190a5a846d96df6ac09ff331f6b5ec317f094a80190bc0', '[\"*\"]', NULL, '2022-09-22 19:09:09', '2022-09-22 19:09:09'),
(277, 'App\\Models\\Student', 47, 'sz', 'daf4954a7bf1d2cb13f8bd47e472e5102e50cc97a51ba44c16c9b69c49b8b7c0', '[\"*\"]', NULL, '2022-09-22 20:05:13', '2022-09-22 20:05:13'),
(278, 'App\\Models\\Student', 47, 'sz', 'a3222ddd52c3da9ec19c42634df4d714579eeafd17a99c24399985937dd49d19', '[\"*\"]', NULL, '2022-09-22 20:20:37', '2022-09-22 20:20:37'),
(279, 'App\\Models\\Student', 47, 'sz', '5b0fb88da8b48df9fbe265a61caa299cda76655c6ebe7ddd05deb2319f0abbd1', '[\"*\"]', NULL, '2022-09-22 20:36:34', '2022-09-22 20:36:34'),
(280, 'App\\Models\\Student', 47, 'sz', '74ce2bd8b889f905f15fb4fe14cba39e78fffa979880efd9b6425241115ee471', '[\"*\"]', NULL, '2022-09-22 20:58:40', '2022-09-22 20:58:40'),
(281, 'App\\Models\\Student', 47, 'sz', '711fe82aebf921a3372ad51137f0250e4a6b132a422ffea61f236c956f52850e', '[\"*\"]', NULL, '2022-09-22 21:00:58', '2022-09-22 21:00:58'),
(282, 'App\\Models\\Student', 47, 'sz', '6b6ddb8354038e249e294861ae6c1ddf1140cd05f824abde2b5de2c91dbbb606', '[\"*\"]', NULL, '2022-09-22 21:11:56', '2022-09-22 21:11:56'),
(283, 'App\\Models\\Student', 47, 'sz', '8e408dd46368d439fc0ee5096819332182566ae0fe0c4c850c8073c129124caa', '[\"*\"]', NULL, '2022-09-22 21:18:29', '2022-09-22 21:18:29'),
(284, 'App\\Models\\Student', 47, 'sz', 'c5f9be3bef1785afb2124d6c746ba0cc3af0a46ad3866e3c80c4b051e6a6ee00', '[\"*\"]', NULL, '2022-09-23 13:45:29', '2022-09-23 13:45:29'),
(285, 'App\\Models\\Student', 47, 'sz', 'fb12e7febc6f762f78c3d11976c9ba2e5d622381869deba50b74544ad4d36bed', '[\"*\"]', NULL, '2022-09-23 14:10:00', '2022-09-23 14:10:00'),
(286, 'App\\Models\\Student', 47, 'sz', 'b996ce5d6a6561ea761302d28738526c5deb203a452c820c0b68ead2946ef7f8', '[\"*\"]', NULL, '2022-09-23 14:17:51', '2022-09-23 14:17:51'),
(287, 'App\\Models\\Student', 47, 'sz', 'd852c791e8412048c80dc0f8b79bbd1632f6ee16b45265378492b11c0b1404bc', '[\"*\"]', NULL, '2022-09-23 14:24:00', '2022-09-23 14:24:00'),
(288, 'App\\Models\\Student', 47, 'sz', 'd41e8f87710c4276dfac713f8114f3fb2b785571567627ca150762781d31075f', '[\"*\"]', NULL, '2022-09-23 14:26:05', '2022-09-23 14:26:05'),
(289, 'App\\Models\\Student', 47, 'sz', 'df32f5ba06ad7c3214cabe8cd5c730ab1964e24e3c62281ee392899cd5de0455', '[\"*\"]', NULL, '2022-09-23 14:27:19', '2022-09-23 14:27:19'),
(290, 'App\\Models\\Student', 47, 'sz', '831d5db5cbfb851d48959e42d451baadc831d760500c9d4ab2cca6a10900d54d', '[\"*\"]', NULL, '2022-09-23 14:30:55', '2022-09-23 14:30:55'),
(291, 'App\\Models\\Student', 47, 'sz', 'd27a4d34b7a7ad60fa236447759aef9005b4e2af51970a803350efc86b8b0749', '[\"*\"]', NULL, '2022-09-23 14:34:04', '2022-09-23 14:34:04'),
(292, 'App\\Models\\Student', 47, 'sz', 'bda9fd736e6d390918f5cb753d7fa4e4f39a1b11c8f1bd7b1e3f0e72063139d4', '[\"*\"]', NULL, '2022-09-23 14:35:59', '2022-09-23 14:35:59'),
(293, 'App\\Models\\Student', 47, 'sz', '00c3cb3889c1ab284e3f431ff062bdd270aa233c5a3e84be6843300518d43ffb', '[\"*\"]', NULL, '2022-09-23 14:39:03', '2022-09-23 14:39:03'),
(294, 'App\\Models\\Student', 47, 'sz', 'f0ee9a9d06dd68feca28c433eb86f64f9907c350ac32f4abeaf0f1057dd374f0', '[\"*\"]', NULL, '2022-09-23 14:40:45', '2022-09-23 14:40:45'),
(295, 'App\\Models\\Student', 47, 'sz', '491bc2369713929819d7183da5fbd182afcd96f5cf3ee42181904a50e2bbcb41', '[\"*\"]', NULL, '2022-09-23 16:33:21', '2022-09-23 16:33:21'),
(296, 'App\\Models\\Student', 47, 'sz', 'd382ac5377d4562535afb52d7e983015258ca5cb6cecbf83bd606460a9c75abe', '[\"*\"]', NULL, '2022-09-23 16:37:45', '2022-09-23 16:37:45'),
(297, 'App\\Models\\Student', 47, 'sz', '8646627761fe7106288ee6806d1e33595a49a33f9656e8fd018027ee31612066', '[\"*\"]', NULL, '2022-09-23 20:18:54', '2022-09-23 20:18:54'),
(298, 'App\\Models\\Student', 47, 'sz', 'ccec4a7ec78116b644c10a7bdc6bebe33d252240dd9848d17d5ec703c66d179f', '[\"*\"]', NULL, '2022-09-23 21:30:20', '2022-09-23 21:30:20'),
(299, 'App\\Models\\Student', 47, 'sz', '6e64c623b6f66a6daacf1ff827478a11fe0f620774d405e56c1934aaedc3d57d', '[\"*\"]', NULL, '2022-09-23 21:46:53', '2022-09-23 21:46:53'),
(300, 'App\\Models\\Student', 47, 'sz', '4424aedb56a4f8b858f57c0a1f77cec6e5c069bf0e6ad8fff3cd2981d76577e5', '[\"*\"]', NULL, '2022-09-25 21:08:58', '2022-09-25 21:08:58'),
(301, 'App\\Models\\Student', 47, 'sz', '16645739e7ed03cabb2c5b69f1eddc57b24d9b68470391d5afef743679aa9351', '[\"*\"]', NULL, '2022-09-26 12:03:19', '2022-09-26 12:03:19'),
(302, 'App\\Models\\Student', 47, 'sz', '2be348a801a1a7ccd3a9db2e7e3083e370cfac5a138fc1a79bc835dfe1c86954', '[\"*\"]', NULL, '2022-09-26 14:51:35', '2022-09-26 14:51:35'),
(303, 'App\\Models\\Student', 47, 'sz', '07c076a36639195968c34f3df9fc39fd5dcd0535e5dc23b2618354197c9f3d0f', '[\"*\"]', NULL, '2022-09-27 11:44:34', '2022-09-27 11:44:34'),
(304, 'App\\Models\\Student', 47, 'sz', 'fd792f518054fe56cf8adce18e4a1df90d669d2e9844dd43003df8d9d69e54dc', '[\"*\"]', NULL, '2022-09-27 11:44:52', '2022-09-27 11:44:52'),
(305, 'App\\Models\\Student', 47, 'sz', '323cf6d91cf539f74bb9e20ca9ea5260e86c2f49d1324f411b94c8e9de90581b', '[\"*\"]', NULL, '2022-09-27 13:49:39', '2022-09-27 13:49:39'),
(306, 'App\\Models\\Student', 47, 'sz', '6b9a72a4cff66c27129e84fcf364fe2e7516fe7501e8ba886618b5213e60c49f', '[\"*\"]', NULL, '2022-09-27 14:56:17', '2022-09-27 14:56:17'),
(307, 'App\\Models\\Student', 47, 'sz', '8c4a8287532ad87d204ac84c96bd489a26e3d04f517f08a60832cc84df876007', '[\"*\"]', NULL, '2022-09-27 14:58:32', '2022-09-27 14:58:32'),
(308, 'App\\Models\\Student', 47, 'sz', 'a3b11893a68597f93696ab3d367cefa5e218afb28b6e24d5dbedae4989fe3d5f', '[\"*\"]', NULL, '2022-09-27 16:39:55', '2022-09-27 16:39:55'),
(309, 'App\\Models\\Student', 47, 'sz', 'b4d69365c1e68c93a7ff44c68812a98797eed8185420a5ea295a0eec63339465', '[\"*\"]', NULL, '2022-09-27 16:41:01', '2022-09-27 16:41:01'),
(310, 'App\\Models\\Student', 47, 'sz', '37a2dc15635cb0c6e1ded76571d7cbc1aa775cb43f233ad961812b0d958769f8', '[\"*\"]', NULL, '2022-09-27 16:41:46', '2022-09-27 16:41:46'),
(311, 'App\\Models\\Student', 47, 'sz', '9357a835514070b5926af3c520e0d3e9791c21e482c41cd86b6ce100a78b5349', '[\"*\"]', NULL, '2022-09-27 16:45:04', '2022-09-27 16:45:04'),
(312, 'App\\Models\\Student', 47, 'sz', 'af8cc3936383c34adb4c36d7942e1e1977288b2a3c4ed03e57e5e45d31c159c9', '[\"*\"]', NULL, '2022-09-27 16:45:46', '2022-09-27 16:45:46'),
(313, 'App\\Models\\Student', 47, 'sz', 'd0ce32eca3faa45a3479e2a87bd5c6752aa9d9a8316229c180e9977c2c4e5f40', '[\"*\"]', NULL, '2022-09-27 16:47:59', '2022-09-27 16:47:59'),
(314, 'App\\Models\\Student', 47, 'sz', '8312e746b81d97067bf25ea6c05fa18cfd006dd6cb55294e06816711b28e9f50', '[\"*\"]', NULL, '2022-09-27 16:56:32', '2022-09-27 16:56:32'),
(315, 'App\\Models\\Student', 47, 'sz', 'c5fd67d48327caf37388dbb7ab9ec33dedf578701d74a93c28485561457e22b0', '[\"*\"]', NULL, '2022-09-27 18:18:18', '2022-09-27 18:18:18'),
(316, 'App\\Models\\Student', 47, 'sz', 'de638d2ad29868aebb2de44eae0197efc544a640fcefd0ec4b2447d34f2aae63', '[\"*\"]', NULL, '2022-09-27 18:24:28', '2022-09-27 18:24:28'),
(317, 'App\\Models\\Student', 47, 'sz', '0946b4f57ffd506f5b7aa1ce0c6e10d2a03f01fcff7be70ccce3a4aeeb8418aa', '[\"*\"]', NULL, '2022-09-27 18:28:36', '2022-09-27 18:28:36');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(318, 'App\\Models\\Student', 47, 'sz', '6fcd4f27879d03636400e6c3945a4bab5b699249bbf26db7fc98a10263e69caf', '[\"*\"]', NULL, '2022-09-27 18:31:22', '2022-09-27 18:31:22'),
(319, 'App\\Models\\Student', 47, 'sz', 'dad5c540fc41beb4917cf0e1b795d0bc9a2329ab030866b518b181e2baa5891b', '[\"*\"]', NULL, '2022-09-27 18:32:31', '2022-09-27 18:32:31'),
(320, 'App\\Models\\Student', 47, 'sz', '3f6274f790daa00328f257cd06916ff919df47b22a7f0edbae8b929f132a5e00', '[\"*\"]', NULL, '2022-09-27 18:42:12', '2022-09-27 18:42:12'),
(321, 'App\\Models\\Student', 47, 'sz', '355507a0dedce3b78b8ef59e6cb2cb6db866367e1a43bdc10e4eb56d0fe9f324', '[\"*\"]', NULL, '2022-09-27 20:10:22', '2022-09-27 20:10:22'),
(322, 'App\\Models\\Student', 47, 'sz', 'bd15b641801094bb77653f7265e7667a6b01667631770f695d016e613adbf0cb', '[\"*\"]', NULL, '2022-09-27 20:12:44', '2022-09-27 20:12:44'),
(323, 'App\\Models\\Student', 47, 'sz', '243dd0d0a6cdfabe1558a5de6359edf3b408dcdcac9e0884568f82284aa6be94', '[\"*\"]', NULL, '2022-09-28 12:54:09', '2022-09-28 12:54:09'),
(324, 'App\\Models\\Student', 47, 'sz', 'bca6689295ff290a36097d8fc908390ed87b01693bf7b3ccd6f6e77ddf1e9faf', '[\"*\"]', NULL, '2022-09-28 13:18:41', '2022-09-28 13:18:41'),
(325, 'App\\Models\\Student', 47, 'sz', 'f0897fa6366a805188642a8134742f7d549ddcd56e4e7ed5b2b559675c10bf86', '[\"*\"]', NULL, '2022-09-28 13:28:49', '2022-09-28 13:28:49'),
(326, 'App\\Models\\Student', 47, 'sz', '27f3bcafe6848e50ca734f78182e76c6be7f69f7a72325dd5c8e36c817ca56e2', '[\"*\"]', NULL, '2022-09-28 13:33:16', '2022-09-28 13:33:16'),
(327, 'App\\Models\\Student', 47, 'sz', 'd32adaf77dfd6acf033ae79517f83b37cebb2bcbeb1ecf1e578f3ae09eee8b5a', '[\"*\"]', NULL, '2022-09-28 14:22:14', '2022-09-28 14:22:14'),
(328, 'App\\Models\\Student', 47, 'sz', 'd79c74e35f2ec3791f9c3a40efdf992d10682a4feb72aee72d8ce8d5544d6f0b', '[\"*\"]', NULL, '2022-09-28 15:18:13', '2022-09-28 15:18:13'),
(329, 'App\\Models\\Student', 47, 'sz', '6e6115fea7fac544d48ff16f7f9946ca0790ea90de6635ec482e8afaf9a5b967', '[\"*\"]', NULL, '2022-09-28 18:03:28', '2022-09-28 18:03:28'),
(330, 'App\\Models\\Student', 47, 'sz', '6dc15dc9fa47749c3949bb407ea02f62323c83d2da3051737249f01b55d868e7', '[\"*\"]', NULL, '2022-09-28 19:11:23', '2022-09-28 19:11:23'),
(331, 'App\\Models\\Student', 47, 'sz', '773ed13ae2af2d596b99127c69ec2e942cfe9a65463864155eaac3f79881a6b0', '[\"*\"]', NULL, '2022-09-28 20:23:35', '2022-09-28 20:23:35'),
(332, 'App\\Models\\Student', 47, 'sz', 'b4aa1e31dc6e5e81878ceed95e9225c8bc06df021f4bc3c6393c17662b639484', '[\"*\"]', NULL, '2022-09-28 20:39:31', '2022-09-28 20:39:31'),
(333, 'App\\Models\\Student', 47, 'sz', 'c55f84b9ef412adfba9b2533b16282ee5041d5e286b19044019f8392198165af', '[\"*\"]', NULL, '2022-09-28 20:39:40', '2022-09-28 20:39:40'),
(334, 'App\\Models\\Student', 47, 'sz', '398ba7cc40aaaf991453b2d625e28c2aa26ab03cdeb0620bee8985cf9651deaf', '[\"*\"]', NULL, '2022-09-28 20:39:59', '2022-09-28 20:39:59'),
(335, 'App\\Models\\Student', 47, 'sz', '57b78712e05f95fb1f327778312f1cad22da724dc8615509d2266c24ff7058c8', '[\"*\"]', NULL, '2022-09-28 20:40:02', '2022-09-28 20:40:02'),
(336, 'App\\Models\\Student', 47, 'sz', '831a448a428ff0a436b028e2dbdbbcaa38a00f751b6e210f7e321fc9d8eb6910', '[\"*\"]', NULL, '2022-09-28 20:42:01', '2022-09-28 20:42:01'),
(337, 'App\\Models\\Student', 47, 'sz', '4307e8f4a8385b18e1def00b9475db3195138f1187204b6fffaa89e677905570', '[\"*\"]', NULL, '2022-09-29 12:59:22', '2022-09-29 12:59:22'),
(338, 'App\\Models\\Student', 47, 'sz', '6c5c28560d25d0a3b2e8a8ef743388be954480b7e133caed284a36bcc7b25e05', '[\"*\"]', NULL, '2022-09-29 13:53:56', '2022-09-29 13:53:56'),
(339, 'App\\Models\\Student', 47, 'sz', '0be3b7f8fa34ed2a990dc554e0c0a3657a36153a9079bce4c6d47bf0992be3e3', '[\"*\"]', NULL, '2022-09-29 13:57:46', '2022-09-29 13:57:46'),
(340, 'App\\Models\\Student', 47, 'sz', 'd515173811106634ea7e38381da1467a7672cdd0795e9f8545df8ffd7017122b', '[\"*\"]', NULL, '2022-09-29 14:00:10', '2022-09-29 14:00:10'),
(341, 'App\\Models\\Student', 47, 'sz', '28ca2f889ecdc1a9847d80fbd24129be9a48c4369cd25a0bec7eea593c98e811', '[\"*\"]', NULL, '2022-09-29 14:02:47', '2022-09-29 14:02:47'),
(342, 'App\\Models\\Student', 47, 'sz', '293b025f149e0e47d30769dee8ca1fc5cafaa2fac814da42682c47b2c87db5c5', '[\"*\"]', NULL, '2022-09-29 14:09:58', '2022-09-29 14:09:58'),
(343, 'App\\Models\\Student', 47, 'sz', '6a59596f3e7280a13a9f4fccae33369cdade2b0392124771fabb97d4d59caf7e', '[\"*\"]', NULL, '2022-09-29 14:10:35', '2022-09-29 14:10:35'),
(344, 'App\\Models\\Student', 47, 'sz', '7620083ed747d7c2f99d180b1bf89f64a106ca4df371249d44342c7166b3784a', '[\"*\"]', NULL, '2022-09-29 14:19:52', '2022-09-29 14:19:52'),
(345, 'App\\Models\\Student', 47, 'sz', 'db310c2c9a917a2c80fcafbfd10358828da55bfa7753ebeacbff34af5a5156f7', '[\"*\"]', NULL, '2022-09-29 14:21:38', '2022-09-29 14:21:38'),
(346, 'App\\Models\\Student', 47, 'sz', '8be3c380f72953e92bfa369c347bff4c948ae450d42ccbf7a1b943d8e9812935', '[\"*\"]', NULL, '2022-09-29 14:23:15', '2022-09-29 14:23:15'),
(347, 'App\\Models\\Student', 47, 'sz', '9e8a9f27f164c0a1f98da4319cdf16a8a84185c19c5b42d662d599cc69773acc', '[\"*\"]', NULL, '2022-09-29 14:31:55', '2022-09-29 14:31:55'),
(348, 'App\\Models\\Student', 47, 'sz', 'fe3485c7a007dc4b4ec167058e403e19751d05d7fac5ba7dcd2907306ef762bf', '[\"*\"]', NULL, '2022-09-29 14:33:28', '2022-09-29 14:33:28'),
(349, 'App\\Models\\Student', 47, 'sz', '2c270eefcd1b8ed4b3f3a61cc0caca1a05333b2844aa54822df547e0ae2ef9a8', '[\"*\"]', NULL, '2022-09-29 14:35:35', '2022-09-29 14:35:35'),
(350, 'App\\Models\\Student', 47, 'sz', 'b2cfd369819681f4fad31e1e13ef68e342638077630bae600e5d996930a4b41b', '[\"*\"]', NULL, '2022-09-29 14:36:00', '2022-09-29 14:36:00'),
(351, 'App\\Models\\Student', 47, 'sz', '69b1ad742b4df2974ce8cee08007ef582985558578e1da73e94e436639f7e2ef', '[\"*\"]', NULL, '2022-09-29 14:37:58', '2022-09-29 14:37:58'),
(352, 'App\\Models\\Student', 47, 'sz', '5fe4de52613a52cbbd0a5057d1ef6db0846308506ad2ad017d56cc74b32ba071', '[\"*\"]', NULL, '2022-09-29 14:38:34', '2022-09-29 14:38:34'),
(353, 'App\\Models\\Student', 47, 'sz', '5b90daecc8ee2823127ac432fefc7f4a1fe1eb4b78e1f33c11f794eaaf13381a', '[\"*\"]', NULL, '2022-09-29 14:40:24', '2022-09-29 14:40:24'),
(354, 'App\\Models\\Student', 47, 'sz', '887425bfa38a34ac38a33ca2cada766e5b0acb99cfee64340cfc6510f542cc6c', '[\"*\"]', NULL, '2022-09-29 14:41:36', '2022-09-29 14:41:36'),
(355, 'App\\Models\\Student', 47, 'sz', 'e782a511754c66ef79cc7a5ba67f8ccc4752a77e850b4191852f7a59cd503be0', '[\"*\"]', NULL, '2022-09-29 14:43:28', '2022-09-29 14:43:28'),
(356, 'App\\Models\\Student', 47, 'sz', '154fc437b05d35b579c890465e25fed0bd87c7989fbfca76e2667897d567bc16', '[\"*\"]', NULL, '2022-09-29 14:49:19', '2022-09-29 14:49:19'),
(357, 'App\\Models\\Student', 47, 'sz', 'd720b3d7e92006e50d67c856e6823bc353dc52adc90996f195c42377d90e9f78', '[\"*\"]', NULL, '2022-09-29 14:51:06', '2022-09-29 14:51:06'),
(358, 'App\\Models\\Student', 47, 'sz', 'ad018777bf9d3a8a6e195222175bf840664f1d736389f72dca5ea220f941d258', '[\"*\"]', NULL, '2022-09-29 14:53:48', '2022-09-29 14:53:48'),
(359, 'App\\Models\\Student', 47, 'sz', '32fe8ef5c078fa9ead61d9c851124f2744d026c0dc43caa959eb6e6c5421e022', '[\"*\"]', NULL, '2022-09-29 14:53:54', '2022-09-29 14:53:54'),
(360, 'App\\Models\\Student', 47, 'sz', 'd98e28ec6d9365c9cf616eb40e50f56fac51faf76519bd430367881a35754bd6', '[\"*\"]', NULL, '2022-09-29 14:55:21', '2022-09-29 14:55:21'),
(361, 'App\\Models\\Student', 47, 'sz', 'be340c1a5d56cfa10d129f031dbf7a7692bc46bb7a525a16fda802525892b536', '[\"*\"]', NULL, '2022-09-29 14:55:29', '2022-09-29 14:55:29'),
(362, 'App\\Models\\Student', 47, 'sz', '991f16999815d4c39bcdde816a94e9a34cbcaed702e67a9880f93ee58109c1b9', '[\"*\"]', NULL, '2022-09-29 17:05:50', '2022-09-29 17:05:50'),
(363, 'App\\Models\\Student', 47, 'sz', '6abd631648335c5730eeb64f2edd17a90cb8a1351a8fd87fae027802f0164121', '[\"*\"]', NULL, '2022-09-29 17:19:38', '2022-09-29 17:19:38'),
(364, 'App\\Models\\Student', 47, 'sz', 'd67b11966595662c3697af334b5e7827846151b17b336c33c2f334606f6cd65b', '[\"*\"]', NULL, '2022-09-29 17:27:42', '2022-09-29 17:27:42'),
(365, 'App\\Models\\Student', 47, 'sz', 'c8062bfa6b26387ff1a8e2b31ffc94706a15e9afbfb554f506dce57f9f060650', '[\"*\"]', NULL, '2022-09-29 17:27:56', '2022-09-29 17:27:56'),
(366, 'App\\Models\\Student', 47, 'sz', '5936357d848ed240edeffac4c2e39d6f240ce8329fa435362c613f371b2e4b91', '[\"*\"]', NULL, '2022-09-29 17:28:52', '2022-09-29 17:28:52'),
(367, 'App\\Models\\Student', 47, 'sz', '5a447f0ad08ba59062c330fd1c466ae5583ca3f544c63e61a9e8fbb684f6fafe', '[\"*\"]', NULL, '2022-09-29 17:31:43', '2022-09-29 17:31:43'),
(368, 'App\\Models\\Student', 47, 'sz', '09d80389828138d7ca94c9092e340f929e78aab63752ef6308c13243891d1afd', '[\"*\"]', NULL, '2022-09-29 17:38:10', '2022-09-29 17:38:10'),
(369, 'App\\Models\\Student', 47, 'sz', '8d23c1b62bdc75cc6d2b9ea7ddf415f0767ac5471e2456a2672ed03edffb7d30', '[\"*\"]', NULL, '2022-09-29 17:48:34', '2022-09-29 17:48:34'),
(370, 'App\\Models\\Student', 47, 'sz', '4011aa97c3d4e6fa4ab5c48011dc2bdc9f4479f9f0ecfc8b841e763ac92e80cc', '[\"*\"]', NULL, '2022-09-29 18:11:10', '2022-09-29 18:11:10'),
(371, 'App\\Models\\Student', 47, 'sz', '45560a2f95b0a9361fcb9f146d9c3aa06d08fbdad87e4358da45986b2bf52ae8', '[\"*\"]', NULL, '2022-09-29 18:11:26', '2022-09-29 18:11:26'),
(372, 'App\\Models\\Student', 47, 'sz', '8da330b90981f2dcd7d7bc27e69ef4518887ee8f57d945eafd326a5f80d00753', '[\"*\"]', NULL, '2022-09-29 18:13:16', '2022-09-29 18:13:16'),
(373, 'App\\Models\\Student', 47, 'sz', '5107ee52f1e1dba9884190801a77a51b6bae2e06fadafd027ed0fd4cd4b1cd2d', '[\"*\"]', NULL, '2022-09-29 18:17:49', '2022-09-29 18:17:49'),
(374, 'App\\Models\\Student', 47, 'sz', '82c85634e5def228ec2a3f6d0fc07a2a64104e56939e231bb1672e78fa1fcaa7', '[\"*\"]', NULL, '2022-09-29 18:19:48', '2022-09-29 18:19:48'),
(375, 'App\\Models\\Student', 47, 'sz', 'f1eeac7076c012cc2f64562ea73c2252be8ed282160efc1e1ed32770b1eb71c8', '[\"*\"]', NULL, '2022-09-29 18:19:59', '2022-09-29 18:19:59'),
(376, 'App\\Models\\Student', 47, 'sz', '83f46e4ed54c9789281b8618d51f5b53a2bab740c25af6f732eba36009e06cdd', '[\"*\"]', NULL, '2022-09-29 18:20:22', '2022-09-29 18:20:22'),
(377, 'App\\Models\\Student', 47, 'sz', '9b49e14c0d6768203f5c7643c0ad5341407c34325efc896517f1be675c8e9ab5', '[\"*\"]', NULL, '2022-09-29 18:21:23', '2022-09-29 18:21:23'),
(378, 'App\\Models\\Student', 47, 'sz', '0439f98269fedbeddfc7c5382737eff17e4ebc46d4f49b25d6133524a57e364c', '[\"*\"]', NULL, '2022-09-29 18:22:46', '2022-09-29 18:22:46'),
(379, 'App\\Models\\Student', 47, 'sz', '14972c830c2e3daaa740bc15ed0cc9027f575fa90726c5bafc93405f52ba5dcb', '[\"*\"]', NULL, '2022-09-29 18:32:02', '2022-09-29 18:32:02'),
(380, 'App\\Models\\Student', 47, 'sz', '6d06d7e3b590b2db8cfc30e455c131a373aa5fe53d839f776177175a68af89e8', '[\"*\"]', NULL, '2022-09-29 18:34:32', '2022-09-29 18:34:32'),
(381, 'App\\Models\\Student', 47, 'sz', 'cb898ff370313431719bf978fff1e86e5e1071dba39d249f5ed4051a58a4e639', '[\"*\"]', NULL, '2022-09-29 18:35:03', '2022-09-29 18:35:03'),
(382, 'App\\Models\\Student', 47, 'sz', 'c7cf18c9e339eb55e7b9719b788738ba5ab105075d00c59dccbb0ac24db61aad', '[\"*\"]', NULL, '2022-09-29 18:46:38', '2022-09-29 18:46:38'),
(383, 'App\\Models\\Student', 47, 'sz', '842ec3817b3206ce2676d344573db8233aebfe254c46621a4a8b336019f696cd', '[\"*\"]', NULL, '2022-09-29 18:59:14', '2022-09-29 18:59:14'),
(384, 'App\\Models\\Student', 47, 'sz', 'fdd689ef3d971f9b68dbd3ceda068b919bd4980ae9b4810cdeaa3442fe7cc6d1', '[\"*\"]', NULL, '2022-09-29 19:01:43', '2022-09-29 19:01:43'),
(385, 'App\\Models\\Student', 47, 'sz', '0bc42f82d7d440c359897473f4353b29f4a9284b4bb1d047246a093b51eec903', '[\"*\"]', NULL, '2022-09-29 19:06:25', '2022-09-29 19:06:25'),
(386, 'App\\Models\\Student', 47, 'sz', '39543f01f0ac9bab20885905136f724305d30365b8fe8e14450771b4aa9a85b3', '[\"*\"]', NULL, '2022-09-29 19:40:23', '2022-09-29 19:40:23'),
(387, 'App\\Models\\Student', 47, 'sz', '69606a9dc49b97264ff58fae15f5514fc23c806896313182d174463ccc356399', '[\"*\"]', NULL, '2022-09-29 19:40:38', '2022-09-29 19:40:38'),
(388, 'App\\Models\\Student', 47, 'sz', 'c825e546b7df842a107a1f56b8f54c45b7a609eeebc68fd3cd10e2406e42e347', '[\"*\"]', NULL, '2022-09-29 19:43:17', '2022-09-29 19:43:17'),
(389, 'App\\Models\\Student', 47, 'sz', '8986c2a1296b26482b7bfd02779b81b7ca8b7ff8a9ca5b27a9465b69eba27907', '[\"*\"]', NULL, '2022-09-29 19:45:34', '2022-09-29 19:45:34'),
(390, 'App\\Models\\Student', 47, 'sz', '71baf53e239d3bfccfe30fe3a2af6e4f78bc87fb1cdf07f92b9e9d5148f726ad', '[\"*\"]', NULL, '2022-09-29 19:45:52', '2022-09-29 19:45:52'),
(391, 'App\\Models\\Student', 47, 'sz', 'bfdf955d99ece7a12af3013754ff9b05ba58506b404c1034011b1fa55975c6f6', '[\"*\"]', NULL, '2022-09-29 19:46:59', '2022-09-29 19:46:59'),
(392, 'App\\Models\\Student', 47, 'sz', '2e651903d05d868f684c42fc0980c55da0540df745900113125ee61a72001a0c', '[\"*\"]', NULL, '2022-09-29 19:47:39', '2022-09-29 19:47:39'),
(393, 'App\\Models\\Student', 47, 'sz', '1c1290110b37aae1f78bbeac46c35b7c4f16f73af36a710857df7af5da4adb16', '[\"*\"]', NULL, '2022-09-29 20:04:18', '2022-09-29 20:04:18'),
(394, 'App\\Models\\Student', 47, 'sz', '5d17e63e49dd0a48d67530ca2d3eb9cdef2b73fd1e989f94eb11d73e132a528c', '[\"*\"]', NULL, '2022-09-29 20:04:38', '2022-09-29 20:04:38'),
(395, 'App\\Models\\Student', 47, 'sz', '66847184ca1e90be583a7865477a6e57143a4aa550e6e2702ae05e0230ed8afe', '[\"*\"]', NULL, '2022-09-30 11:25:25', '2022-09-30 11:25:25'),
(396, 'App\\Models\\Student', 47, 'sz', '4222f25114dc1858919a8ca78988fdcc71f685863d69cdd914b26351983c4d2a', '[\"*\"]', NULL, '2022-09-30 12:04:27', '2022-09-30 12:04:27'),
(397, 'App\\Models\\Student', 47, 'sz', '086e81d52306fb9fdeba44e854b989095e50db77c7fa17552faa14b2f8070501', '[\"*\"]', NULL, '2022-09-30 12:30:05', '2022-09-30 12:30:05'),
(398, 'App\\Models\\Student', 47, 'sz', '1fc804c09b1d540535fb27eb66c67df2bfe1c350566633f33bf573f7dd9007c2', '[\"*\"]', NULL, '2022-09-30 12:31:03', '2022-09-30 12:31:03'),
(399, 'App\\Models\\Student', 47, 'sz', '4643f9f0ace4a9454b3bb0468ddfe6c944547897f55d17deb2a4002e28719640', '[\"*\"]', NULL, '2022-09-30 12:33:01', '2022-09-30 12:33:01'),
(400, 'App\\Models\\Student', 47, 'sz', 'f1888d5921e5316f2a33c3925c5be6debaecdae16ec893a7fce33c712a0cc47a', '[\"*\"]', NULL, '2022-09-30 12:37:06', '2022-09-30 12:37:06'),
(401, 'App\\Models\\Student', 47, 'sz', '5c0bd90a554c2eb239cb0d2d6b1d650584866c6d94d435b63f1a0210d2fe9c53', '[\"*\"]', NULL, '2022-09-30 12:37:28', '2022-09-30 12:37:28'),
(402, 'App\\Models\\Student', 47, 'sz', '8cbeffa5b3c69669e2ab373ea26b42e0758309cf671a47a565967bb0cfadb29a', '[\"*\"]', NULL, '2022-09-30 12:45:55', '2022-09-30 12:45:55'),
(403, 'App\\Models\\Student', 47, 'sz', '39f0fd59289c964169f0f0d3a27cbf0df051e511078360b18262f41f2b14f5b6', '[\"*\"]', NULL, '2022-09-30 12:46:20', '2022-09-30 12:46:20'),
(404, 'App\\Models\\Student', 47, 'sz', '96a1d884aa1e52c075583a5afecce41922eaa96a05dcdf73df182ba19ce1e364', '[\"*\"]', NULL, '2022-09-30 12:46:31', '2022-09-30 12:46:31'),
(405, 'App\\Models\\Student', 47, 'sz', '21b2f0aa269dc87cbff92f5ec9699e12780b4af7358d44b56d4631f8581e1f06', '[\"*\"]', NULL, '2022-09-30 12:46:38', '2022-09-30 12:46:38'),
(406, 'App\\Models\\Student', 47, 'sz', '631986a53b82847a61456c312af498d03c4a927d5177d1a69696d1cd439b5790', '[\"*\"]', NULL, '2022-09-30 12:47:06', '2022-09-30 12:47:06'),
(407, 'App\\Models\\Student', 47, 'sz', '498b8db392c22f06c1af2b2eefd729d9df1b598079a8b085fada46141c3e65fd', '[\"*\"]', NULL, '2022-09-30 12:47:26', '2022-09-30 12:47:26'),
(408, 'App\\Models\\Student', 47, 'sz', 'b33b614dd924881ff1e8b91cfc7196a880f1fd7650260963f48d757543a8eb88', '[\"*\"]', NULL, '2022-09-30 12:53:59', '2022-09-30 12:53:59'),
(409, 'App\\Models\\Student', 47, 'sz', '7663587264224d0bd14331c946f499462dd07bef65d2f652c13ede36c3848f25', '[\"*\"]', NULL, '2022-09-30 12:54:47', '2022-09-30 12:54:47'),
(410, 'App\\Models\\Student', 47, 'sz', 'a1091ab92e9352c2d540fc4f75fbcb844bfb4978c1514e053a52caefb725f416', '[\"*\"]', NULL, '2022-09-30 12:54:47', '2022-09-30 12:54:47'),
(411, 'App\\Models\\Student', 47, 'sz', '44513aacf2b6812cbddf90ad7bf394ec9afe9e6d360470179201ef0e1494bc33', '[\"*\"]', NULL, '2022-09-30 13:08:47', '2022-09-30 13:08:47'),
(412, 'App\\Models\\Student', 47, 'sz', '4596f744922f6bfbc33712dcec8d4a18f1adf08979ec0b2a5c32b9fe4fa200c5', '[\"*\"]', NULL, '2022-09-30 17:51:52', '2022-09-30 17:51:52'),
(413, 'App\\Models\\Student', 47, 'sz', '4499bdb171caa8bc3078189c8f668ef087adf79680a779d8c16d4a7418ed7e71', '[\"*\"]', NULL, '2022-10-03 13:53:54', '2022-10-03 13:53:54'),
(414, 'App\\Models\\Student', 47, 'sz', '1083d6bd4418e9d074afbfb7b85e52c1bed573117e2618d03f107ee6d145e12f', '[\"*\"]', NULL, '2022-10-03 13:54:28', '2022-10-03 13:54:28'),
(415, 'App\\Models\\Student', 47, 'sz', '3480162ad33acb1f663483633b7d0c7bcaf6f2c9448de1a0cb452aeee152137f', '[\"*\"]', NULL, '2022-10-03 17:08:13', '2022-10-03 17:08:13'),
(416, 'App\\Models\\Student', 52, 'sz', '4146dcc849f3ccd3728372be108beb7a9cc56f20089fcb298f3c2d2d86d2cf14', '[\"*\"]', NULL, '2022-10-03 19:41:42', '2022-10-03 19:41:42'),
(417, 'App\\Models\\Student', 52, 'sz', '2894925ae0d8ecd34c1b20b606130a4f46410409882c2115aa624f55a6627530', '[\"*\"]', NULL, '2022-10-03 19:41:53', '2022-10-03 19:41:53'),
(418, 'App\\Models\\Student', 52, 'sz', 'dd0ec4a26a2d7a077cc0634768a2e1b28c895aa684603637b640433fc0bef7f9', '[\"*\"]', NULL, '2022-10-03 19:42:04', '2022-10-03 19:42:04'),
(419, 'App\\Models\\Student', 52, 'sz', 'e6835ff93b3f2bbc9e5d92674ee61be9baa438e5478acaad94179e2c6636bd33', '[\"*\"]', NULL, '2022-10-03 20:08:14', '2022-10-03 20:08:14'),
(420, 'App\\Models\\Student', 53, 'sz', 'a9483051cb34d19611d4b88c596b979c05f521e3be9191a65ec1714b9b4392c6', '[\"*\"]', NULL, '2022-10-03 20:11:12', '2022-10-03 20:11:12'),
(421, 'App\\Models\\Student', 53, 'sz', '88d1a689e7b71e21544bbbb7c494bbf9c766257497a024974e92ea81b9b41f7a', '[\"*\"]', NULL, '2022-10-03 20:12:22', '2022-10-03 20:12:22'),
(422, 'App\\Models\\Student', 53, 'sz', '3364fe5d97c7d32ad6c006812424d5248bc1de40237fdcf26039b28b05a83c77', '[\"*\"]', NULL, '2022-10-03 20:14:26', '2022-10-03 20:14:26'),
(423, 'App\\Models\\Student', 53, 'sz', '3ee36d30ffe8c1d416ddddff6f20064f0f0eae4724e7fec3a6c63b25d06f2074', '[\"*\"]', NULL, '2022-10-03 20:30:05', '2022-10-03 20:30:05'),
(424, 'App\\Models\\Student', 53, 'sz', '271af8397eead1e7f2780e36826d206deb291feba77f690dcb7e4f6573923a85', '[\"*\"]', NULL, '2022-10-03 20:40:26', '2022-10-03 20:40:26'),
(425, 'App\\Models\\Student', 53, 'sz', '96a5dd39c44d75046ed1ddf4c3bfce4a931a44af31dc56dbd1834884c71773d9', '[\"*\"]', NULL, '2022-10-03 20:41:42', '2022-10-03 20:41:42'),
(426, 'App\\Models\\Student', 54, 'sz', 'd8ae69f2247d8b49573b28d93b53719f50af769947e411243b5349c67d2caa2f', '[\"*\"]', NULL, '2022-10-03 21:24:15', '2022-10-03 21:24:15'),
(427, 'App\\Models\\Student', 55, 'sz', '7bdcdc6dfbbca7bdef6e3cf28d63c548df9f7b293570d8daf76c52ae45c68404', '[\"*\"]', NULL, '2022-10-03 22:18:00', '2022-10-03 22:18:00'),
(428, 'App\\Models\\Student', 55, 'sz', 'b08307bb61316fc12b42460d9a1c72c671ccd0501677379b196d1fe85b282653', '[\"*\"]', NULL, '2022-10-03 22:23:38', '2022-10-03 22:23:38'),
(429, 'App\\Models\\Student', 55, 'sz', '62b4aeaedbd8900203f3882710c5ac610b1b8d81af7395ffa3d074f314f1b6c9', '[\"*\"]', NULL, '2022-10-03 22:25:30', '2022-10-03 22:25:30'),
(430, 'App\\Models\\Student', 55, 'sz', '71d3544461e85fe90bd52253a391234171b16a988d2a7a9c64d4cc94a92f5c02', '[\"*\"]', NULL, '2022-10-03 22:25:31', '2022-10-03 22:25:31'),
(431, 'App\\Models\\Student', 55, 'sz', '256a868b0acac68685dc758186b3278cf64ab93f29be3062f25b647c2e7b4d5f', '[\"*\"]', NULL, '2022-10-03 22:25:33', '2022-10-03 22:25:33'),
(432, 'App\\Models\\Student', 55, 'sz', '4645c79f02c07d4cec00bc28de7dc3b3e49be3859078b861fd957411a5143e5d', '[\"*\"]', NULL, '2022-10-03 22:25:34', '2022-10-03 22:25:34'),
(433, 'App\\Models\\Student', 55, 'sz', '5e5076367759ea83a9be2b89ea75e4501203f86f88c0e5fe96ca5c77458b25b4', '[\"*\"]', NULL, '2022-10-03 22:25:36', '2022-10-03 22:25:36'),
(434, 'App\\Models\\Student', 55, 'sz', 'dec5a3b6045e77070fcd955368ad363fee59035cb4346f4baec38135cf26ce0e', '[\"*\"]', NULL, '2022-10-03 22:25:37', '2022-10-03 22:25:37'),
(435, 'App\\Models\\Student', 55, 'sz', '5bc88198661b582e26271af0a909daa377a54d85635798da818955244ecbae03', '[\"*\"]', NULL, '2022-10-03 22:25:40', '2022-10-03 22:25:40'),
(436, 'App\\Models\\Student', 56, 'sz', '1faab1e623a9679db8c2c2dad97f2fa90d51d2c6ba5378bacdc9e2f946408d3d', '[\"*\"]', NULL, '2022-10-03 22:40:22', '2022-10-03 22:40:22'),
(437, 'App\\Models\\Student', 47, 'sz', '1f11691e639fbc2bade60d1b6bd563a9335943fa714ccdc5e55dd2112b58ffa8', '[\"*\"]', NULL, '2022-10-03 23:08:15', '2022-10-03 23:08:15'),
(438, 'App\\Models\\Student', 56, 'sz', '2c9d4bdb36102bfd746e07d0289629e25420b34b9d178a53083af44baa95bddc', '[\"*\"]', NULL, '2022-10-03 23:10:13', '2022-10-03 23:10:13'),
(439, 'App\\Models\\Student', 57, 'sz', '534c2351edcde3d4767599616dc338671e8ba66ddd05474eb13984aaeaf85b74', '[\"*\"]', NULL, '2022-10-03 23:38:16', '2022-10-03 23:38:16'),
(440, 'App\\Models\\Student', 57, 'sz', 'be1462dad1028be2ae6914e16742bd56627013eaccd7050308d85d7d75c069af', '[\"*\"]', NULL, '2022-10-03 23:39:12', '2022-10-03 23:39:12'),
(441, 'App\\Models\\Student', 57, 'sz', '093d93a974290969e9d92b4d82074d15c5df4da7c28c2a171e360cb387cdd944', '[\"*\"]', NULL, '2022-10-03 23:43:00', '2022-10-03 23:43:00'),
(442, 'App\\Models\\Student', 47, 'sz', 'ac459cd58772bdc7a984388611a0840b2d156e124660c45310a5ad734b67753e', '[\"*\"]', NULL, '2022-10-04 11:39:09', '2022-10-04 11:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_sort_order` int(11) DEFAULT NULL,
  `product_name` varchar(300) DEFAULT NULL,
  `category_id` varchar(300) DEFAULT NULL,
  `product_description` varchar(300) DEFAULT NULL,
  `product_featured` varchar(300) DEFAULT NULL,
  `product_price` varchar(300) DEFAULT NULL,
  `product_duration_type` varchar(300) DEFAULT NULL,
  `product_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_created_by` int(11) DEFAULT NULL,
  `product_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `product_image` longtext,
  `product_images` text,
  `product_detail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_sort_order`, `product_name`, `category_id`, `product_description`, `product_featured`, `product_price`, `product_duration_type`, `product_created_at`, `product_updated_at`, `product_created_by`, `product_status`, `product_image`, `product_images`, `product_detail`) VALUES
(1, NULL, 'Sweat Shirt', '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ', 'yes', '12', NULL, '2022-06-02 06:59:25', '2022-08-15 07:13:33', NULL, 'disable', '146105-70c37f83-e128-4ad2-ae2b-d4c240d9e502.jpg', '[\"70c37f83-e128-4ad2-ae2b-d4c240d9e5025.jpg\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(2, NULL, 'Cap', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ', 'yes', '12', NULL, '2022-06-02 06:59:30', '2022-08-15 07:13:34', NULL, 'disable', '26796-f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg', '[\"f4b7aa20-7a96-41cd-9723-0df4c58df876_(2).jpg\",\"f4b7aa20-7a96-41cd-9723-0df4c58df876_(1).jpg\",\"f4b7aa20-7a96-41cd-9723-0df4c58df876_(1)1.jpg\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(3, NULL, 'Hoodie', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ', 'yes', '12', NULL, '2022-06-02 06:59:43', '2022-08-15 07:13:34', NULL, 'disable', '71407-989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg', '[\"989ab373-8263-43b2-ba95-4ef42e957c4c_(1).jpg\",\"989ab373-8263-43b2-ba95-4ef42e957c4c_(1)1.jpg\",\"989ab373-8263-43b2-ba95-4ef42e957c4c_(1)2.jpg\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(4, NULL, 'Pen and Keychain', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ', 'yes', '12', NULL, '2022-06-02 07:00:51', '2022-08-15 07:13:35', NULL, 'disable', '94885-ce3b9de2-deda-4818-889a-d5359a7e8b01.jpg', '[\"ce3b9de2-deda-4818-889a-d5359a7e8b01.jpg\",\"ce3b9de2-deda-4818-889a-d5359a7e8b011.jpg\",\"ce3b9de2-deda-4818-889a-d5359a7e8b012.jpg\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(5, NULL, 'Trouser', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the', 'no', '12', NULL, '2022-06-17 06:27:02', '2022-08-15 07:13:35', NULL, 'disable', '30044-49eda36b-8523-4014-b006-8cd759c3c662.jpg', '[\"49eda36b-8523-4014-b006-8cd759c3c662.jpg\",\"49eda36b-8523-4014-b006-8cd759c3c6621.jpg\",\"49eda36b-8523-4014-b006-8cd759c3c6622.jpg\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the'),
(6, NULL, 'T-Shirt', '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the', 'no', '12', NULL, '2022-06-17 19:43:11', '2022-08-15 07:13:36', NULL, 'disable', '29034-165aed19-31a5-4734-b5fb-01bd220efe54_(1).jpg', '[\"165aed19-31a5-4734-b5fb-01bd220efe54_(1)1.jpg\",\"165aed19-31a5-4734-b5fb-01bd220efe54_(2)1.jpg\"]', NULL),
(7, NULL, 'Leggings', '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the', 'no', '12', NULL, '2022-06-17 19:47:44', '2022-08-15 07:13:37', NULL, 'disable', '68352-leggins_clothes_copy.jpg', '[\"leggins_clothes_copy.jpg\"]', NULL),
(8, NULL, 'Football Camp', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '12', 'Per Minute', '2022-08-15 07:13:06', '2022-09-30 10:23:56', NULL, 'enable', '17045-Mask_Group_19.png', '[]', NULL),
(9, NULL, 'Baseball Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-08-15 07:14:28', '2022-08-15 09:38:03', NULL, 'enable', '17055-Mask_Group_20.png', '[]', NULL),
(10, NULL, 'Speed Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-08-15 07:15:51', '2022-08-15 09:38:07', NULL, 'enable', '20314-Mask_Group_22.png', '[]', NULL),
(11, NULL, 'Softball Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-08-15 07:16:31', '2022-08-15 09:38:15', NULL, 'enable', '13663-Mask_Group_21.png', '[\"Mask_Group_21.png\"]', NULL),
(12, NULL, 'asas', '1', 'asas', 'yes', '2', NULL, '2022-08-15 07:27:15', '2022-08-15 07:27:26', NULL, 'disable', NULL, '[]', NULL),
(13, NULL, 'sasasa', '1', 'asasasa', 'yes', '11', 'Per Hour', '2022-08-15 09:38:29', '2022-08-15 09:38:34', NULL, 'disable', NULL, '[]', NULL),
(14, NULL, 'Softball Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-09-09 15:37:33', '2022-09-09 15:49:38', NULL, 'disable', '356814-profile.png', '[\"Mask_Group_21.png\"]', NULL),
(15, NULL, 'Volley Ball Camp', '2', 'lorem ipsum random  Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'yes', '20', 'Per Hour', '2022-09-12 08:17:39', '2022-09-12 08:18:37', NULL, 'disable', '29926-Campbells-Maze-Daze-logo-1.png', '[\"itwasonlyadreamfeb19.jpg\"]', NULL),
(16, NULL, 'Softball Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-09-12 08:20:48', '2022-09-12 08:22:58', NULL, 'disable', NULL, '[\"Mask_Group_21.png\"]', NULL),
(17, NULL, 'VolleyBall Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '15', 'Per Hour', '2022-09-12 08:25:02', '2022-09-12 08:52:23', NULL, 'disable', '244330-itwasonlyadreamfeb19_(1).jpg', '[\"itwasonlyadreamfeb191.jpg\"]', NULL),
(18, NULL, 'Volley Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-09-12 09:43:22', '2022-09-12 09:46:46', NULL, 'disable', '244330-itwasonlyadreamfeb19.jpg', '[\"itwasonlyadreamfeb192.jpg\"]', NULL),
(19, NULL, 'Softball Camp', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-09-12 11:42:14', '2022-09-12 11:51:30', NULL, 'enable', '244330-itwasonlyadreamfeb19.jpg', '[\"Mask_Group_21.png\"]', NULL),
(20, NULL, 'Softball Camp', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'yes', '10', 'Per Hour', '2022-09-12 12:00:00', '2022-09-12 12:00:55', NULL, 'enable', '61073-project-3.jpg', '[\"Mask_Group_21.png\"]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `seo_id` int(10) UNSIGNED NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `seo_page_name` varchar(255) NOT NULL,
  `seo_page_link` varchar(255) NOT NULL,
  `seo_page_title` varchar(255) DEFAULT NULL,
  `seo_meta_title` varchar(255) DEFAULT NULL,
  `seo_meta_description` text NOT NULL,
  `seo_meta_keyword` text NOT NULL,
  `seo_meta_canonical` varchar(255) DEFAULT NULL,
  `seo_meta_index` enum('noindex, nofollow','index, nofollow','noindex, follow','index, follow') DEFAULT NULL,
  `seo_head_script` text,
  `seo_footer_script` text,
  `seo_status` enum('enable','disable') DEFAULT 'enable',
  `seo_created_by` int(11) DEFAULT NULL,
  `seo_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seo_updated_by` int(11) DEFAULT NULL,
  `seo_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(10) UNSIGNED NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `settings_site_title` varchar(600) DEFAULT NULL,
  `settings_email` varchar(50) DEFAULT NULL,
  `settings_email_from` varchar(300) NOT NULL,
  `settings_email_to` varchar(300) NOT NULL,
  `settings_favicon` varchar(50) DEFAULT NULL,
  `settings_address` varchar(300) NOT NULL,
  `settings_logo` varchar(50) DEFAULT NULL,
  `settings_footer_logo` varchar(300) DEFAULT NULL,
  `settings_phone` varchar(200) NOT NULL,
  `settings_sidebar_text` text,
  `welcome_email_subject` text,
  `welcome_email_body` text,
  `settings_status` enum('enable','disable') DEFAULT 'enable',
  `settings_created_by` int(11) DEFAULT NULL,
  `settings_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `settings_updated_by` int(11) DEFAULT NULL,
  `settings_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `tenant_id`, `settings_site_title`, `settings_email`, `settings_email_from`, `settings_email_to`, `settings_favicon`, `settings_address`, `settings_logo`, `settings_footer_logo`, `settings_phone`, `settings_sidebar_text`, `welcome_email_subject`, `welcome_email_body`, `settings_status`, `settings_created_by`, `settings_created_at`, `settings_updated_by`, `settings_updated_at`) VALUES
(1, 0, 'Strike Zone', NULL, '', 'info@strikezone.com', 'settings_logo1.png', '', '9901-Logo.png', NULL, '', NULL, NULL, NULL, 'enable', NULL, '2018-05-29 02:18:51', 1, '2022-08-15 06:39:49'),
(2, 1, 'Strike Zone', NULL, '', 'info@strikezone.com', 'settings_logo1.png', '', '9901-Logo.png', '', '', 'sadsadasd', NULL, NULL, 'enable', NULL, '2020-04-16 07:58:22', NULL, '2022-08-15 06:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_detail`
--

CREATE TABLE `shipping_detail` (
  `shipping_detail_id` int(11) NOT NULL,
  `shipping_detail_user_name` varchar(300) NOT NULL DEFAULT '0',
  `shipping_detail_user_street_address` text NOT NULL,
  `shipping_detail_user_city` varchar(300) NOT NULL DEFAULT '',
  `shipping_detail_user_country` varchar(300) NOT NULL DEFAULT '',
  `shipping_detail_user_postal` varchar(300) NOT NULL DEFAULT '',
  `shipping_detail_user_email` varchar(300) NOT NULL DEFAULT '',
  `shipping_detail_user_phone` varchar(300) NOT NULL DEFAULT '',
  `shipping_detail_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `payment_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_detail`
--

INSERT INTO `shipping_detail` (`shipping_detail_id`, `shipping_detail_user_name`, `shipping_detail_user_street_address`, `shipping_detail_user_city`, `shipping_detail_user_country`, `shipping_detail_user_postal`, `shipping_detail_user_email`, `shipping_detail_user_phone`, `shipping_detail_status`, `payment_id`) VALUES
(1, 'Ahsan ALi', 'HOUS # a15', 'Karachi', 'Angola', '7922', 'test@test.com', '0330303030', 'enable', 22),
(2, 'Ahsan ALi', 'HOUS # a15', 'Karachi', 'Angola', '7922', 'test@test.com', '0330303030', 'enable', 24),
(3, 'test', 'test', 'City', 'Bangladesh', 'Postal', 'test@yzzu.com', 'Phone', 'enable', 25),
(4, 'Your Name', 'Street Address', 'City', 'Afghanistan', 'Postal', 'test@test.com', 'Phone', 'enable', 30);

-- --------------------------------------------------------

--
-- Table structure for table `staff_member`
--

CREATE TABLE `staff_member` (
  `staff_member_id` int(11) NOT NULL,
  `staff_member_sort_order` int(11) DEFAULT NULL,
  `staff_member_name` varchar(300) DEFAULT NULL,
  `staff_member_email` varchar(300) DEFAULT NULL,
  `staff_member_phone` varchar(300) DEFAULT NULL,
  `staff_member_designation` varchar(300) DEFAULT NULL,
  `staff_member_gender` varchar(300) DEFAULT NULL,
  `staff_member_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `staff_member_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff_member_created_by` int(11) DEFAULT NULL,
  `staff_member_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_member`
--

INSERT INTO `staff_member` (`staff_member_id`, `staff_member_sort_order`, `staff_member_name`, `staff_member_email`, `staff_member_phone`, `staff_member_designation`, `staff_member_gender`, `staff_member_created_at`, `staff_member_updated_at`, `staff_member_created_by`, `staff_member_status`) VALUES
(1, NULL, 'John Doe', 'john.doe@gmail.com', '123456789', 'Manager', 'male', '2022-08-16 18:15:09', '2022-08-16 18:15:41', NULL, 'enable'),
(2, NULL, 'Chris Walker', 'chris.walker@gmail.com', '123456789', 'Coach', 'male', '2022-08-16 18:16:18', '2022-08-16 18:16:18', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `staff_member_attendence`
--

CREATE TABLE `staff_member_attendence` (
  `staff_member_attendence_id` int(11) NOT NULL,
  `staff_member_attendence_sort_order` int(11) DEFAULT NULL,
  `staff_member_id` varchar(300) DEFAULT NULL,
  `staff_member_attendence_in_timing` varchar(300) DEFAULT NULL,
  `staff_member_attendence_out_timing` varchar(300) DEFAULT NULL,
  `staff_member_attendence_date` varchar(300) DEFAULT NULL,
  `staff_member_attendence_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `staff_member_attendence_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff_member_attendence_created_by` int(11) DEFAULT NULL,
  `staff_member_attendence_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_sort_order` int(11) DEFAULT NULL,
  `student_name` varchar(300) DEFAULT NULL,
  `student_email` varchar(300) DEFAULT NULL,
  `student_gender` varchar(300) DEFAULT NULL,
  `student_phone` varchar(300) DEFAULT NULL,
  `student_address` text,
  `student_password` text,
  `user_rest_token` varchar(300) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `user_image` varchar(300) DEFAULT NULL,
  `student_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `student_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `student_created_by` int(11) DEFAULT NULL,
  `student_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `social_token` text,
  `social_token_type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_sort_order`, `student_name`, `student_email`, `student_gender`, `student_phone`, `student_address`, `student_password`, `user_rest_token`, `otp`, `user_image`, `student_created_at`, `student_updated_at`, `student_created_by`, `student_status`, `social_token`, `social_token_type`) VALUES
(1, NULL, 'phil', 'phil@gmail.com', NULL, '0303030', NULL, '992dbd63406d3c9ea05501a77a2b39d0d7fb6a3150f0391691dc2c4a031804b3ad170e1622d3ab39e0cb880ef225374fa77cbade03b3b77d7399a33eea16f863uacR1eokkx4fwgw7dwJjheGBSvYjLfkiqsH4mGuGMPw=', NULL, NULL, NULL, '2022-06-15 13:41:39', '2022-09-27 18:19:51', NULL, 'disable', NULL, NULL),
(2, NULL, 'Jason', 'jason.carter@gmail.com', 'male', '123-123-123', '', NULL, NULL, NULL, '', '2022-06-15 13:52:02', '2022-09-27 18:20:02', NULL, 'disable', NULL, NULL),
(3, NULL, 'John', 'John@gmail.com', NULL, '03030300', NULL, '61ff7095791389fe1d05ad5701432776a78c4990a74d4ddb4ff1de89643b5ef234e6e79f26c12515d9c487354c58d7fe978515eca3c3114b71fbfe9931167102gSRaB0LuhOQJFk6wGQFp0+7XRGw8PAlqZjuiy0sF9c0=', NULL, 0, NULL, '2022-06-15 13:58:30', '2022-07-19 20:00:23', NULL, 'disable', NULL, NULL),
(4, NULL, 'John2', 'John2@gmail.com', NULL, '03030300', NULL, '61ff7095791389fe1d05ad5701432776a78c4990a74d4ddb4ff1de89643b5ef234e6e79f26c12515d9c487354c58d7fe978515eca3c3114b71fbfe9931167102gSRaB0LuhOQJFk6wGQFp0+7XRGw8PAlqZjuiy0sF9c0=', NULL, 0, NULL, '2022-06-15 13:58:30', '2022-07-19 20:00:25', NULL, 'disable', NULL, NULL),
(5, NULL, 'phil', 'admin@demo.com', 'male', '', '', NULL, NULL, 0, '', '2022-07-07 12:25:24', '2022-07-19 20:00:28', NULL, 'disable', NULL, NULL),
(6, NULL, 'phil', '11admin@demo.com', NULL, '03203030', NULL, 'e59f0ab836ef30703cafd7a453ce450c48cf6eb48f8fc39f283c68ef4ff55eba7d2ec48df76d11c6e2762b88b4421ee6877d4a2477f851f584d9c359fc24f584V1cNusaCHjUO7jCsLsn1hVvZmHD5ERhP/agZY6dXo40=', NULL, 0, NULL, '2022-07-07 12:26:53', '2022-07-19 20:00:30', NULL, 'disable', NULL, NULL),
(7, NULL, 'phil', '112admin@demo.com', NULL, '03203030', NULL, '724960834f1442758e1b6675bf603d50de9a96d0875e2bb5189c0ba50782ecbbe786499359c7ba10bf0d3dd2123b165efe30bd4381f5e4e08eeda744b243ebc7C79Z7xlj02LDa3BQAsKx2zsPyoWqSVgV/mYKV2bqWWI=', NULL, 0, NULL, '2022-07-07 12:28:00', '2022-07-19 20:00:31', NULL, 'disable', NULL, NULL),
(8, NULL, 'phil', '1123admin@demo.com', NULL, '0303030', NULL, 'dd6024406902ad5e8db0cf9520203ecd42f2411be2839d58d568d65cc553e04db1e87fc885229ab4e4b259cedc3ff162d40cddba5b9255e58abaf5d1643b97dakUiEs7pDFv8sU+PiKADIYp0gn/QLtD59gQv9Vsq6Cps=', NULL, 0, NULL, '2022-07-07 13:47:36', '2022-07-19 20:00:35', NULL, 'disable', NULL, NULL),
(9, NULL, 'John', '1122admin@demo.com', NULL, '0303030', NULL, '8f95669cead08f85972254b5ff45d6c3f78965642b28fab05786289a15579dc22f6c117276001d8c1ceac2e3f98f493e832f07be51cbbc7cf8828e3a32583c3eQpEcaJ8yRVyvrl9BFhGHry5PP3yi6d5IdjbbW4zmCa0=', NULL, 0, NULL, '2022-07-07 15:04:21', '2022-07-19 20:00:37', NULL, 'disable', NULL, NULL),
(10, NULL, 'John', '11223admin@demo.com', NULL, '0303030', NULL, '54ac50871b0c68e9fac5977c5ace9c07dfcf0ffb02a1a6dc01f7843a77fb2f00589212b3a49ee36f07c9c95d6e208abbadaf1d5f544fec3dfc9c7e5cf3a8a5a6Qlj2fig+iv08HeU3TUh6Oh9rXn6mgSrvlXb9a8qrrtY=', NULL, 0, NULL, '2022-07-07 15:04:44', '2022-07-19 20:00:38', NULL, 'disable', NULL, NULL),
(11, NULL, 'John', '112333admin@demo.com', NULL, '0303030', NULL, '61eeda699f73e6ffdc788b95594c02a2fc2f98224ab4832d54a9fc64f41e25a646a52f27ece680365d230c1db7dcb013d68a7638f59ff069453554537ab8384akM0mQYk+NKHVgoE87f1z+5hAIZkyOMZAxDIaISWd3ag=', NULL, 0, NULL, '2022-07-08 11:48:32', '2022-07-19 20:00:39', NULL, 'disable', NULL, NULL),
(12, NULL, 'Gordan', 'gordan.chase17@gmail.com', 'male', '03030300', '', NULL, NULL, 0, '', '2022-07-08 11:58:37', '2022-07-19 20:00:40', NULL, 'disable', NULL, NULL),
(14, NULL, 'Jason', 'jason.carter@americanlogodevelopers.com5', NULL, '+1231231', NULL, '8856a1090e347db43eaa2ec81c75111d68f534ac59c5322b6a3c17fbac655d20343bcecaa9bfa29d2f7dc874329b88561a9f076939b6a2f9f4ce04ce43401963vAvKji8WmU/hrPs9LwHMVEMAf3mRiYMSUiHmzgUDJg0=', NULL, 0, NULL, '2022-07-18 17:02:30', '2022-07-19 20:00:43', NULL, 'disable', NULL, NULL),
(17, NULL, 'Jason', 'jason.carter@americanlogodevelopers.com', NULL, '+1231231', NULL, '92a7801c229ca3dcc988f3facf64ba2623dc39024d023f9ba882a465e2bc046e6a3fa96e4f3722f5372854da02c2c174f48cb245cd4fb702cbed27965edb4c61WyEpliixbqTTy63NZsBD7UP+BTfyp5uuQWzm2NMqBkM=', NULL, 0, NULL, '2022-07-18 17:25:37', '2022-07-19 20:00:47', NULL, 'disable', NULL, NULL),
(18, NULL, 'Prostock ', 'prostock@mail.com', 'male', '7187726139', '', NULL, NULL, 0, '', '2022-07-18 18:35:38', '2022-07-19 20:00:48', NULL, 'disable', NULL, NULL),
(19, NULL, 'testig@19.com', 'testting@19.com', NULL, '120152121', NULL, '98d8210ce2711bb59197e3036b71b3bdb5a4a644f310e0443518ea62947357e09622543d750c68c463fc746985886a8dad7aad6b355ebd822bf2c0cb22159da9d8f3GNh5QrumU27FMXjbepumMP+knbFpTJbw3qhjHJ4=', NULL, 0, NULL, '2022-07-19 14:42:52', '2022-07-19 20:00:50', NULL, 'disable', NULL, NULL),
(20, NULL, 'Sherry', 'Eddreana2003@gmail.com', NULL, '4345548181', NULL, 'cddd75167396ee31d0993b94a5bb0f3721fdda0384decfdcb92081f24d49a55d5939466beb3490bf3f3e4b47ad37e1fe68b04a0ba13344b13baa95f184f906c3DT0Ufpf4Fru3eAeTof0rhgNLINZNCxL7dWLPtm0LrBk=', NULL, 0, NULL, '2022-07-21 13:39:14', '2022-08-15 07:58:08', NULL, 'disable', NULL, NULL),
(21, NULL, 'Sheree', 'shereeparker@rocketmail.com', NULL, '4348060917', NULL, '1b84069bd747de31efc17dfb159abf1c4ac0041f54aa2c609dc536ae850feec7df10400c178250256127dc1544fe1a7650477a53b22139c28976a8ddf65204d0p7cHptIurCzlSCDS4oigOqW9mPZn2cVz8su2CNyns7M=', NULL, 0, NULL, '2022-07-22 15:38:49', '2022-08-15 07:58:09', NULL, 'disable', NULL, NULL),
(22, NULL, 'Derielle', 'derielle@yahoo.com', 'male', '', '218 Antigua dr', NULL, NULL, 0, '', '2022-06-03 15:15:36', '2022-08-15 08:05:30', NULL, 'enable', NULL, NULL),
(23, NULL, 'Marvetta', 'marvetta@gmail.com', 'male', '(864) 567-7683', '11 Daybreak Pl', NULL, NULL, 0, '', '2022-07-07 15:15:36', '2022-08-15 08:05:40', NULL, 'enable', NULL, NULL),
(24, NULL, 'Karen', 'burley.karen@yahoo.com', NULL, '', '1540 Schley st', NULL, NULL, 0, NULL, '2022-06-11 15:15:36', '2022-08-15 08:55:31', NULL, 'disable', NULL, NULL),
(25, NULL, 'Gary', 'tuckinfoursz@gmail.com', NULL, '', '5909 Webster Ave', NULL, NULL, 0, NULL, '2022-06-21 15:15:36', '2022-08-15 07:57:30', NULL, 'disable', NULL, NULL),
(26, NULL, 'james', 'jdickey1@yahoo.com', NULL, '', '3425 patron drive', NULL, NULL, 0, NULL, '2022-07-03 15:15:36', '2022-08-15 07:57:30', NULL, 'disable', NULL, NULL),
(27, NULL, 'Minnie', 'mmfoster36@yahoo.com', NULL, '', 'PO Box 442', NULL, NULL, 0, NULL, '2022-07-04 15:15:36', '2022-08-15 07:57:30', NULL, 'disable', NULL, NULL),
(28, NULL, 'GBR', 'drewdenzle@aol.com', NULL, '(973) 332-4159', '276 18th Ave', NULL, NULL, 0, NULL, '2022-07-06 15:15:36', '2022-08-15 07:57:29', NULL, 'disable', NULL, NULL),
(29, NULL, 'Antonio', 'promisegrove@gmail.com', NULL, '(864) 329-7251', '1209 Dickinson St', NULL, NULL, 0, NULL, '2022-07-07 15:15:36', '2022-08-15 07:57:29', NULL, 'disable', NULL, NULL),
(30, NULL, 'Chelsea', 'ckgrove6@gmail.com', NULL, '(864) 720-8595', '111 Hanover pl apt 83', NULL, NULL, 0, NULL, '2022-07-06 15:15:36', '2022-08-15 07:57:28', NULL, 'disable', NULL, NULL),
(31, NULL, 'markay', 'emhall37@gmail.com', NULL, '', '822 palmer st', NULL, NULL, 0, NULL, '2022-06-09 15:15:36', '2022-08-15 07:57:27', NULL, 'disable', NULL, NULL),
(32, NULL, 'Phill', 'Phill@gmail.com', 'male', '', '64 wellspring dr', NULL, NULL, 0, '', '2022-06-08 15:15:36', '2022-08-15 08:06:50', NULL, 'enable', NULL, NULL),
(33, NULL, 'Eric', 'tyshaun@gmail.com', 'male', '', '821 bellows ave', NULL, NULL, 0, '', '2022-07-05 15:15:36', '2022-08-15 08:06:01', NULL, 'enable', NULL, NULL),
(34, NULL, 'Carol', 'neisejones59@aol.com', NULL, '', '2213 Southland Road', NULL, NULL, 0, NULL, '2022-07-01 15:15:36', '2022-08-15 07:58:25', NULL, 'disable', NULL, NULL),
(35, NULL, 'Hardy', 'hardykarvin@yahoo.com', NULL, '(804) 221-8397', '5511 Jefferson St', NULL, NULL, 0, NULL, '2022-07-08 15:15:36', '2022-08-15 07:57:57', NULL, 'disable', NULL, NULL),
(36, NULL, 'Cj', 'nyquise1@gmail.com', NULL, '(240) 412-6753', '12116 Sand Wedge Lane', NULL, NULL, 0, NULL, '2022-07-09 15:15:36', '2022-08-15 07:57:58', NULL, 'disable', NULL, NULL),
(37, NULL, 'Barbara', 't_smith528@yahoo.com', NULL, '', '87 Industrial Blvd', NULL, NULL, 0, NULL, '2022-06-26 15:15:36', '2022-08-15 07:57:58', NULL, 'disable', NULL, NULL),
(38, NULL, 'Horace', 'harveylee446@gmail.com', NULL, '(803) 446-1049', '1251 State Road S-28-484', NULL, NULL, 0, NULL, '2022-07-09 15:15:36', '2022-08-15 07:57:55', NULL, 'disable', NULL, NULL),
(39, NULL, 'Veronica', 'mccluretylrs@aol.com', NULL, '(864) 430-7241', '303 Forked Oak Way', NULL, NULL, 0, NULL, '2022-07-07 15:15:36', '2022-08-15 07:58:23', NULL, 'disable', NULL, NULL),
(40, NULL, 'Ron', 'ronaldmoon89@gmail.com', NULL, '', '7231 Newland Rd', NULL, NULL, 0, NULL, '2022-06-14 15:15:36', '2022-08-15 07:58:18', NULL, 'disable', NULL, NULL),
(41, NULL, 'Peter', 'arbitragemoney@gmail.com', 'male', '', '321 Silverlimb Ln', NULL, NULL, 0, '', '2022-07-04 15:15:36', '2022-08-15 08:06:25', NULL, 'enable', NULL, NULL),
(42, NULL, 'Kevin', 'kevinnthomas68@gmail.com', 'male', '', '4605 Gum Branch Rd', NULL, NULL, 0, '', '2022-06-25 15:15:36', '2022-08-15 08:06:19', NULL, 'enable', NULL, NULL),
(43, NULL, 'Cathy', 'cathym.webber@gmail.com', 'female', '', '33067 West Post Office Road', NULL, NULL, 0, '', '2022-06-17 15:15:36', '2022-08-15 08:06:37', NULL, 'enable', NULL, NULL),
(44, NULL, 'Alex', 'Alex@gmail.com', 'male', '030', '', NULL, NULL, 0, '', '2022-07-29 09:47:25', '2022-08-15 08:07:25', NULL, 'disable', NULL, NULL),
(45, NULL, 'test', 'test@test.com', 'male', '0303030', 'test', NULL, NULL, 0, '36660-news-02.jpg', '2022-08-15 08:04:15', '2022-08-15 08:05:11', NULL, 'disable', NULL, NULL),
(46, NULL, 'Jack', 'jackie@gmail.com', NULL, '03030', NULL, 'ee79976c9380d5e337fc1c095ece8c8f22f91f306ceeb161fa51fecede2c4ba1', NULL, 0, NULL, '2022-08-25 15:19:09', '2022-08-25 15:19:09', NULL, 'enable', NULL, NULL),
(47, NULL, 'Smith', 'smith@gmail.com', NULL, '030300', 'test address', '33a7d3da476a32ac237b3f603a1be62fad00299e0d4b5a8db8d913104edec629', '1111', 0, '2022093006371664519844000', '2022-08-25 15:23:54', '2022-09-30 17:51:47', NULL, 'enable', NULL, NULL),
(48, NULL, 'will', 'smith@gmail.com', 'male', '03030', '', NULL, NULL, 0, '', '2022-08-25 15:46:53', '2022-09-20 07:26:05', NULL, 'enable', NULL, NULL),
(49, NULL, 'Jack', 'goal@gmail.com', NULL, '03030', NULL, 'ee79976c9380d5e337fc1c095ece8c8f22f91f306ceeb161fa51fecede2c4ba1', NULL, 0, NULL, '2022-08-26 16:17:42', '2022-08-26 16:17:42', NULL, 'enable', NULL, NULL),
(50, NULL, 'alex', 'alex1@gmail.com', NULL, '002020', NULL, 'ee79976c9380d5e337fc1c095ece8c8f22f91f306ceeb161fa51fecede2c4ba1', NULL, 0, NULL, '2022-08-26 18:58:29', '2022-08-26 18:58:29', NULL, 'enable', NULL, NULL),
(51, NULL, 'Alex', 'Alex_williams@gmail.com', NULL, '92929', NULL, 'ee79976c9380d5e337fc1c095ece8c8f22f91f306ceeb161fa51fecede2c4ba1', NULL, 0, NULL, '2022-08-26 19:51:42', '2022-08-26 19:51:42', NULL, 'enable', NULL, NULL),
(52, NULL, 'test test', 'test@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 19:41:42', '2022-10-03 19:41:42', NULL, 'enable', '202020', 'google'),
(53, NULL, 'Saad shaikh', 'saadshaikg4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 20:11:12', '2022-10-03 20:11:12', NULL, 'enable', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImVkMzZjMjU3YzQ3ZWJhYmI0N2I0NTY4MjhhODU4YWE1ZmNkYTEyZGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIyODA1NjI2MjE0OTItbnBpN2hjNGcwajVkcmY0bjVmZmowajA4ZDN1NDN0djAuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIyODA1NjI2MjE0OTItNm40dTZndHU1ODJtdnVpbmtvc3BsdHBudW0xZGJlaTEuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTcyNDc1Mjg5NzMwNzU1Nzc5NzkiLCJlbWFpbCI6InNhYWRzaGFpa2c0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiU2FhZCBzaGFpa2giLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUxtNXd1Mi1CSksxOWpuc09adllRMk9EZUVuaGdSQWNEOGpzSTA3X2t3SkM9czk2LWMiLCJnaXZlbl9uYW1lIjoiU2FhZCIsImZhbWlseV9uYW1lIjoic2hhaWtoIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2NjQ4MDQ5NDQsImV4cCI6MTY2NDgwODU0NH0.oKi6GyvkWLyYZ64WmgrnSgqQXZScyWfEH9fK1JbDmOxZz9t3SKplEOadMnf2YQIQcnMnIRc6QzI57axvxd7khKDVHqw7f3kGa8Uov2FMpiEdmVueagH9PruaoYdsbyi2c4p3MWxziUmXPZRfmExCQGHhYGU3w_CB1ZN4kDrRm8HkiSXxy6aDWNye1EKe4AmHPYsyUSdddD3jFeUpWgnxVqwtzNTpztd76s3lol9sGTI0QXyIdAo-7gMpKQrg_5NSpYokLWD4VCNLF7s0AbqmLO7kLyLB05v7bFhgxttAfpz1HCP9oSLetrVxzYezvarsdcMRupi1TmITXqID4glNew', 'google'),
(54, NULL, 'Saad shaikh', 'saadshaikg4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 21:24:15', '2022-10-03 21:24:15', NULL, 'enable', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImVkMzZjMjU3YzQ3ZWJhYmI0N2I0NTY4MjhhODU4YWE1ZmNkYTEyZGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIyODA1NjI2MjE0OTItbnBpN2hjNGcwajVkcmY0bjVmZmowajA4ZDN1NDN0djAuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIyODA1NjI2MjE0OTItNm40dTZndHU1ODJtdnVpbmtvc3BsdHBudW0xZGJlaTEuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTcyNDc1Mjg5NzMwNzU1Nzc5NzkiLCJlbWFpbCI6InNhYWRzaGFpa2c0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiU2FhZCBzaGFpa2giLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUxtNXd1Mi1CSksxOWpuc09adllRMk9EZUVuaGdSQWNEOGpzSTA3X2t3SkM9czk2LWMiLCJnaXZlbl9uYW1lIjoiU2FhZCIsImZhbWlseV9uYW1lIjoic2hhaWtoIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2NjQ4MDkxOTIsImV4cCI6MTY2NDgxMjc5Mn0.bMfl3TJWqNSo4Z8OtvmmOaePOo-D5QpyBYybxxm3vK0IWeHHfUVN6Xj2JVxsATeR8mtd1m4QVNc29No3yW6hEE_Xe23YIcBqd0RGHf_V09j1pCqG8ukRtjeb-5ekmdvJXXuX_WyzZX8m88AUkFvAzoKJGo8BYG0IxlUfmxAnKTXUt54J1Y0NMj0092PD8TBoVrH_ob5l1RVwxW-xDbXXjwcF_uJ1A48lVGa85PBCg3OKyZStcMtsVKmQK-7cDAS8f_XeqA6EjPWSNWp6bmMORIj5bqpl4pc8nAfMmRTL1li9N2MMnwxeIvWK5YFb4nHZEUsAzv2bJIPzGk0tfIjlQw', 'google'),
(55, NULL, 'Saad shaikh', 'saadshaikg4@gmail.com', NULL, '00', 'test address', NULL, NULL, NULL, NULL, '2022-10-03 22:18:00', '2022-10-03 22:23:37', NULL, 'enable', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImVkMzZjMjU3YzQ3ZWJhYmI0N2I0NTY4MjhhODU4YWE1ZmNkYTEyZGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIyODA1NjI2MjE0OTItbnBpN2hjNGcwajVkcmY0bjVmZmowajA4ZDN1NDN0djAuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIyODA1NjI2MjE0OTItNm40dTZndHU1ODJtdnVpbmtvc3BsdHBudW0xZGJlaTEuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTcyNDc1Mjg5NzMwNzU1Nzc5NzkiLCJlbWFpbCI6InNhYWRzaGFpa2c0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiU2FhZCBzaGFpa2giLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUxtNXd1Mi1CSksxOWpuc09adllRMk9EZUVuaGdSQWNEOGpzSTA3X2t3SkM9czk2LWMiLCJnaXZlbl9uYW1lIjoiU2FhZCIsImZhbWlseV9uYW1lIjoic2hhaWtoIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2NjQ4MTM4NzksImV4cCI6MTY2NDgxNzQ3OX0.8lNyHHwv_Cf9SLBb4r5v2kNCPCF9R74O5BLEwU3JMF0PqOOhy7RiAGExmyFcrsyCKIb1UAHtjDOR307lQBjdebwGEg9PwTVgXyHU7o9IwFnVaSppoJ6T__Ik8KCxMOb38ujRrTKIMfWLqqVKqxQDLL8ezDX1spYQ8nfKu5IxSlmTBRXaHmfca3Zyl9_Zj6_ArD-R4IK_81JOQ13AnDUzpDowdF_n9gkzDKSjqZa13L0x89gTC7HluyybTeYLbcYgoscqXP_XuNwGbPH6gz99pFUYaFTtdDDZBwMNGHbYr5BSw9FTjb23LAayMAi5DtLV_5ILCHm-vYCSylioWBQm1w', 'google'),
(56, NULL, 'Saad shaikh', 'saadshaikg4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 22:40:22', '2022-10-03 22:40:22', NULL, 'enable', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImVkMzZjMjU3YzQ3ZWJhYmI0N2I0NTY4MjhhODU4YWE1ZmNkYTEyZGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIyODA1NjI2MjE0OTItbnBpN2hjNGcwajVkcmY0bjVmZmowajA4ZDN1NDN0djAuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIyODA1NjI2MjE0OTItNm40dTZndHU1ODJtdnVpbmtvc3BsdHBudW0xZGJlaTEuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTcyNDc1Mjg5NzMwNzU1Nzc5NzkiLCJlbWFpbCI6InNhYWRzaGFpa2c0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiU2FhZCBzaGFpa2giLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUxtNXd1Mi1CSksxOWpuc09adllRMk9EZUVuaGdSQWNEOGpzSTA3X2t3SkM9czk2LWMiLCJnaXZlbl9uYW1lIjoiU2FhZCIsImZhbWlseV9uYW1lIjoic2hhaWtoIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2NjQ4MTUyMTksImV4cCI6MTY2NDgxODgxOX0.j9i2zunYx0IC2ZofFe_oQ0iygmCW5w6YLQRwkodp_l9EjtICMru_NY4D111sMy6AzMU10mY91xYFokJ-BxgNg1jaXIMlnDiYOuET139wNqvasuEovqtY_y42o7Y8_Vb66TfXMOVbP7kjhbgx7LLl96_3vCx_bDhGvt6kh6V61I43jgVx0WU5EzvoynfqRdxP-PGC0lWDy7ykiPMvRs0dZU_IsSPOSkSKh1hm5dhGEtywCIIQtXqU2_MPtsaUa7h3F2qcU0ULmY-ldduqqND4MtZIVii9MXr2pa8FIiw4ib68QWSsinLTat1vIGsCFAPNi0U0kC8W6qLuevLJo0xqDA', 'google'),
(57, NULL, 'Saad shaikh', 'saadshaikg4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2022100317391664818753000', '2022-10-03 23:38:16', '2022-10-03 23:39:11', NULL, 'enable', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImVkMzZjMjU3YzQ3ZWJhYmI0N2I0NTY4MjhhODU4YWE1ZmNkYTEyZGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIyODA1NjI2MjE0OTItbnBpN2hjNGcwajVkcmY0bjVmZmowajA4ZDN1NDN0djAuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIyODA1NjI2MjE0OTItNm40dTZndHU1ODJtdnVpbmtvc3BsdHBudW0xZGJlaTEuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTcyNDc1Mjg5NzMwNzU1Nzc5NzkiLCJlbWFpbCI6InNhYWRzaGFpa2c0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJuYW1lIjoiU2FhZCBzaGFpa2giLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUxtNXd1Mi1CSksxOWpuc09adllRMk9EZUVuaGdSQWNEOGpzSTA3X2t3SkM9czk2LWMiLCJnaXZlbl9uYW1lIjoiU2FhZCIsImZhbWlseV9uYW1lIjoic2hhaWtoIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2NjQ4MTg2OTIsImV4cCI6MTY2NDgyMjI5Mn0.zSWXMy-7tBTwn-0ro90poV1Zj5QksIUHE_JEFc3nXDXR7WLLqvEgcHFk15svsLKznPQR6_rRs_7biiRnBMEsRtC1yZ1lc-mn_MzTSaF6PG2J8c7roHVSaNZstb-HThFPTX5XGZiCd9oP7n7qcm9CO0rkIHapB9OVxLkmnJuN2CU7MGGUGjIhfPN7NPp8ADbE7uGnq7hCGn6FlyjfQxjAT99gaqqqdopW6CgjFuPFRt8ZmhflnDPtKoTljWfvHyw7onhQOEqjabO1jNTC_j0N8C5oqfIgJZlBjOPkRowuzZLlS88bbrNcicx7fVyIEk5SgwKr4QIqRsc7VTrDxdxo1A', 'google');

-- --------------------------------------------------------

--
-- Table structure for table `subscribed_clients`
--

CREATE TABLE `subscribed_clients` (
  `subscribeds_clients_id` int(11) NOT NULL,
  `subscribed_clients_client_id` int(11) DEFAULT NULL,
  `subscribed_clients_client_subscription_id` int(11) DEFAULT NULL,
  `subscribed_clients_status` enum('enable','disable') DEFAULT 'enable',
  `subscribed_clients_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `subscribed_clients_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribed_clients`
--

INSERT INTO `subscribed_clients` (`subscribeds_clients_id`, `subscribed_clients_client_id`, `subscribed_clients_client_subscription_id`, `subscribed_clients_status`, `subscribed_clients_created_at`, `subscribed_clients_updated_at`) VALUES
(1, 2, 2, 'enable', '2022-06-16 14:18:03', '2022-07-19 16:16:34'),
(2, 3, 10, 'enable', '2022-06-23 14:18:08', '2022-07-19 16:05:51'),
(3, 5, 10, 'enable', '2022-07-07 12:25:24', '2022-07-19 16:06:02'),
(4, 6, 1, 'enable', '2022-07-07 12:26:53', '2022-07-07 12:26:53'),
(5, 7, 1, 'enable', '2022-07-07 12:28:00', '2022-07-07 12:28:00'),
(6, 8, 2, 'enable', '2022-07-07 13:47:36', '2022-07-07 13:47:36'),
(7, 9, 1, 'enable', '2022-07-07 15:04:21', '2022-07-07 15:04:21'),
(8, 10, 1, 'enable', '2022-07-07 15:04:44', '2022-07-07 15:04:44'),
(9, 11, 1, 'enable', '2022-07-08 11:48:32', '2022-07-08 11:48:32'),
(10, 12, 1, 'enable', '2022-07-08 11:58:37', '2022-07-08 11:58:37'),
(11, 13, 1, 'enable', '2022-07-18 16:57:40', '2022-07-18 16:57:40'),
(12, 14, 1, 'enable', '2022-07-18 17:02:30', '2022-07-18 17:02:30'),
(13, 15, 1, 'enable', '2022-07-18 17:10:54', '2022-07-18 17:10:54'),
(14, 16, 1, 'enable', '2022-07-18 17:23:47', '2022-07-18 17:23:47'),
(15, 17, 1, 'enable', '2022-07-18 17:25:37', '2022-07-18 17:25:37'),
(16, 18, 1, 'enable', '2022-07-18 18:35:38', '2022-07-18 18:35:38'),
(17, 19, 1, 'enable', '2022-07-19 14:42:52', '2022-07-19 14:42:52'),
(18, 20, 1, 'enable', '2022-07-21 13:39:14', '2022-07-21 13:39:14'),
(19, 21, 1, 'enable', '2022-07-22 15:38:49', '2022-07-22 15:38:49'),
(20, 22, 2, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(21, 23, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(22, 24, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(23, 25, 3, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(24, 26, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(25, 27, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(26, 28, 4, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(27, 29, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(28, 30, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(29, 31, 2, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(30, 32, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(31, 33, 3, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(32, 34, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(33, 35, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(34, 36, 3, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(35, 37, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(36, 38, 3, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(37, 39, 2, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(38, 40, 2, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(39, 41, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(40, 42, 4, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52'),
(41, 43, 1, 'enable', '2022-07-25 15:45:52', '2022-07-25 15:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL,
  `subscription_sort_order` int(11) DEFAULT NULL,
  `subscription_title` varchar(300) DEFAULT NULL,
  `subscription_description` text,
  `subscription_amount` varchar(300) DEFAULT NULL,
  `subscription_tenure` varchar(300) DEFAULT NULL,
  `subscription_currency` varchar(300) DEFAULT NULL,
  `subscription_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subscription_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subscription_created_by` int(11) DEFAULT NULL,
  `subscription_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `subscription_sort_order`, `subscription_title`, `subscription_description`, `subscription_amount`, `subscription_tenure`, `subscription_currency`, `subscription_created_at`, `subscription_updated_at`, `subscription_created_by`, `subscription_status`) VALUES
(1, NULL, 'Bronze $30', 'We will set up all activities and manage the flow and training of the players while you can either wait and observe your student, our just drop them off with our fully trained staff.', '30', '1', '$', '2022-06-15 11:01:30', '2022-09-14 08:13:06', NULL, 'enable'),
(11, NULL, 'Silver $40', 'We will set up all activities and manage the flow and training of the players while you can either wait and observe your student, our just drop them off with our fully trained staff.', '40', NULL, '$', '2022-08-15 07:32:26', '2022-09-14 08:14:04', NULL, 'enable'),
(12, NULL, 'Gold $50', 'We will set up all activities and manage the flow and training of the players while you can either wait and observe your student, our just drop them off with our fully trained staff.', '50', NULL, '$', '2022-08-15 07:33:02', '2022-09-14 08:14:10', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `team_member_id` int(11) NOT NULL,
  `team_member_sort_order` int(11) DEFAULT NULL,
  `team_member_name` varchar(300) DEFAULT NULL,
  `team_member_designation` varchar(300) DEFAULT NULL,
  `team_member_dob` varchar(300) DEFAULT NULL,
  `team_member_image` varchar(300) DEFAULT NULL,
  `team_member_location` text,
  `team_member_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `team_member_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `team_member_created_by` int(11) DEFAULT NULL,
  `team_member_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`team_member_id`, `team_member_sort_order`, `team_member_name`, `team_member_designation`, `team_member_dob`, `team_member_image`, `team_member_location`, `team_member_created_at`, `team_member_updated_at`, `team_member_created_by`, `team_member_status`) VALUES
(1, NULL, 'Tomas Rosicky', 'Manager', 'Born August 31, 1988', '26545-team-04.jpg', 'Medellin, Colombia', '2022-06-02 04:39:33', '2022-06-02 04:39:33', NULL, 'enable'),
(2, NULL, 'Laurent Koscielny', 'Manager', 'Born August 31, 1988', '19283-team-03.jpg', 'Medellin, Colombia', '2022-06-02 04:39:36', '2022-06-02 04:39:36', NULL, 'enable'),
(3, NULL, 'Debuchy Profile', 'Manager', 'Born August 31, 1988', '26919-team-02.jpg', 'Medellin, Colombia', '2022-06-02 04:39:37', '2022-06-02 04:39:37', NULL, 'enable'),
(4, NULL, 'KELVIN DAVIS', 'Manager', 'Born August 31, 1988', '28964-team-01.jpg', 'Medellin, Colombia', '2022-06-02 04:39:40', '2022-06-02 04:39:40', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL,
  `test_sort_order` int(11) DEFAULT NULL,
  `test` varchar(300) DEFAULT NULL,
  `test_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `test_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `test_created_by` int(11) DEFAULT NULL,
  `test_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `testimonial_sort_order` int(11) DEFAULT NULL,
  `testimonial_title` varchar(300) DEFAULT NULL,
  `testimonial_description` varchar(300) DEFAULT NULL,
  `testimonial_name` varchar(300) DEFAULT NULL,
  `testimonial_image` varchar(300) DEFAULT NULL,
  `testimonial_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `testimonial_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `testimonial_created_by` int(11) DEFAULT NULL,
  `testimonial_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_id`, `testimonial_sort_order`, `testimonial_title`, `testimonial_description`, `testimonial_name`, `testimonial_image`, `testimonial_created_at`, `testimonial_updated_at`, `testimonial_created_by`, `testimonial_status`) VALUES
(1, NULL, 'CAREER', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus', 'Jorge Olino', '326359-u-1.png', '2022-06-02 04:46:20', '2022-07-27 11:22:06', NULL, 'enable'),
(2, NULL, 'CONSULTING', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus', 'Jorge Olino', '417925-u-2.png', '2022-06-02 04:46:33', '2022-07-27 11:23:02', NULL, 'enable'),
(3, NULL, 'EDUCATION', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus', 'Jorge Olino', '294948-u-3.png', '2022-06-02 04:46:40', '2022-07-27 11:23:41', NULL, 'enable'),
(4, NULL, 'CAREER', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus', 'Jorge Olino', '326359-u-1.png', '2022-07-27 11:29:44', '2022-07-27 11:29:44', NULL, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_rest_token` varchar(255) NOT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_role` varchar(20) DEFAULT NULL,
  `user_status` enum('enable','disable') DEFAULT 'enable',
  `user_created_by` int(11) DEFAULT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_updated_by` int(11) DEFAULT NULL,
  `user_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `tenant_id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_rest_token`, `user_address`, `user_image`, `user_role`, `user_status`, `user_created_by`, `user_created_at`, `user_updated_by`, `user_updated_at`) VALUES
(1, 0, 'Master Admin', 'masteradmin@demo.com', '(888) 326-7890', '4afeaac1ade0dc2840809510008f2a062426ef0f0b59e842eb694781afeb24bd5ba03d950141e9a4cd4da9c97ce39a5f3c6c3aa6f6723ad468085eb09e15479dKejkQgTb92d8xkEDNTt3TTE4jCRdLnDdYkumr5xVSKw=', '', '5122 N. State Rd. 39\r\nLaPorte, IN 46350', 'user1.png', '1', 'enable', NULL, '2018-05-25 21:25:50', 1, '2020-10-08 13:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `what_we_do`
--

CREATE TABLE `what_we_do` (
  `what_we_do_id` int(11) NOT NULL,
  `what_we_do_sort_order` int(11) DEFAULT NULL,
  `what_we_do_section_1_heading` text,
  `what_we_do_section_1_paragraph` text,
  `what_we_do_section_2_paragraph` text,
  `what_we_do_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `what_we_do_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `what_we_do_created_by` int(11) DEFAULT NULL,
  `what_we_do_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `what_we_do`
--

INSERT INTO `what_we_do` (`what_we_do_id`, `what_we_do_sort_order`, `what_we_do_section_1_heading`, `what_we_do_section_1_paragraph`, `what_we_do_section_2_paragraph`, `what_we_do_created_at`, `what_we_do_updated_at`, `what_we_do_created_by`, `what_we_do_status`) VALUES
(1, NULL, 'What We Do\r\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda nobis numquam, autem dolorem consectetur odit aliquam nam rerum consequatur architecto, libero corrupti vitae?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus', '2022-07-27 12:46:14', '2022-07-27 12:46:14', NULL, 'enable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_us_id`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classes_id`) USING BTREE;

--
-- Indexes for table `class_student`
--
ALTER TABLE `class_student`
  ADD PRIMARY KEY (`class_student_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_us_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `header_navbar`
--
ALTER TABLE `header_navbar`
  ADD PRIMARY KEY (`header_navbar_id`);

--
-- Indexes for table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`homepage_id`);

--
-- Indexes for table `inquiry_form`
--
ALTER TABLE `inquiry_form`
  ADD PRIMARY KEY (`inquiry_form_id`);

--
-- Indexes for table `lock_in_form`
--
ALTER TABLE `lock_in_form`
  ADD PRIMARY KEY (`lock_in_form_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`meeting_id`) USING BTREE;

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`payment_detail_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`seo_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `shipping_detail`
--
ALTER TABLE `shipping_detail`
  ADD PRIMARY KEY (`shipping_detail_id`);

--
-- Indexes for table `staff_member`
--
ALTER TABLE `staff_member`
  ADD PRIMARY KEY (`staff_member_id`);

--
-- Indexes for table `staff_member_attendence`
--
ALTER TABLE `staff_member_attendence`
  ADD PRIMARY KEY (`staff_member_attendence_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`) USING BTREE;

--
-- Indexes for table `subscribed_clients`
--
ALTER TABLE `subscribed_clients`
  ADD PRIMARY KEY (`subscribeds_clients_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`team_member_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `what_we_do`
--
ALTER TABLE `what_we_do`
  ADD PRIMARY KEY (`what_we_do_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class_student`
--
ALTER TABLE `class_student`
  MODIFY `class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `footer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `header_navbar`
--
ALTER TABLE `header_navbar`
  MODIFY `header_navbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `homepage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inquiry_form`
--
ALTER TABLE `inquiry_form`
  MODIFY `inquiry_form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lock_in_form`
--
ALTER TABLE `lock_in_form`
  MODIFY `lock_in_form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `payment_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `seo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_detail`
--
ALTER TABLE `shipping_detail`
  MODIFY `shipping_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_member`
--
ALTER TABLE `staff_member`
  MODIFY `staff_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_member_attendence`
--
ALTER TABLE `staff_member_attendence`
  MODIFY `staff_member_attendence_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `subscribed_clients`
--
ALTER TABLE `subscribed_clients`
  MODIFY `subscribeds_clients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `team_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `what_we_do`
--
ALTER TABLE `what_we_do`
  MODIFY `what_we_do_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
