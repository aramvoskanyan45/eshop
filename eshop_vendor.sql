SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
DROP TABLE IF EXISTS `addresses`,`areas`,`attributes`,`attribute_set`,`attribute_values`,`cart`,`categories`,`cities`,`client_api_keys`,`countries`,`delivery_boy_notifications`,`faqs`,`favorites`,`fund_transfers`,`groups`,`languages`,`login_attempts`,`media`,`migrations`,`notifications`,`offers`,`orders`,`order_bank_transfer`,`order_items`,`order_tracking`,`payment_requests`,`products`,`product_attributes`,`product_rating`,`product_variants`,`promo_codes`,`return_requests`,`sections`,`seller_commission`,`seller_data`,`settings`,`sliders`,`system_notification`,`taxes`,`themes`,`tickets`,`ticket_messages`,`ticket_types`,`time_slots`,`transactions`,`updates`,`users`,`users_groups`,`user_permissions`,`wallet_transactions`,`zipcodes`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_mobile` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `pincode` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `type`, `mobile`, `alternate_mobile`, `address`, `landmark`, `area_id`, `city_id`, `pincode`, `country_code`, `state`, `country`, `latitude`, `longitude`, `is_default`) VALUES
(2, 9, 'Shubham@netsofters.com', 'Home', '84696555258', NULL, '219,Bhatha,Surat', NULL, 1, 1, '370001', 0, 'Gujarat', 'India', '21.1893857', '72.7711222', 1),
(3, 6, 'Shsjjxj', 'Home', '8468646867', NULL, '219,Bhatha,Surat', NULL, 1, 1, '370001', 0, 'Gujarat', 'India', '21.1894048', '72.7711273', 1),
(7, 1, 'dikshita', 'home', '2222222222', NULL, '237 time square', NULL, 1, 1, '370001', 0, 'gujarat', 'India', NULL, NULL, 0),
(10, 12, 'NIKITA', 'Home', '9974093845', NULL, 'GMDC Guest House Road,Uma Nagar,Bhuj', NULL, 1, 1, '370001', 0, 'Gujarat', 'India', '23.2330641', '69.6442489', 1),
(11, 15, 'Kinjal', 'Home', '8160629965', NULL, 'GMDC Guest House Road,Uma Nagar,Bhuj', NULL, 25, 1, '370001', 0, 'Gujarat', 'India', '23.2330658', '69.6442443', 1),
(12, 1, 'kinjal', NULL, '7656789876', NULL, 'home', NULL, 1, 1, '370001', 0, 'gujarat', 'India', NULL, NULL, 0),
(13, 1, 'tulsi parmar', 'office', '7678675654', NULL, 'bhuj', NULL, 15, 1, '370001', 0, 'gujarat', 'india', NULL, NULL, 0),
(14, 1, 'mohan', 'home', '789875645356', NULL, 'bhuj', NULL, 4, 4, '370001', 0, 'gujarat', 'india', NULL, NULL, 0),
(15, 1, 'tiya joshi', 'home', '789567567543', NULL, 'bhuj', NULL, 1, 1, '370001', 0, 'gujarat', 'india', NULL, NULL, 0),
(16, 458, 'abc', 'Home', '1231231231', NULL, 'GMDC Guest House Road,Uma Nagar,Bhuj', NULL, 17, 1, '370001', 0, 'Gujarat', 'India', '23.2330692', '69.6442212', 0),
(18, 2, 'Vijay Vaghela', 'office', '9925880172', NULL, 'time squre', NULL, 24, 1, '370001', 0, 'gujrat', 'India', NULL, NULL, 1),
(19, 477, 'jignesh', 'Home', '8200786264', NULL, 'Kutch,Uma Nagar,Mirjapar Part', NULL, 3, 3, '370001', 0, 'Gujarat', 'India', '23.2330756', '69.6441974', 1),
(20, 7, 'tes', 'Home', '1234567890', NULL, 'Kutch,Uma Nagar,Mirjapar Part', NULL, 19, 1, '370001', 0, 'Gujarat', 'India', '23.2330715', '69.6441983', 1);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `zipcode_id` int(11) NOT NULL DEFAULT 0,
  `minimum_free_delivery_order_amount` double NOT NULL DEFAULT 100,
  `delivery_charges` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `city_id`, `zipcode_id`, `minimum_free_delivery_order_amount`, `delivery_charges`) VALUES
(1, 'Jubulee Circle', 1, 1, 200, 100),
(2, 'Anjar', 2, 2, 500000, 100),
(3, 'Ahmedabad-1', 3, 1, 100, 50),
(4, 'Bus stand', 4, 1, 100, 50),
(6, 'Anjar -A', 6, 2, 111, 11),
(7, 'Ahmedabad-1', 7, 2, 111, 111),
(8, 'Bus stand', 9, 2, 111, 111),
(9, 'Anjar -A', 12, 2, 111, 111),
(10, 'Bus stand', 5, 2, 11, 11),
(11, 'Bus stand', 7, 1, 11, 11),
(12, 'Anjar', 13, 1, 11, 11),
(13, '11', 11, 2, 11, 11),
(14, 'Bus stand', 1, 1, 200, 100),
(15, 'Anjar', 1, 1, 200, 100),
(16, 'qq', 1, 1, 200, 100),
(17, '111', 1, 1, 200, 100),
(18, '1111', 1, 1, 200, 100),
(19, '111111', 1, 1, 200, 100),
(20, '111111111111', 1, 1, 200, 100),
(21, '1111111111111222', 1, 1, 200, 100),
(22, '121', 1, 1, 200, 100),
(23, '1212', 1, 1, 200, 100),
(24, 'dfvbd', 1, 1, 200, 100),
(25, 'vdv', 1, 1, 200, 100),
(26, 'dfvdfv', 1, 1, 200, 100),
(27, '221212312', 1, 1, 200, 100),
(28, 'vb', 1, 1, 200, 100),
(29, 'Madhapar', 1, 1, 200, 100),
(30, 'mghjnghyujnm', 14, 1, 345, 345),
(31, 'rtgry', 15, 2, 4545, 5454),
(32, 'fghnfgh', 16, 2, 5656, 5665),
(33, 'jghjg', 18, 2, 5, 6),
(34, 'gfhbf', 20, 2, 43, 43);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_set_id`, `name`, `type`, `date_created`, `status`) VALUES
(1, 1, 'size', NULL, '2021-12-29 07:54:59', 1),
(2, 1, 'color', NULL, '2021-12-29 07:55:12', 1),
(3, 2, 'test', NULL, '2022-02-09 05:32:22', 1),
(4, 4, 'High', NULL, '2022-04-20 04:40:04', 1),
(5, 4, 'low', NULL, '2022-04-20 04:40:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set`
--

CREATE TABLE `attribute_set` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_set`
--

INSERT INTO `attribute_set` (`id`, `name`, `status`) VALUES
(1, 'specification', 1),
(2, 'testing saller', 1),
(3, 'attribute 1', 1),
(4, 'Quality', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `filterable` int(11) DEFAULT 0,
  `value` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `swatche_type` int(11) DEFAULT 0,
  `swatche_value` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `filterable`, `value`, `swatche_type`, `swatche_value`, `status`) VALUES
(1, 1, 0, 'small', 0, '', 1),
(2, 1, 0, 'medium', 0, '', 1),
(3, 1, 0, 'large', 0, '', 1),
(4, 2, 0, 'black', 0, '', 1),
(5, 2, 0, 'blue', 0, '', 1),
(6, 1, 0, '500 gm', 0, '', 1),
(7, 1, 0, '1 kg', 0, '', 1),
(8, 1, 0, '2 kg', 0, '', 1),
(9, 1, 0, '250 gm', 0, '', 1),
(10, 2, 0, 'gray', 0, '', 1),
(11, 2, 0, 'white', 0, '', 1),
(12, 1, 0, '128 gb', 0, '', 1),
(13, 4, 0, 'Level 1', 0, '', 1),
(14, 4, 0, 'Level 2', 0, '', 1),
(15, 4, 0, 'Level 3', 0, '', 1),
(16, 5, 0, 'Level 1', 0, '', 1),
(17, 5, 0, 'Level 2', 0, '', 1),
(18, 5, 0, 'Level 3', 0, '', 1),
(19, 4, 0, 'Level 0', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `is_saved_for_later` int(11) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_variant_id`, `qty`, `is_saved_for_later`, `date_created`) VALUES
(26, 10, 67, 2, 0, '2022-02-21 08:44:27'),
(27, 10, 64, 1, 0, '2022-02-21 08:44:42'),
(28, 10, 77, 3, 0, '2022-02-21 08:44:49'),
(29, 7, 64, 1, 0, '2022-02-22 05:17:38'),
(34, 1, 73, 3, 0, '2022-03-02 12:04:39'),
(42, 1, 78, 1, 0, '2022-03-12 11:02:54'),
(80, 15, 14, 1, 0, '2022-03-21 06:05:23'),
(176, 2, 90, 1, 0, '2022-04-25 04:47:11'),
(195, 7, 539, 1, 0, '2022-04-27 13:08:45'),
(196, 7, 137, 4, 0, '2022-04-27 13:08:45'),
(197, 7, 134, 1, 0, '2022-04-27 13:08:45'),
(198, 7, 858, 1, 0, '2022-04-27 13:08:45'),
(199, 7, 528, 1, 0, '2022-04-27 13:08:45'),
(200, 7, 852, 1, 0, '2022-04-27 13:08:45'),
(201, 7, 1034, 1, 0, '2022-04-27 13:08:45'),
(202, 7, 540, 1, 0, '2022-04-27 13:08:45'),
(207, 7, 108, 12, 1, '2022-04-30 12:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row_order` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `image`, `banner`, `row_order`, `status`, `clicks`) VALUES
(1, 'Fashion', 0, 'fashion', 'uploads/media/2021/fashion1.png', '', 3, 1, 128),
(2, 'Mobile', 0, 'mobile', 'uploads/media/2021/Smartphones1.png', '', 4, 1, 197),
(3, 'Electronics', 0, 'electronics', 'uploads/media/2021/Electronics.png', NULL, 1, 1, 111),
(4, 'vegetables', 0, 'vegetables', 'uploads/media/2021/vegetables.png', NULL, 0, 1, 27),
(5, 'Mask', 0, 'mask', 'uploads/media/2021/mask.png', NULL, 2, 1, 14),
(6, 'men\\\'s fashion', 1, 'mens-fashion', 'uploads/media/2021/fashion1.png', NULL, 0, 1, 44),
(7, 'Women\\\'s Fashion', 1, 'womens-fashion', 'uploads/media/2022/indianclassicalart.jpg', 'uploads/media/2022/indianclassicalart.jpg', 0, 1, 75);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Bhuj'),
(2, 'Anjar'),
(3, 'Ahmedabad'),
(4, 'Vadodra'),
(5, 'Nashik'),
(6, 'Pune'),
(7, 'Surat'),
(9, 'Bharuch'),
(10, 'Aanand'),
(11, 'Gandhinagar'),
(12, 'Navsari'),
(13, 'Porbandar'),
(14, 'hryty'),
(15, 'test'),
(16, 'gbf'),
(17, 'tyhtyh'),
(18, 'hnt'),
(19, 'fgbhf'),
(20, 'rthgrtgh'),
(21, 'rthrthg'),
(22, 'rhtr'),
(23, 'rttrhtr'),
(24, 'tyrfhbytfr'),
(25, 'fgbfb'),
(26, 'fbgbfgsb'),
(27, 'rthrfghtrf'),
(28, 'tyhjj'),
(29, 'htyhtfhy'),
(30, 'retet'),
(31, 'ertert'),
(32, 'retyryhrty'),
(33, 'yrtyghrhurs');

-- --------------------------------------------------------

--
-- Table structure for table `client_api_keys`
--

CREATE TABLE `client_api_keys` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_api_keys`
--

INSERT INTO `client_api_keys` (`id`, `name`, `secret`, `status`) VALUES
(3, 'eShop App', '975578106e71b1a66ef78ba7bbb82e9da5195b6f', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric_code` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tld` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `emoji` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emojiU` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag` tinyint(1) NOT NULL DEFAULT 1,
  `wikiDataId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(1, 'Afghanistan', 'AFG', '004', 'AF', '93', 'Kabul', 'AFN', 'Afghan afghani', '؋', '.af', 'افغانستان', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kabul\",\"gmtOffset\":16200,\"gmtOffsetName\":\"UTC+04:30\",\"abbreviation\":\"AFT\",\"tzName\":\"Afghanistan Time\"}]', '{\"kr\":\"아프가니스탄\",\"br\":\"Afeganistão\",\"pt\":\"Afeganistão\",\"nl\":\"Afghanistan\",\"hr\":\"Afganistan\",\"fa\":\"افغانستان\",\"de\":\"Afghanistan\",\"es\":\"Afganistán\",\"fr\":\"Afghanistan\",\"ja\":\"アフガニスタン\",\"it\":\"Afghanistan\",\"cn\":\"阿富汗\"}', '33.00000000', '65.00000000', '🇦🇫', 'U+1F1E6 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:19:42', 1, 'Q889'),
(2, 'Aland Islands', 'ALA', '248', 'AX', '+358-18', 'Mariehamn', 'EUR', 'Euro', '€', '.ax', 'Åland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Mariehamn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"올란드 제도\",\"br\":\"Ilhas de Aland\",\"pt\":\"Ilhas de Aland\",\"nl\":\"Ålandeilanden\",\"hr\":\"Ålandski otoci\",\"fa\":\"جزایر الند\",\"de\":\"Åland\",\"es\":\"Alandia\",\"fr\":\"Åland\",\"ja\":\"オーランド諸島\",\"it\":\"Isole Aland\",\"cn\":\"奥兰群岛\"}', '60.11666700', '19.90000000', '🇦🇽', 'U+1F1E6 U+1F1FD', '2018-07-21 01:41:03', '2021-12-11 18:26:03', 1, NULL),
(3, 'Albania', 'ALB', '008', 'AL', '355', 'Tirana', 'ALL', 'Albanian lek', 'Lek', '.al', 'Shqipëria', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Tirane\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알바니아\",\"br\":\"Albânia\",\"pt\":\"Albânia\",\"nl\":\"Albanië\",\"hr\":\"Albanija\",\"fa\":\"آلبانی\",\"de\":\"Albanien\",\"es\":\"Albania\",\"fr\":\"Albanie\",\"ja\":\"アルバニア\",\"it\":\"Albania\",\"cn\":\"阿尔巴尼亚\"}', '41.00000000', '20.00000000', '🇦🇱', 'U+1F1E6 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:20:01', 1, 'Q222'),
(4, 'Algeria', 'DZA', '012', 'DZ', '213', 'Algiers', 'DZD', 'Algerian dinar', 'دج', '.dz', 'الجزائر', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Algiers\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알제리\",\"br\":\"Argélia\",\"pt\":\"Argélia\",\"nl\":\"Algerije\",\"hr\":\"Alžir\",\"fa\":\"الجزایر\",\"de\":\"Algerien\",\"es\":\"Argelia\",\"fr\":\"Algérie\",\"ja\":\"アルジェリア\",\"it\":\"Algeria\",\"cn\":\"阿尔及利亚\"}', '28.00000000', '3.00000000', '🇩🇿', 'U+1F1E9 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:20:10', 1, 'Q262'),
(5, 'American Samoa', 'ASM', '016', 'AS', '+1-684', 'Pago Pago', 'USD', 'US Dollar', '$', '.as', 'American Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pago_Pago\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"}]', '{\"kr\":\"아메리칸사모아\",\"br\":\"Samoa Americana\",\"pt\":\"Samoa Americana\",\"nl\":\"Amerikaans Samoa\",\"hr\":\"Američka Samoa\",\"fa\":\"ساموآی آمریکا\",\"de\":\"Amerikanisch-Samoa\",\"es\":\"Samoa Americana\",\"fr\":\"Samoa américaines\",\"ja\":\"アメリカ領サモア\",\"it\":\"Samoa Americane\",\"cn\":\"美属萨摩亚\"}', '-14.33333333', '-170.00000000', '🇦🇸', 'U+1F1E6 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 18:25:50', 1, NULL),
(6, 'Andorra', 'AND', '020', 'AD', '376', 'Andorra la Vella', 'EUR', 'Euro', '€', '.ad', 'Andorra', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Andorra\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"안도라\",\"br\":\"Andorra\",\"pt\":\"Andorra\",\"nl\":\"Andorra\",\"hr\":\"Andora\",\"fa\":\"آندورا\",\"de\":\"Andorra\",\"es\":\"Andorra\",\"fr\":\"Andorre\",\"ja\":\"アンドラ\",\"it\":\"Andorra\",\"cn\":\"安道尔\"}', '42.50000000', '1.50000000', '🇦🇩', 'U+1F1E6 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:20:22', 1, 'Q228'),
(7, 'Angola', 'AGO', '024', 'AO', '244', 'Luanda', 'AOA', 'Angolan kwanza', 'Kz', '.ao', 'Angola', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Luanda\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"앙골라\",\"br\":\"Angola\",\"pt\":\"Angola\",\"nl\":\"Angola\",\"hr\":\"Angola\",\"fa\":\"آنگولا\",\"de\":\"Angola\",\"es\":\"Angola\",\"fr\":\"Angola\",\"ja\":\"アンゴラ\",\"it\":\"Angola\",\"cn\":\"安哥拉\"}', '-12.50000000', '18.50000000', '🇦🇴', 'U+1F1E6 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:20:31', 1, 'Q916'),
(8, 'Anguilla', 'AIA', '660', 'AI', '+1-264', 'The Valley', 'XCD', 'East Caribbean dollar', '$', '.ai', 'Anguilla', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앵귈라\",\"br\":\"Anguila\",\"pt\":\"Anguila\",\"nl\":\"Anguilla\",\"hr\":\"Angvila\",\"fa\":\"آنگویلا\",\"de\":\"Anguilla\",\"es\":\"Anguilla\",\"fr\":\"Anguilla\",\"ja\":\"アンギラ\",\"it\":\"Anguilla\",\"cn\":\"安圭拉\"}', '18.25000000', '-63.16666666', '🇦🇮', 'U+1F1E6 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:20:46', 1, NULL),
(9, 'Antarctica', 'ATA', '010', 'AQ', '672', '', 'AAD', 'Antarctican dollar', '$', '.aq', 'Antarctica', 'Polar', '', '[{\"zoneName\":\"Antarctica/Casey\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Antarctica/Davis\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"DAVT\",\"tzName\":\"Davis Time\"},{\"zoneName\":\"Antarctica/DumontDUrville\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"DDUT\",\"tzName\":\"Dumont d\'Urville Time\"},{\"zoneName\":\"Antarctica/Mawson\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MAWT\",\"tzName\":\"Mawson Station Time\"},{\"zoneName\":\"Antarctica/McMurdo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Antarctica/Palmer\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Antarctica/Rothera\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ROTT\",\"tzName\":\"Rothera Research Station Time\"},{\"zoneName\":\"Antarctica/Syowa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"SYOT\",\"tzName\":\"Showa Station Time\"},{\"zoneName\":\"Antarctica/Troll\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"Antarctica/Vostok\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"VOST\",\"tzName\":\"Vostok Station Time\"}]', '{\"kr\":\"남극\",\"br\":\"Antártida\",\"pt\":\"Antárctida\",\"nl\":\"Antarctica\",\"hr\":\"Antarktika\",\"fa\":\"جنوبگان\",\"de\":\"Antarktika\",\"es\":\"Antártida\",\"fr\":\"Antarctique\",\"ja\":\"南極大陸\",\"it\":\"Antartide\",\"cn\":\"南极洲\"}', '-74.65000000', '4.48000000', '🇦🇶', 'U+1F1E6 U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 19:19:17', 1, NULL),
(10, 'Antigua And Barbuda', 'ATG', '028', 'AG', '+1-268', 'St. John\'s', 'XCD', 'Eastern Caribbean dollar', '$', '.ag', 'Antigua and Barbuda', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Antigua\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앤티가 바부다\",\"br\":\"Antígua e Barbuda\",\"pt\":\"Antígua e Barbuda\",\"nl\":\"Antigua en Barbuda\",\"hr\":\"Antigva i Barbuda\",\"fa\":\"آنتیگوا و باربودا\",\"de\":\"Antigua und Barbuda\",\"es\":\"Antigua y Barbuda\",\"fr\":\"Antigua-et-Barbuda\",\"ja\":\"アンティグア・バーブーダ\",\"it\":\"Antigua e Barbuda\",\"cn\":\"安提瓜和巴布达\"}', '17.05000000', '-61.80000000', '🇦🇬', 'U+1F1E6 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:26:34', 1, 'Q781'),
(11, 'Argentina', 'ARG', '032', 'AR', '54', 'Buenos Aires', 'ARS', 'Argentine peso', '$', '.ar', 'Argentina', 'Americas', 'South America', '[{\"zoneName\":\"America/Argentina/Buenos_Aires\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Catamarca\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Cordoba\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Jujuy\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/La_Rioja\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Mendoza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Rio_Gallegos\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Salta\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Juan\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Luis\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Tucuman\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Ushuaia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"}]', '{\"kr\":\"아르헨티나\",\"br\":\"Argentina\",\"pt\":\"Argentina\",\"nl\":\"Argentinië\",\"hr\":\"Argentina\",\"fa\":\"آرژانتین\",\"de\":\"Argentinien\",\"es\":\"Argentina\",\"fr\":\"Argentine\",\"ja\":\"アルゼンチン\",\"it\":\"Argentina\",\"cn\":\"阿根廷\"}', '-34.00000000', '-64.00000000', '🇦🇷', 'U+1F1E6 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:21:01', 1, 'Q414'),
(12, 'Armenia', 'ARM', '051', 'AM', '374', 'Yerevan', 'AMD', 'Armenian dram', '֏', '.am', 'Հայաստան', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Yerevan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Armenia Time\"}]', '{\"kr\":\"아르메니아\",\"br\":\"Armênia\",\"pt\":\"Arménia\",\"nl\":\"Armenië\",\"hr\":\"Armenija\",\"fa\":\"ارمنستان\",\"de\":\"Armenien\",\"es\":\"Armenia\",\"fr\":\"Arménie\",\"ja\":\"アルメニア\",\"it\":\"Armenia\",\"cn\":\"亚美尼亚\"}', '40.00000000', '45.00000000', '🇦🇲', 'U+1F1E6 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:21:06', 1, 'Q399'),
(13, 'Aruba', 'ABW', '533', 'AW', '297', 'Oranjestad', 'AWG', 'Aruban florin', 'ƒ', '.aw', 'Aruba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Aruba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"아루바\",\"br\":\"Aruba\",\"pt\":\"Aruba\",\"nl\":\"Aruba\",\"hr\":\"Aruba\",\"fa\":\"آروبا\",\"de\":\"Aruba\",\"es\":\"Aruba\",\"fr\":\"Aruba\",\"ja\":\"アルバ\",\"it\":\"Aruba\",\"cn\":\"阿鲁巴\"}', '12.50000000', '-69.96666666', '🇦🇼', 'U+1F1E6 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:26:47', 1, NULL),
(14, 'Australia', 'AUS', '036', 'AU', '61', 'Canberra', 'AUD', 'Australian dollar', '$', '.au', 'Australia', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Antarctica/Macquarie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MIST\",\"tzName\":\"Macquarie Island Station Time\"},{\"zoneName\":\"Australia/Adelaide\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Brisbane\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Broken_Hill\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Currie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Darwin\",\"gmtOffset\":34200,\"gmtOffsetName\":\"UTC+09:30\",\"abbreviation\":\"ACST\",\"tzName\":\"Australian Central Standard Time\"},{\"zoneName\":\"Australia/Eucla\",\"gmtOffset\":31500,\"gmtOffsetName\":\"UTC+08:45\",\"abbreviation\":\"ACWST\",\"tzName\":\"Australian Central Western Standard Time (Unofficial)\"},{\"zoneName\":\"Australia/Hobart\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Lindeman\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Lord_Howe\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"LHST\",\"tzName\":\"Lord Howe Summer Time\"},{\"zoneName\":\"Australia/Melbourne\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Perth\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Australia/Sydney\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"}]', '{\"kr\":\"호주\",\"br\":\"Austrália\",\"pt\":\"Austrália\",\"nl\":\"Australië\",\"hr\":\"Australija\",\"fa\":\"استرالیا\",\"de\":\"Australien\",\"es\":\"Australia\",\"fr\":\"Australie\",\"ja\":\"オーストラリア\",\"it\":\"Australia\",\"cn\":\"澳大利亚\"}', '-27.00000000', '133.00000000', '🇦🇺', 'U+1F1E6 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:21:23', 1, 'Q408'),
(15, 'Austria', 'AUT', '040', 'AT', '43', 'Vienna', 'EUR', 'Euro', '€', '.at', 'Österreich', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vienna\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"오스트리아\",\"br\":\"áustria\",\"pt\":\"áustria\",\"nl\":\"Oostenrijk\",\"hr\":\"Austrija\",\"fa\":\"اتریش\",\"de\":\"Österreich\",\"es\":\"Austria\",\"fr\":\"Autriche\",\"ja\":\"オーストリア\",\"it\":\"Austria\",\"cn\":\"奥地利\"}', '47.33333333', '13.33333333', '🇦🇹', 'U+1F1E6 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:21:35', 1, 'Q40'),
(16, 'Azerbaijan', 'AZE', '031', 'AZ', '994', 'Baku', 'AZN', 'Azerbaijani manat', 'm', '.az', 'Azərbaycan', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baku\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AZT\",\"tzName\":\"Azerbaijan Time\"}]', '{\"kr\":\"아제르바이잔\",\"br\":\"Azerbaijão\",\"pt\":\"Azerbaijão\",\"nl\":\"Azerbeidzjan\",\"hr\":\"Azerbajdžan\",\"fa\":\"آذربایجان\",\"de\":\"Aserbaidschan\",\"es\":\"Azerbaiyán\",\"fr\":\"Azerbaïdjan\",\"ja\":\"アゼルバイジャン\",\"it\":\"Azerbaijan\",\"cn\":\"阿塞拜疆\"}', '40.50000000', '47.50000000', '🇦🇿', 'U+1F1E6 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:21:43', 1, 'Q227'),
(17, 'The Bahamas', 'BHS', '044', 'BS', '+1-242', 'Nassau', 'BSD', 'Bahamian dollar', 'B$', '.bs', 'Bahamas', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Nassau\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"}]', '{\"kr\":\"바하마\",\"br\":\"Bahamas\",\"pt\":\"Baamas\",\"nl\":\"Bahama’s\",\"hr\":\"Bahami\",\"fa\":\"باهاما\",\"de\":\"Bahamas\",\"es\":\"Bahamas\",\"fr\":\"Bahamas\",\"ja\":\"バハマ\",\"it\":\"Bahamas\",\"cn\":\"巴哈马\"}', '24.25000000', '-76.00000000', '🇧🇸', 'U+1F1E7 U+1F1F8', '2018-07-21 01:41:03', '2022-03-13 16:28:29', 1, 'Q778'),
(18, 'Bahrain', 'BHR', '048', 'BH', '973', 'Manama', 'BHD', 'Bahraini dinar', '.د.ب', '.bh', '‏البحرين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Bahrain\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"바레인\",\"br\":\"Bahrein\",\"pt\":\"Barém\",\"nl\":\"Bahrein\",\"hr\":\"Bahrein\",\"fa\":\"بحرین\",\"de\":\"Bahrain\",\"es\":\"Bahrein\",\"fr\":\"Bahreïn\",\"ja\":\"バーレーン\",\"it\":\"Bahrein\",\"cn\":\"巴林\"}', '26.00000000', '50.55000000', '🇧🇭', 'U+1F1E7 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 18:21:58', 1, 'Q398'),
(19, 'Bangladesh', 'BGD', '050', 'BD', '880', 'Dhaka', 'BDT', 'Bangladeshi taka', '৳', '.bd', 'Bangladesh', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Dhaka\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BDT\",\"tzName\":\"Bangladesh Standard Time\"}]', '{\"kr\":\"방글라데시\",\"br\":\"Bangladesh\",\"pt\":\"Bangladeche\",\"nl\":\"Bangladesh\",\"hr\":\"Bangladeš\",\"fa\":\"بنگلادش\",\"de\":\"Bangladesch\",\"es\":\"Bangladesh\",\"fr\":\"Bangladesh\",\"ja\":\"バングラデシュ\",\"it\":\"Bangladesh\",\"cn\":\"孟加拉\"}', '24.00000000', '90.00000000', '🇧🇩', 'U+1F1E7 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:22:04', 1, 'Q902'),
(20, 'Barbados', 'BRB', '052', 'BB', '+1-246', 'Bridgetown', 'BBD', 'Barbadian dollar', 'Bds$', '.bb', 'Barbados', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Barbados\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"바베이도스\",\"br\":\"Barbados\",\"pt\":\"Barbados\",\"nl\":\"Barbados\",\"hr\":\"Barbados\",\"fa\":\"باربادوس\",\"de\":\"Barbados\",\"es\":\"Barbados\",\"fr\":\"Barbade\",\"ja\":\"バルバドス\",\"it\":\"Barbados\",\"cn\":\"巴巴多斯\"}', '13.16666666', '-59.53333333', '🇧🇧', 'U+1F1E7 U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 18:27:03', 1, 'Q244'),
(21, 'Belarus', 'BLR', '112', 'BY', '375', 'Minsk', 'BYN', 'Belarusian ruble', 'Br', '.by', 'Белару́сь', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Minsk\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"}]', '{\"kr\":\"벨라루스\",\"br\":\"Bielorrússia\",\"pt\":\"Bielorrússia\",\"nl\":\"Wit-Rusland\",\"hr\":\"Bjelorusija\",\"fa\":\"بلاروس\",\"de\":\"Weißrussland\",\"es\":\"Bielorrusia\",\"fr\":\"Biélorussie\",\"ja\":\"ベラルーシ\",\"it\":\"Bielorussia\",\"cn\":\"白俄罗斯\"}', '53.00000000', '28.00000000', '🇧🇾', 'U+1F1E7 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:27:09', 1, 'Q184'),
(22, 'Belgium', 'BEL', '056', 'BE', '32', 'Brussels', 'EUR', 'Euro', '€', '.be', 'België', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Brussels\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"벨기에\",\"br\":\"Bélgica\",\"pt\":\"Bélgica\",\"nl\":\"België\",\"hr\":\"Belgija\",\"fa\":\"بلژیک\",\"de\":\"Belgien\",\"es\":\"Bélgica\",\"fr\":\"Belgique\",\"ja\":\"ベルギー\",\"it\":\"Belgio\",\"cn\":\"比利时\"}', '50.83333333', '4.00000000', '🇧🇪', 'U+1F1E7 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:27:15', 1, 'Q31'),
(23, 'Belize', 'BLZ', '084', 'BZ', '501', 'Belmopan', 'BZD', 'Belize dollar', '$', '.bz', 'Belize', 'Americas', 'Central America', '[{\"zoneName\":\"America/Belize\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America)\"}]', '{\"kr\":\"벨리즈\",\"br\":\"Belize\",\"pt\":\"Belize\",\"nl\":\"Belize\",\"hr\":\"Belize\",\"fa\":\"بلیز\",\"de\":\"Belize\",\"es\":\"Belice\",\"fr\":\"Belize\",\"ja\":\"ベリーズ\",\"it\":\"Belize\",\"cn\":\"伯利兹\"}', '17.25000000', '-88.75000000', '🇧🇿', 'U+1F1E7 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:27:21', 1, 'Q242'),
(24, 'Benin', 'BEN', '204', 'BJ', '229', 'Porto-Novo', 'XOF', 'West African CFA franc', 'CFA', '.bj', 'Bénin', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Porto-Novo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"베냉\",\"br\":\"Benin\",\"pt\":\"Benim\",\"nl\":\"Benin\",\"hr\":\"Benin\",\"fa\":\"بنین\",\"de\":\"Benin\",\"es\":\"Benín\",\"fr\":\"Bénin\",\"ja\":\"ベナン\",\"it\":\"Benin\",\"cn\":\"贝宁\"}', '9.50000000', '2.25000000', '🇧🇯', 'U+1F1E7 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 18:27:27', 1, 'Q962'),
(25, 'Bermuda', 'BMU', '060', 'BM', '+1-441', 'Hamilton', 'BMD', 'Bermudian dollar', '$', '.bm', 'Bermuda', 'Americas', 'Northern America', '[{\"zoneName\":\"Atlantic/Bermuda\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"버뮤다\",\"br\":\"Bermudas\",\"pt\":\"Bermudas\",\"nl\":\"Bermuda\",\"hr\":\"Bermudi\",\"fa\":\"برمودا\",\"de\":\"Bermuda\",\"es\":\"Bermudas\",\"fr\":\"Bermudes\",\"ja\":\"バミューダ\",\"it\":\"Bermuda\",\"cn\":\"百慕大\"}', '32.33333333', '-64.75000000', '🇧🇲', 'U+1F1E7 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:27:32', 1, NULL),
(26, 'Bhutan', 'BTN', '064', 'BT', '975', 'Thimphu', 'BTN', 'Bhutanese ngultrum', 'Nu.', '.bt', 'ʼbrug-yul', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Thimphu\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BTT\",\"tzName\":\"Bhutan Time\"}]', '{\"kr\":\"부탄\",\"br\":\"Butão\",\"pt\":\"Butão\",\"nl\":\"Bhutan\",\"hr\":\"Butan\",\"fa\":\"بوتان\",\"de\":\"Bhutan\",\"es\":\"Bután\",\"fr\":\"Bhoutan\",\"ja\":\"ブータン\",\"it\":\"Bhutan\",\"cn\":\"不丹\"}', '27.50000000', '90.50000000', '🇧🇹', 'U+1F1E7 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:27:38', 1, 'Q917'),
(27, 'Bolivia', 'BOL', '068', 'BO', '591', 'Sucre', 'BOB', 'Bolivian boliviano', 'Bs.', '.bo', 'Bolivia', 'Americas', 'South America', '[{\"zoneName\":\"America/La_Paz\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BOT\",\"tzName\":\"Bolivia Time\"}]', '{\"kr\":\"볼리비아\",\"br\":\"Bolívia\",\"pt\":\"Bolívia\",\"nl\":\"Bolivia\",\"hr\":\"Bolivija\",\"fa\":\"بولیوی\",\"de\":\"Bolivien\",\"es\":\"Bolivia\",\"fr\":\"Bolivie\",\"ja\":\"ボリビア多民族国\",\"it\":\"Bolivia\",\"cn\":\"玻利维亚\"}', '-17.00000000', '-65.00000000', '🇧🇴', 'U+1F1E7 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:27:50', 1, 'Q750'),
(28, 'Bosnia and Herzegovina', 'BIH', '070', 'BA', '387', 'Sarajevo', 'BAM', 'Bosnia and Herzegovina convertible mark', 'KM', '.ba', 'Bosna i Hercegovina', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Sarajevo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"보스니아 헤르체고비나\",\"br\":\"Bósnia e Herzegovina\",\"pt\":\"Bósnia e Herzegovina\",\"nl\":\"Bosnië en Herzegovina\",\"hr\":\"Bosna i Hercegovina\",\"fa\":\"بوسنی و هرزگوین\",\"de\":\"Bosnien und Herzegowina\",\"es\":\"Bosnia y Herzegovina\",\"fr\":\"Bosnie-Herzégovine\",\"ja\":\"ボスニア・ヘルツェゴビナ\",\"it\":\"Bosnia ed Erzegovina\",\"cn\":\"波斯尼亚和黑塞哥维那\"}', '44.00000000', '18.00000000', '🇧🇦', 'U+1F1E7 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:28:10', 1, 'Q225'),
(29, 'Botswana', 'BWA', '072', 'BW', '267', 'Gaborone', 'BWP', 'Botswana pula', 'P', '.bw', 'Botswana', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Gaborone\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"보츠와나\",\"br\":\"Botsuana\",\"pt\":\"Botsuana\",\"nl\":\"Botswana\",\"hr\":\"Bocvana\",\"fa\":\"بوتسوانا\",\"de\":\"Botswana\",\"es\":\"Botswana\",\"fr\":\"Botswana\",\"ja\":\"ボツワナ\",\"it\":\"Botswana\",\"cn\":\"博茨瓦纳\"}', '-22.00000000', '24.00000000', '🇧🇼', 'U+1F1E7 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:28:22', 1, 'Q963'),
(30, 'Bouvet Island', 'BVT', '074', 'BV', '0055', '', 'NOK', 'Norwegian Krone', 'kr', '.bv', 'Bouvetøya', '', '', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"부벳 섬\",\"br\":\"Ilha Bouvet\",\"pt\":\"Ilha Bouvet\",\"nl\":\"Bouveteiland\",\"hr\":\"Otok Bouvet\",\"fa\":\"جزیره بووه\",\"de\":\"Bouvetinsel\",\"es\":\"Isla Bouvet\",\"fr\":\"Île Bouvet\",\"ja\":\"ブーベ島\",\"it\":\"Isola Bouvet\",\"cn\":\"布维岛\"}', '-54.43333333', '3.40000000', '🇧🇻', 'U+1F1E7 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 19:17:50', 1, NULL),
(31, 'Brazil', 'BRA', '076', 'BR', '55', 'Brasilia', 'BRL', 'Brazilian real', 'R$', '.br', 'Brasil', 'Americas', 'South America', '[{\"zoneName\":\"America/Araguaina\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Bahia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Belem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Boa_Vista\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Campo_Grande\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Cuiaba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasilia Time\"},{\"zoneName\":\"America/Eirunepe\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Fortaleza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Maceio\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Manaus\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)\"},{\"zoneName\":\"America/Noronha\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"FNT\",\"tzName\":\"Fernando de Noronha Time\"},{\"zoneName\":\"America/Porto_Velho\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Recife\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Rio_Branco\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Santarem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Sao_Paulo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"}]', '{\"kr\":\"브라질\",\"br\":\"Brasil\",\"pt\":\"Brasil\",\"nl\":\"Brazilië\",\"hr\":\"Brazil\",\"fa\":\"برزیل\",\"de\":\"Brasilien\",\"es\":\"Brasil\",\"fr\":\"Brésil\",\"ja\":\"ブラジル\",\"it\":\"Brasile\",\"cn\":\"巴西\"}', '-10.00000000', '-55.00000000', '🇧🇷', 'U+1F1E7 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:28:56', 1, 'Q155'),
(32, 'British Indian Ocean Territory', 'IOT', '086', 'IO', '246', 'Diego Garcia', 'USD', 'United States dollar', '$', '.io', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Chagos\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"IOT\",\"tzName\":\"Indian Ocean Time\"}]', '{\"kr\":\"영국령 인도양 지역\",\"br\":\"Território Britânico do Oceano íÍdico\",\"pt\":\"Território Britânico do Oceano Índico\",\"nl\":\"Britse Gebieden in de Indische Oceaan\",\"hr\":\"Britanski Indijskooceanski teritorij\",\"fa\":\"قلمرو بریتانیا در اقیانوس هند\",\"de\":\"Britisches Territorium im Indischen Ozean\",\"es\":\"Territorio Británico del Océano Índico\",\"fr\":\"Territoire britannique de l\'océan Indien\",\"ja\":\"イギリス領インド洋地域\",\"it\":\"Territorio britannico dell\'oceano indiano\",\"cn\":\"英属印度洋领地\"}', '-6.00000000', '71.50000000', '🇮🇴', 'U+1F1EE U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:29:10', 1, NULL),
(33, 'Brunei', 'BRN', '096', 'BN', '673', 'Bandar Seri Begawan', 'BND', 'Brunei dollar', 'B$', '.bn', 'Negara Brunei Darussalam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Brunei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"BNT\",\"tzName\":\"Brunei Darussalam Time\"}]', '{\"kr\":\"브루나이\",\"br\":\"Brunei\",\"pt\":\"Brunei\",\"nl\":\"Brunei\",\"hr\":\"Brunej\",\"fa\":\"برونئی\",\"de\":\"Brunei\",\"es\":\"Brunei\",\"fr\":\"Brunei\",\"ja\":\"ブルネイ・ダルサラーム\",\"it\":\"Brunei\",\"cn\":\"文莱\"}', '4.50000000', '114.66666666', '🇧🇳', 'U+1F1E7 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:29:19', 1, 'Q921'),
(34, 'Bulgaria', 'BGR', '100', 'BG', '359', 'Sofia', 'BGN', 'Bulgarian lev', 'Лв.', '.bg', 'България', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Sofia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"불가리아\",\"br\":\"Bulgária\",\"pt\":\"Bulgária\",\"nl\":\"Bulgarije\",\"hr\":\"Bugarska\",\"fa\":\"بلغارستان\",\"de\":\"Bulgarien\",\"es\":\"Bulgaria\",\"fr\":\"Bulgarie\",\"ja\":\"ブルガリア\",\"it\":\"Bulgaria\",\"cn\":\"保加利亚\"}', '43.00000000', '25.00000000', '🇧🇬', 'U+1F1E7 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:29:26', 1, 'Q219'),
(35, 'Burkina Faso', 'BFA', '854', 'BF', '226', 'Ouagadougou', 'XOF', 'West African CFA franc', 'CFA', '.bf', 'Burkina Faso', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Ouagadougou\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"부르키나 파소\",\"br\":\"Burkina Faso\",\"pt\":\"Burquina Faso\",\"nl\":\"Burkina Faso\",\"hr\":\"Burkina Faso\",\"fa\":\"بورکینافاسو\",\"de\":\"Burkina Faso\",\"es\":\"Burkina Faso\",\"fr\":\"Burkina Faso\",\"ja\":\"ブルキナファソ\",\"it\":\"Burkina Faso\",\"cn\":\"布基纳法索\"}', '13.00000000', '-2.00000000', '🇧🇫', 'U+1F1E7 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:29:35', 1, 'Q965'),
(36, 'Burundi', 'BDI', '108', 'BI', '257', 'Bujumbura', 'BIF', 'Burundian franc', 'FBu', '.bi', 'Burundi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Bujumbura\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"부룬디\",\"br\":\"Burundi\",\"pt\":\"Burúndi\",\"nl\":\"Burundi\",\"hr\":\"Burundi\",\"fa\":\"بوروندی\",\"de\":\"Burundi\",\"es\":\"Burundi\",\"fr\":\"Burundi\",\"ja\":\"ブルンジ\",\"it\":\"Burundi\",\"cn\":\"布隆迪\"}', '-3.50000000', '30.00000000', '🇧🇮', 'U+1F1E7 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:29:42', 1, 'Q967'),
(37, 'Cambodia', 'KHM', '116', 'KH', '855', 'Phnom Penh', 'KHR', 'Cambodian riel', 'KHR', '.kh', 'Kâmpŭchéa', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Phnom_Penh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"캄보디아\",\"br\":\"Camboja\",\"pt\":\"Camboja\",\"nl\":\"Cambodja\",\"hr\":\"Kambodža\",\"fa\":\"کامبوج\",\"de\":\"Kambodscha\",\"es\":\"Camboya\",\"fr\":\"Cambodge\",\"ja\":\"カンボジア\",\"it\":\"Cambogia\",\"cn\":\"柬埔寨\"}', '13.00000000', '105.00000000', '🇰🇭', 'U+1F1F0 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 18:29:47', 1, 'Q424'),
(38, 'Cameroon', 'CMR', '120', 'CM', '237', 'Yaounde', 'XAF', 'Central African CFA franc', 'FCFA', '.cm', 'Cameroon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Douala\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"카메룬\",\"br\":\"Camarões\",\"pt\":\"Camarões\",\"nl\":\"Kameroen\",\"hr\":\"Kamerun\",\"fa\":\"کامرون\",\"de\":\"Kamerun\",\"es\":\"Camerún\",\"fr\":\"Cameroun\",\"ja\":\"カメルーン\",\"it\":\"Camerun\",\"cn\":\"喀麦隆\"}', '6.00000000', '12.00000000', '🇨🇲', 'U+1F1E8 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:29:54', 1, 'Q1009'),
(39, 'Canada', 'CAN', '124', 'CA', '1', 'Ottawa', 'CAD', 'Canadian dollar', '$', '.ca', 'Canada', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Atikokan\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"},{\"zoneName\":\"America/Blanc-Sablon\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Cambridge_Bay\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Creston\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson_Creek\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Edmonton\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Fort_Nelson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Glace_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Goose_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Halifax\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Inuvik\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Iqaluit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Moncton\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Nipigon\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Pangnirtung\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Rainy_River\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Rankin_Inlet\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Regina\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Resolute\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/St_Johns\",\"gmtOffset\":-12600,\"gmtOffsetName\":\"UTC-03:30\",\"abbreviation\":\"NST\",\"tzName\":\"Newfoundland Standard Time\"},{\"zoneName\":\"America/Swift_Current\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Thunder_Bay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Toronto\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Vancouver\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Whitehorse\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Winnipeg\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Yellowknife\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"}]', '{\"kr\":\"캐나다\",\"br\":\"Canadá\",\"pt\":\"Canadá\",\"nl\":\"Canada\",\"hr\":\"Kanada\",\"fa\":\"کانادا\",\"de\":\"Kanada\",\"es\":\"Canadá\",\"fr\":\"Canada\",\"ja\":\"カナダ\",\"it\":\"Canada\",\"cn\":\"加拿大\"}', '60.00000000', '-95.00000000', '🇨🇦', 'U+1F1E8 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:29:58', 1, 'Q16'),
(40, 'Cape Verde', 'CPV', '132', 'CV', '238', 'Praia', 'CVE', 'Cape Verdean escudo', '$', '.cv', 'Cabo Verde', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/Cape_Verde\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"CVT\",\"tzName\":\"Cape Verde Time\"}]', '{\"kr\":\"카보베르데\",\"br\":\"Cabo Verde\",\"pt\":\"Cabo Verde\",\"nl\":\"Kaapverdië\",\"hr\":\"Zelenortska Republika\",\"fa\":\"کیپ ورد\",\"de\":\"Kap Verde\",\"es\":\"Cabo Verde\",\"fr\":\"Cap Vert\",\"ja\":\"カーボベルデ\",\"it\":\"Capo Verde\",\"cn\":\"佛得角\"}', '16.00000000', '-24.00000000', '🇨🇻', 'U+1F1E8 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:30:03', 1, 'Q1011'),
(41, 'Cayman Islands', 'CYM', '136', 'KY', '+1-345', 'George Town', 'KYD', 'Cayman Islands dollar', '$', '.ky', 'Cayman Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Cayman\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"케이먼 제도\",\"br\":\"Ilhas Cayman\",\"pt\":\"Ilhas Caimão\",\"nl\":\"Caymaneilanden\",\"hr\":\"Kajmanski otoci\",\"fa\":\"جزایر کیمن\",\"de\":\"Kaimaninseln\",\"es\":\"Islas Caimán\",\"fr\":\"Îles Caïmans\",\"ja\":\"ケイマン諸島\",\"it\":\"Isole Cayman\",\"cn\":\"开曼群岛\"}', '19.50000000', '-80.50000000', '🇰🇾', 'U+1F1F0 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:30:09', 1, NULL),
(42, 'Central African Republic', 'CAF', '140', 'CF', '236', 'Bangui', 'XAF', 'Central African CFA franc', 'FCFA', '.cf', 'Ködörösêse tî Bêafrîka', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Bangui\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"중앙아프리카 공화국\",\"br\":\"República Centro-Africana\",\"pt\":\"República Centro-Africana\",\"nl\":\"Centraal-Afrikaanse Republiek\",\"hr\":\"Srednjoafrička Republika\",\"fa\":\"جمهوری آفریقای مرکزی\",\"de\":\"Zentralafrikanische Republik\",\"es\":\"República Centroafricana\",\"fr\":\"République centrafricaine\",\"ja\":\"中央アフリカ共和国\",\"it\":\"Repubblica Centrafricana\",\"cn\":\"中非\"}', '7.00000000', '21.00000000', '🇨🇫', 'U+1F1E8 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:30:14', 1, 'Q929'),
(43, 'Chad', 'TCD', '148', 'TD', '235', 'N\'Djamena', 'XAF', 'Central African CFA franc', 'FCFA', '.td', 'Tchad', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Ndjamena\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"차드\",\"br\":\"Chade\",\"pt\":\"Chade\",\"nl\":\"Tsjaad\",\"hr\":\"Čad\",\"fa\":\"چاد\",\"de\":\"Tschad\",\"es\":\"Chad\",\"fr\":\"Tchad\",\"ja\":\"チャド\",\"it\":\"Ciad\",\"cn\":\"乍得\"}', '15.00000000', '19.00000000', '🇹🇩', 'U+1F1F9 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:30:21', 1, 'Q657'),
(44, 'Chile', 'CHL', '152', 'CL', '56', 'Santiago', 'CLP', 'Chilean peso', '$', '.cl', 'Chile', 'Americas', 'South America', '[{\"zoneName\":\"America/Punta_Arenas\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"America/Santiago\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Pacific/Easter\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EASST\",\"tzName\":\"Easter Island Summer Time\"}]', '{\"kr\":\"칠리\",\"br\":\"Chile\",\"pt\":\"Chile\",\"nl\":\"Chili\",\"hr\":\"Čile\",\"fa\":\"شیلی\",\"de\":\"Chile\",\"es\":\"Chile\",\"fr\":\"Chili\",\"ja\":\"チリ\",\"it\":\"Cile\",\"cn\":\"智利\"}', '-30.00000000', '-71.00000000', '🇨🇱', 'U+1F1E8 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:30:28', 1, 'Q298'),
(45, 'China', 'CHN', '156', 'CN', '86', 'Beijing', 'CNY', 'Chinese yuan', '¥', '.cn', '中国', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Shanghai\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"},{\"zoneName\":\"Asia/Urumqi\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"XJT\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"중국\",\"br\":\"China\",\"pt\":\"China\",\"nl\":\"China\",\"hr\":\"Kina\",\"fa\":\"چین\",\"de\":\"China\",\"es\":\"China\",\"fr\":\"Chine\",\"ja\":\"中国\",\"it\":\"Cina\",\"cn\":\"中国\"}', '35.00000000', '105.00000000', '🇨🇳', 'U+1F1E8 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:30:33', 1, 'Q148'),
(46, 'Christmas Island', 'CXR', '162', 'CX', '61', 'Flying Fish Cove', 'AUD', 'Australian dollar', '$', '.cx', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Christmas\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"CXT\",\"tzName\":\"Christmas Island Time\"}]', '{\"kr\":\"크리스마스 섬\",\"br\":\"Ilha Christmas\",\"pt\":\"Ilha do Natal\",\"nl\":\"Christmaseiland\",\"hr\":\"Božićni otok\",\"fa\":\"جزیره کریسمس\",\"de\":\"Weihnachtsinsel\",\"es\":\"Isla de Navidad\",\"fr\":\"Île Christmas\",\"ja\":\"クリスマス島\",\"it\":\"Isola di Natale\",\"cn\":\"圣诞岛\"}', '-10.50000000', '105.66666666', '🇨🇽', 'U+1F1E8 U+1F1FD', '2018-07-21 01:41:03', '2021-12-11 19:18:01', 1, NULL),
(47, 'Cocos (Keeling) Islands', 'CCK', '166', 'CC', '61', 'West Island', 'AUD', 'Australian dollar', '$', '.cc', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Cocos\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"CCT\",\"tzName\":\"Cocos Islands Time\"}]', '{\"kr\":\"코코스 제도\",\"br\":\"Ilhas Cocos\",\"pt\":\"Ilhas dos Cocos\",\"nl\":\"Cocoseilanden\",\"hr\":\"Kokosovi Otoci\",\"fa\":\"جزایر کوکوس\",\"de\":\"Kokosinseln\",\"es\":\"Islas Cocos o Islas Keeling\",\"fr\":\"Îles Cocos\",\"ja\":\"ココス（キーリング）諸島\",\"it\":\"Isole Cocos e Keeling\",\"cn\":\"科科斯（基林）群岛\"}', '-12.50000000', '96.83333333', '🇨🇨', 'U+1F1E8 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:18:14', 1, NULL),
(48, 'Colombia', 'COL', '170', 'CO', '57', 'Bogotá', 'COP', 'Colombian peso', '$', '.co', 'Colombia', 'Americas', 'South America', '[{\"zoneName\":\"America/Bogota\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"COT\",\"tzName\":\"Colombia Time\"}]', '{\"kr\":\"콜롬비아\",\"br\":\"Colômbia\",\"pt\":\"Colômbia\",\"nl\":\"Colombia\",\"hr\":\"Kolumbija\",\"fa\":\"کلمبیا\",\"de\":\"Kolumbien\",\"es\":\"Colombia\",\"fr\":\"Colombie\",\"ja\":\"コロンビア\",\"it\":\"Colombia\",\"cn\":\"哥伦比亚\"}', '4.00000000', '-72.00000000', '🇨🇴', 'U+1F1E8 U+1F1F4', '2018-07-21 01:41:03', '2022-01-22 12:56:05', 1, 'Q739'),
(49, 'Comoros', 'COM', '174', 'KM', '269', 'Moroni', 'KMF', 'Comorian franc', 'CF', '.km', 'Komori', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Comoro\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"코모로\",\"br\":\"Comores\",\"pt\":\"Comores\",\"nl\":\"Comoren\",\"hr\":\"Komori\",\"fa\":\"کومور\",\"de\":\"Union der Komoren\",\"es\":\"Comoras\",\"fr\":\"Comores\",\"ja\":\"コモロ\",\"it\":\"Comore\",\"cn\":\"科摩罗\"}', '-12.16666666', '44.25000000', '🇰🇲', 'U+1F1F0 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:30:50', 1, 'Q970'),
(50, 'Congo', 'COG', '178', 'CG', '242', 'Brazzaville', 'XAF', 'Central African CFA franc', 'FC', '.cg', 'République du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Brazzaville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"콩고\",\"br\":\"Congo\",\"pt\":\"Congo\",\"nl\":\"Congo [Republiek]\",\"hr\":\"Kongo\",\"fa\":\"کنگو\",\"de\":\"Kongo\",\"es\":\"Congo\",\"fr\":\"Congo\",\"ja\":\"コンゴ共和国\",\"it\":\"Congo\",\"cn\":\"刚果\"}', '-1.00000000', '15.00000000', '🇨🇬', 'U+1F1E8 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:31:09', 1, 'Q971'),
(51, 'Democratic Republic of the Congo', 'COD', '180', 'CD', '243', 'Kinshasa', 'CDF', 'Congolese Franc', 'FC', '.cd', 'République démocratique du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Kinshasa\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"},{\"zoneName\":\"Africa/Lubumbashi\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"콩고 민주 공화국\",\"br\":\"RD Congo\",\"pt\":\"RD Congo\",\"nl\":\"Congo [DRC]\",\"hr\":\"Kongo, Demokratska Republika\",\"fa\":\"جمهوری کنگو\",\"de\":\"Kongo (Dem. Rep.)\",\"es\":\"Congo (Rep. Dem.)\",\"fr\":\"Congo (Rép. dém.)\",\"ja\":\"コンゴ民主共和国\",\"it\":\"Congo (Rep. Dem.)\",\"cn\":\"刚果（金）\"}', '0.00000000', '25.00000000', '🇨🇩', 'U+1F1E8 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 19:18:42', 1, 'Q974'),
(52, 'Cook Islands', 'COK', '184', 'CK', '682', 'Avarua', 'NZD', 'Cook Islands dollar', '$', '.ck', 'Cook Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Rarotonga\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"CKT\",\"tzName\":\"Cook Island Time\"}]', '{\"kr\":\"쿡 제도\",\"br\":\"Ilhas Cook\",\"pt\":\"Ilhas Cook\",\"nl\":\"Cookeilanden\",\"hr\":\"Cookovo Otočje\",\"fa\":\"جزایر کوک\",\"de\":\"Cookinseln\",\"es\":\"Islas Cook\",\"fr\":\"Îles Cook\",\"ja\":\"クック諸島\",\"it\":\"Isole Cook\",\"cn\":\"库克群岛\"}', '-21.23333333', '-159.76666666', '🇨🇰', 'U+1F1E8 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:31:15', 1, 'Q26988'),
(53, 'Costa Rica', 'CRI', '188', 'CR', '506', 'San Jose', 'CRC', 'Costa Rican colón', '₡', '.cr', 'Costa Rica', 'Americas', 'Central America', '[{\"zoneName\":\"America/Costa_Rica\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"코스타리카\",\"br\":\"Costa Rica\",\"pt\":\"Costa Rica\",\"nl\":\"Costa Rica\",\"hr\":\"Kostarika\",\"fa\":\"کاستاریکا\",\"de\":\"Costa Rica\",\"es\":\"Costa Rica\",\"fr\":\"Costa Rica\",\"ja\":\"コスタリカ\",\"it\":\"Costa Rica\",\"cn\":\"哥斯达黎加\"}', '10.00000000', '-84.00000000', '🇨🇷', 'U+1F1E8 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:31:20', 1, 'Q800'),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', '384', 'CI', '225', 'Yamoussoukro', 'XOF', 'West African CFA franc', 'CFA', '.ci', NULL, 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Abidjan\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"코트디부아르\",\"br\":\"Costa do Marfim\",\"pt\":\"Costa do Marfim\",\"nl\":\"Ivoorkust\",\"hr\":\"Obala Bjelokosti\",\"fa\":\"ساحل عاج\",\"de\":\"Elfenbeinküste\",\"es\":\"Costa de Marfil\",\"fr\":\"Côte d\'Ivoire\",\"ja\":\"コートジボワール\",\"it\":\"Costa D\'Avorio\",\"cn\":\"科特迪瓦\"}', '8.00000000', '-5.00000000', '🇨🇮', 'U+1F1E8 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:31:26', 1, 'Q1008'),
(55, 'Croatia', 'HRV', '191', 'HR', '385', 'Zagreb', 'HRK', 'Croatian kuna', 'kn', '.hr', 'Hrvatska', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Zagreb\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"크로아티아\",\"br\":\"Croácia\",\"pt\":\"Croácia\",\"nl\":\"Kroatië\",\"hr\":\"Hrvatska\",\"fa\":\"کرواسی\",\"de\":\"Kroatien\",\"es\":\"Croacia\",\"fr\":\"Croatie\",\"ja\":\"クロアチア\",\"it\":\"Croazia\",\"cn\":\"克罗地亚\"}', '45.16666666', '15.50000000', '🇭🇷', 'U+1F1ED U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:31:33', 1, 'Q224'),
(56, 'Cuba', 'CUB', '192', 'CU', '53', 'Havana', 'CUP', 'Cuban peso', '$', '.cu', 'Cuba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Havana\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"CST\",\"tzName\":\"Cuba Standard Time\"}]', '{\"kr\":\"쿠바\",\"br\":\"Cuba\",\"pt\":\"Cuba\",\"nl\":\"Cuba\",\"hr\":\"Kuba\",\"fa\":\"کوبا\",\"de\":\"Kuba\",\"es\":\"Cuba\",\"fr\":\"Cuba\",\"ja\":\"キューバ\",\"it\":\"Cuba\",\"cn\":\"古巴\"}', '21.50000000', '-80.00000000', '🇨🇺', 'U+1F1E8 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:31:39', 1, 'Q241'),
(57, 'Cyprus', 'CYP', '196', 'CY', '357', 'Nicosia', 'EUR', 'Euro', '€', '.cy', 'Κύπρος', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Asia/Famagusta\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Nicosia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"키프로스\",\"br\":\"Chipre\",\"pt\":\"Chipre\",\"nl\":\"Cyprus\",\"hr\":\"Cipar\",\"fa\":\"قبرس\",\"de\":\"Zypern\",\"es\":\"Chipre\",\"fr\":\"Chypre\",\"ja\":\"キプロス\",\"it\":\"Cipro\",\"cn\":\"塞浦路斯\"}', '35.00000000', '33.00000000', '🇨🇾', 'U+1F1E8 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:31:50', 1, 'Q229');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(58, 'Czech Republic', 'CZE', '203', 'CZ', '420', 'Prague', 'CZK', 'Czech koruna', 'Kč', '.cz', 'Česká republika', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Prague\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"체코\",\"br\":\"República Tcheca\",\"pt\":\"República Checa\",\"nl\":\"Tsjechië\",\"hr\":\"Češka\",\"fa\":\"جمهوری چک\",\"de\":\"Tschechische Republik\",\"es\":\"República Checa\",\"fr\":\"République tchèque\",\"ja\":\"チェコ\",\"it\":\"Repubblica Ceca\",\"cn\":\"捷克\"}', '49.75000000', '15.50000000', '🇨🇿', 'U+1F1E8 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:31:57', 1, 'Q213'),
(59, 'Denmark', 'DNK', '208', 'DK', '45', 'Copenhagen', 'DKK', 'Danish krone', 'Kr.', '.dk', 'Danmark', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Copenhagen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"덴마크\",\"br\":\"Dinamarca\",\"pt\":\"Dinamarca\",\"nl\":\"Denemarken\",\"hr\":\"Danska\",\"fa\":\"دانمارک\",\"de\":\"Dänemark\",\"es\":\"Dinamarca\",\"fr\":\"Danemark\",\"ja\":\"デンマーク\",\"it\":\"Danimarca\",\"cn\":\"丹麦\"}', '56.00000000', '10.00000000', '🇩🇰', 'U+1F1E9 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:32:05', 1, 'Q35'),
(60, 'Djibouti', 'DJI', '262', 'DJ', '253', 'Djibouti', 'DJF', 'Djiboutian franc', 'Fdj', '.dj', 'Djibouti', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Djibouti\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"지부티\",\"br\":\"Djibuti\",\"pt\":\"Djibuti\",\"nl\":\"Djibouti\",\"hr\":\"Džibuti\",\"fa\":\"جیبوتی\",\"de\":\"Dschibuti\",\"es\":\"Yibuti\",\"fr\":\"Djibouti\",\"ja\":\"ジブチ\",\"it\":\"Gibuti\",\"cn\":\"吉布提\"}', '11.50000000', '43.00000000', '🇩🇯', 'U+1F1E9 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 18:32:11', 1, 'Q977'),
(61, 'Dominica', 'DMA', '212', 'DM', '+1-767', 'Roseau', 'XCD', 'Eastern Caribbean dollar', '$', '.dm', 'Dominica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Dominica\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 연방\",\"br\":\"Dominica\",\"pt\":\"Dominica\",\"nl\":\"Dominica\",\"hr\":\"Dominika\",\"fa\":\"دومینیکا\",\"de\":\"Dominica\",\"es\":\"Dominica\",\"fr\":\"Dominique\",\"ja\":\"ドミニカ国\",\"it\":\"Dominica\",\"cn\":\"多米尼加\"}', '15.41666666', '-61.33333333', '🇩🇲', 'U+1F1E9 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:32:16', 1, 'Q784'),
(62, 'Dominican Republic', 'DOM', '214', 'DO', '+1-809 and 1-829', 'Santo Domingo', 'DOP', 'Dominican peso', '$', '.do', 'República Dominicana', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Santo_Domingo\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 공화국\",\"br\":\"República Dominicana\",\"pt\":\"República Dominicana\",\"nl\":\"Dominicaanse Republiek\",\"hr\":\"Dominikanska Republika\",\"fa\":\"جمهوری دومینیکن\",\"de\":\"Dominikanische Republik\",\"es\":\"República Dominicana\",\"fr\":\"République dominicaine\",\"ja\":\"ドミニカ共和国\",\"it\":\"Repubblica Dominicana\",\"cn\":\"多明尼加共和国\"}', '19.00000000', '-70.66666666', '🇩🇴', 'U+1F1E9 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:32:22', 1, 'Q786'),
(63, 'East Timor', 'TLS', '626', 'TL', '670', 'Dili', 'USD', 'United States dollar', '$', '.tl', 'Timor-Leste', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Dili\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"TLT\",\"tzName\":\"Timor Leste Time\"}]', '{\"kr\":\"동티모르\",\"br\":\"Timor Leste\",\"pt\":\"Timor Leste\",\"nl\":\"Oost-Timor\",\"hr\":\"Istočni Timor\",\"fa\":\"تیمور شرقی\",\"de\":\"Timor-Leste\",\"es\":\"Timor Oriental\",\"fr\":\"Timor oriental\",\"ja\":\"東ティモール\",\"it\":\"Timor Est\",\"cn\":\"东帝汶\"}', '-8.83333333', '125.91666666', '🇹🇱', 'U+1F1F9 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:32:27', 1, 'Q574'),
(64, 'Ecuador', 'ECU', '218', 'EC', '593', 'Quito', 'USD', 'United States dollar', '$', '.ec', 'Ecuador', 'Americas', 'South America', '[{\"zoneName\":\"America/Guayaquil\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ECT\",\"tzName\":\"Ecuador Time\"},{\"zoneName\":\"Pacific/Galapagos\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"GALT\",\"tzName\":\"Galápagos Time\"}]', '{\"kr\":\"에콰도르\",\"br\":\"Equador\",\"pt\":\"Equador\",\"nl\":\"Ecuador\",\"hr\":\"Ekvador\",\"fa\":\"اکوادور\",\"de\":\"Ecuador\",\"es\":\"Ecuador\",\"fr\":\"Équateur\",\"ja\":\"エクアドル\",\"it\":\"Ecuador\",\"cn\":\"厄瓜多尔\"}', '-2.00000000', '-77.50000000', '🇪🇨', 'U+1F1EA U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 18:32:33', 1, 'Q736'),
(65, 'Egypt', 'EGY', '818', 'EG', '20', 'Cairo', 'EGP', 'Egyptian pound', 'ج.م', '.eg', 'مصر‎', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Cairo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"이집트\",\"br\":\"Egito\",\"pt\":\"Egipto\",\"nl\":\"Egypte\",\"hr\":\"Egipat\",\"fa\":\"مصر\",\"de\":\"Ägypten\",\"es\":\"Egipto\",\"fr\":\"Égypte\",\"ja\":\"エジプト\",\"it\":\"Egitto\",\"cn\":\"埃及\"}', '27.00000000', '30.00000000', '🇪🇬', 'U+1F1EA U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:32:38', 1, 'Q79'),
(66, 'El Salvador', 'SLV', '222', 'SV', '503', 'San Salvador', 'USD', 'United States dollar', '$', '.sv', 'El Salvador', 'Americas', 'Central America', '[{\"zoneName\":\"America/El_Salvador\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"엘살바도르\",\"br\":\"El Salvador\",\"pt\":\"El Salvador\",\"nl\":\"El Salvador\",\"hr\":\"Salvador\",\"fa\":\"السالوادور\",\"de\":\"El Salvador\",\"es\":\"El Salvador\",\"fr\":\"Salvador\",\"ja\":\"エルサルバドル\",\"it\":\"El Salvador\",\"cn\":\"萨尔瓦多\"}', '13.83333333', '-88.91666666', '🇸🇻', 'U+1F1F8 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:32:45', 1, 'Q792'),
(67, 'Equatorial Guinea', 'GNQ', '226', 'GQ', '240', 'Malabo', 'XAF', 'Central African CFA franc', 'FCFA', '.gq', 'Guinea Ecuatorial', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Malabo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"적도 기니\",\"br\":\"Guiné Equatorial\",\"pt\":\"Guiné Equatorial\",\"nl\":\"Equatoriaal-Guinea\",\"hr\":\"Ekvatorijalna Gvineja\",\"fa\":\"گینه استوایی\",\"de\":\"Äquatorial-Guinea\",\"es\":\"Guinea Ecuatorial\",\"fr\":\"Guinée-Équatoriale\",\"ja\":\"赤道ギニア\",\"it\":\"Guinea Equatoriale\",\"cn\":\"赤道几内亚\"}', '2.00000000', '10.00000000', '🇬🇶', 'U+1F1EC U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 18:32:52', 1, 'Q983'),
(68, 'Eritrea', 'ERI', '232', 'ER', '291', 'Asmara', 'ERN', 'Eritrean nakfa', 'Nfk', '.er', 'ኤርትራ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Asmara\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에리트레아\",\"br\":\"Eritreia\",\"pt\":\"Eritreia\",\"nl\":\"Eritrea\",\"hr\":\"Eritreja\",\"fa\":\"اریتره\",\"de\":\"Eritrea\",\"es\":\"Eritrea\",\"fr\":\"Érythrée\",\"ja\":\"エリトリア\",\"it\":\"Eritrea\",\"cn\":\"厄立特里亚\"}', '15.00000000', '39.00000000', '🇪🇷', 'U+1F1EA U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:32:58', 1, 'Q986'),
(69, 'Estonia', 'EST', '233', 'EE', '372', 'Tallinn', 'EUR', 'Euro', '€', '.ee', 'Eesti', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Tallinn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"에스토니아\",\"br\":\"Estônia\",\"pt\":\"Estónia\",\"nl\":\"Estland\",\"hr\":\"Estonija\",\"fa\":\"استونی\",\"de\":\"Estland\",\"es\":\"Estonia\",\"fr\":\"Estonie\",\"ja\":\"エストニア\",\"it\":\"Estonia\",\"cn\":\"爱沙尼亚\"}', '59.00000000', '26.00000000', '🇪🇪', 'U+1F1EA U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:33:03', 1, 'Q191'),
(70, 'Ethiopia', 'ETH', '231', 'ET', '251', 'Addis Ababa', 'ETB', 'Ethiopian birr', 'Nkf', '.et', 'ኢትዮጵያ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Addis_Ababa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에티오피아\",\"br\":\"Etiópia\",\"pt\":\"Etiópia\",\"nl\":\"Ethiopië\",\"hr\":\"Etiopija\",\"fa\":\"اتیوپی\",\"de\":\"Äthiopien\",\"es\":\"Etiopía\",\"fr\":\"Éthiopie\",\"ja\":\"エチオピア\",\"it\":\"Etiopia\",\"cn\":\"埃塞俄比亚\"}', '8.00000000', '38.00000000', '🇪🇹', 'U+1F1EA U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:46:58', 1, 'Q115'),
(71, 'Falkland Islands', 'FLK', '238', 'FK', '500', 'Stanley', 'FKP', 'Falkland Islands pound', '£', '.fk', 'Falkland Islands', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/Stanley\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"FKST\",\"tzName\":\"Falkland Islands Summer Time\"}]', '{\"kr\":\"포클랜드 제도\",\"br\":\"Ilhas Malvinas\",\"pt\":\"Ilhas Falkland\",\"nl\":\"Falklandeilanden [Islas Malvinas]\",\"hr\":\"Falklandski Otoci\",\"fa\":\"جزایر فالکلند\",\"de\":\"Falklandinseln\",\"es\":\"Islas Malvinas\",\"fr\":\"Îles Malouines\",\"ja\":\"フォークランド（マルビナス）諸島\",\"it\":\"Isole Falkland o Isole Malvine\",\"cn\":\"福克兰群岛\"}', '-51.75000000', '-59.00000000', '🇫🇰', 'U+1F1EB U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:47:05', 1, NULL),
(72, 'Faroe Islands', 'FRO', '234', 'FO', '298', 'Torshavn', 'DKK', 'Danish krone', 'Kr.', '.fo', 'Føroyar', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Faroe\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"페로 제도\",\"br\":\"Ilhas Faroé\",\"pt\":\"Ilhas Faroé\",\"nl\":\"Faeröer\",\"hr\":\"Farski Otoci\",\"fa\":\"جزایر فارو\",\"de\":\"Färöer-Inseln\",\"es\":\"Islas Faroe\",\"fr\":\"Îles Féroé\",\"ja\":\"フェロー諸島\",\"it\":\"Isole Far Oer\",\"cn\":\"法罗群岛\"}', '62.00000000', '-7.00000000', '🇫🇴', 'U+1F1EB U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:47:11', 1, NULL),
(73, 'Fiji Islands', 'FJI', '242', 'FJ', '679', 'Suva', 'FJD', 'Fijian dollar', 'FJ$', '.fj', 'Fiji', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Fiji\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"FJT\",\"tzName\":\"Fiji Time\"}]', '{\"kr\":\"피지\",\"br\":\"Fiji\",\"pt\":\"Fiji\",\"nl\":\"Fiji\",\"hr\":\"Fiđi\",\"fa\":\"فیجی\",\"de\":\"Fidschi\",\"es\":\"Fiyi\",\"fr\":\"Fidji\",\"ja\":\"フィジー\",\"it\":\"Figi\",\"cn\":\"斐济\"}', '-18.00000000', '175.00000000', '🇫🇯', 'U+1F1EB U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 18:47:17', 1, 'Q712'),
(74, 'Finland', 'FIN', '246', 'FI', '358', 'Helsinki', 'EUR', 'Euro', '€', '.fi', 'Suomi', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Helsinki\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"핀란드\",\"br\":\"Finlândia\",\"pt\":\"Finlândia\",\"nl\":\"Finland\",\"hr\":\"Finska\",\"fa\":\"فنلاند\",\"de\":\"Finnland\",\"es\":\"Finlandia\",\"fr\":\"Finlande\",\"ja\":\"フィンランド\",\"it\":\"Finlandia\",\"cn\":\"芬兰\"}', '64.00000000', '26.00000000', '🇫🇮', 'U+1F1EB U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:47:24', 1, 'Q33'),
(75, 'France', 'FRA', '250', 'FR', '33', 'Paris', 'EUR', 'Euro', '€', '.fr', 'France', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Paris\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"프랑스\",\"br\":\"França\",\"pt\":\"França\",\"nl\":\"Frankrijk\",\"hr\":\"Francuska\",\"fa\":\"فرانسه\",\"de\":\"Frankreich\",\"es\":\"Francia\",\"fr\":\"France\",\"ja\":\"フランス\",\"it\":\"Francia\",\"cn\":\"法国\"}', '46.00000000', '2.00000000', '🇫🇷', 'U+1F1EB U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:47:33', 1, 'Q142'),
(76, 'French Guiana', 'GUF', '254', 'GF', '594', 'Cayenne', 'EUR', 'Euro', '€', '.gf', 'Guyane française', 'Americas', 'South America', '[{\"zoneName\":\"America/Cayenne\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"GFT\",\"tzName\":\"French Guiana Time\"}]', '{\"kr\":\"프랑스령 기아나\",\"br\":\"Guiana Francesa\",\"pt\":\"Guiana Francesa\",\"nl\":\"Frans-Guyana\",\"hr\":\"Francuska Gvajana\",\"fa\":\"گویان فرانسه\",\"de\":\"Französisch Guyana\",\"es\":\"Guayana Francesa\",\"fr\":\"Guayane\",\"ja\":\"フランス領ギアナ\",\"it\":\"Guyana francese\",\"cn\":\"法属圭亚那\"}', '4.00000000', '-53.00000000', '🇬🇫', 'U+1F1EC U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:48:11', 1, NULL),
(77, 'French Polynesia', 'PYF', '258', 'PF', '689', 'Papeete', 'XPF', 'CFP franc', '₣', '.pf', 'Polynésie française', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Gambier\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"GAMT\",\"tzName\":\"Gambier Islands Time\"},{\"zoneName\":\"Pacific/Marquesas\",\"gmtOffset\":-34200,\"gmtOffsetName\":\"UTC-09:30\",\"abbreviation\":\"MART\",\"tzName\":\"Marquesas Islands Time\"},{\"zoneName\":\"Pacific/Tahiti\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"TAHT\",\"tzName\":\"Tahiti Time\"}]', '{\"kr\":\"프랑스령 폴리네시아\",\"br\":\"Polinésia Francesa\",\"pt\":\"Polinésia Francesa\",\"nl\":\"Frans-Polynesië\",\"hr\":\"Francuska Polinezija\",\"fa\":\"پلی‌نزی فرانسه\",\"de\":\"Französisch-Polynesien\",\"es\":\"Polinesia Francesa\",\"fr\":\"Polynésie française\",\"ja\":\"フランス領ポリネシア\",\"it\":\"Polinesia Francese\",\"cn\":\"法属波利尼西亚\"}', '-15.00000000', '-140.00000000', '🇵🇫', 'U+1F1F5 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:47:54', 1, NULL),
(78, 'French Southern Territories', 'ATF', '260', 'TF', '262', 'Port-aux-Francais', 'EUR', 'Euro', '€', '.tf', 'Territoire des Terres australes et antarctiques fr', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"프랑스령 남방 및 남극\",\"br\":\"Terras Austrais e Antárticas Francesas\",\"pt\":\"Terras Austrais e Antárticas Francesas\",\"nl\":\"Franse Gebieden in de zuidelijke Indische Oceaan\",\"hr\":\"Francuski južni i antarktički teritoriji\",\"fa\":\"سرزمین‌های جنوبی و جنوبگانی فرانسه\",\"de\":\"Französische Süd- und Antarktisgebiete\",\"es\":\"Tierras Australes y Antárticas Francesas\",\"fr\":\"Terres australes et antarctiques françaises\",\"ja\":\"フランス領南方・南極地域\",\"it\":\"Territori Francesi del Sud\",\"cn\":\"法属南部领地\"}', '-49.25000000', '69.16700000', '🇹🇫', 'U+1F1F9 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 18:48:34', 1, NULL),
(79, 'Gabon', 'GAB', '266', 'GA', '241', 'Libreville', 'XAF', 'Central African CFA franc', 'FCFA', '.ga', 'Gabon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Libreville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"가봉\",\"br\":\"Gabão\",\"pt\":\"Gabão\",\"nl\":\"Gabon\",\"hr\":\"Gabon\",\"fa\":\"گابن\",\"de\":\"Gabun\",\"es\":\"Gabón\",\"fr\":\"Gabon\",\"ja\":\"ガボン\",\"it\":\"Gabon\",\"cn\":\"加蓬\"}', '-1.00000000', '11.75000000', '🇬🇦', 'U+1F1EC U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:48:46', 1, 'Q1000'),
(80, 'Gambia The', 'GMB', '270', 'GM', '220', 'Banjul', 'GMD', 'Gambian dalasi', 'D', '.gm', 'Gambia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Banjul\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"감비아\",\"br\":\"Gâmbia\",\"pt\":\"Gâmbia\",\"nl\":\"Gambia\",\"hr\":\"Gambija\",\"fa\":\"گامبیا\",\"de\":\"Gambia\",\"es\":\"Gambia\",\"fr\":\"Gambie\",\"ja\":\"ガンビア\",\"it\":\"Gambia\",\"cn\":\"冈比亚\"}', '13.46666666', '-16.56666666', '🇬🇲', 'U+1F1EC U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:48:53', 1, 'Q1005'),
(81, 'Georgia', 'GEO', '268', 'GE', '995', 'Tbilisi', 'GEL', 'Georgian lari', 'ლ', '.ge', 'საქართველო', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Tbilisi\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GET\",\"tzName\":\"Georgia Standard Time\"}]', '{\"kr\":\"조지아\",\"br\":\"Geórgia\",\"pt\":\"Geórgia\",\"nl\":\"Georgië\",\"hr\":\"Gruzija\",\"fa\":\"گرجستان\",\"de\":\"Georgien\",\"es\":\"Georgia\",\"fr\":\"Géorgie\",\"ja\":\"グルジア\",\"it\":\"Georgia\",\"cn\":\"格鲁吉亚\"}', '42.00000000', '43.50000000', '🇬🇪', 'U+1F1EC U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:48:59', 1, 'Q230'),
(82, 'Germany', 'DEU', '276', 'DE', '49', 'Berlin', 'EUR', 'Euro', '€', '.de', 'Deutschland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Berlin\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Europe/Busingen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"독일\",\"br\":\"Alemanha\",\"pt\":\"Alemanha\",\"nl\":\"Duitsland\",\"hr\":\"Njemačka\",\"fa\":\"آلمان\",\"de\":\"Deutschland\",\"es\":\"Alemania\",\"fr\":\"Allemagne\",\"ja\":\"ドイツ\",\"it\":\"Germania\",\"cn\":\"德国\"}', '51.00000000', '9.00000000', '🇩🇪', 'U+1F1E9 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:49:06', 1, 'Q183'),
(83, 'Ghana', 'GHA', '288', 'GH', '233', 'Accra', 'GHS', 'Ghanaian cedi', 'GH₵', '.gh', 'Ghana', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Accra\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"가나\",\"br\":\"Gana\",\"pt\":\"Gana\",\"nl\":\"Ghana\",\"hr\":\"Gana\",\"fa\":\"غنا\",\"de\":\"Ghana\",\"es\":\"Ghana\",\"fr\":\"Ghana\",\"ja\":\"ガーナ\",\"it\":\"Ghana\",\"cn\":\"加纳\"}', '8.00000000', '-2.00000000', '🇬🇭', 'U+1F1EC U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 18:49:14', 1, 'Q117'),
(84, 'Gibraltar', 'GIB', '292', 'GI', '350', 'Gibraltar', 'GIP', 'Gibraltar pound', '£', '.gi', 'Gibraltar', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Gibraltar\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"지브롤터\",\"br\":\"Gibraltar\",\"pt\":\"Gibraltar\",\"nl\":\"Gibraltar\",\"hr\":\"Gibraltar\",\"fa\":\"جبل‌طارق\",\"de\":\"Gibraltar\",\"es\":\"Gibraltar\",\"fr\":\"Gibraltar\",\"ja\":\"ジブラルタル\",\"it\":\"Gibilterra\",\"cn\":\"直布罗陀\"}', '36.13333333', '-5.35000000', '🇬🇮', 'U+1F1EC U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:49:19', 1, NULL),
(85, 'Greece', 'GRC', '300', 'GR', '30', 'Athens', 'EUR', 'Euro', '€', '.gr', 'Ελλάδα', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Athens\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"그리스\",\"br\":\"Grécia\",\"pt\":\"Grécia\",\"nl\":\"Griekenland\",\"hr\":\"Grčka\",\"fa\":\"یونان\",\"de\":\"Griechenland\",\"es\":\"Grecia\",\"fr\":\"Grèce\",\"ja\":\"ギリシャ\",\"it\":\"Grecia\",\"cn\":\"希腊\"}', '39.00000000', '22.00000000', '🇬🇷', 'U+1F1EC U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:49:24', 1, 'Q41'),
(86, 'Greenland', 'GRL', '304', 'GL', '299', 'Nuuk', 'DKK', 'Danish krone', 'Kr.', '.gl', 'Kalaallit Nunaat', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Danmarkshavn\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"America/Nuuk\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"WGT\",\"tzName\":\"West Greenland Time\"},{\"zoneName\":\"America/Scoresbysund\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"EGT\",\"tzName\":\"Eastern Greenland Time\"},{\"zoneName\":\"America/Thule\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그린란드\",\"br\":\"Groelândia\",\"pt\":\"Gronelândia\",\"nl\":\"Groenland\",\"hr\":\"Grenland\",\"fa\":\"گرینلند\",\"de\":\"Grönland\",\"es\":\"Groenlandia\",\"fr\":\"Groenland\",\"ja\":\"グリーンランド\",\"it\":\"Groenlandia\",\"cn\":\"格陵兰岛\"}', '72.00000000', '-40.00000000', '🇬🇱', 'U+1F1EC U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:49:31', 1, NULL),
(87, 'Grenada', 'GRD', '308', 'GD', '+1-473', 'St. George\'s', 'XCD', 'Eastern Caribbean dollar', '$', '.gd', 'Grenada', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grenada\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그레나다\",\"br\":\"Granada\",\"pt\":\"Granada\",\"nl\":\"Grenada\",\"hr\":\"Grenada\",\"fa\":\"گرنادا\",\"de\":\"Grenada\",\"es\":\"Grenada\",\"fr\":\"Grenade\",\"ja\":\"グレナダ\",\"it\":\"Grenada\",\"cn\":\"格林纳达\"}', '12.11666666', '-61.66666666', '🇬🇩', 'U+1F1EC U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:49:40', 1, 'Q769'),
(88, 'Guadeloupe', 'GLP', '312', 'GP', '590', 'Basse-Terre', 'EUR', 'Euro', '€', '.gp', 'Guadeloupe', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Guadeloupe\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"과들루프\",\"br\":\"Guadalupe\",\"pt\":\"Guadalupe\",\"nl\":\"Guadeloupe\",\"hr\":\"Gvadalupa\",\"fa\":\"جزیره گوادلوپ\",\"de\":\"Guadeloupe\",\"es\":\"Guadalupe\",\"fr\":\"Guadeloupe\",\"ja\":\"グアドループ\",\"it\":\"Guadeloupa\",\"cn\":\"瓜德罗普岛\"}', '16.25000000', '-61.58333300', '🇬🇵', 'U+1F1EC U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 18:51:29', 1, NULL),
(89, 'Guam', 'GUM', '316', 'GU', '+1-671', 'Hagatna', 'USD', 'US Dollar', '$', '.gu', 'Guam', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Guam\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"괌\",\"br\":\"Guam\",\"pt\":\"Guame\",\"nl\":\"Guam\",\"hr\":\"Guam\",\"fa\":\"گوام\",\"de\":\"Guam\",\"es\":\"Guam\",\"fr\":\"Guam\",\"ja\":\"グアム\",\"it\":\"Guam\",\"cn\":\"关岛\"}', '13.46666666', '144.78333333', '🇬🇺', 'U+1F1EC U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:50:50', 1, NULL),
(90, 'Guatemala', 'GTM', '320', 'GT', '502', 'Guatemala City', 'GTQ', 'Guatemalan quetzal', 'Q', '.gt', 'Guatemala', 'Americas', 'Central America', '[{\"zoneName\":\"America/Guatemala\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"과테말라\",\"br\":\"Guatemala\",\"pt\":\"Guatemala\",\"nl\":\"Guatemala\",\"hr\":\"Gvatemala\",\"fa\":\"گواتمالا\",\"de\":\"Guatemala\",\"es\":\"Guatemala\",\"fr\":\"Guatemala\",\"ja\":\"グアテマラ\",\"it\":\"Guatemala\",\"cn\":\"危地马拉\"}', '15.50000000', '-90.25000000', '🇬🇹', 'U+1F1EC U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:51:50', 1, 'Q774'),
(91, 'Guernsey and Alderney', 'GGY', '831', 'GG', '+44-1481', 'St Peter Port', 'GBP', 'British pound', '£', '.gg', 'Guernsey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Guernsey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"건지, 올더니\",\"br\":\"Guernsey\",\"pt\":\"Guernsey\",\"nl\":\"Guernsey\",\"hr\":\"Guernsey\",\"fa\":\"گرنزی\",\"de\":\"Guernsey\",\"es\":\"Guernsey\",\"fr\":\"Guernesey\",\"ja\":\"ガーンジー\",\"it\":\"Guernsey\",\"cn\":\"根西岛\"}', '49.46666666', '-2.58333333', '🇬🇬', 'U+1F1EC U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:53:37', 1, NULL),
(92, 'Guinea', 'GIN', '324', 'GN', '224', 'Conakry', 'GNF', 'Guinean franc', 'FG', '.gn', 'Guinée', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Conakry\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니\",\"br\":\"Guiné\",\"pt\":\"Guiné\",\"nl\":\"Guinee\",\"hr\":\"Gvineja\",\"fa\":\"گینه\",\"de\":\"Guinea\",\"es\":\"Guinea\",\"fr\":\"Guinée\",\"ja\":\"ギニア\",\"it\":\"Guinea\",\"cn\":\"几内亚\"}', '11.00000000', '-10.00000000', '🇬🇳', 'U+1F1EC U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:53:45', 1, 'Q1006'),
(93, 'Guinea-Bissau', 'GNB', '624', 'GW', '245', 'Bissau', 'XOF', 'West African CFA franc', 'CFA', '.gw', 'Guiné-Bissau', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bissau\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니비사우\",\"br\":\"Guiné-Bissau\",\"pt\":\"Guiné-Bissau\",\"nl\":\"Guinee-Bissau\",\"hr\":\"Gvineja Bisau\",\"fa\":\"گینه بیسائو\",\"de\":\"Guinea-Bissau\",\"es\":\"Guinea-Bisáu\",\"fr\":\"Guinée-Bissau\",\"ja\":\"ギニアビサウ\",\"it\":\"Guinea-Bissau\",\"cn\":\"几内亚比绍\"}', '12.00000000', '-15.00000000', '🇬🇼', 'U+1F1EC U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:53:54', 1, 'Q1007'),
(94, 'Guyana', 'GUY', '328', 'GY', '592', 'Georgetown', 'GYD', 'Guyanese dollar', '$', '.gy', 'Guyana', 'Americas', 'South America', '[{\"zoneName\":\"America/Guyana\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"GYT\",\"tzName\":\"Guyana Time\"}]', '{\"kr\":\"가이아나\",\"br\":\"Guiana\",\"pt\":\"Guiana\",\"nl\":\"Guyana\",\"hr\":\"Gvajana\",\"fa\":\"گویان\",\"de\":\"Guyana\",\"es\":\"Guyana\",\"fr\":\"Guyane\",\"ja\":\"ガイアナ\",\"it\":\"Guyana\",\"cn\":\"圭亚那\"}', '5.00000000', '-59.00000000', '🇬🇾', 'U+1F1EC U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:54:01', 1, 'Q734'),
(95, 'Haiti', 'HTI', '332', 'HT', '509', 'Port-au-Prince', 'HTG', 'Haitian gourde', 'G', '.ht', 'Haïti', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port-au-Prince\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"아이티\",\"br\":\"Haiti\",\"pt\":\"Haiti\",\"nl\":\"Haïti\",\"hr\":\"Haiti\",\"fa\":\"هائیتی\",\"de\":\"Haiti\",\"es\":\"Haiti\",\"fr\":\"Haïti\",\"ja\":\"ハイチ\",\"it\":\"Haiti\",\"cn\":\"海地\"}', '19.00000000', '-72.41666666', '🇭🇹', 'U+1F1ED U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:54:06', 1, 'Q790'),
(96, 'Heard Island and McDonald Islands', 'HMD', '334', 'HM', '672', '', 'AUD', 'Australian dollar', '$', '.hm', 'Heard Island and McDonald Islands', '', '', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"허드 맥도날드 제도\",\"br\":\"Ilha Heard e Ilhas McDonald\",\"pt\":\"Ilha Heard e Ilhas McDonald\",\"nl\":\"Heard- en McDonaldeilanden\",\"hr\":\"Otok Heard i otočje McDonald\",\"fa\":\"جزیره هرد و جزایر مک‌دونالد\",\"de\":\"Heard und die McDonaldinseln\",\"es\":\"Islas Heard y McDonald\",\"fr\":\"Îles Heard-et-MacDonald\",\"ja\":\"ハード島とマクドナルド諸島\",\"it\":\"Isole Heard e McDonald\",\"cn\":\"赫德·唐纳岛及麦唐纳岛\"}', '-53.10000000', '72.51666666', '🇭🇲', 'U+1F1ED U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:18:51', 1, NULL),
(97, 'Honduras', 'HND', '340', 'HN', '504', 'Tegucigalpa', 'HNL', 'Honduran lempira', 'L', '.hn', 'Honduras', 'Americas', 'Central America', '[{\"zoneName\":\"America/Tegucigalpa\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"온두라스\",\"br\":\"Honduras\",\"pt\":\"Honduras\",\"nl\":\"Honduras\",\"hr\":\"Honduras\",\"fa\":\"هندوراس\",\"de\":\"Honduras\",\"es\":\"Honduras\",\"fr\":\"Honduras\",\"ja\":\"ホンジュラス\",\"it\":\"Honduras\",\"cn\":\"洪都拉斯\"}', '15.00000000', '-86.50000000', '🇭🇳', 'U+1F1ED U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:54:16', 1, 'Q783'),
(98, 'Hong Kong S.A.R.', 'HKG', '344', 'HK', '852', 'Hong Kong', 'HKD', 'Hong Kong dollar', '$', '.hk', '香港', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Hong_Kong\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"HKT\",\"tzName\":\"Hong Kong Time\"}]', '{\"kr\":\"홍콩\",\"br\":\"Hong Kong\",\"pt\":\"Hong Kong\",\"nl\":\"Hongkong\",\"hr\":\"Hong Kong\",\"fa\":\"هنگ‌کنگ\",\"de\":\"Hong Kong\",\"es\":\"Hong Kong\",\"fr\":\"Hong Kong\",\"ja\":\"香港\",\"it\":\"Hong Kong\",\"cn\":\"中国香港\"}', '22.25000000', '114.16666666', '🇭🇰', 'U+1F1ED U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:54:22', 1, 'Q8646'),
(99, 'Hungary', 'HUN', '348', 'HU', '36', 'Budapest', 'HUF', 'Hungarian forint', 'Ft', '.hu', 'Magyarország', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Budapest\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"헝가리\",\"br\":\"Hungria\",\"pt\":\"Hungria\",\"nl\":\"Hongarije\",\"hr\":\"Mađarska\",\"fa\":\"مجارستان\",\"de\":\"Ungarn\",\"es\":\"Hungría\",\"fr\":\"Hongrie\",\"ja\":\"ハンガリー\",\"it\":\"Ungheria\",\"cn\":\"匈牙利\"}', '47.00000000', '20.00000000', '🇭🇺', 'U+1F1ED U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:54:30', 1, 'Q28'),
(100, 'Iceland', 'ISL', '352', 'IS', '354', 'Reykjavik', 'ISK', 'Icelandic króna', 'kr', '.is', 'Ísland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Reykjavik\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아이슬란드\",\"br\":\"Islândia\",\"pt\":\"Islândia\",\"nl\":\"IJsland\",\"hr\":\"Island\",\"fa\":\"ایسلند\",\"de\":\"Island\",\"es\":\"Islandia\",\"fr\":\"Islande\",\"ja\":\"アイスランド\",\"it\":\"Islanda\",\"cn\":\"冰岛\"}', '65.00000000', '-18.00000000', '🇮🇸', 'U+1F1EE U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 18:54:35', 1, 'Q189'),
(101, 'India', 'IND', '356', 'IN', '91', 'New Delhi', 'INR', 'Indian rupee', '₹', '.in', 'भारत', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kolkata\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"인도\",\"br\":\"Índia\",\"pt\":\"Índia\",\"nl\":\"India\",\"hr\":\"Indija\",\"fa\":\"هند\",\"de\":\"Indien\",\"es\":\"India\",\"fr\":\"Inde\",\"ja\":\"インド\",\"it\":\"India\",\"cn\":\"印度\"}', '20.00000000', '77.00000000', '🇮🇳', 'U+1F1EE U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 18:54:41', 1, 'Q668'),
(102, 'Indonesia', 'IDN', '360', 'ID', '62', 'Jakarta', 'IDR', 'Indonesian rupiah', 'Rp', '.id', 'Indonesia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Jakarta\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"},{\"zoneName\":\"Asia/Jayapura\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"WIT\",\"tzName\":\"Eastern Indonesian Time\"},{\"zoneName\":\"Asia/Makassar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"WITA\",\"tzName\":\"Central Indonesia Time\"},{\"zoneName\":\"Asia/Pontianak\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"}]', '{\"kr\":\"인도네시아\",\"br\":\"Indonésia\",\"pt\":\"Indonésia\",\"nl\":\"Indonesië\",\"hr\":\"Indonezija\",\"fa\":\"اندونزی\",\"de\":\"Indonesien\",\"es\":\"Indonesia\",\"fr\":\"Indonésie\",\"ja\":\"インドネシア\",\"it\":\"Indonesia\",\"cn\":\"印度尼西亚\"}', '-5.00000000', '120.00000000', '🇮🇩', 'U+1F1EE U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 18:54:49', 1, 'Q252'),
(103, 'Iran', 'IRN', '364', 'IR', '98', 'Tehran', 'IRR', 'Iranian rial', '﷼', '.ir', 'ایران', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Tehran\",\"gmtOffset\":12600,\"gmtOffsetName\":\"UTC+03:30\",\"abbreviation\":\"IRDT\",\"tzName\":\"Iran Daylight Time\"}]', '{\"kr\":\"이란\",\"br\":\"Irã\",\"pt\":\"Irão\",\"nl\":\"Iran\",\"hr\":\"Iran\",\"fa\":\"ایران\",\"de\":\"Iran\",\"es\":\"Iran\",\"fr\":\"Iran\",\"ja\":\"イラン・イスラム共和国\",\"cn\":\"伊朗\"}', '32.00000000', '53.00000000', '🇮🇷', 'U+1F1EE U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:54:54', 1, 'Q794'),
(104, 'Iraq', 'IRQ', '368', 'IQ', '964', 'Baghdad', 'IQD', 'Iraqi dinar', 'د.ع', '.iq', 'العراق', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baghdad\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"이라크\",\"br\":\"Iraque\",\"pt\":\"Iraque\",\"nl\":\"Irak\",\"hr\":\"Irak\",\"fa\":\"عراق\",\"de\":\"Irak\",\"es\":\"Irak\",\"fr\":\"Irak\",\"ja\":\"イラク\",\"it\":\"Iraq\",\"cn\":\"伊拉克\"}', '33.00000000', '44.00000000', '🇮🇶', 'U+1F1EE U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 18:55:01', 1, 'Q796'),
(105, 'Ireland', 'IRL', '372', 'IE', '353', 'Dublin', 'EUR', 'Euro', '€', '.ie', 'Éire', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Dublin\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아일랜드\",\"br\":\"Irlanda\",\"pt\":\"Irlanda\",\"nl\":\"Ierland\",\"hr\":\"Irska\",\"fa\":\"ایرلند\",\"de\":\"Irland\",\"es\":\"Irlanda\",\"fr\":\"Irlande\",\"ja\":\"アイルランド\",\"it\":\"Irlanda\",\"cn\":\"爱尔兰\"}', '53.00000000', '-8.00000000', '🇮🇪', 'U+1F1EE U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:55:07', 1, 'Q27'),
(106, 'Israel', 'ISR', '376', 'IL', '972', 'Jerusalem', 'ILS', 'Israeli new shekel', '₪', '.il', 'יִשְׂרָאֵל', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Jerusalem\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"IST\",\"tzName\":\"Israel Standard Time\"}]', '{\"kr\":\"이스라엘\",\"br\":\"Israel\",\"pt\":\"Israel\",\"nl\":\"Israël\",\"hr\":\"Izrael\",\"fa\":\"اسرائیل\",\"de\":\"Israel\",\"es\":\"Israel\",\"fr\":\"Israël\",\"ja\":\"イスラエル\",\"it\":\"Israele\",\"cn\":\"以色列\"}', '31.50000000', '34.75000000', '🇮🇱', 'U+1F1EE U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:55:27', 1, 'Q801'),
(107, 'Italy', 'ITA', '380', 'IT', '39', 'Rome', 'EUR', 'Euro', '€', '.it', 'Italia', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Rome\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"이탈리아\",\"br\":\"Itália\",\"pt\":\"Itália\",\"nl\":\"Italië\",\"hr\":\"Italija\",\"fa\":\"ایتالیا\",\"de\":\"Italien\",\"es\":\"Italia\",\"fr\":\"Italie\",\"ja\":\"イタリア\",\"it\":\"Italia\",\"cn\":\"意大利\"}', '42.83333333', '12.83333333', '🇮🇹', 'U+1F1EE U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:55:33', 1, 'Q38'),
(108, 'Jamaica', 'JAM', '388', 'JM', '+1-876', 'Kingston', 'JMD', 'Jamaican dollar', 'J$', '.jm', 'Jamaica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Jamaica\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"자메이카\",\"br\":\"Jamaica\",\"pt\":\"Jamaica\",\"nl\":\"Jamaica\",\"hr\":\"Jamajka\",\"fa\":\"جامائیکا\",\"de\":\"Jamaika\",\"es\":\"Jamaica\",\"fr\":\"Jamaïque\",\"ja\":\"ジャマイカ\",\"it\":\"Giamaica\",\"cn\":\"牙买加\"}', '18.25000000', '-77.50000000', '🇯🇲', 'U+1F1EF U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:55:41', 1, 'Q766'),
(109, 'Japan', 'JPN', '392', 'JP', '81', 'Tokyo', 'JPY', 'Japanese yen', '¥', '.jp', '日本', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Tokyo\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"JST\",\"tzName\":\"Japan Standard Time\"}]', '{\"kr\":\"일본\",\"br\":\"Japão\",\"pt\":\"Japão\",\"nl\":\"Japan\",\"hr\":\"Japan\",\"fa\":\"ژاپن\",\"de\":\"Japan\",\"es\":\"Japón\",\"fr\":\"Japon\",\"ja\":\"日本\",\"it\":\"Giappone\",\"cn\":\"日本\"}', '36.00000000', '138.00000000', '🇯🇵', 'U+1F1EF U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 18:55:46', 1, 'Q17'),
(110, 'Jersey', 'JEY', '832', 'JE', '+44-1534', 'Saint Helier', 'GBP', 'British pound', '£', '.je', 'Jersey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Jersey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"저지 섬\",\"br\":\"Jersey\",\"pt\":\"Jersey\",\"nl\":\"Jersey\",\"hr\":\"Jersey\",\"fa\":\"جرزی\",\"de\":\"Jersey\",\"es\":\"Jersey\",\"fr\":\"Jersey\",\"ja\":\"ジャージー\",\"it\":\"Isola di Jersey\",\"cn\":\"泽西岛\"}', '49.25000000', '-2.16666666', '🇯🇪', 'U+1F1EF U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:55:59', 1, 'Q785'),
(111, 'Jordan', 'JOR', '400', 'JO', '962', 'Amman', 'JOD', 'Jordanian dinar', 'ا.د', '.jo', 'الأردن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Amman\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"요르단\",\"br\":\"Jordânia\",\"pt\":\"Jordânia\",\"nl\":\"Jordanië\",\"hr\":\"Jordan\",\"fa\":\"اردن\",\"de\":\"Jordanien\",\"es\":\"Jordania\",\"fr\":\"Jordanie\",\"ja\":\"ヨルダン\",\"it\":\"Giordania\",\"cn\":\"约旦\"}', '31.00000000', '36.00000000', '🇯🇴', 'U+1F1EF U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:56:07', 1, 'Q810'),
(112, 'Kazakhstan', 'KAZ', '398', 'KZ', '7', 'Astana', 'KZT', 'Kazakhstani tenge', 'лв', '.kz', 'Қазақстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Almaty\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"ALMT\",\"tzName\":\"Alma-Ata Time[1\"},{\"zoneName\":\"Asia/Aqtau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Aqtobe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Atyrau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MSD+1\",\"tzName\":\"Moscow Daylight Time+1\"},{\"zoneName\":\"Asia/Oral\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"ORAT\",\"tzName\":\"Oral Time\"},{\"zoneName\":\"Asia/Qostanay\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"QYZST\",\"tzName\":\"Qyzylorda Summer Time\"},{\"zoneName\":\"Asia/Qyzylorda\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"QYZT\",\"tzName\":\"Qyzylorda Summer Time\"}]', '{\"kr\":\"카자흐스탄\",\"br\":\"Cazaquistão\",\"pt\":\"Cazaquistão\",\"nl\":\"Kazachstan\",\"hr\":\"Kazahstan\",\"fa\":\"قزاقستان\",\"de\":\"Kasachstan\",\"es\":\"Kazajistán\",\"fr\":\"Kazakhstan\",\"ja\":\"カザフスタン\",\"it\":\"Kazakistan\",\"cn\":\"哈萨克斯坦\"}', '48.00000000', '68.00000000', '🇰🇿', 'U+1F1F0 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 18:56:18', 1, 'Q232'),
(113, 'Kenya', 'KEN', '404', 'KE', '254', 'Nairobi', 'KES', 'Kenyan shilling', 'KSh', '.ke', 'Kenya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Nairobi\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"케냐\",\"br\":\"Quênia\",\"pt\":\"Quénia\",\"nl\":\"Kenia\",\"hr\":\"Kenija\",\"fa\":\"کنیا\",\"de\":\"Kenia\",\"es\":\"Kenia\",\"fr\":\"Kenya\",\"ja\":\"ケニア\",\"it\":\"Kenya\",\"cn\":\"肯尼亚\"}', '1.00000000', '38.00000000', '🇰🇪', 'U+1F1F0 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 18:56:23', 1, 'Q114'),
(114, 'Kiribati', 'KIR', '296', 'KI', '686', 'Tarawa', 'AUD', 'Australian dollar', '$', '.ki', 'Kiribati', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Enderbury\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"PHOT\",\"tzName\":\"Phoenix Island Time\"},{\"zoneName\":\"Pacific/Kiritimati\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"LINT\",\"tzName\":\"Line Islands Time\"},{\"zoneName\":\"Pacific/Tarawa\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"GILT\",\"tzName\":\"Gilbert Island Time\"}]', '{\"kr\":\"키리바시\",\"br\":\"Kiribati\",\"pt\":\"Quiribáti\",\"nl\":\"Kiribati\",\"hr\":\"Kiribati\",\"fa\":\"کیریباتی\",\"de\":\"Kiribati\",\"es\":\"Kiribati\",\"fr\":\"Kiribati\",\"ja\":\"キリバス\",\"it\":\"Kiribati\",\"cn\":\"基里巴斯\"}', '1.41666666', '173.00000000', '🇰🇮', 'U+1F1F0 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:56:30', 1, 'Q710'),
(115, 'North Korea', 'PRK', '408', 'KP', '850', 'Pyongyang', 'KPW', 'North Korean Won', '₩', '.kp', '북한', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Pyongyang\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"조선민주주의인민공화국\",\"br\":\"Coreia do Norte\",\"pt\":\"Coreia do Norte\",\"nl\":\"Noord-Korea\",\"hr\":\"Sjeverna Koreja\",\"fa\":\"کره جنوبی\",\"de\":\"Nordkorea\",\"es\":\"Corea del Norte\",\"fr\":\"Corée du Nord\",\"ja\":\"朝鮮民主主義人民共和国\",\"it\":\"Corea del Nord\",\"cn\":\"朝鲜\"}', '40.00000000', '127.00000000', '🇰🇵', 'U+1F1F0 U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 19:05:28', 1, 'Q423'),
(116, 'South Korea', 'KOR', '410', 'KR', '82', 'Seoul', 'KRW', 'Won', '₩', '.kr', '대한민국', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Seoul\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"대한민국\",\"br\":\"Coreia do Sul\",\"pt\":\"Coreia do Sul\",\"nl\":\"Zuid-Korea\",\"hr\":\"Južna Koreja\",\"fa\":\"کره شمالی\",\"de\":\"Südkorea\",\"es\":\"Corea del Sur\",\"fr\":\"Corée du Sud\",\"ja\":\"大韓民国\",\"it\":\"Corea del Sud\",\"cn\":\"韩国\"}', '37.00000000', '127.50000000', '🇰🇷', 'U+1F1F0 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:12:11', 1, 'Q884'),
(117, 'Kuwait', 'KWT', '414', 'KW', '965', 'Kuwait City', 'KWD', 'Kuwaiti dinar', 'ك.د', '.kw', 'الكويت', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Kuwait\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"쿠웨이트\",\"br\":\"Kuwait\",\"pt\":\"Kuwait\",\"nl\":\"Koeweit\",\"hr\":\"Kuvajt\",\"fa\":\"کویت\",\"de\":\"Kuwait\",\"es\":\"Kuwait\",\"fr\":\"Koweït\",\"ja\":\"クウェート\",\"it\":\"Kuwait\",\"cn\":\"科威特\"}', '29.50000000', '45.75000000', '🇰🇼', 'U+1F1F0 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:56:44', 1, 'Q817'),
(118, 'Kyrgyzstan', 'KGZ', '417', 'KG', '996', 'Bishkek', 'KGS', 'Kyrgyzstani som', 'лв', '.kg', 'Кыргызстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Bishkek\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"KGT\",\"tzName\":\"Kyrgyzstan Time\"}]', '{\"kr\":\"키르기스스탄\",\"br\":\"Quirguistão\",\"pt\":\"Quirguizistão\",\"nl\":\"Kirgizië\",\"hr\":\"Kirgistan\",\"fa\":\"قرقیزستان\",\"de\":\"Kirgisistan\",\"es\":\"Kirguizistán\",\"fr\":\"Kirghizistan\",\"ja\":\"キルギス\",\"it\":\"Kirghizistan\",\"cn\":\"吉尔吉斯斯坦\"}', '41.00000000', '75.00000000', '🇰🇬', 'U+1F1F0 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:56:49', 1, 'Q813'),
(119, 'Laos', 'LAO', '418', 'LA', '856', 'Vientiane', 'LAK', 'Lao kip', '₭', '.la', 'ສປປລາວ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Vientiane\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"라오스\",\"br\":\"Laos\",\"pt\":\"Laos\",\"nl\":\"Laos\",\"hr\":\"Laos\",\"fa\":\"لائوس\",\"de\":\"Laos\",\"es\":\"Laos\",\"fr\":\"Laos\",\"ja\":\"ラオス人民民主共和国\",\"it\":\"Laos\",\"cn\":\"寮人民民主共和国\"}', '18.00000000', '105.00000000', '🇱🇦', 'U+1F1F1 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 18:56:58', 1, 'Q819'),
(120, 'Latvia', 'LVA', '428', 'LV', '371', 'Riga', 'EUR', 'Euro', '€', '.lv', 'Latvija', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Riga\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"라트비아\",\"br\":\"Letônia\",\"pt\":\"Letónia\",\"nl\":\"Letland\",\"hr\":\"Latvija\",\"fa\":\"لتونی\",\"de\":\"Lettland\",\"es\":\"Letonia\",\"fr\":\"Lettonie\",\"ja\":\"ラトビア\",\"it\":\"Lettonia\",\"cn\":\"拉脱维亚\"}', '57.00000000', '25.00000000', '🇱🇻', 'U+1F1F1 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:57:04', 1, 'Q211'),
(121, 'Lebanon', 'LBN', '422', 'LB', '961', 'Beirut', 'LBP', 'Lebanese pound', '£', '.lb', 'لبنان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Beirut\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"레바논\",\"br\":\"Líbano\",\"pt\":\"Líbano\",\"nl\":\"Libanon\",\"hr\":\"Libanon\",\"fa\":\"لبنان\",\"de\":\"Libanon\",\"es\":\"Líbano\",\"fr\":\"Liban\",\"ja\":\"レバノン\",\"it\":\"Libano\",\"cn\":\"黎巴嫩\"}', '33.83333333', '35.83333333', '🇱🇧', 'U+1F1F1 U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 18:57:10', 1, 'Q822'),
(122, 'Lesotho', 'LSO', '426', 'LS', '266', 'Maseru', 'LSL', 'Lesotho loti', 'L', '.ls', 'Lesotho', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Maseru\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"레소토\",\"br\":\"Lesoto\",\"pt\":\"Lesoto\",\"nl\":\"Lesotho\",\"hr\":\"Lesoto\",\"fa\":\"لسوتو\",\"de\":\"Lesotho\",\"es\":\"Lesotho\",\"fr\":\"Lesotho\",\"ja\":\"レソト\",\"it\":\"Lesotho\",\"cn\":\"莱索托\"}', '-29.50000000', '28.50000000', '🇱🇸', 'U+1F1F1 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 18:57:27', 1, 'Q1013'),
(123, 'Liberia', 'LBR', '430', 'LR', '231', 'Monrovia', 'LRD', 'Liberian dollar', '$', '.lr', 'Liberia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Monrovia\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"라이베리아\",\"br\":\"Libéria\",\"pt\":\"Libéria\",\"nl\":\"Liberia\",\"hr\":\"Liberija\",\"fa\":\"لیبریا\",\"de\":\"Liberia\",\"es\":\"Liberia\",\"fr\":\"Liberia\",\"ja\":\"リベリア\",\"it\":\"Liberia\",\"cn\":\"利比里亚\"}', '6.50000000', '-9.50000000', '🇱🇷', 'U+1F1F1 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 18:57:33', 1, 'Q1014'),
(124, 'Libya', 'LBY', '434', 'LY', '218', 'Tripolis', 'LYD', 'Libyan dinar', 'د.ل', '.ly', '‏ليبيا', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tripoli\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리비아\",\"br\":\"Líbia\",\"pt\":\"Líbia\",\"nl\":\"Libië\",\"hr\":\"Libija\",\"fa\":\"لیبی\",\"de\":\"Libyen\",\"es\":\"Libia\",\"fr\":\"Libye\",\"ja\":\"リビア\",\"it\":\"Libia\",\"cn\":\"利比亚\"}', '25.00000000', '17.00000000', '🇱🇾', 'U+1F1F1 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:57:38', 1, 'Q1016'),
(125, 'Liechtenstein', 'LIE', '438', 'LI', '423', 'Vaduz', 'CHF', 'Swiss franc', 'CHf', '.li', 'Liechtenstein', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vaduz\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"리히텐슈타인\",\"br\":\"Liechtenstein\",\"pt\":\"Listenstaine\",\"nl\":\"Liechtenstein\",\"hr\":\"Lihtenštajn\",\"fa\":\"لیختن‌اشتاین\",\"de\":\"Liechtenstein\",\"es\":\"Liechtenstein\",\"fr\":\"Liechtenstein\",\"ja\":\"リヒテンシュタイン\",\"it\":\"Liechtenstein\",\"cn\":\"列支敦士登\"}', '47.26666666', '9.53333333', '🇱🇮', 'U+1F1F1 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 18:57:47', 1, 'Q347'),
(126, 'Lithuania', 'LTU', '440', 'LT', '370', 'Vilnius', 'EUR', 'Euro', '€', '.lt', 'Lietuva', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Vilnius\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리투아니아\",\"br\":\"Lituânia\",\"pt\":\"Lituânia\",\"nl\":\"Litouwen\",\"hr\":\"Litva\",\"fa\":\"لیتوانی\",\"de\":\"Litauen\",\"es\":\"Lituania\",\"fr\":\"Lituanie\",\"ja\":\"リトアニア\",\"it\":\"Lituania\",\"cn\":\"立陶宛\"}', '56.00000000', '24.00000000', '🇱🇹', 'U+1F1F1 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:58:00', 1, 'Q37'),
(127, 'Luxembourg', 'LUX', '442', 'LU', '352', 'Luxembourg', 'EUR', 'Euro', '€', '.lu', 'Luxembourg', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Luxembourg\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"룩셈부르크\",\"br\":\"Luxemburgo\",\"pt\":\"Luxemburgo\",\"nl\":\"Luxemburg\",\"hr\":\"Luksemburg\",\"fa\":\"لوکزامبورگ\",\"de\":\"Luxemburg\",\"es\":\"Luxemburgo\",\"fr\":\"Luxembourg\",\"ja\":\"ルクセンブルク\",\"it\":\"Lussemburgo\",\"cn\":\"卢森堡\"}', '49.75000000', '6.16666666', '🇱🇺', 'U+1F1F1 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 18:58:06', 1, 'Q32'),
(128, 'Macau S.A.R.', 'MAC', '446', 'MO', '853', 'Macao', 'MOP', 'Macanese pataca', '$', '.mo', '澳門', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Macau\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"마카오\",\"br\":\"Macau\",\"pt\":\"Macau\",\"nl\":\"Macao\",\"hr\":\"Makao\",\"fa\":\"مکائو\",\"de\":\"Macao\",\"es\":\"Macao\",\"fr\":\"Macao\",\"ja\":\"マカオ\",\"it\":\"Macao\",\"cn\":\"中国澳门\"}', '22.16666666', '113.55000000', '🇲🇴', 'U+1F1F2 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 18:58:15', 1, NULL),
(129, 'Macedonia', 'MKD', '807', 'MK', '389', 'Skopje', 'MKD', 'Denar', 'ден', '.mk', 'Северна Македонија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Skopje\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"마케도니아\",\"br\":\"Macedônia\",\"pt\":\"Macedónia\",\"nl\":\"Macedonië\",\"hr\":\"Makedonija\",\"fa\":\"\",\"de\":\"Mazedonien\",\"es\":\"Macedonia\",\"fr\":\"Macédoine\",\"ja\":\"マケドニア旧ユーゴスラビア共和国\",\"it\":\"Macedonia\",\"cn\":\"马其顿\"}', '41.83333333', '22.00000000', '🇲🇰', 'U+1F1F2 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 18:58:42', 1, 'Q221'),
(130, 'Madagascar', 'MDG', '450', 'MG', '261', 'Antananarivo', 'MGA', 'Malagasy ariary', 'Ar', '.mg', 'Madagasikara', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Antananarivo\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마다가스카르\",\"br\":\"Madagascar\",\"pt\":\"Madagáscar\",\"nl\":\"Madagaskar\",\"hr\":\"Madagaskar\",\"fa\":\"ماداگاسکار\",\"de\":\"Madagaskar\",\"es\":\"Madagascar\",\"fr\":\"Madagascar\",\"ja\":\"マダガスカル\",\"it\":\"Madagascar\",\"cn\":\"马达加斯加\"}', '-20.00000000', '47.00000000', '🇲🇬', 'U+1F1F2 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 18:58:52', 1, 'Q1019');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(131, 'Malawi', 'MWI', '454', 'MW', '265', 'Lilongwe', 'MWK', 'Malawian kwacha', 'MK', '.mw', 'Malawi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Blantyre\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"말라위\",\"br\":\"Malawi\",\"pt\":\"Malávi\",\"nl\":\"Malawi\",\"hr\":\"Malavi\",\"fa\":\"مالاوی\",\"de\":\"Malawi\",\"es\":\"Malawi\",\"fr\":\"Malawi\",\"ja\":\"マラウイ\",\"it\":\"Malawi\",\"cn\":\"马拉维\"}', '-13.50000000', '34.00000000', '🇲🇼', 'U+1F1F2 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 18:59:01', 1, 'Q1020'),
(132, 'Malaysia', 'MYS', '458', 'MY', '60', 'Kuala Lumpur', 'MYR', 'Malaysian ringgit', 'RM', '.my', 'Malaysia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Kuala_Lumpur\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"},{\"zoneName\":\"Asia/Kuching\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"}]', '{\"kr\":\"말레이시아\",\"br\":\"Malásia\",\"pt\":\"Malásia\",\"nl\":\"Maleisië\",\"hr\":\"Malezija\",\"fa\":\"مالزی\",\"de\":\"Malaysia\",\"es\":\"Malasia\",\"fr\":\"Malaisie\",\"ja\":\"マレーシア\",\"it\":\"Malesia\",\"cn\":\"马来西亚\"}', '2.50000000', '112.50000000', '🇲🇾', 'U+1F1F2 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 18:59:08', 1, 'Q833'),
(133, 'Maldives', 'MDV', '462', 'MV', '960', 'Male', 'MVR', 'Maldivian rufiyaa', 'Rf', '.mv', 'Maldives', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Indian/Maldives\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MVT\",\"tzName\":\"Maldives Time\"}]', '{\"kr\":\"몰디브\",\"br\":\"Maldivas\",\"pt\":\"Maldivas\",\"nl\":\"Maldiven\",\"hr\":\"Maldivi\",\"fa\":\"مالدیو\",\"de\":\"Malediven\",\"es\":\"Maldivas\",\"fr\":\"Maldives\",\"ja\":\"モルディブ\",\"it\":\"Maldive\",\"cn\":\"马尔代夫\"}', '3.25000000', '73.00000000', '🇲🇻', 'U+1F1F2 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 18:59:15', 1, 'Q826'),
(134, 'Mali', 'MLI', '466', 'ML', '223', 'Bamako', 'XOF', 'West African CFA franc', 'CFA', '.ml', 'Mali', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bamako\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"말리\",\"br\":\"Mali\",\"pt\":\"Mali\",\"nl\":\"Mali\",\"hr\":\"Mali\",\"fa\":\"مالی\",\"de\":\"Mali\",\"es\":\"Mali\",\"fr\":\"Mali\",\"ja\":\"マリ\",\"it\":\"Mali\",\"cn\":\"马里\"}', '17.00000000', '-4.00000000', '🇲🇱', 'U+1F1F2 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 18:59:20', 1, 'Q912'),
(135, 'Malta', 'MLT', '470', 'MT', '356', 'Valletta', 'EUR', 'Euro', '€', '.mt', 'Malta', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Malta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몰타\",\"br\":\"Malta\",\"pt\":\"Malta\",\"nl\":\"Malta\",\"hr\":\"Malta\",\"fa\":\"مالت\",\"de\":\"Malta\",\"es\":\"Malta\",\"fr\":\"Malte\",\"ja\":\"マルタ\",\"it\":\"Malta\",\"cn\":\"马耳他\"}', '35.83333333', '14.58333333', '🇲🇹', 'U+1F1F2 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 18:59:26', 1, 'Q233'),
(136, 'Man (Isle of)', 'IMN', '833', 'IM', '+44-1624', 'Douglas, Isle of Man', 'GBP', 'British pound', '£', '.im', 'Isle of Man', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Isle_of_Man\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"맨 섬\",\"br\":\"Ilha de Man\",\"pt\":\"Ilha de Man\",\"nl\":\"Isle of Man\",\"hr\":\"Otok Man\",\"fa\":\"جزیره من\",\"de\":\"Insel Man\",\"es\":\"Isla de Man\",\"fr\":\"Île de Man\",\"ja\":\"マン島\",\"it\":\"Isola di Man\",\"cn\":\"马恩岛\"}', '54.25000000', '-4.50000000', '🇮🇲', 'U+1F1EE U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 18:59:43', 1, NULL),
(137, 'Marshall Islands', 'MHL', '584', 'MH', '692', 'Majuro', 'USD', 'United States dollar', '$', '.mh', 'M̧ajeļ', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Kwajalein\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"},{\"zoneName\":\"Pacific/Majuro\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"}]', '{\"kr\":\"마셜 제도\",\"br\":\"Ilhas Marshall\",\"pt\":\"Ilhas Marshall\",\"nl\":\"Marshalleilanden\",\"hr\":\"Maršalovi Otoci\",\"fa\":\"جزایر مارشال\",\"de\":\"Marshallinseln\",\"es\":\"Islas Marshall\",\"fr\":\"Îles Marshall\",\"ja\":\"マーシャル諸島\",\"it\":\"Isole Marshall\",\"cn\":\"马绍尔群岛\"}', '9.00000000', '168.00000000', '🇲🇭', 'U+1F1F2 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:00:32', 1, 'Q709'),
(138, 'Martinique', 'MTQ', '474', 'MQ', '596', 'Fort-de-France', 'EUR', 'Euro', '€', '.mq', 'Martinique', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Martinique\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"마르티니크\",\"br\":\"Martinica\",\"pt\":\"Martinica\",\"nl\":\"Martinique\",\"hr\":\"Martinique\",\"fa\":\"مونتسرات\",\"de\":\"Martinique\",\"es\":\"Martinica\",\"fr\":\"Martinique\",\"ja\":\"マルティニーク\",\"it\":\"Martinica\",\"cn\":\"马提尼克岛\"}', '14.66666700', '-61.00000000', '🇲🇶', 'U+1F1F2 U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 19:00:44', 1, NULL),
(139, 'Mauritania', 'MRT', '478', 'MR', '222', 'Nouakchott', 'MRO', 'Mauritanian ouguiya', 'MRU', '.mr', 'موريتانيا', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Nouakchott\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"모리타니\",\"br\":\"Mauritânia\",\"pt\":\"Mauritânia\",\"nl\":\"Mauritanië\",\"hr\":\"Mauritanija\",\"fa\":\"موریتانی\",\"de\":\"Mauretanien\",\"es\":\"Mauritania\",\"fr\":\"Mauritanie\",\"ja\":\"モーリタニア\",\"it\":\"Mauritania\",\"cn\":\"毛里塔尼亚\"}', '20.00000000', '-12.00000000', '🇲🇷', 'U+1F1F2 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:01:03', 1, 'Q1025'),
(140, 'Mauritius', 'MUS', '480', 'MU', '230', 'Port Louis', 'MUR', 'Mauritian rupee', '₨', '.mu', 'Maurice', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mauritius\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MUT\",\"tzName\":\"Mauritius Time\"}]', '{\"kr\":\"모리셔스\",\"br\":\"Maurício\",\"pt\":\"Maurícia\",\"nl\":\"Mauritius\",\"hr\":\"Mauricijus\",\"fa\":\"موریس\",\"de\":\"Mauritius\",\"es\":\"Mauricio\",\"fr\":\"Île Maurice\",\"ja\":\"モーリシャス\",\"it\":\"Mauritius\",\"cn\":\"毛里求斯\"}', '-20.28333333', '57.55000000', '🇲🇺', 'U+1F1F2 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:01:10', 1, 'Q1027'),
(141, 'Mayotte', 'MYT', '175', 'YT', '262', 'Mamoudzou', 'EUR', 'Euro', '€', '.yt', 'Mayotte', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mayotte\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마요트\",\"br\":\"Mayotte\",\"pt\":\"Mayotte\",\"nl\":\"Mayotte\",\"hr\":\"Mayotte\",\"fa\":\"مایوت\",\"de\":\"Mayotte\",\"es\":\"Mayotte\",\"fr\":\"Mayotte\",\"ja\":\"マヨット\",\"it\":\"Mayotte\",\"cn\":\"马约特\"}', '-12.83333333', '45.16666666', '🇾🇹', 'U+1F1FE U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:01:15', 1, NULL),
(142, 'Mexico', 'MEX', '484', 'MX', '52', 'Ciudad de México', 'MXN', 'Mexican peso', '$', '.mx', 'México', 'Americas', 'Central America', '[{\"zoneName\":\"America/Bahia_Banderas\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Cancun\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Chihuahua\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Hermosillo\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Matamoros\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mazatlan\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Merida\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mexico_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Monterrey\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Ojinaga\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Tijuana\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"멕시코\",\"br\":\"México\",\"pt\":\"México\",\"nl\":\"Mexico\",\"hr\":\"Meksiko\",\"fa\":\"مکزیک\",\"de\":\"Mexiko\",\"es\":\"México\",\"fr\":\"Mexique\",\"ja\":\"メキシコ\",\"it\":\"Messico\",\"cn\":\"墨西哥\"}', '23.00000000', '-102.00000000', '🇲🇽', 'U+1F1F2 U+1F1FD', '2018-07-21 01:41:03', '2021-12-11 19:01:23', 1, 'Q96'),
(143, 'Micronesia', 'FSM', '583', 'FM', '691', 'Palikir', 'USD', 'United States dollar', '$', '.fm', 'Micronesia', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Chuuk\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHUT\",\"tzName\":\"Chuuk Time\"},{\"zoneName\":\"Pacific/Kosrae\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"KOST\",\"tzName\":\"Kosrae Time\"},{\"zoneName\":\"Pacific/Pohnpei\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"PONT\",\"tzName\":\"Pohnpei Standard Time\"}]', '{\"kr\":\"미크로네시아 연방\",\"br\":\"Micronésia\",\"pt\":\"Micronésia\",\"nl\":\"Micronesië\",\"hr\":\"Mikronezija\",\"fa\":\"ایالات فدرال میکرونزی\",\"de\":\"Mikronesien\",\"es\":\"Micronesia\",\"fr\":\"Micronésie\",\"ja\":\"ミクロネシア連邦\",\"it\":\"Micronesia\",\"cn\":\"密克罗尼西亚\"}', '6.91666666', '158.25000000', '🇫🇲', 'U+1F1EB U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:01:30', 1, 'Q702'),
(144, 'Moldova', 'MDA', '498', 'MD', '373', 'Chisinau', 'MDL', 'Moldovan leu', 'L', '.md', 'Moldova', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Chisinau\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"몰도바\",\"br\":\"Moldávia\",\"pt\":\"Moldávia\",\"nl\":\"Moldavië\",\"hr\":\"Moldova\",\"fa\":\"مولداوی\",\"de\":\"Moldawie\",\"es\":\"Moldavia\",\"fr\":\"Moldavie\",\"ja\":\"モルドバ共和国\",\"it\":\"Moldavia\",\"cn\":\"摩尔多瓦\"}', '47.00000000', '29.00000000', '🇲🇩', 'U+1F1F2 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 19:01:39', 1, 'Q217'),
(145, 'Monaco', 'MCO', '492', 'MC', '377', 'Monaco', 'EUR', 'Euro', '€', '.mc', 'Monaco', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Monaco\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"모나코\",\"br\":\"Mônaco\",\"pt\":\"Mónaco\",\"nl\":\"Monaco\",\"hr\":\"Monako\",\"fa\":\"موناکو\",\"de\":\"Monaco\",\"es\":\"Mónaco\",\"fr\":\"Monaco\",\"ja\":\"モナコ\",\"it\":\"Principato di Monaco\",\"cn\":\"摩纳哥\"}', '43.73333333', '7.40000000', '🇲🇨', 'U+1F1F2 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:01:44', 1, 'Q235'),
(146, 'Mongolia', 'MNG', '496', 'MN', '976', 'Ulan Bator', 'MNT', 'Mongolian tögrög', '₮', '.mn', 'Монгол улс', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Choibalsan\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CHOT\",\"tzName\":\"Choibalsan Standard Time\"},{\"zoneName\":\"Asia/Hovd\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"HOVT\",\"tzName\":\"Hovd Time\"},{\"zoneName\":\"Asia/Ulaanbaatar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"ULAT\",\"tzName\":\"Ulaanbaatar Standard Time\"}]', '{\"kr\":\"몽골\",\"br\":\"Mongólia\",\"pt\":\"Mongólia\",\"nl\":\"Mongolië\",\"hr\":\"Mongolija\",\"fa\":\"مغولستان\",\"de\":\"Mongolei\",\"es\":\"Mongolia\",\"fr\":\"Mongolie\",\"ja\":\"モンゴル\",\"it\":\"Mongolia\",\"cn\":\"蒙古\"}', '46.00000000', '105.00000000', '🇲🇳', 'U+1F1F2 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:02:45', 1, 'Q711'),
(147, 'Montenegro', 'MNE', '499', 'ME', '382', 'Podgorica', 'EUR', 'Euro', '€', '.me', 'Црна Гора', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Podgorica\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몬테네그로\",\"br\":\"Montenegro\",\"pt\":\"Montenegro\",\"nl\":\"Montenegro\",\"hr\":\"Crna Gora\",\"fa\":\"مونته‌نگرو\",\"de\":\"Montenegro\",\"es\":\"Montenegro\",\"fr\":\"Monténégro\",\"ja\":\"モンテネグロ\",\"it\":\"Montenegro\",\"cn\":\"黑山\"}', '42.50000000', '19.30000000', '🇲🇪', 'U+1F1F2 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:01:46', 1, 'Q236'),
(148, 'Montserrat', 'MSR', '500', 'MS', '+1-664', 'Plymouth', 'XCD', 'Eastern Caribbean dollar', '$', '.ms', 'Montserrat', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Montserrat\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"몬트세랫\",\"br\":\"Montserrat\",\"pt\":\"Monserrate\",\"nl\":\"Montserrat\",\"hr\":\"Montserrat\",\"fa\":\"مایوت\",\"de\":\"Montserrat\",\"es\":\"Montserrat\",\"fr\":\"Montserrat\",\"ja\":\"モントセラト\",\"it\":\"Montserrat\",\"cn\":\"蒙特塞拉特\"}', '16.75000000', '-62.20000000', '🇲🇸', 'U+1F1F2 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:02:56', 1, NULL),
(149, 'Morocco', 'MAR', '504', 'MA', '212', 'Rabat', 'MAD', 'Moroccan dirham', 'DH', '.ma', 'المغرب', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Casablanca\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"모로코\",\"br\":\"Marrocos\",\"pt\":\"Marrocos\",\"nl\":\"Marokko\",\"hr\":\"Maroko\",\"fa\":\"مراکش\",\"de\":\"Marokko\",\"es\":\"Marruecos\",\"fr\":\"Maroc\",\"ja\":\"モロッコ\",\"it\":\"Marocco\",\"cn\":\"摩洛哥\"}', '32.00000000', '-5.00000000', '🇲🇦', 'U+1F1F2 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:03:08', 1, 'Q1028'),
(150, 'Mozambique', 'MOZ', '508', 'MZ', '258', 'Maputo', 'MZN', 'Mozambican metical', 'MT', '.mz', 'Moçambique', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Maputo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"모잠비크\",\"br\":\"Moçambique\",\"pt\":\"Moçambique\",\"nl\":\"Mozambique\",\"hr\":\"Mozambik\",\"fa\":\"موزامبیک\",\"de\":\"Mosambik\",\"es\":\"Mozambique\",\"fr\":\"Mozambique\",\"ja\":\"モザンビーク\",\"it\":\"Mozambico\",\"cn\":\"莫桑比克\"}', '-18.25000000', '35.00000000', '🇲🇿', 'U+1F1F2 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:03:19', 1, 'Q1029'),
(151, 'Myanmar', 'MMR', '104', 'MM', '95', 'Nay Pyi Taw', 'MMK', 'Burmese kyat', 'K', '.mm', 'မြန်မာ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Yangon\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"MMT\",\"tzName\":\"Myanmar Standard Time\"}]', '{\"kr\":\"미얀마\",\"br\":\"Myanmar\",\"pt\":\"Myanmar\",\"nl\":\"Myanmar\",\"hr\":\"Mijanmar\",\"fa\":\"میانمار\",\"de\":\"Myanmar\",\"es\":\"Myanmar\",\"fr\":\"Myanmar\",\"ja\":\"ミャンマー\",\"it\":\"Birmania\",\"cn\":\"缅甸\"}', '22.00000000', '98.00000000', '🇲🇲', 'U+1F1F2 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:03:25', 1, 'Q836'),
(152, 'Namibia', 'NAM', '516', 'NA', '264', 'Windhoek', 'NAD', 'Namibian dollar', '$', '.na', 'Namibia', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Windhoek\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"WAST\",\"tzName\":\"West Africa Summer Time\"}]', '{\"kr\":\"나미비아\",\"br\":\"Namíbia\",\"pt\":\"Namíbia\",\"nl\":\"Namibië\",\"hr\":\"Namibija\",\"fa\":\"نامیبیا\",\"de\":\"Namibia\",\"es\":\"Namibia\",\"fr\":\"Namibie\",\"ja\":\"ナミビア\",\"it\":\"Namibia\",\"cn\":\"纳米比亚\"}', '-22.00000000', '17.00000000', '🇳🇦', 'U+1F1F3 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:03:32', 1, 'Q1030'),
(153, 'Nauru', 'NRU', '520', 'NR', '674', 'Yaren', 'AUD', 'Australian dollar', '$', '.nr', 'Nauru', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Nauru\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NRT\",\"tzName\":\"Nauru Time\"}]', '{\"kr\":\"나우루\",\"br\":\"Nauru\",\"pt\":\"Nauru\",\"nl\":\"Nauru\",\"hr\":\"Nauru\",\"fa\":\"نائورو\",\"de\":\"Nauru\",\"es\":\"Nauru\",\"fr\":\"Nauru\",\"ja\":\"ナウル\",\"it\":\"Nauru\",\"cn\":\"瑙鲁\"}', '-0.53333333', '166.91666666', '🇳🇷', 'U+1F1F3 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:03:37', 1, 'Q697'),
(154, 'Nepal', 'NPL', '524', 'NP', '977', 'Kathmandu', 'NPR', 'Nepalese rupee', '₨', '.np', 'नपल', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kathmandu\",\"gmtOffset\":20700,\"gmtOffsetName\":\"UTC+05:45\",\"abbreviation\":\"NPT\",\"tzName\":\"Nepal Time\"}]', '{\"kr\":\"네팔\",\"br\":\"Nepal\",\"pt\":\"Nepal\",\"nl\":\"Nepal\",\"hr\":\"Nepal\",\"fa\":\"نپال\",\"de\":\"Népal\",\"es\":\"Nepal\",\"fr\":\"Népal\",\"ja\":\"ネパール\",\"it\":\"Nepal\",\"cn\":\"尼泊尔\"}', '28.00000000', '84.00000000', '🇳🇵', 'U+1F1F3 U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 19:03:41', 1, 'Q837'),
(155, 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'BQ', '599', 'Kralendijk', 'USD', 'United States dollar', '$', '.an', 'Caribisch Nederland', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"보네르 섬\",\"br\":\"Bonaire\",\"pt\":\"Bonaire\",\"fa\":\"بونیر\",\"de\":\"Bonaire, Sint Eustatius und Saba\",\"fr\":\"Bonaire, Saint-Eustache et Saba\",\"it\":\"Bonaire, Saint-Eustache e Saba\",\"cn\":\"博内尔岛、圣尤斯特歇斯和萨巴岛\"}', '12.15000000', '-68.26666700', '🇧🇶', 'U+1F1E7 U+1F1F6', '2018-07-21 01:41:03', '2021-12-11 18:28:02', 1, 'Q27561'),
(156, 'Netherlands', 'NLD', '528', 'NL', '31', 'Amsterdam', 'EUR', 'Euro', '€', '.nl', 'Nederland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Amsterdam\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"네덜란드 \",\"br\":\"Holanda\",\"pt\":\"Países Baixos\",\"nl\":\"Nederland\",\"hr\":\"Nizozemska\",\"fa\":\"پادشاهی هلند\",\"de\":\"Niederlande\",\"es\":\"Países Bajos\",\"fr\":\"Pays-Bas\",\"ja\":\"オランダ\",\"it\":\"Paesi Bassi\",\"cn\":\"荷兰\"}', '52.50000000', '5.75000000', '🇳🇱', 'U+1F1F3 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:01:52', 1, 'Q55'),
(157, 'New Caledonia', 'NCL', '540', 'NC', '687', 'Noumea', 'XPF', 'CFP franc', '₣', '.nc', 'Nouvelle-Calédonie', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Noumea\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"NCT\",\"tzName\":\"New Caledonia Time\"}]', '{\"kr\":\"누벨칼레도니\",\"br\":\"Nova Caledônia\",\"pt\":\"Nova Caledónia\",\"nl\":\"Nieuw-Caledonië\",\"hr\":\"Nova Kaledonija\",\"fa\":\"کالدونیای جدید\",\"de\":\"Neukaledonien\",\"es\":\"Nueva Caledonia\",\"fr\":\"Nouvelle-Calédonie\",\"ja\":\"ニューカレドニア\",\"it\":\"Nuova Caledonia\",\"cn\":\"新喀里多尼亚\"}', '-21.50000000', '165.50000000', '🇳🇨', 'U+1F1F3 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:04:11', 1, NULL),
(158, 'New Zealand', 'NZL', '554', 'NZ', '64', 'Wellington', 'NZD', 'New Zealand dollar', '$', '.nz', 'New Zealand', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Auckland\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Pacific/Chatham\",\"gmtOffset\":49500,\"gmtOffsetName\":\"UTC+13:45\",\"abbreviation\":\"CHAST\",\"tzName\":\"Chatham Standard Time\"}]', '{\"kr\":\"뉴질랜드\",\"br\":\"Nova Zelândia\",\"pt\":\"Nova Zelândia\",\"nl\":\"Nieuw-Zeeland\",\"hr\":\"Novi Zeland\",\"fa\":\"نیوزیلند\",\"de\":\"Neuseeland\",\"es\":\"Nueva Zelanda\",\"fr\":\"Nouvelle-Zélande\",\"ja\":\"ニュージーランド\",\"it\":\"Nuova Zelanda\",\"cn\":\"新西兰\"}', '-41.00000000', '174.00000000', '🇳🇿', 'U+1F1F3 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:04:18', 1, 'Q664'),
(159, 'Nicaragua', 'NIC', '558', 'NI', '505', 'Managua', 'NIO', 'Nicaraguan córdoba', 'C$', '.ni', 'Nicaragua', 'Americas', 'Central America', '[{\"zoneName\":\"America/Managua\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"니카라과\",\"br\":\"Nicarágua\",\"pt\":\"Nicarágua\",\"nl\":\"Nicaragua\",\"hr\":\"Nikaragva\",\"fa\":\"نیکاراگوئه\",\"de\":\"Nicaragua\",\"es\":\"Nicaragua\",\"fr\":\"Nicaragua\",\"ja\":\"ニカラグア\",\"it\":\"Nicaragua\",\"cn\":\"尼加拉瓜\"}', '13.00000000', '-85.00000000', '🇳🇮', 'U+1F1F3 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 19:04:25', 1, 'Q811'),
(160, 'Niger', 'NER', '562', 'NE', '227', 'Niamey', 'XOF', 'West African CFA franc', 'CFA', '.ne', 'Niger', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Niamey\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"니제르\",\"br\":\"Níger\",\"pt\":\"Níger\",\"nl\":\"Niger\",\"hr\":\"Niger\",\"fa\":\"نیجر\",\"de\":\"Niger\",\"es\":\"Níger\",\"fr\":\"Niger\",\"ja\":\"ニジェール\",\"it\":\"Niger\",\"cn\":\"尼日尔\"}', '16.00000000', '8.00000000', '🇳🇪', 'U+1F1F3 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:04:32', 1, 'Q1032'),
(161, 'Nigeria', 'NGA', '566', 'NG', '234', 'Abuja', 'NGN', 'Nigerian naira', '₦', '.ng', 'Nigeria', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lagos\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"나이지리아\",\"br\":\"Nigéria\",\"pt\":\"Nigéria\",\"nl\":\"Nigeria\",\"hr\":\"Nigerija\",\"fa\":\"نیجریه\",\"de\":\"Nigeria\",\"es\":\"Nigeria\",\"fr\":\"Nigéria\",\"ja\":\"ナイジェリア\",\"it\":\"Nigeria\",\"cn\":\"尼日利亚\"}', '10.00000000', '8.00000000', '🇳🇬', 'U+1F1F3 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:04:37', 1, 'Q1033'),
(162, 'Niue', 'NIU', '570', 'NU', '683', 'Alofi', 'NZD', 'New Zealand dollar', '$', '.nu', 'Niuē', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Niue\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"NUT\",\"tzName\":\"Niue Time\"}]', '{\"kr\":\"니우에\",\"br\":\"Niue\",\"pt\":\"Niue\",\"nl\":\"Niue\",\"hr\":\"Niue\",\"fa\":\"نیووی\",\"de\":\"Niue\",\"es\":\"Niue\",\"fr\":\"Niue\",\"ja\":\"ニウエ\",\"it\":\"Niue\",\"cn\":\"纽埃\"}', '-19.03333333', '-169.86666666', '🇳🇺', 'U+1F1F3 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:04:42', 1, 'Q34020'),
(163, 'Norfolk Island', 'NFK', '574', 'NF', '672', 'Kingston', 'AUD', 'Australian dollar', '$', '.nf', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Norfolk\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NFT\",\"tzName\":\"Norfolk Time\"}]', '{\"kr\":\"노퍽 섬\",\"br\":\"Ilha Norfolk\",\"pt\":\"Ilha Norfolk\",\"nl\":\"Norfolkeiland\",\"hr\":\"Otok Norfolk\",\"fa\":\"جزیره نورفک\",\"de\":\"Norfolkinsel\",\"es\":\"Isla de Norfolk\",\"fr\":\"Île de Norfolk\",\"ja\":\"ノーフォーク島\",\"it\":\"Isola Norfolk\",\"cn\":\"诺福克岛\"}', '-29.03333333', '167.95000000', '🇳🇫', 'U+1F1F3 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 19:05:39', 1, NULL),
(164, 'Northern Mariana Islands', 'MNP', '580', 'MP', '+1-670', 'Saipan', 'USD', 'United States dollar', '$', '.mp', 'Northern Mariana Islands', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Saipan\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"ChST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"북마리아나 제도\",\"br\":\"Ilhas Marianas\",\"pt\":\"Ilhas Marianas\",\"nl\":\"Noordelijke Marianeneilanden\",\"hr\":\"Sjevernomarijanski otoci\",\"fa\":\"جزایر ماریانای شمالی\",\"de\":\"Nördliche Marianen\",\"es\":\"Islas Marianas del Norte\",\"fr\":\"Îles Mariannes du Nord\",\"ja\":\"北マリアナ諸島\",\"it\":\"Isole Marianne Settentrionali\",\"cn\":\"北马里亚纳群岛\"}', '15.20000000', '145.75000000', '🇲🇵', 'U+1F1F2 U+1F1F5', '2018-07-21 01:41:03', '2021-12-11 19:05:55', 1, NULL),
(165, 'Norway', 'NOR', '578', 'NO', '47', 'Oslo', 'NOK', 'Norwegian krone', 'kr', '.no', 'Norge', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"노르웨이\",\"br\":\"Noruega\",\"pt\":\"Noruega\",\"nl\":\"Noorwegen\",\"hr\":\"Norveška\",\"fa\":\"نروژ\",\"de\":\"Norwegen\",\"es\":\"Noruega\",\"fr\":\"Norvège\",\"ja\":\"ノルウェー\",\"it\":\"Norvegia\",\"cn\":\"挪威\"}', '62.00000000', '10.00000000', '🇳🇴', 'U+1F1F3 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:07:57', 1, 'Q20'),
(166, 'Oman', 'OMN', '512', 'OM', '968', 'Muscat', 'OMR', 'Omani rial', '.ع.ر', '.om', 'عمان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Muscat\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"오만\",\"br\":\"Omã\",\"pt\":\"Omã\",\"nl\":\"Oman\",\"hr\":\"Oman\",\"fa\":\"عمان\",\"de\":\"Oman\",\"es\":\"Omán\",\"fr\":\"Oman\",\"ja\":\"オマーン\",\"it\":\"oman\",\"cn\":\"阿曼\"}', '21.00000000', '57.00000000', '🇴🇲', 'U+1F1F4 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:08:03', 1, 'Q842'),
(167, 'Pakistan', 'PAK', '586', 'PK', '92', 'Islamabad', 'PKR', 'Pakistani rupee', '₨', '.pk', 'Pakistan', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Karachi\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"PKT\",\"tzName\":\"Pakistan Standard Time\"}]', '{\"kr\":\"파키스탄\",\"br\":\"Paquistão\",\"pt\":\"Paquistão\",\"nl\":\"Pakistan\",\"hr\":\"Pakistan\",\"fa\":\"پاکستان\",\"de\":\"Pakistan\",\"es\":\"Pakistán\",\"fr\":\"Pakistan\",\"ja\":\"パキスタン\",\"it\":\"Pakistan\",\"cn\":\"巴基斯坦\"}', '30.00000000', '70.00000000', '🇵🇰', 'U+1F1F5 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:08:09', 1, 'Q843'),
(168, 'Palau', 'PLW', '585', 'PW', '680', 'Melekeok', 'USD', 'United States dollar', '$', '.pw', 'Palau', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Palau\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"PWT\",\"tzName\":\"Palau Time\"}]', '{\"kr\":\"팔라우\",\"br\":\"Palau\",\"pt\":\"Palau\",\"nl\":\"Palau\",\"hr\":\"Palau\",\"fa\":\"پالائو\",\"de\":\"Palau\",\"es\":\"Palau\",\"fr\":\"Palaos\",\"ja\":\"パラオ\",\"it\":\"Palau\",\"cn\":\"帕劳\"}', '7.50000000', '134.50000000', '🇵🇼', 'U+1F1F5 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:05:58', 1, 'Q695'),
(169, 'Palestinian Territory Occupied', 'PSE', '275', 'PS', '970', 'East Jerusalem', 'ILS', 'Israeli new shekel', '₪', '.ps', 'فلسطين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Gaza\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Hebron\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"팔레스타인 영토\",\"br\":\"Palestina\",\"pt\":\"Palestina\",\"nl\":\"Palestijnse gebieden\",\"hr\":\"Palestina\",\"fa\":\"فلسطین\",\"de\":\"Palästina\",\"es\":\"Palestina\",\"fr\":\"Palestine\",\"ja\":\"パレスチナ\",\"it\":\"Palestina\",\"cn\":\"巴勒斯坦\"}', '31.90000000', '35.20000000', '🇵🇸', 'U+1F1F5 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:08:16', 1, NULL),
(170, 'Panama', 'PAN', '591', 'PA', '507', 'Panama City', 'PAB', 'Panamanian balboa', 'B/.', '.pa', 'Panamá', 'Americas', 'Central America', '[{\"zoneName\":\"America/Panama\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"파나마\",\"br\":\"Panamá\",\"pt\":\"Panamá\",\"nl\":\"Panama\",\"hr\":\"Panama\",\"fa\":\"پاناما\",\"de\":\"Panama\",\"es\":\"Panamá\",\"fr\":\"Panama\",\"ja\":\"パナマ\",\"it\":\"Panama\",\"cn\":\"巴拿马\"}', '9.00000000', '-80.00000000', '🇵🇦', 'U+1F1F5 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:08:22', 1, 'Q804'),
(171, 'Papua new Guinea', 'PNG', '598', 'PG', '675', 'Port Moresby', 'PGK', 'Papua New Guinean kina', 'K', '.pg', 'Papua Niugini', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Bougainville\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"BST\",\"tzName\":\"Bougainville Standard Time[6\"},{\"zoneName\":\"Pacific/Port_Moresby\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"PGT\",\"tzName\":\"Papua New Guinea Time\"}]', '{\"kr\":\"파푸아뉴기니\",\"br\":\"Papua Nova Guiné\",\"pt\":\"Papua Nova Guiné\",\"nl\":\"Papoea-Nieuw-Guinea\",\"hr\":\"Papua Nova Gvineja\",\"fa\":\"پاپوآ گینه نو\",\"de\":\"Papua-Neuguinea\",\"es\":\"Papúa Nueva Guinea\",\"fr\":\"Papouasie-Nouvelle-Guinée\",\"ja\":\"パプアニューギニア\",\"it\":\"Papua Nuova Guinea\",\"cn\":\"巴布亚新几内亚\"}', '-6.00000000', '147.00000000', '🇵🇬', 'U+1F1F5 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:08:31', 1, 'Q691'),
(172, 'Paraguay', 'PRY', '600', 'PY', '595', 'Asuncion', 'PYG', 'Paraguayan guarani', '₲', '.py', 'Paraguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Asuncion\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PYST\",\"tzName\":\"Paraguay Summer Time\"}]', '{\"kr\":\"파라과이\",\"br\":\"Paraguai\",\"pt\":\"Paraguai\",\"nl\":\"Paraguay\",\"hr\":\"Paragvaj\",\"fa\":\"پاراگوئه\",\"de\":\"Paraguay\",\"es\":\"Paraguay\",\"fr\":\"Paraguay\",\"ja\":\"パラグアイ\",\"it\":\"Paraguay\",\"cn\":\"巴拉圭\"}', '-23.00000000', '-58.00000000', '🇵🇾', 'U+1F1F5 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 19:08:49', 1, 'Q733'),
(173, 'Peru', 'PER', '604', 'PE', '51', 'Lima', 'PEN', 'Peruvian sol', 'S/.', '.pe', 'Perú', 'Americas', 'South America', '[{\"zoneName\":\"America/Lima\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"PET\",\"tzName\":\"Peru Time\"}]', '{\"kr\":\"페루\",\"br\":\"Peru\",\"pt\":\"Peru\",\"nl\":\"Peru\",\"hr\":\"Peru\",\"fa\":\"پرو\",\"de\":\"Peru\",\"es\":\"Perú\",\"fr\":\"Pérou\",\"ja\":\"ペルー\",\"it\":\"Perù\",\"cn\":\"秘鲁\"}', '-10.00000000', '-76.00000000', '🇵🇪', 'U+1F1F5 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:08:59', 1, 'Q419'),
(174, 'Philippines', 'PHL', '608', 'PH', '63', 'Manila', 'PHP', 'Philippine peso', '₱', '.ph', 'Pilipinas', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Manila\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"PHT\",\"tzName\":\"Philippine Time\"}]', '{\"kr\":\"필리핀\",\"br\":\"Filipinas\",\"pt\":\"Filipinas\",\"nl\":\"Filipijnen\",\"hr\":\"Filipini\",\"fa\":\"جزایر الندفیلیپین\",\"de\":\"Philippinen\",\"es\":\"Filipinas\",\"fr\":\"Philippines\",\"ja\":\"フィリピン\",\"it\":\"Filippine\",\"cn\":\"菲律宾\"}', '13.00000000', '122.00000000', '🇵🇭', 'U+1F1F5 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:09:03', 1, 'Q928'),
(175, 'Pitcairn Island', 'PCN', '612', 'PN', '870', 'Adamstown', 'NZD', 'New Zealand dollar', '$', '.pn', 'Pitcairn Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pitcairn\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"핏케언 제도\",\"br\":\"Ilhas Pitcairn\",\"pt\":\"Ilhas Picárnia\",\"nl\":\"Pitcairneilanden\",\"hr\":\"Pitcairnovo otočje\",\"fa\":\"پیتکرن\",\"de\":\"Pitcairn\",\"es\":\"Islas Pitcairn\",\"fr\":\"Îles Pitcairn\",\"ja\":\"ピトケアン\",\"it\":\"Isole Pitcairn\",\"cn\":\"皮特凯恩群岛\"}', '-25.06666666', '-130.10000000', '🇵🇳', 'U+1F1F5 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:09:08', 1, NULL),
(176, 'Poland', 'POL', '616', 'PL', '48', 'Warsaw', 'PLN', 'Polish złoty', 'zł', '.pl', 'Polska', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Warsaw\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"폴란드\",\"br\":\"Polônia\",\"pt\":\"Polónia\",\"nl\":\"Polen\",\"hr\":\"Poljska\",\"fa\":\"لهستان\",\"de\":\"Polen\",\"es\":\"Polonia\",\"fr\":\"Pologne\",\"ja\":\"ポーランド\",\"it\":\"Polonia\",\"cn\":\"波兰\"}', '52.00000000', '20.00000000', '🇵🇱', 'U+1F1F5 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:09:19', 1, 'Q36'),
(177, 'Portugal', 'PRT', '620', 'PT', '351', 'Lisbon', 'EUR', 'Euro', '€', '.pt', 'Portugal', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Atlantic/Azores\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"AZOT\",\"tzName\":\"Azores Standard Time\"},{\"zoneName\":\"Atlantic/Madeira\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Lisbon\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"포르투갈\",\"br\":\"Portugal\",\"pt\":\"Portugal\",\"nl\":\"Portugal\",\"hr\":\"Portugal\",\"fa\":\"پرتغال\",\"de\":\"Portugal\",\"es\":\"Portugal\",\"fr\":\"Portugal\",\"ja\":\"ポルトガル\",\"it\":\"Portogallo\",\"cn\":\"葡萄牙\"}', '39.50000000', '-8.00000000', '🇵🇹', 'U+1F1F5 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:02:09', 1, 'Q45'),
(178, 'Puerto Rico', 'PRI', '630', 'PR', '+1-787 and 1-939', 'San Juan', 'USD', 'United States dollar', '$', '.pr', 'Puerto Rico', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Puerto_Rico\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"푸에르토리코\",\"br\":\"Porto Rico\",\"pt\":\"Porto Rico\",\"nl\":\"Puerto Rico\",\"hr\":\"Portoriko\",\"fa\":\"پورتو ریکو\",\"de\":\"Puerto Rico\",\"es\":\"Puerto Rico\",\"fr\":\"Porto Rico\",\"ja\":\"プエルトリコ\",\"it\":\"Porto Rico\",\"cn\":\"波多黎各\"}', '18.25000000', '-66.50000000', '🇵🇷', 'U+1F1F5 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:06:02', 1, NULL),
(179, 'Qatar', 'QAT', '634', 'QA', '974', 'Doha', 'QAR', 'Qatari riyal', 'ق.ر', '.qa', 'قطر', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Qatar\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"카타르\",\"br\":\"Catar\",\"pt\":\"Catar\",\"nl\":\"Qatar\",\"hr\":\"Katar\",\"fa\":\"قطر\",\"de\":\"Katar\",\"es\":\"Catar\",\"fr\":\"Qatar\",\"ja\":\"カタール\",\"it\":\"Qatar\",\"cn\":\"卡塔尔\"}', '25.50000000', '51.25000000', '🇶🇦', 'U+1F1F6 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:09:24', 1, 'Q846'),
(180, 'Reunion', 'REU', '638', 'RE', '262', 'Saint-Denis', 'EUR', 'Euro', '€', '.re', 'La Réunion', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Reunion\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"RET\",\"tzName\":\"Réunion Time\"}]', '{\"kr\":\"레위니옹\",\"br\":\"Reunião\",\"pt\":\"Reunião\",\"nl\":\"Réunion\",\"hr\":\"Réunion\",\"fa\":\"رئونیون\",\"de\":\"Réunion\",\"es\":\"Reunión\",\"fr\":\"Réunion\",\"ja\":\"レユニオン\",\"it\":\"Riunione\",\"cn\":\"留尼汪岛\"}', '-21.15000000', '55.50000000', '🇷🇪', 'U+1F1F7 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:01:59', 1, NULL),
(181, 'Romania', 'ROU', '642', 'RO', '40', 'Bucharest', 'RON', 'Romanian leu', 'lei', '.ro', 'România', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bucharest\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"루마니아\",\"br\":\"Romênia\",\"pt\":\"Roménia\",\"nl\":\"Roemenië\",\"hr\":\"Rumunjska\",\"fa\":\"رومانی\",\"de\":\"Rumänien\",\"es\":\"Rumania\",\"fr\":\"Roumanie\",\"ja\":\"ルーマニア\",\"it\":\"Romania\",\"cn\":\"罗马尼亚\"}', '46.00000000', '25.00000000', '🇷🇴', 'U+1F1F7 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:09:31', 1, 'Q218'),
(182, 'Russia', 'RUS', '643', 'RU', '7', 'Moscow', 'RUB', 'Russian ruble', '₽', '.ru', 'Россия', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Asia/Anadyr\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"ANAT\",\"tzName\":\"Anadyr Time[4\"},{\"zoneName\":\"Asia/Barnaul\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Chita\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Irkutsk\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"IRKT\",\"tzName\":\"Irkutsk Time\"},{\"zoneName\":\"Asia/Kamchatka\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"PETT\",\"tzName\":\"Kamchatka Time\"},{\"zoneName\":\"Asia/Khandyga\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Krasnoyarsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Magadan\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MAGT\",\"tzName\":\"Magadan Time\"},{\"zoneName\":\"Asia/Novokuznetsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Novosibirsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"NOVT\",\"tzName\":\"Novosibirsk Time\"},{\"zoneName\":\"Asia/Omsk\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"OMST\",\"tzName\":\"Omsk Time\"},{\"zoneName\":\"Asia/Sakhalin\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SAKT\",\"tzName\":\"Sakhalin Island Time\"},{\"zoneName\":\"Asia/Srednekolymsk\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SRET\",\"tzName\":\"Srednekolymsk Time\"},{\"zoneName\":\"Asia/Tomsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"MSD+3\",\"tzName\":\"Moscow Daylight Time+3\"},{\"zoneName\":\"Asia/Ust-Nera\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Vladivostok\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Yakutsk\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Yekaterinburg\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"YEKT\",\"tzName\":\"Yekaterinburg Time\"},{\"zoneName\":\"Europe/Astrakhan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Kaliningrad\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Kirov\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Moscow\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Samara\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Saratov\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSD\",\"tzName\":\"Moscow Daylight Time+4\"},{\"zoneName\":\"Europe/Ulyanovsk\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Volgograd\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Standard Time\"}]', '{\"kr\":\"러시아\",\"br\":\"Rússia\",\"pt\":\"Rússia\",\"nl\":\"Rusland\",\"hr\":\"Rusija\",\"fa\":\"روسیه\",\"de\":\"Russland\",\"es\":\"Rusia\",\"fr\":\"Russie\",\"ja\":\"ロシア連邦\",\"it\":\"Russia\",\"cn\":\"俄罗斯联邦\"}', '60.00000000', '100.00000000', '🇷🇺', 'U+1F1F7 U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:09:37', 1, 'Q159'),
(183, 'Rwanda', 'RWA', '646', 'RW', '250', 'Kigali', 'RWF', 'Rwandan franc', 'FRw', '.rw', 'Rwanda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kigali\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"르완다\",\"br\":\"Ruanda\",\"pt\":\"Ruanda\",\"nl\":\"Rwanda\",\"hr\":\"Ruanda\",\"fa\":\"رواندا\",\"de\":\"Ruanda\",\"es\":\"Ruanda\",\"fr\":\"Rwanda\",\"ja\":\"ルワンダ\",\"it\":\"Ruanda\",\"cn\":\"卢旺达\"}', '-2.00000000', '30.00000000', '🇷🇼', 'U+1F1F7 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:09:42', 1, 'Q1037'),
(184, 'Saint Helena', 'SHN', '654', 'SH', '290', 'Jamestown', 'SHP', 'Saint Helena pound', '£', '.sh', 'Saint Helena', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/St_Helena\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세인트헬레나\",\"br\":\"Santa Helena\",\"pt\":\"Santa Helena\",\"nl\":\"Sint-Helena\",\"hr\":\"Sveta Helena\",\"fa\":\"سنت هلنا، اسنشن و تریستان دا کونا\",\"de\":\"Sankt Helena\",\"es\":\"Santa Helena\",\"fr\":\"Sainte-Hélène\",\"ja\":\"セントヘレナ・アセンションおよびトリスタンダクーニャ\",\"it\":\"Sant\'Elena\",\"cn\":\"圣赫勒拿\"}', '-15.95000000', '-5.70000000', '🇸🇭', 'U+1F1F8 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:09:50', 1, NULL),
(185, 'Saint Kitts And Nevis', 'KNA', '659', 'KN', '+1-869', 'Basseterre', 'XCD', 'Eastern Caribbean dollar', '$', '.kn', 'Saint Kitts and Nevis', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Kitts\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트키츠 네비스\",\"br\":\"São Cristóvão e Neves\",\"pt\":\"São Cristóvão e Neves\",\"nl\":\"Saint Kitts en Nevis\",\"hr\":\"Sveti Kristof i Nevis\",\"fa\":\"سنت کیتس و نویس\",\"de\":\"St. Kitts und Nevis\",\"es\":\"San Cristóbal y Nieves\",\"fr\":\"Saint-Christophe-et-Niévès\",\"ja\":\"セントクリストファー・ネイビス\",\"it\":\"Saint Kitts e Nevis\",\"cn\":\"圣基茨和尼维斯\"}', '17.33333333', '-62.75000000', '🇰🇳', 'U+1F1F0 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:09:56', 1, 'Q763'),
(186, 'Saint Lucia', 'LCA', '662', 'LC', '+1-758', 'Castries', 'XCD', 'Eastern Caribbean dollar', '$', '.lc', 'Saint Lucia', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Lucia\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트루시아\",\"br\":\"Santa Lúcia\",\"pt\":\"Santa Lúcia\",\"nl\":\"Saint Lucia\",\"hr\":\"Sveta Lucija\",\"fa\":\"سنت لوسیا\",\"de\":\"Saint Lucia\",\"es\":\"Santa Lucía\",\"fr\":\"Saint-Lucie\",\"ja\":\"セントルシア\",\"it\":\"Santa Lucia\",\"cn\":\"圣卢西亚\"}', '13.88333333', '-60.96666666', '🇱🇨', 'U+1F1F1 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:09:58', 1, 'Q760'),
(187, 'Saint Pierre and Miquelon', 'SPM', '666', 'PM', '508', 'Saint-Pierre', 'EUR', 'Euro', '€', '.pm', 'Saint-Pierre-et-Miquelon', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Miquelon\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PMDT\",\"tzName\":\"Pierre & Miquelon Daylight Time\"}]', '{\"kr\":\"생피에르 미클롱\",\"br\":\"Saint-Pierre e Miquelon\",\"pt\":\"São Pedro e Miquelon\",\"nl\":\"Saint Pierre en Miquelon\",\"hr\":\"Sveti Petar i Mikelon\",\"fa\":\"سن پیر و میکلن\",\"de\":\"Saint-Pierre und Miquelon\",\"es\":\"San Pedro y Miquelón\",\"fr\":\"Saint-Pierre-et-Miquelon\",\"ja\":\"サンピエール島・ミクロン島\",\"it\":\"Saint-Pierre e Miquelon\",\"cn\":\"圣皮埃尔和密克隆\"}', '46.83333333', '-56.33333333', '🇵🇲', 'U+1F1F5 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:02:00', 1, NULL),
(188, 'Saint Vincent And The Grenadines', 'VCT', '670', 'VC', '+1-784', 'Kingstown', 'XCD', 'Eastern Caribbean dollar', '$', '.vc', 'Saint Vincent and the Grenadines', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Vincent\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트빈센트 그레나딘\",\"br\":\"São Vicente e Granadinas\",\"pt\":\"São Vicente e Granadinas\",\"nl\":\"Saint Vincent en de Grenadines\",\"hr\":\"Sveti Vincent i Grenadini\",\"fa\":\"سنت وینسنت و گرنادین‌ها\",\"de\":\"Saint Vincent und die Grenadinen\",\"es\":\"San Vicente y Granadinas\",\"fr\":\"Saint-Vincent-et-les-Grenadines\",\"ja\":\"セントビンセントおよびグレナディーン諸島\",\"it\":\"Saint Vincent e Grenadine\",\"cn\":\"圣文森特和格林纳丁斯\"}', '13.25000000', '-61.20000000', '🇻🇨', 'U+1F1FB U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:09:59', 1, 'Q757'),
(189, 'Saint-Barthelemy', 'BLM', '652', 'BL', '590', 'Gustavia', 'EUR', 'Euro', '€', '.bl', 'Saint-Barthélemy', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Barthelemy\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"생바르텔레미\",\"br\":\"São Bartolomeu\",\"pt\":\"São Bartolomeu\",\"nl\":\"Saint Barthélemy\",\"hr\":\"Saint Barthélemy\",\"fa\":\"سن-بارتلمی\",\"de\":\"Saint-Barthélemy\",\"es\":\"San Bartolomé\",\"fr\":\"Saint-Barthélemy\",\"ja\":\"サン・バルテルミー\",\"it\":\"Antille Francesi\",\"cn\":\"圣巴泰勒米\"}', '18.50000000', '-63.41666666', '🇧🇱', 'U+1F1E7 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:06:08', 1, NULL),
(190, 'Saint-Martin (French part)', 'MAF', '663', 'MF', '590', 'Marigot', 'EUR', 'Euro', '€', '.mf', 'Saint-Martin', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Marigot\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트마틴 섬\",\"br\":\"Saint Martin\",\"pt\":\"Ilha São Martinho\",\"nl\":\"Saint-Martin\",\"hr\":\"Sveti Martin\",\"fa\":\"سینت مارتن\",\"de\":\"Saint Martin\",\"es\":\"Saint Martin\",\"fr\":\"Saint-Martin\",\"ja\":\"サン・マルタン（フランス領）\",\"it\":\"Saint Martin\",\"cn\":\"密克罗尼西亚\"}', '18.08333333', '-63.95000000', '🇲🇫', 'U+1F1F2 U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 19:06:10', 1, NULL),
(191, 'Samoa', 'WSM', '882', 'WS', '685', 'Apia', 'WST', 'Samoan tālā', 'SAT', '.ws', 'Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Apia\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"WST\",\"tzName\":\"West Samoa Time\"}]', '{\"kr\":\"사모아\",\"br\":\"Samoa\",\"pt\":\"Samoa\",\"nl\":\"Samoa\",\"hr\":\"Samoa\",\"fa\":\"ساموآ\",\"de\":\"Samoa\",\"es\":\"Samoa\",\"fr\":\"Samoa\",\"ja\":\"サモア\",\"it\":\"Samoa\",\"cn\":\"萨摩亚\"}', '-13.58333333', '-172.33333333', '🇼🇸', 'U+1F1FC U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:10:07', 1, 'Q683'),
(192, 'San Marino', 'SMR', '674', 'SM', '378', 'San Marino', 'EUR', 'Euro', '€', '.sm', 'San Marino', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/San_Marino\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"산마리노\",\"br\":\"San Marino\",\"pt\":\"São Marinho\",\"nl\":\"San Marino\",\"hr\":\"San Marino\",\"fa\":\"سان مارینو\",\"de\":\"San Marino\",\"es\":\"San Marino\",\"fr\":\"Saint-Marin\",\"ja\":\"サンマリノ\",\"it\":\"San Marino\",\"cn\":\"圣马力诺\"}', '43.76666666', '12.41666666', '🇸🇲', 'U+1F1F8 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:02:15', 1, 'Q238'),
(193, 'Sao Tome and Principe', 'STP', '678', 'ST', '239', 'Sao Tome', 'STD', 'Dobra', 'Db', '.st', 'São Tomé e Príncipe', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Sao_Tome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"상투메 프린시페\",\"br\":\"São Tomé e Príncipe\",\"pt\":\"São Tomé e Príncipe\",\"nl\":\"Sao Tomé en Principe\",\"hr\":\"Sveti Toma i Princip\",\"fa\":\"کواترو دو فرویرو\",\"de\":\"São Tomé und Príncipe\",\"es\":\"Santo Tomé y Príncipe\",\"fr\":\"Sao Tomé-et-Principe\",\"ja\":\"サントメ・プリンシペ\",\"it\":\"São Tomé e Príncipe\",\"cn\":\"圣多美和普林西比\"}', '1.00000000', '7.00000000', '🇸🇹', 'U+1F1F8 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:10:28', 1, 'Q1039'),
(194, 'Saudi Arabia', 'SAU', '682', 'SA', '966', 'Riyadh', 'SAR', 'Saudi riyal', '﷼', '.sa', 'المملكة العربية السعودية', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Riyadh\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"사우디아라비아\",\"br\":\"Arábia Saudita\",\"pt\":\"Arábia Saudita\",\"nl\":\"Saoedi-Arabië\",\"hr\":\"Saudijska Arabija\",\"fa\":\"عربستان سعودی\",\"de\":\"Saudi-Arabien\",\"es\":\"Arabia Saudí\",\"fr\":\"Arabie Saoudite\",\"ja\":\"サウジアラビア\",\"it\":\"Arabia Saudita\",\"cn\":\"沙特阿拉伯\"}', '25.00000000', '45.00000000', '🇸🇦', 'U+1F1F8 U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:10:44', 1, 'Q851'),
(195, 'Senegal', 'SEN', '686', 'SN', '221', 'Dakar', 'XOF', 'West African CFA franc', 'CFA', '.sn', 'Sénégal', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Dakar\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세네갈\",\"br\":\"Senegal\",\"pt\":\"Senegal\",\"nl\":\"Senegal\",\"hr\":\"Senegal\",\"fa\":\"سنگال\",\"de\":\"Senegal\",\"es\":\"Senegal\",\"fr\":\"Sénégal\",\"ja\":\"セネガル\",\"it\":\"Senegal\",\"cn\":\"塞内加尔\"}', '14.00000000', '-14.00000000', '🇸🇳', 'U+1F1F8 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:10:50', 1, 'Q1041');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(196, 'Serbia', 'SRB', '688', 'RS', '381', 'Belgrade', 'RSD', 'Serbian dinar', 'din', '.rs', 'Србија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"세르비아\",\"br\":\"Sérvia\",\"pt\":\"Sérvia\",\"nl\":\"Servië\",\"hr\":\"Srbija\",\"fa\":\"صربستان\",\"de\":\"Serbien\",\"es\":\"Serbia\",\"fr\":\"Serbie\",\"ja\":\"セルビア\",\"it\":\"Serbia\",\"cn\":\"塞尔维亚\"}', '44.00000000', '21.00000000', '🇷🇸', 'U+1F1F7 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:10:55', 1, 'Q403'),
(197, 'Seychelles', 'SYC', '690', 'SC', '248', 'Victoria', 'SCR', 'Seychellois rupee', 'SRe', '.sc', 'Seychelles', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mahe\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SCT\",\"tzName\":\"Seychelles Time\"}]', '{\"kr\":\"세이셸\",\"br\":\"Seicheles\",\"pt\":\"Seicheles\",\"nl\":\"Seychellen\",\"hr\":\"Sejšeli\",\"fa\":\"سیشل\",\"de\":\"Seychellen\",\"es\":\"Seychelles\",\"fr\":\"Seychelles\",\"ja\":\"セーシェル\",\"it\":\"Seychelles\",\"cn\":\"塞舌尔\"}', '-4.58333333', '55.66666666', '🇸🇨', 'U+1F1F8 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:11:01', 1, 'Q1042'),
(198, 'Sierra Leone', 'SLE', '694', 'SL', '232', 'Freetown', 'SLL', 'Sierra Leonean leone', 'Le', '.sl', 'Sierra Leone', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Freetown\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"시에라리온\",\"br\":\"Serra Leoa\",\"pt\":\"Serra Leoa\",\"nl\":\"Sierra Leone\",\"hr\":\"Sijera Leone\",\"fa\":\"سیرالئون\",\"de\":\"Sierra Leone\",\"es\":\"Sierra Leone\",\"fr\":\"Sierra Leone\",\"ja\":\"シエラレオネ\",\"it\":\"Sierra Leone\",\"cn\":\"塞拉利昂\"}', '8.50000000', '-11.50000000', '🇸🇱', 'U+1F1F8 U+1F1F1', '2018-07-21 01:41:03', '2021-12-11 19:11:06', 1, 'Q1044'),
(199, 'Singapore', 'SGP', '702', 'SG', '65', 'Singapur', 'SGD', 'Singapore dollar', '$', '.sg', 'Singapore', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Singapore\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"SGT\",\"tzName\":\"Singapore Time\"}]', '{\"kr\":\"싱가포르\",\"br\":\"Singapura\",\"pt\":\"Singapura\",\"nl\":\"Singapore\",\"hr\":\"Singapur\",\"fa\":\"سنگاپور\",\"de\":\"Singapur\",\"es\":\"Singapur\",\"fr\":\"Singapour\",\"ja\":\"シンガポール\",\"it\":\"Singapore\",\"cn\":\"新加坡\"}', '1.36666666', '103.80000000', '🇸🇬', 'U+1F1F8 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:11:12', 1, 'Q334'),
(200, 'Slovakia', 'SVK', '703', 'SK', '421', 'Bratislava', 'EUR', 'Euro', '€', '.sk', 'Slovensko', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bratislava\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로바키아\",\"br\":\"Eslováquia\",\"pt\":\"Eslováquia\",\"nl\":\"Slowakije\",\"hr\":\"Slovačka\",\"fa\":\"اسلواکی\",\"de\":\"Slowakei\",\"es\":\"República Eslovaca\",\"fr\":\"Slovaquie\",\"ja\":\"スロバキア\",\"it\":\"Slovacchia\",\"cn\":\"斯洛伐克\"}', '48.66666666', '19.50000000', '🇸🇰', 'U+1F1F8 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:07:01', 1, 'Q214'),
(201, 'Slovenia', 'SVN', '705', 'SI', '386', 'Ljubljana', 'EUR', 'Euro', '€', '.si', 'Slovenija', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Ljubljana\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로베니아\",\"br\":\"Eslovênia\",\"pt\":\"Eslovénia\",\"nl\":\"Slovenië\",\"hr\":\"Slovenija\",\"fa\":\"اسلوونی\",\"de\":\"Slowenien\",\"es\":\"Eslovenia\",\"fr\":\"Slovénie\",\"ja\":\"スロベニア\",\"it\":\"Slovenia\",\"cn\":\"斯洛文尼亚\"}', '46.11666666', '14.81666666', '🇸🇮', 'U+1F1F8 U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 19:07:05', 1, 'Q215'),
(202, 'Solomon Islands', 'SLB', '090', 'SB', '677', 'Honiara', 'SBD', 'Solomon Islands dollar', 'Si$', '.sb', 'Solomon Islands', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Guadalcanal\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SBT\",\"tzName\":\"Solomon Islands Time\"}]', '{\"kr\":\"솔로몬 제도\",\"br\":\"Ilhas Salomão\",\"pt\":\"Ilhas Salomão\",\"nl\":\"Salomonseilanden\",\"hr\":\"Solomonski Otoci\",\"fa\":\"جزایر سلیمان\",\"de\":\"Salomonen\",\"es\":\"Islas Salomón\",\"fr\":\"Îles Salomon\",\"ja\":\"ソロモン諸島\",\"it\":\"Isole Salomone\",\"cn\":\"所罗门群岛\"}', '-8.00000000', '159.00000000', '🇸🇧', 'U+1F1F8 U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 19:11:36', 1, 'Q685'),
(203, 'Somalia', 'SOM', '706', 'SO', '252', 'Mogadishu', 'SOS', 'Somali shilling', 'Sh.so.', '.so', 'Soomaaliya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Mogadishu\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"소말리아\",\"br\":\"Somália\",\"pt\":\"Somália\",\"nl\":\"Somalië\",\"hr\":\"Somalija\",\"fa\":\"سومالی\",\"de\":\"Somalia\",\"es\":\"Somalia\",\"fr\":\"Somalie\",\"ja\":\"ソマリア\",\"it\":\"Somalia\",\"cn\":\"索马里\"}', '10.00000000', '49.00000000', '🇸🇴', 'U+1F1F8 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:11:41', 1, 'Q1045'),
(204, 'South Africa', 'ZAF', '710', 'ZA', '27', 'Pretoria', 'ZAR', 'South African rand', 'R', '.za', 'South Africa', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Johannesburg\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"남아프리카 공화국\",\"br\":\"República Sul-Africana\",\"pt\":\"República Sul-Africana\",\"nl\":\"Zuid-Afrika\",\"hr\":\"Južnoafrička Republika\",\"fa\":\"آفریقای جنوبی\",\"de\":\"Republik Südafrika\",\"es\":\"República de Sudáfrica\",\"fr\":\"Afrique du Sud\",\"ja\":\"南アフリカ\",\"it\":\"Sud Africa\",\"cn\":\"南非\"}', '-29.00000000', '24.00000000', '🇿🇦', 'U+1F1FF U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:11:49', 1, 'Q258'),
(205, 'South Georgia', 'SGS', '239', 'GS', '500', 'Grytviken', 'GBP', 'British pound', '£', '.gs', 'South Georgia', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/South_Georgia\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"GST\",\"tzName\":\"South Georgia and the South Sandwich Islands Time\"}]', '{\"kr\":\"사우스조지아\",\"br\":\"Ilhas Geórgias do Sul e Sandwich do Sul\",\"pt\":\"Ilhas Geórgia do Sul e Sanduíche do Sul\",\"nl\":\"Zuid-Georgia en Zuidelijke Sandwicheilanden\",\"hr\":\"Južna Georgija i otočje Južni Sandwich\",\"fa\":\"جزایر جورجیای جنوبی و ساندویچ جنوبی\",\"de\":\"Südgeorgien und die Südlichen Sandwichinseln\",\"es\":\"Islas Georgias del Sur y Sandwich del Sur\",\"fr\":\"Géorgie du Sud-et-les Îles Sandwich du Sud\",\"ja\":\"サウスジョージア・サウスサンドウィッチ諸島\",\"it\":\"Georgia del Sud e Isole Sandwich Meridionali\",\"cn\":\"南乔治亚\"}', '-54.50000000', '-37.00000000', '🇬🇸', 'U+1F1EC U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:06:45', 1, NULL),
(206, 'South Sudan', 'SSD', '728', 'SS', '211', 'Juba', 'SSP', 'South Sudanese pound', '£', '.ss', 'South Sudan', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Juba\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"남수단\",\"br\":\"Sudão do Sul\",\"pt\":\"Sudão do Sul\",\"nl\":\"Zuid-Soedan\",\"hr\":\"Južni Sudan\",\"fa\":\"سودان جنوبی\",\"de\":\"Südsudan\",\"es\":\"Sudán del Sur\",\"fr\":\"Soudan du Sud\",\"ja\":\"南スーダン\",\"it\":\"Sudan del sud\",\"cn\":\"南苏丹\"}', '7.00000000', '30.00000000', '🇸🇸', 'U+1F1F8 U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:12:25', 1, 'Q958'),
(207, 'Spain', 'ESP', '724', 'ES', '34', 'Madrid', 'EUR', 'Euro', '€', '.es', 'España', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Africa/Ceuta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Atlantic/Canary\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Madrid\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스페인\",\"br\":\"Espanha\",\"pt\":\"Espanha\",\"nl\":\"Spanje\",\"hr\":\"Španjolska\",\"fa\":\"اسپانیا\",\"de\":\"Spanien\",\"es\":\"España\",\"fr\":\"Espagne\",\"ja\":\"スペイン\",\"it\":\"Spagna\",\"cn\":\"西班牙\"}', '40.00000000', '-4.00000000', '🇪🇸', 'U+1F1EA U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:02:30', 1, 'Q29'),
(208, 'Sri Lanka', 'LKA', '144', 'LK', '94', 'Colombo', 'LKR', 'Sri Lankan rupee', 'Rs', '.lk', 'śrī laṃkāva', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Colombo\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"스리랑카\",\"br\":\"Sri Lanka\",\"pt\":\"Sri Lanka\",\"nl\":\"Sri Lanka\",\"hr\":\"Šri Lanka\",\"fa\":\"سری‌لانکا\",\"de\":\"Sri Lanka\",\"es\":\"Sri Lanka\",\"fr\":\"Sri Lanka\",\"ja\":\"スリランカ\",\"it\":\"Sri Lanka\",\"cn\":\"斯里兰卡\"}', '7.00000000', '81.00000000', '🇱🇰', 'U+1F1F1 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:12:30', 1, 'Q854'),
(209, 'Sudan', 'SDN', '729', 'SD', '249', 'Khartoum', 'SDG', 'Sudanese pound', '.س.ج', '.sd', 'السودان', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Khartoum\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EAT\",\"tzName\":\"Eastern African Time\"}]', '{\"kr\":\"수단\",\"br\":\"Sudão\",\"pt\":\"Sudão\",\"nl\":\"Soedan\",\"hr\":\"Sudan\",\"fa\":\"سودان\",\"de\":\"Sudan\",\"es\":\"Sudán\",\"fr\":\"Soudan\",\"ja\":\"スーダン\",\"it\":\"Sudan\",\"cn\":\"苏丹\"}', '15.00000000', '30.00000000', '🇸🇩', 'U+1F1F8 U+1F1E9', '2018-07-21 01:41:03', '2021-12-11 19:12:35', 1, 'Q1049'),
(210, 'Suriname', 'SUR', '740', 'SR', '597', 'Paramaribo', 'SRD', 'Surinamese dollar', '$', '.sr', 'Suriname', 'Americas', 'South America', '[{\"zoneName\":\"America/Paramaribo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"SRT\",\"tzName\":\"Suriname Time\"}]', '{\"kr\":\"수리남\",\"br\":\"Suriname\",\"pt\":\"Suriname\",\"nl\":\"Suriname\",\"hr\":\"Surinam\",\"fa\":\"سورینام\",\"de\":\"Suriname\",\"es\":\"Surinam\",\"fr\":\"Surinam\",\"ja\":\"スリナム\",\"it\":\"Suriname\",\"cn\":\"苏里南\"}', '4.00000000', '-56.00000000', '🇸🇷', 'U+1F1F8 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:12:40', 1, 'Q730'),
(211, 'Svalbard And Jan Mayen Islands', 'SJM', '744', 'SJ', '47', 'Longyearbyen', 'NOK', 'Norwegian Krone', 'kr', '.sj', 'Svalbard og Jan Mayen', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Arctic/Longyearbyen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스발바르 얀마옌 제도\",\"br\":\"Svalbard\",\"pt\":\"Svalbard\",\"nl\":\"Svalbard en Jan Mayen\",\"hr\":\"Svalbard i Jan Mayen\",\"fa\":\"سوالبارد و یان ماین\",\"de\":\"Svalbard und Jan Mayen\",\"es\":\"Islas Svalbard y Jan Mayen\",\"fr\":\"Svalbard et Jan Mayen\",\"ja\":\"スヴァールバル諸島およびヤンマイエン島\",\"it\":\"Svalbard e Jan Mayen\",\"cn\":\"斯瓦尔巴和扬马延群岛\"}', '78.00000000', '20.00000000', '🇸🇯', 'U+1F1F8 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 19:12:54', 1, NULL),
(212, 'Swaziland', 'SWZ', '748', 'SZ', '268', 'Mbabane', 'SZL', 'Lilangeni', 'E', '.sz', 'Swaziland', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Mbabane\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"에스와티니\",\"br\":\"Suazilândia\",\"pt\":\"Suazilândia\",\"nl\":\"Swaziland\",\"hr\":\"Svazi\",\"fa\":\"سوازیلند\",\"de\":\"Swasiland\",\"es\":\"Suazilandia\",\"fr\":\"Swaziland\",\"ja\":\"スワジランド\",\"it\":\"Swaziland\",\"cn\":\"斯威士兰\"}', '-26.50000000', '31.50000000', '🇸🇿', 'U+1F1F8 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:13:12', 1, 'Q1050'),
(213, 'Sweden', 'SWE', '752', 'SE', '46', 'Stockholm', 'SEK', 'Swedish krona', 'kr', '.se', 'Sverige', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Stockholm\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스웨덴\",\"br\":\"Suécia\",\"pt\":\"Suécia\",\"nl\":\"Zweden\",\"hr\":\"Švedska\",\"fa\":\"سوئد\",\"de\":\"Schweden\",\"es\":\"Suecia\",\"fr\":\"Suède\",\"ja\":\"スウェーデン\",\"it\":\"Svezia\",\"cn\":\"瑞典\"}', '62.00000000', '15.00000000', '🇸🇪', 'U+1F1F8 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:13:24', 1, 'Q34'),
(214, 'Switzerland', 'CHE', '756', 'CH', '41', 'Bern', 'CHF', 'Swiss franc', 'CHf', '.ch', 'Schweiz', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Zurich\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스위스\",\"br\":\"Suíça\",\"pt\":\"Suíça\",\"nl\":\"Zwitserland\",\"hr\":\"Švicarska\",\"fa\":\"سوئیس\",\"de\":\"Schweiz\",\"es\":\"Suiza\",\"fr\":\"Suisse\",\"ja\":\"スイス\",\"it\":\"Svizzera\",\"cn\":\"瑞士\"}', '47.00000000', '8.00000000', '🇨🇭', 'U+1F1E8 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:13:31', 1, 'Q39'),
(215, 'Syria', 'SYR', '760', 'SY', '963', 'Damascus', 'SYP', 'Syrian pound', 'LS', '.sy', 'سوريا', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Damascus\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"시리아\",\"br\":\"Síria\",\"pt\":\"Síria\",\"nl\":\"Syrië\",\"hr\":\"Sirija\",\"fa\":\"سوریه\",\"de\":\"Syrien\",\"es\":\"Siria\",\"fr\":\"Syrie\",\"ja\":\"シリア・アラブ共和国\",\"it\":\"Siria\",\"cn\":\"叙利亚\"}', '35.00000000', '38.00000000', '🇸🇾', 'U+1F1F8 U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 19:13:36', 1, 'Q858'),
(216, 'Taiwan', 'TWN', '158', 'TW', '886', 'Taipei', 'TWD', 'New Taiwan dollar', '$', '.tw', '臺灣', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Taipei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"대만\",\"br\":\"Taiwan\",\"pt\":\"Taiwan\",\"nl\":\"Taiwan\",\"hr\":\"Tajvan\",\"fa\":\"تایوان\",\"de\":\"Taiwan\",\"es\":\"Taiwán\",\"fr\":\"Taïwan\",\"ja\":\"台湾（中華民国）\",\"it\":\"Taiwan\",\"cn\":\"中国台湾\"}', '23.50000000', '121.00000000', '🇹🇼', 'U+1F1F9 U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:13:41', 1, 'Q865'),
(217, 'Tajikistan', 'TJK', '762', 'TJ', '992', 'Dushanbe', 'TJS', 'Tajikistani somoni', 'SM', '.tj', 'Тоҷикистон', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Dushanbe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TJT\",\"tzName\":\"Tajikistan Time\"}]', '{\"kr\":\"타지키스탄\",\"br\":\"Tajiquistão\",\"pt\":\"Tajiquistão\",\"nl\":\"Tadzjikistan\",\"hr\":\"Tađikistan\",\"fa\":\"تاجیکستان\",\"de\":\"Tadschikistan\",\"es\":\"Tayikistán\",\"fr\":\"Tadjikistan\",\"ja\":\"タジキスタン\",\"it\":\"Tagikistan\",\"cn\":\"塔吉克斯坦\"}', '39.00000000', '71.00000000', '🇹🇯', 'U+1F1F9 U+1F1EF', '2018-07-21 01:41:03', '2021-12-11 19:13:46', 1, 'Q863'),
(218, 'Tanzania', 'TZA', '834', 'TZ', '255', 'Dodoma', 'TZS', 'Tanzanian shilling', 'TSh', '.tz', 'Tanzania', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Dar_es_Salaam\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"탄자니아\",\"br\":\"Tanzânia\",\"pt\":\"Tanzânia\",\"nl\":\"Tanzania\",\"hr\":\"Tanzanija\",\"fa\":\"تانزانیا\",\"de\":\"Tansania\",\"es\":\"Tanzania\",\"fr\":\"Tanzanie\",\"ja\":\"タンザニア\",\"it\":\"Tanzania\",\"cn\":\"坦桑尼亚\"}', '-6.00000000', '35.00000000', '🇹🇿', 'U+1F1F9 U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:13:57', 1, 'Q924'),
(219, 'Thailand', 'THA', '764', 'TH', '66', 'Bangkok', 'THB', 'Thai baht', '฿', '.th', 'ประเทศไทย', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Bangkok\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"태국\",\"br\":\"Tailândia\",\"pt\":\"Tailândia\",\"nl\":\"Thailand\",\"hr\":\"Tajland\",\"fa\":\"تایلند\",\"de\":\"Thailand\",\"es\":\"Tailandia\",\"fr\":\"Thaïlande\",\"ja\":\"タイ\",\"it\":\"Tailandia\",\"cn\":\"泰国\"}', '15.00000000', '100.00000000', '🇹🇭', 'U+1F1F9 U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:14:06', 1, 'Q869'),
(220, 'Togo', 'TGO', '768', 'TG', '228', 'Lome', 'XOF', 'West African CFA franc', 'CFA', '.tg', 'Togo', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"토고\",\"br\":\"Togo\",\"pt\":\"Togo\",\"nl\":\"Togo\",\"hr\":\"Togo\",\"fa\":\"توگو\",\"de\":\"Togo\",\"es\":\"Togo\",\"fr\":\"Togo\",\"ja\":\"トーゴ\",\"it\":\"Togo\",\"cn\":\"多哥\"}', '8.00000000', '1.16666666', '🇹🇬', 'U+1F1F9 U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:14:14', 1, 'Q945'),
(221, 'Tokelau', 'TKL', '772', 'TK', '690', '', 'NZD', 'New Zealand dollar', '$', '.tk', 'Tokelau', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Fakaofo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TKT\",\"tzName\":\"Tokelau Time\"}]', '{\"kr\":\"토켈라우\",\"br\":\"Tokelau\",\"pt\":\"Toquelau\",\"nl\":\"Tokelau\",\"hr\":\"Tokelau\",\"fa\":\"توکلائو\",\"de\":\"Tokelau\",\"es\":\"Islas Tokelau\",\"fr\":\"Tokelau\",\"ja\":\"トケラウ\",\"it\":\"Isole Tokelau\",\"cn\":\"托克劳\"}', '-9.00000000', '-172.00000000', '🇹🇰', 'U+1F1F9 U+1F1F0', '2018-07-21 01:41:03', '2021-12-11 19:14:33', 1, NULL),
(222, 'Tonga', 'TON', '776', 'TO', '676', 'Nuku\'alofa', 'TOP', 'Tongan paʻanga', '$', '.to', 'Tonga', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Tongatapu\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TOT\",\"tzName\":\"Tonga Time\"}]', '{\"kr\":\"통가\",\"br\":\"Tonga\",\"pt\":\"Tonga\",\"nl\":\"Tonga\",\"hr\":\"Tonga\",\"fa\":\"تونگا\",\"de\":\"Tonga\",\"es\":\"Tonga\",\"fr\":\"Tonga\",\"ja\":\"トンガ\",\"it\":\"Tonga\",\"cn\":\"汤加\"}', '-20.00000000', '-175.00000000', '🇹🇴', 'U+1F1F9 U+1F1F4', '2018-07-21 01:41:03', '2021-12-11 19:14:44', 1, 'Q678'),
(223, 'Trinidad And Tobago', 'TTO', '780', 'TT', '+1-868', 'Port of Spain', 'TTD', 'Trinidad and Tobago dollar', '$', '.tt', 'Trinidad and Tobago', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port_of_Spain\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"트리니다드 토바고\",\"br\":\"Trinidad e Tobago\",\"pt\":\"Trindade e Tobago\",\"nl\":\"Trinidad en Tobago\",\"hr\":\"Trinidad i Tobago\",\"fa\":\"ترینیداد و توباگو\",\"de\":\"Trinidad und Tobago\",\"es\":\"Trinidad y Tobago\",\"fr\":\"Trinité et Tobago\",\"ja\":\"トリニダード・トバゴ\",\"it\":\"Trinidad e Tobago\",\"cn\":\"特立尼达和多巴哥\"}', '11.00000000', '-61.00000000', '🇹🇹', 'U+1F1F9 U+1F1F9', '2018-07-21 01:41:03', '2021-12-11 19:14:51', 1, 'Q754'),
(224, 'Tunisia', 'TUN', '788', 'TN', '216', 'Tunis', 'TND', 'Tunisian dinar', 'ت.د', '.tn', 'تونس', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tunis\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"튀니지\",\"br\":\"Tunísia\",\"pt\":\"Tunísia\",\"nl\":\"Tunesië\",\"hr\":\"Tunis\",\"fa\":\"تونس\",\"de\":\"Tunesien\",\"es\":\"Túnez\",\"fr\":\"Tunisie\",\"ja\":\"チュニジア\",\"it\":\"Tunisia\",\"cn\":\"突尼斯\"}', '34.00000000', '9.00000000', '🇹🇳', 'U+1F1F9 U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:15:00', 1, 'Q948'),
(225, 'Turkey', 'TUR', '792', 'TR', '90', 'Ankara', 'TRY', 'Turkish lira', '₺', '.tr', 'Türkiye', 'Asia', 'Western Asia', '[{\"zoneName\":\"Europe/Istanbul\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"터키\",\"br\":\"Turquia\",\"pt\":\"Turquia\",\"nl\":\"Turkije\",\"hr\":\"Turska\",\"fa\":\"ترکیه\",\"de\":\"Türkei\",\"es\":\"Turquía\",\"fr\":\"Turquie\",\"ja\":\"トルコ\",\"it\":\"Turchia\",\"cn\":\"土耳其\"}', '39.00000000', '35.00000000', '🇹🇷', 'U+1F1F9 U+1F1F7', '2018-07-21 01:41:03', '2021-12-11 19:15:05', 1, 'Q43'),
(226, 'Turkmenistan', 'TKM', '795', 'TM', '993', 'Ashgabat', 'TMT', 'Turkmenistan manat', 'T', '.tm', 'Türkmenistan', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Ashgabat\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TMT\",\"tzName\":\"Turkmenistan Time\"}]', '{\"kr\":\"투르크메니스탄\",\"br\":\"Turcomenistão\",\"pt\":\"Turquemenistão\",\"nl\":\"Turkmenistan\",\"hr\":\"Turkmenistan\",\"fa\":\"ترکمنستان\",\"de\":\"Turkmenistan\",\"es\":\"Turkmenistán\",\"fr\":\"Turkménistan\",\"ja\":\"トルクメニスタン\",\"it\":\"Turkmenistan\",\"cn\":\"土库曼斯坦\"}', '40.00000000', '60.00000000', '🇹🇲', 'U+1F1F9 U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:15:10', 1, 'Q874'),
(227, 'Turks And Caicos Islands', 'TCA', '796', 'TC', '+1-649', 'Cockburn Town', 'USD', 'United States dollar', '$', '.tc', 'Turks and Caicos Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grand_Turk\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"터크스 케이커스 제도\",\"br\":\"Ilhas Turcas e Caicos\",\"pt\":\"Ilhas Turcas e Caicos\",\"nl\":\"Turks- en Caicoseilanden\",\"hr\":\"Otoci Turks i Caicos\",\"fa\":\"جزایر تورکس و کایکوس\",\"de\":\"Turks- und Caicosinseln\",\"es\":\"Islas Turks y Caicos\",\"fr\":\"Îles Turques-et-Caïques\",\"ja\":\"タークス・カイコス諸島\",\"it\":\"Isole Turks e Caicos\",\"cn\":\"特克斯和凯科斯群岛\"}', '21.75000000', '-71.58333333', '🇹🇨', 'U+1F1F9 U+1F1E8', '2018-07-21 01:41:03', '2021-12-11 19:06:26', 1, NULL),
(228, 'Tuvalu', 'TUV', '798', 'TV', '688', 'Funafuti', 'AUD', 'Australian dollar', '$', '.tv', 'Tuvalu', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Funafuti\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"TVT\",\"tzName\":\"Tuvalu Time\"}]', '{\"kr\":\"투발루\",\"br\":\"Tuvalu\",\"pt\":\"Tuvalu\",\"nl\":\"Tuvalu\",\"hr\":\"Tuvalu\",\"fa\":\"تووالو\",\"de\":\"Tuvalu\",\"es\":\"Tuvalu\",\"fr\":\"Tuvalu\",\"ja\":\"ツバル\",\"it\":\"Tuvalu\",\"cn\":\"图瓦卢\"}', '-8.00000000', '178.00000000', '🇹🇻', 'U+1F1F9 U+1F1FB', '2018-07-21 01:41:03', '2021-12-11 19:07:37', 1, 'Q672'),
(229, 'Uganda', 'UGA', '800', 'UG', '256', 'Kampala', 'UGX', 'Ugandan shilling', 'USh', '.ug', 'Uganda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kampala\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"우간다\",\"br\":\"Uganda\",\"pt\":\"Uganda\",\"nl\":\"Oeganda\",\"hr\":\"Uganda\",\"fa\":\"اوگاندا\",\"de\":\"Uganda\",\"es\":\"Uganda\",\"fr\":\"Uganda\",\"ja\":\"ウガンダ\",\"it\":\"Uganda\",\"cn\":\"乌干达\"}', '1.00000000', '32.00000000', '🇺🇬', 'U+1F1FA U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:15:17', 1, 'Q1036'),
(230, 'Ukraine', 'UKR', '804', 'UA', '380', 'Kiev', 'UAH', 'Ukrainian hryvnia', '₴', '.ua', 'Україна', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Kiev\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Simferopol\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Uzhgorod\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Zaporozhye\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"우크라이나\",\"br\":\"Ucrânia\",\"pt\":\"Ucrânia\",\"nl\":\"Oekraïne\",\"hr\":\"Ukrajina\",\"fa\":\"وکراین\",\"de\":\"Ukraine\",\"es\":\"Ucrania\",\"fr\":\"Ukraine\",\"ja\":\"ウクライナ\",\"it\":\"Ucraina\",\"cn\":\"乌克兰\"}', '49.00000000', '32.00000000', '🇺🇦', 'U+1F1FA U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:15:22', 1, 'Q212'),
(231, 'United Arab Emirates', 'ARE', '784', 'AE', '971', 'Abu Dhabi', 'AED', 'United Arab Emirates dirham', 'إ.د', '.ae', 'دولة الإمارات العربية المتحدة', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Dubai\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"아랍에미리트\",\"br\":\"Emirados árabes Unidos\",\"pt\":\"Emirados árabes Unidos\",\"nl\":\"Verenigde Arabische Emiraten\",\"hr\":\"Ujedinjeni Arapski Emirati\",\"fa\":\"امارات متحده عربی\",\"de\":\"Vereinigte Arabische Emirate\",\"es\":\"Emiratos Árabes Unidos\",\"fr\":\"Émirats arabes unis\",\"ja\":\"アラブ首長国連邦\",\"it\":\"Emirati Arabi Uniti\",\"cn\":\"阿拉伯联合酋长国\"}', '24.00000000', '54.00000000', '🇦🇪', 'U+1F1E6 U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:15:29', 1, 'Q878'),
(232, 'United Kingdom', 'GBR', '826', 'GB', '44', 'London', 'GBP', 'British pound', '£', '.uk', 'United Kingdom', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/London\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"영국\",\"br\":\"Reino Unido\",\"pt\":\"Reino Unido\",\"nl\":\"Verenigd Koninkrijk\",\"hr\":\"Ujedinjeno Kraljevstvo\",\"fa\":\"بریتانیای کبیر و ایرلند شمالی\",\"de\":\"Vereinigtes Königreich\",\"es\":\"Reino Unido\",\"fr\":\"Royaume-Uni\",\"ja\":\"イギリス\",\"it\":\"Regno Unito\",\"cn\":\"英国\"}', '54.00000000', '-2.00000000', '🇬🇧', 'U+1F1EC U+1F1E7', '2018-07-21 01:41:03', '2021-12-11 19:07:13', 1, 'Q145'),
(233, 'United States', 'USA', '840', 'US', '1', 'Washington', 'USD', 'United States dollar', '$', '.us', 'United States', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Adak\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"},{\"zoneName\":\"America/Anchorage\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Boise\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Chicago\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Denver\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Detroit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Indianapolis\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Knox\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Marengo\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Petersburg\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Tell_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vevay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vincennes\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Winamac\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Juneau\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Kentucky/Louisville\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Kentucky/Monticello\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Los_Angeles\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Menominee\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Metlakatla\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/New_York\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Nome\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/North_Dakota/Beulah\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/Center\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/New_Salem\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Phoenix\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Sitka\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Yakutat\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"Pacific/Honolulu\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"}]', '{\"kr\":\"미국\",\"br\":\"Estados Unidos\",\"pt\":\"Estados Unidos\",\"nl\":\"Verenigde Staten\",\"hr\":\"Sjedinjene Američke Države\",\"fa\":\"ایالات متحده آمریکا\",\"de\":\"Vereinigte Staaten von Amerika\",\"es\":\"Estados Unidos\",\"fr\":\"États-Unis\",\"ja\":\"アメリカ合衆国\",\"it\":\"Stati Uniti D\'America\",\"cn\":\"美国\"}', '38.00000000', '-97.00000000', '🇺🇸', 'U+1F1FA U+1F1F8', '2018-07-21 01:41:03', '2021-12-11 19:06:28', 1, 'Q30'),
(234, 'United States Minor Outlying Islands', 'UMI', '581', 'UM', '1', '', 'USD', 'United States dollar', '$', '.us', 'United States Minor Outlying Islands', 'Americas', 'Northern America', '[{\"zoneName\":\"Pacific/Midway\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"},{\"zoneName\":\"Pacific/Wake\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WAKT\",\"tzName\":\"Wake Island Time\"}]', '{\"kr\":\"미국령 군소 제도\",\"br\":\"Ilhas Menores Distantes dos Estados Unidos\",\"pt\":\"Ilhas Menores Distantes dos Estados Unidos\",\"nl\":\"Kleine afgelegen eilanden van de Verenigde Staten\",\"hr\":\"Mali udaljeni otoci SAD-a\",\"fa\":\"جزایر کوچک حاشیه‌ای ایالات متحده آمریکا\",\"de\":\"Kleinere Inselbesitzungen der Vereinigten Staaten\",\"es\":\"Islas Ultramarinas Menores de Estados Unidos\",\"fr\":\"Îles mineures éloignées des États-Unis\",\"ja\":\"合衆国領有小離島\",\"it\":\"Isole minori esterne degli Stati Uniti d\'America\",\"cn\":\"美国本土外小岛屿\"}', '0.00000000', '0.00000000', '🇺🇲', 'U+1F1FA U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:06:30', 1, NULL),
(235, 'Uruguay', 'URY', '858', 'UY', '598', 'Montevideo', 'UYU', 'Uruguayan peso', '$', '.uy', 'Uruguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Montevideo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"UYT\",\"tzName\":\"Uruguay Standard Time\"}]', '{\"kr\":\"우루과이\",\"br\":\"Uruguai\",\"pt\":\"Uruguai\",\"nl\":\"Uruguay\",\"hr\":\"Urugvaj\",\"fa\":\"اروگوئه\",\"de\":\"Uruguay\",\"es\":\"Uruguay\",\"fr\":\"Uruguay\",\"ja\":\"ウルグアイ\",\"it\":\"Uruguay\",\"cn\":\"乌拉圭\"}', '-33.00000000', '-56.00000000', '🇺🇾', 'U+1F1FA U+1F1FE', '2018-07-21 01:41:03', '2021-12-11 19:15:36', 1, 'Q77'),
(236, 'Uzbekistan', 'UZB', '860', 'UZ', '998', 'Tashkent', 'UZS', 'Uzbekistani soʻm', 'лв', '.uz', 'O‘zbekiston', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Samarkand\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"},{\"zoneName\":\"Asia/Tashkent\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"}]', '{\"kr\":\"우즈베키스탄\",\"br\":\"Uzbequistão\",\"pt\":\"Usbequistão\",\"nl\":\"Oezbekistan\",\"hr\":\"Uzbekistan\",\"fa\":\"ازبکستان\",\"de\":\"Usbekistan\",\"es\":\"Uzbekistán\",\"fr\":\"Ouzbékistan\",\"ja\":\"ウズベキスタン\",\"it\":\"Uzbekistan\",\"cn\":\"乌兹别克斯坦\"}', '41.00000000', '64.00000000', '🇺🇿', 'U+1F1FA U+1F1FF', '2018-07-21 01:41:03', '2021-12-11 19:15:40', 1, 'Q265'),
(237, 'Vanuatu', 'VUT', '548', 'VU', '678', 'Port Vila', 'VUV', 'Vanuatu vatu', 'VT', '.vu', 'Vanuatu', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Efate\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"VUT\",\"tzName\":\"Vanuatu Time\"}]', '{\"kr\":\"바누아투\",\"br\":\"Vanuatu\",\"pt\":\"Vanuatu\",\"nl\":\"Vanuatu\",\"hr\":\"Vanuatu\",\"fa\":\"وانواتو\",\"de\":\"Vanuatu\",\"es\":\"Vanuatu\",\"fr\":\"Vanuatu\",\"ja\":\"バヌアツ\",\"it\":\"Vanuatu\",\"cn\":\"瓦努阿图\"}', '-16.00000000', '167.00000000', '🇻🇺', 'U+1F1FB U+1F1FA', '2018-07-21 01:41:03', '2021-12-11 19:15:47', 1, 'Q686'),
(238, 'Vatican City State (Holy See)', 'VAT', '336', 'VA', '379', 'Vatican City', 'EUR', 'Euro', '€', '.va', 'Vaticano', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Vatican\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"바티칸 시국\",\"br\":\"Vaticano\",\"pt\":\"Vaticano\",\"nl\":\"Heilige Stoel\",\"hr\":\"Sveta Stolica\",\"fa\":\"سریر مقدس\",\"de\":\"Heiliger Stuhl\",\"es\":\"Santa Sede\",\"fr\":\"voir Saint\",\"ja\":\"聖座\",\"it\":\"Santa Sede\",\"cn\":\"梵蒂冈\"}', '41.90000000', '12.45000000', '🇻🇦', 'U+1F1FB U+1F1E6', '2018-07-21 01:41:03', '2021-12-11 19:02:24', 1, 'Q237'),
(239, 'Venezuela', 'VEN', '862', 'VE', '58', 'Caracas', 'VEF', 'Bolívar', 'Bs', '.ve', 'Venezuela', 'Americas', 'South America', '[{\"zoneName\":\"America/Caracas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"VET\",\"tzName\":\"Venezuelan Standard Time\"}]', '{\"kr\":\"베네수엘라\",\"br\":\"Venezuela\",\"pt\":\"Venezuela\",\"nl\":\"Venezuela\",\"hr\":\"Venezuela\",\"fa\":\"ونزوئلا\",\"de\":\"Venezuela\",\"es\":\"Venezuela\",\"fr\":\"Venezuela\",\"ja\":\"ベネズエラ・ボリバル共和国\",\"it\":\"Venezuela\",\"cn\":\"委内瑞拉\"}', '8.00000000', '-66.00000000', '🇻🇪', 'U+1F1FB U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:16:04', 1, 'Q717'),
(240, 'Vietnam', 'VNM', '704', 'VN', '84', 'Hanoi', 'VND', 'Vietnamese đồng', '₫', '.vn', 'Việt Nam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Ho_Chi_Minh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"베트남\",\"br\":\"Vietnã\",\"pt\":\"Vietname\",\"nl\":\"Vietnam\",\"hr\":\"Vijetnam\",\"fa\":\"ویتنام\",\"de\":\"Vietnam\",\"es\":\"Vietnam\",\"fr\":\"Viêt Nam\",\"ja\":\"ベトナム\",\"it\":\"Vietnam\",\"cn\":\"越南\"}', '16.16666666', '107.83333333', '🇻🇳', 'U+1F1FB U+1F1F3', '2018-07-21 01:41:03', '2021-12-11 19:16:14', 1, 'Q881'),
(241, 'Virgin Islands (British)', 'VGB', '092', 'VG', '+1-284', 'Road Town', 'USD', 'United States dollar', '$', '.vg', 'British Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Tortola\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"영국령 버진아일랜드\",\"br\":\"Ilhas Virgens Britânicas\",\"pt\":\"Ilhas Virgens Britânicas\",\"nl\":\"Britse Maagdeneilanden\",\"hr\":\"Britanski Djevičanski Otoci\",\"fa\":\"جزایر ویرجین بریتانیا\",\"de\":\"Britische Jungferninseln\",\"es\":\"Islas Vírgenes del Reino Unido\",\"fr\":\"Îles Vierges britanniques\",\"ja\":\"イギリス領ヴァージン諸島\",\"it\":\"Isole Vergini Britanniche\",\"cn\":\"圣文森特和格林纳丁斯\"}', '18.43138300', '-64.62305000', '🇻🇬', 'U+1F1FB U+1F1EC', '2018-07-21 01:41:03', '2021-12-11 19:06:33', 1, NULL),
(242, 'Virgin Islands (US)', 'VIR', '850', 'VI', '+1-340', 'Charlotte Amalie', 'USD', 'United States dollar', '$', '.vi', 'United States Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Thomas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"미국령 버진아일랜드\",\"br\":\"Ilhas Virgens Americanas\",\"pt\":\"Ilhas Virgens Americanas\",\"nl\":\"Verenigde Staten Maagdeneilanden\",\"fa\":\"جزایر ویرجین آمریکا\",\"de\":\"Amerikanische Jungferninseln\",\"es\":\"Islas Vírgenes de los Estados Unidos\",\"fr\":\"Îles Vierges des États-Unis\",\"ja\":\"アメリカ領ヴァージン諸島\",\"it\":\"Isole Vergini americane\",\"cn\":\"维尔京群岛（美国）\"}', '18.34000000', '-64.93000000', '🇻🇮', 'U+1F1FB U+1F1EE', '2018-07-21 01:41:03', '2021-12-11 19:16:20', 1, NULL),
(243, 'Wallis And Futuna Islands', 'WLF', '876', 'WF', '681', 'Mata Utu', 'XPF', 'CFP franc', '₣', '.wf', 'Wallis et Futuna', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Wallis\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WFT\",\"tzName\":\"Wallis & Futuna Time\"}]', '{\"kr\":\"왈리스 푸투나\",\"br\":\"Wallis e Futuna\",\"pt\":\"Wallis e Futuna\",\"nl\":\"Wallis en Futuna\",\"hr\":\"Wallis i Fortuna\",\"fa\":\"والیس و فوتونا\",\"de\":\"Wallis und Futuna\",\"es\":\"Wallis y Futuna\",\"fr\":\"Wallis-et-Futuna\",\"ja\":\"ウォリス・フツナ\",\"it\":\"Wallis e Futuna\",\"cn\":\"瓦利斯群岛和富图纳群岛\"}', '-13.30000000', '-176.20000000', '🇼🇫', 'U+1F1FC U+1F1EB', '2018-07-21 01:41:03', '2021-12-11 19:16:25', 1, NULL),
(244, 'Western Sahara', 'ESH', '732', 'EH', '212', 'El-Aaiun', 'MAD', 'Moroccan Dirham', 'MAD', '.eh', 'الصحراء الغربية', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/El_Aaiun\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"서사하라\",\"br\":\"Saara Ocidental\",\"pt\":\"Saara Ocidental\",\"nl\":\"Westelijke Sahara\",\"hr\":\"Zapadna Sahara\",\"fa\":\"جمهوری دموکراتیک عربی صحرا\",\"de\":\"Westsahara\",\"es\":\"Sahara Occidental\",\"fr\":\"Sahara Occidental\",\"ja\":\"西サハラ\",\"it\":\"Sahara Occidentale\",\"cn\":\"西撒哈拉\"}', '24.50000000', '-13.00000000', '🇪🇭', 'U+1F1EA U+1F1ED', '2018-07-21 01:41:03', '2021-12-11 19:16:40', 1, NULL),
(245, 'Yemen', 'YEM', '887', 'YE', '967', 'Sanaa', 'YER', 'Yemeni rial', '﷼', '.ye', 'اليَمَن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Aden\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"예멘\",\"br\":\"Iêmen\",\"pt\":\"Iémen\",\"nl\":\"Jemen\",\"hr\":\"Jemen\",\"fa\":\"یمن\",\"de\":\"Jemen\",\"es\":\"Yemen\",\"fr\":\"Yémen\",\"ja\":\"イエメン\",\"it\":\"Yemen\",\"cn\":\"也门\"}', '15.00000000', '48.00000000', '🇾🇪', 'U+1F1FE U+1F1EA', '2018-07-21 01:41:03', '2021-12-11 19:16:48', 1, 'Q805'),
(246, 'Zambia', 'ZMB', '894', 'ZM', '260', 'Lusaka', 'ZMW', 'Zambian kwacha', 'ZK', '.zm', 'Zambia', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Lusaka\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"잠비아\",\"br\":\"Zâmbia\",\"pt\":\"Zâmbia\",\"nl\":\"Zambia\",\"hr\":\"Zambija\",\"fa\":\"زامبیا\",\"de\":\"Sambia\",\"es\":\"Zambia\",\"fr\":\"Zambie\",\"ja\":\"ザンビア\",\"it\":\"Zambia\",\"cn\":\"赞比亚\"}', '-15.00000000', '30.00000000', '🇿🇲', 'U+1F1FF U+1F1F2', '2018-07-21 01:41:03', '2021-12-11 19:16:53', 1, 'Q953'),
(247, 'Zimbabwe', 'ZWE', '716', 'ZW', '263', 'Harare', 'ZWL', 'Zimbabwe Dollar', '$', '.zw', 'Zimbabwe', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Harare\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"짐바브웨\",\"br\":\"Zimbabwe\",\"pt\":\"Zimbabué\",\"nl\":\"Zimbabwe\",\"hr\":\"Zimbabve\",\"fa\":\"زیمباوه\",\"de\":\"Simbabwe\",\"es\":\"Zimbabue\",\"fr\":\"Zimbabwe\",\"ja\":\"ジンバブエ\",\"it\":\"Zimbabwe\",\"cn\":\"津巴布韦\"}', '-20.00000000', '30.00000000', '🇿🇼', 'U+1F1FF U+1F1FC', '2018-07-21 01:41:03', '2021-12-11 19:17:10', 1, 'Q954'),
(248, 'Kosovo', 'XKX', '926', 'XK', '383', 'Pristina', 'EUR', 'Euro', '€', '.xk', 'Republika e Kosovës', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"코소보\",\"cn\":\"科索沃\"}', '42.56129090', '20.34030350', '🇽🇰', 'U+1F1FD U+1F1F0', '2020-08-15 21:03:50', '2021-12-11 18:56:38', 1, 'Q1246'),
(249, 'Curaçao', 'CUW', '531', 'CW', '599', 'Willemstad', 'ANG', 'Netherlands Antillean guilder', 'ƒ', '.cw', 'Curaçao', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Curacao\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"퀴라소\",\"br\":\"Curaçao\",\"pt\":\"Curaçao\",\"nl\":\"Curaçao\",\"fa\":\"کوراسائو\",\"de\":\"Curaçao\",\"fr\":\"Curaçao\",\"it\":\"Curaçao\",\"cn\":\"库拉索\"}', '12.11666700', '-68.93333300', '🇨🇼', 'U+1F1E8 U+1F1FC', '2020-10-25 20:24:20', '2021-12-11 18:31:45', 1, 'Q25279'),
(250, 'Sint Maarten (Dutch part)', 'SXM', '534', 'SX', '1721', 'Philipsburg', 'ANG', 'Netherlands Antillean guilder', 'ƒ', '.sx', 'Sint Maarten', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"신트마르턴\",\"br\":\"Sint Maarten\",\"pt\":\"São Martinho\",\"nl\":\"Sint Maarten\",\"fa\":\"سینت مارتن\",\"de\":\"Sint Maarten (niederl. Teil)\",\"fr\":\"Saint Martin (partie néerlandaise)\",\"it\":\"Saint Martin (parte olandese)\",\"cn\":\"圣马丁岛（荷兰部分）\"}', '18.03333300', '-63.05000000', '🇸🇽', 'U+1F1F8 U+1F1FD', '2020-12-05 18:33:39', '2021-12-11 19:11:24', 1, 'Q26273');

-- --------------------------------------------------------
--
-- Table structure for table `custom_notifications`
--

CREATE TABLE `custom_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `delivery_boy_notifications`
--

CREATE TABLE `delivery_boy_notifications` (
  `id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`) VALUES
(1, '45', '45', '0');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`) VALUES
(1, 10, 37),
(2, 10, 35),
(3, 15, 30),
(4, 15, 21),
(5, 15, 18),
(6, 15, 41),
(7, 15, 11),
(8, 15, 48),
(9, 15, 19),
(10, 15, 20),
(11, 15, 15),
(12, 15, 9),
(13, 15, 24),
(14, 1, 16),
(15, 1, 14),
(16, 1, 19),
(17, 7, 21),
(18, 7, 20),
(19, 7, 17),
(20, 7, 47),
(21, 7, 26),
(23, 7, 62),
(25, 2, 47),
(27, 1, 26),
(29, 7, 30),
(30, 7, 25),
(31, 7, 63);

-- --------------------------------------------------------

--
-- Table structure for table `fund_transfers`
--

CREATE TABLE `fund_transfers` (
  `id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `opening_balance` double NOT NULL,
  `closing_balance` double NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_transfers`
--

INSERT INTO `fund_transfers` (`id`, `delivery_boy_id`, `opening_balance`, `closing_balance`, `amount`, `status`, `message`, `date_created`) VALUES
(1, 13, 9418.3, 8918.3, 500, 'success', 'the product', '2022-03-17 12:42:05'),
(2, 3, 3166.1040000000003, 166.104, 3000, 'success', 'rtgtr', '2022-04-25 05:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'delivery_boy', 'Delivery Boys'),
(4, 'seller', 'Sellers');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `is_rtl`, `created_on`) VALUES
(1, 'english', 'en', 0, '2021-02-11 05:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_directory` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `seller_id`, `title`, `name`, `extension`, `type`, `sub_directory`, `size`, `date_created`) VALUES
(1, 0, 'eshop-logo-full', 'eshop-logo-full.png', 'png', 'image', 'uploads/media/2021/', '32358', '2022-02-03 06:32:47'),
(2, 0, 'favicon 64', 'eshop-favicon.png', 'png', 'image', 'uploads/media/2021/', '14131', '2021-03-31 06:34:15'),
(3, 0, 'fashion1', 'fashion1.png', 'png', 'image', 'uploads/media/2021/', '9656', '2021-12-28 10:11:38'),
(15, 0, '31drcwxxNJL', '31drcwxxNJL.jpg', 'jpg', 'image', 'uploads/media/2021/', '14735', '2021-12-29 07:48:33'),
(16, 0, '51GNDwvogcL__SL1080_', '51GNDwvogcL__SL1080_.jpg', 'jpg', 'image', 'uploads/media/2021/', '41472', '2021-12-29 07:48:33'),
(17, 0, 'ac_2', 'ac_2.jpg', 'jpg', 'image', 'uploads/media/2021/', '3045', '2021-12-29 07:48:33'),
(18, 0, 'ac_3', 'ac_3.jpg', 'jpg', 'image', 'uploads/media/2021/', '3419', '2021-12-29 07:48:33'),
(19, 0, 'ac', 'ac.jpg', 'jpg', 'image', 'uploads/media/2021/', '3228', '2021-12-29 07:48:33'),
(20, 0, 'ccTV', 'ccTV.jpg', 'jpg', 'image', 'uploads/media/2021/', '1893', '2021-12-29 07:48:33'),
(21, 0, 'dress', 'dress.png', 'png', 'image', 'uploads/media/2021/', '361854', '2021-12-29 07:48:33'),
(22, 0, 'Electronics', 'Electronics.png', 'png', 'image', 'uploads/media/2021/', '22476', '2021-12-29 07:48:34'),
(23, 0, 'il_794xN_2370234822_f8td', 'il_794xN_2370234822_f8td.jpg', 'jpg', 'image', 'uploads/media/2021/', '126105', '2021-12-29 07:48:48'),
(24, 0, 'il_794xN_2697185910_2oy6', 'il_794xN_2697185910_2oy6.jpg', 'jpg', 'image', 'uploads/media/2021/', '130702', '2021-12-29 07:48:48'),
(25, 0, 'il_794xN_2697206720_3zvc', 'il_794xN_2697206720_3zvc.jpg', 'jpg', 'image', 'uploads/media/2021/', '113846', '2021-12-29 07:48:48'),
(26, 0, 'il_794xN_2744865161_9ar7', 'il_794xN_2744865161_9ar7.jpg', 'jpg', 'image', 'uploads/media/2021/', '127695', '2021-12-29 07:48:49'),
(27, 0, 'il_794xN_2998522136_de9y', 'il_794xN_2998522136_de9y.jpg', 'jpg', 'image', 'uploads/media/2021/', '57376', '2021-12-29 07:48:49'),
(28, 0, 'il_794xN_2998522784_30im', 'il_794xN_2998522784_30im.jpg', 'jpg', 'image', 'uploads/media/2021/', '110467', '2021-12-29 07:48:49'),
(29, 0, 'il_1140xN_771287191_rbrb', 'il_1140xN_771287191_rbrb.jpg', 'jpg', 'image', 'uploads/media/2021/', '116356', '2021-12-29 07:48:49'),
(30, 0, 'il_1140xN_2352777240_5grn', 'il_1140xN_2352777240_5grn.jpg', 'jpg', 'image', 'uploads/media/2021/', '100793', '2021-12-29 07:48:50'),
(31, 0, 'il_1140xN_2725790893_3xzs', 'il_1140xN_2725790893_3xzs.jpg', 'jpg', 'image', 'uploads/media/2021/', '78242', '2021-12-29 07:48:51'),
(32, 0, 'il_1140xN_2725791245_jhxd', 'il_1140xN_2725791245_jhxd.jpg', 'jpg', 'image', 'uploads/media/2021/', '95755', '2021-12-29 07:48:51'),
(33, 0, 'iphone', 'iphone.jpg', 'jpg', 'image', 'uploads/media/2021/', '105976', '2021-12-29 07:48:52'),
(34, 0, 'iphone2', 'iphone2.jpg', 'jpg', 'image', 'uploads/media/2021/', '10119', '2021-12-29 07:48:52'),
(35, 0, 'mans_fashion', 'mans_fashion.jpg', 'jpg', 'image', 'uploads/media/2021/', '7627', '2021-12-29 07:49:35'),
(36, 0, 'mask', 'mask.png', 'png', 'image', 'uploads/media/2021/', '93163', '2021-12-29 07:49:35'),
(37, 0, 'mens_fashion', 'mens_fashion.png', 'png', 'image', 'uploads/media/2021/', '115059', '2021-12-29 07:49:35'),
(38, 0, 'mobile_2', 'mobile_2.jpeg', 'jpeg', 'image', 'uploads/media/2021/', '16540', '2021-12-29 07:49:35'),
(39, 0, 'mobile_3', 'mobile_3.jpeg', 'jpeg', 'image', 'uploads/media/2021/', '20953', '2021-12-29 07:49:35'),
(40, 0, 'mobile_4', 'mobile_4.jpeg', 'jpeg', 'image', 'uploads/media/2021/', '10086', '2021-12-29 07:49:35'),
(41, 0, 'mobile_5', 'mobile_5.jpeg', 'jpeg', 'image', 'uploads/media/2021/', '5486', '2021-12-29 07:49:35'),
(42, 0, 'mobile_6', 'mobile_6.jpg', 'jpg', 'image', 'uploads/media/2021/', '12355', '2021-12-29 07:49:36'),
(43, 0, 'mobile', 'mobile.jpeg', 'jpeg', 'image', 'uploads/media/2021/', '23341', '2021-12-29 07:49:36'),
(44, 0, 'potato_a', 'potato_a.png', 'png', 'image', 'uploads/media/2021/', '243981', '2021-12-29 07:49:36'),
(45, 0, 'potato_b', 'potato_b.png', 'png', 'image', 'uploads/media/2021/', '238912', '2021-12-29 07:49:36'),
(46, 0, 'potato_c', 'potato_c.png', 'png', 'image', 'uploads/media/2021/', '283625', '2021-12-29 07:49:37'),
(47, 0, 'Smartphones1', 'Smartphones1.png', 'png', 'image', 'uploads/media/2021/', '80265', '2021-12-29 07:49:52'),
(48, 0, 'vagi_bitter_1_(1)', 'vagi_bitter_1_(1).png', 'png', 'image', 'uploads/media/2021/', '266688', '2021-12-29 07:49:52'),
(49, 0, 'vagi_bitter_1', 'vagi_bitter_1.png', 'png', 'image', 'uploads/media/2021/', '266688', '2021-12-29 07:49:52'),
(50, 0, 'vagi_bitter_2', 'vagi_bitter_2.png', 'png', 'image', 'uploads/media/2021/', '318533', '2021-12-29 07:49:52'),
(51, 0, 'vagi_carrots_6', 'vagi_carrots_6.png', 'png', 'image', 'uploads/media/2021/', '247672', '2021-12-29 07:49:53'),
(52, 0, 'Vagi_tomatoes_1', 'Vagi_tomatoes_1.png', 'png', 'image', 'uploads/media/2021/', '255868', '2021-12-29 07:49:53'),
(53, 0, 'vegetables', 'vegetables.png', 'png', 'image', 'uploads/media/2021/', '27512', '2021-12-29 07:49:53'),
(54, 0, 'watch', 'watch.jpg', 'jpg', 'image', 'uploads/media/2021/', '21351', '2021-12-29 07:49:53'),
(55, 0, 'women_fashion_(1)', 'women_fashion_(1).png', 'png', 'image', 'uploads/media/2021/', '115924', '2021-12-29 07:49:53'),
(56, 0, '61VXloEmP1L__UL1262_', '61VXloEmP1L__UL1262_.jpg', 'jpg', 'image', 'uploads/media/2021/', '97426', '2021-12-31 11:42:44'),
(57, 0, '61VXloEmP1L__UL1262_1', '61VXloEmP1L__UL1262_1.jpg', 'jpg', 'image', 'uploads/media/2021/', '97426', '2021-12-31 11:42:56'),
(58, 0, '61Sgn8YNKRS__UL1387_', '61Sgn8YNKRS__UL1387_.jpg', 'jpg', 'image', 'uploads/media/2021/', '121089', '2021-12-31 11:43:53'),
(59, 0, '41nvyksD5lL', '41nvyksD5lL.jpg', 'jpg', 'image', 'uploads/media/2021/', '25074', '2021-12-31 11:44:00'),
(60, 0, '5141xSmPv8L__UL1100_', '5141xSmPv8L__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '41923', '2021-12-31 11:53:02'),
(61, 0, '51YuwHpqBUL__UL1100_', '51YuwHpqBUL__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '55763', '2021-12-31 11:53:02'),
(62, 0, '51y-FZ6kSAL__UL1100_', '51y-FZ6kSAL__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '51967', '2021-12-31 11:53:02'),
(63, 0, '51T91MFX0mL__UL1100_', '51T91MFX0mL__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '49175', '2021-12-31 11:53:03'),
(64, 0, '51Q5ZCo05NL__UL1100_', '51Q5ZCo05NL__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '53946', '2021-12-31 11:53:03'),
(65, 0, '51pYbcApozL__UL1100_', '51pYbcApozL__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '39496', '2021-12-31 11:53:03'),
(66, 0, '51n6T4v0c-L__UL1100_', '51n6T4v0c-L__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '41094', '2021-12-31 11:53:04'),
(67, 0, '51Lv37fiwTL__UL1100_', '51Lv37fiwTL__UL1100_.jpg', 'jpg', 'image', 'uploads/media/2021/', '52000', '2021-12-31 11:53:04'),
(69, 0, '51GNDwvogcL__SL1080_', '51GNDwvogcL__SL1080_.jpg', 'jpg', 'image', 'uploads/media/2022/', '41472', '2022-01-31 12:08:04'),
(70, 0, '51Ptg9X9mdL', '51Ptg9X9mdL.jpg', 'jpg', 'image', 'uploads/media/2022/', '34337', '2022-01-31 12:08:05'),
(71, 0, '61DWugD6jnL__SL1252_', '61DWugD6jnL__SL1252_.jpg', 'jpg', 'image', 'uploads/media/2022/', '90269', '2022-01-31 12:08:05'),
(72, 0, '61-qLpDnJGL__SL1280_', '61-qLpDnJGL__SL1280_.jpg', 'jpg', 'image', 'uploads/media/2022/', '76197', '2022-01-31 12:08:06'),
(73, 0, '61DWugD6jnL__SL1252_1', '61DWugD6jnL__SL1252_1.jpg', 'jpg', 'image', 'uploads/media/2022/', '90269', '2022-02-01 03:40:47'),
(74, 0, 'all_in_one_place_7_1180x', 'all_in_one_place_7_1180x.gif', 'gif', 'image', 'uploads/media/2022/', '66.42', '2022-02-01 07:18:55'),
(83, 0, '7', '7.png', 'png', 'image', 'uploads/media/2022/', '150091', '2022-02-03 07:18:38'),
(84, 0, '71', '71.png', 'png', 'image', 'uploads/media/2022/', '150091', '2022-02-03 07:19:02'),
(85, 0, '72', '72.png', 'png', 'image', 'uploads/media/2022/', '150091', '2022-02-03 07:19:52'),
(86, 0, 'Screenshot_20220119-102843', 'Screenshot_20220119-102843.jpg', 'jpg', 'image', 'uploads/media/2022/', '43060', '2022-02-03 07:44:53'),
(87, 0, 'Screenshot_20220119-1028431', 'Screenshot_20220119-1028431.jpg', 'jpg', 'image', 'uploads/media/2022/', '43060', '2022-02-03 07:45:08'),
(88, 0, 'Screenshot_20220119-1028432', 'Screenshot_20220119-1028432.jpg', 'jpg', 'image', 'uploads/media/2022/', '43060', '2022-02-03 07:46:05'),
(89, 0, 'Screenshot_20220119-1028433', 'Screenshot_20220119-1028433.jpg', 'jpg', 'image', 'uploads/media/2022/', '43060', '2022-02-03 07:47:31'),
(90, 0, 'Screenshot_20220119-1028434', 'Screenshot_20220119-1028434.jpg', 'jpg', 'image', 'uploads/media/2022/', '43060', '2022-02-03 07:50:13'),
(91, 0, 'image_2022_02_03T05_06_15_026Z', 'image_2022_02_03T05_06_15_026Z.png', 'png', 'image', 'uploads/media/2022/', '217540', '2022-02-03 07:57:11'),
(92, 0, 'image_2022_02_03T05_06_15_026Z1', 'image_2022_02_03T05_06_15_026Z1.png', 'png', 'image', 'uploads/media/2022/', '217540', '2022-02-03 07:59:50'),
(93, 0, 'image_2022_02_03T05_06_15_026Z2', 'image_2022_02_03T05_06_15_026Z2.png', 'png', 'image', 'uploads/media/2022/', '217540', '2022-02-03 07:59:56'),
(94, 0, 'image_2022_02_03T05_06_15_026Z3', 'image_2022_02_03T05_06_15_026Z3.png', 'png', 'image', 'uploads/media/2022/', '217540', '2022-02-03 08:00:14'),
(95, 0, 'image_2022_02_03T05_06_15_026Z4', 'image_2022_02_03T05_06_15_026Z4.png', 'png', 'image', 'uploads/media/2022/', '217540', '2022-02-03 08:00:30'),
(96, 0, 'image', 'image.png', 'png', 'image', 'uploads/media/2022/', '43082', '2022-02-03 08:00:40'),
(97, 0, 'image1', 'image1.png', 'png', 'image', 'uploads/media/2022/', '43082', '2022-02-03 08:02:14'),
(98, 0, 'Screenshot_20220119-1028435', 'Screenshot_20220119-1028435.jpg', 'jpg', 'image', 'uploads/media/2022/', '43060', '2022-02-03 08:07:09'),
(99, 0, 'Screenshot_20220119-1028436', 'Screenshot_20220119-1028436.jpg', 'jpg', 'image', 'uploads/media/2022/', '43060', '2022-02-03 08:10:20'),
(100, 0, 'Screenshot_20220117-141822_One_UI_Home', 'Screenshot_20220117-141822_One_UI_Home.jpg', 'jpg', 'image', 'uploads/media/2022/', '56938', '2022-02-03 08:15:35'),
(101, 0, 'Screenshot_20220117-141822_One_UI_Home1', 'Screenshot_20220117-141822_One_UI_Home1.jpg', 'jpg', 'image', 'uploads/media/2022/', '56938', '2022-02-03 08:15:56'),
(102, 0, 'Screenshot_20220117-141822_One_UI_Home2', 'Screenshot_20220117-141822_One_UI_Home2.jpg', 'jpg', 'image', 'uploads/media/2022/', '56938', '2022-02-03 08:16:41'),
(103, 0, 'image2', 'image2.png', 'png', 'image', 'uploads/media/2022/', '43082', '2022-02-03 08:24:04'),
(104, 0, 'Screenshot_20220117-141822_One_UI_Home3', 'Screenshot_20220117-141822_One_UI_Home3.jpg', 'jpg', 'image', 'uploads/media/2022/', '56938', '2022-02-03 10:05:52'),
(105, 0, '20220203_162429', '20220203_162429.mp4', 'mp4', 'video', 'uploads/media/2022/', '4378.45', '2022-02-03 10:55:33'),
(106, 0, 'VID-20220122-WA0016', 'VID-20220122-WA0016.mp4', 'mp4', 'video', 'uploads/media/2022/', '161.63', '2022-02-03 10:55:53'),
(107, 0, 'VID-20220122-WA0012', 'VID-20220122-WA0012.mp4', 'mp4', 'video', 'uploads/media/2022/', '58.06', '2022-02-03 10:56:03'),
(108, 0, '31drcwxxNJL', '31drcwxxNJL.jpg', 'jpg', 'image', 'uploads/media/2022/', '14735', '2022-02-11 05:24:22'),
(109, 0, '51GNDwvogcL__SL1080_1', '51GNDwvogcL__SL1080_1.jpg', 'jpg', 'image', 'uploads/media/2022/', '41472', '2022-02-11 05:24:22'),
(110, 0, 'ac_2', 'ac_2.jpg', 'jpg', 'image', 'uploads/media/2022/', '3045', '2022-03-04 10:38:06'),
(111, 0, 'ac_3', 'ac_3.jpg', 'jpg', 'image', 'uploads/media/2022/', '3419', '2022-03-04 10:38:06'),
(112, 0, 'silver', 'silver.jpg', 'jpg', 'image', 'uploads/media/2022/', '36299', '2022-03-15 09:35:53'),
(113, 0, 'indianclassicalart', 'indianclassicalart.jpg', 'jpg', 'image', 'uploads/media/2022/', '9562', '2022-03-16 05:18:59'),
(114, 0, 'Screenshot_from_2022-03-12_10-54-45', 'Screenshot_from_2022-03-12_10-54-45.png', 'png', 'image', 'uploads/media/2022/', '1710721', '2022-03-17 04:53:11'),
(115, 0, 'painting_art', 'painting_art.jpg', 'jpg', 'image', 'uploads/media/2022/', '174696', '2022-03-17 05:15:11'),
(116, 0, 'badminton', 'badminton.png', 'png', 'image', 'uploads/media/2022/', '284733', '2022-03-17 05:36:18'),
(117, 0, 'milkyway', 'milkyway.jpg', 'jpg', 'image', 'uploads/media/2022/', '143411', '2022-03-18 11:53:02'),
(118, 0, 'Screenshot_20220329-120946', 'Screenshot_20220329-120946.jpg', 'jpg', 'image', 'uploads/media/2022/', '58861', '2022-03-29 11:44:31'),
(119, 0, 'Screenshot_20220412-162049', 'Screenshot_20220412-162049.jpg', 'jpg', 'image', 'uploads/media/2022/', '104758', '2022-04-18 05:20:03'),
(120, 0, 'Screenshot_20220412-1620491', 'Screenshot_20220412-1620491.jpg', 'jpg', 'image', 'uploads/media/2022/', '104758', '2022-04-18 05:20:06'),
(121, 0, 'Screenshot_20220412-155037', 'Screenshot_20220412-155037.jpg', 'jpg', 'image', 'uploads/media/2022/', '117001', '2022-04-18 05:20:35'),
(122, 0, 'Screenshot_20220412-160849', 'Screenshot_20220412-160849.jpg', 'jpg', 'image', 'uploads/media/2022/', '119606', '2022-04-18 05:22:34'),
(123, 0, 'Screenshot_20220412-1608491', 'Screenshot_20220412-1608491.jpg', 'jpg', 'image', 'uploads/media/2022/', '119606', '2022-04-18 05:23:55'),
(124, 0, '31drcwxxNJL1', '31drcwxxNJL1.jpg', 'jpg', 'image', 'uploads/media/2022/', '14735', '2022-04-18 05:31:19'),
(125, 0, '51GNDwvogcL__SL1080_2', '51GNDwvogcL__SL1080_2.jpg', 'jpg', 'image', 'uploads/media/2022/', '41472', '2022-04-18 05:31:19'),
(126, 0, '51Ptg9X9mdL1', '51Ptg9X9mdL1.jpg', 'jpg', 'image', 'uploads/media/2022/', '34337', '2022-04-18 05:31:20'),
(127, 0, '61DWugD6jnL__SL1252_2', '61DWugD6jnL__SL1252_2.jpg', 'jpg', 'image', 'uploads/media/2022/', '90269', '2022-04-18 05:31:20'),
(128, 0, 'fashion', 'fashion.png', 'png', 'image', 'uploads/media/2022/', '9656', '2022-04-18 05:38:29'),
(129, 2, 'fashion1', 'fashion1.png', 'png', 'image', 'uploads/media/2022/', '9656', '2022-04-18 05:43:38'),
(130, 0, 'new_Slider-3-min', 'new_Slider-3-min.jpg', 'jpg', 'image', 'uploads/media/2022/', '123708', '2022-04-18 12:09:28'),
(131, 0, 'Winter_Slider-min', 'Winter_Slider-min.jpg', 'jpg', 'image', 'uploads/media/2022/', '319556', '2022-04-18 12:09:28'),
(132, 0, 'new_Slider-2', 'new_Slider-2.jpg', 'jpg', 'image', 'uploads/media/2022/', '94398', '2022-04-18 12:09:29'),
(133, 0, 'Screenshot_from_2022-03-12_10-48-32', 'Screenshot_from_2022-03-12_10-48-32.png', 'png', 'image', 'uploads/media/2022/', '1715857', '2022-04-20 05:14:40'),
(134, 2, 'Screenshot_20220419-175923', 'Screenshot_20220419-175923.png', 'png', 'image', 'uploads/media/2022/', '134762', '2022-04-21 05:25:43'),
(135, 2, 'Screenshot_20220419-1759231', 'Screenshot_20220419-1759231.png', 'png', 'image', 'uploads/media/2022/', '134762', '2022-04-21 05:25:45'),
(136, 2, 'Screenshot_20220415-164023', 'Screenshot_20220415-164023.jpg', 'jpg', 'image', 'uploads/media/2022/', '101876', '2022-04-22 04:46:43'),
(137, 0, 'banner_4', 'banner_4.jpg', 'jpg', 'image', 'uploads/media/2022/', '187328', '2022-04-22 05:16:48'),
(138, 0, 'banner_1', 'banner_1.png', 'png', 'image', 'uploads/media/2022/', '200262', '2022-04-22 05:20:04'),
(139, 0, 'banner_2', 'banner_2.png', 'png', 'image', 'uploads/media/2022/', '193802', '2022-04-22 05:20:16'),
(140, 0, 'banner_3', 'banner_3.png', 'png', 'image', 'uploads/media/2022/', '250805', '2022-04-22 05:20:27'),
(141, 4, 'Screenshot_٢٠٢٢٠٤٢٦-٠٣٣٠١٣_Chrome', 'Screenshot_٢٠٢٢٠٤٢٦-٠٣٣٠١٣_Chrome.jpg', 'jpg', 'image', 'uploads/media/2022/', '246608', '2022-04-26 12:15:41'),
(142, 4, 'Screenshot_٢٠٢٢٠٤٢٦-٠٣٣٠١٣_Chrome1', 'Screenshot_٢٠٢٢٠٤٢٦-٠٣٣٠١٣_Chrome1.jpg', 'jpg', 'image', 'uploads/media/2022/', '246608', '2022-04-26 12:16:26'),
(143, 4, 'Screenshot_٢٠٢٢٠٤٢٦-٠٣٣٠١٣_Chrome2', 'Screenshot_٢٠٢٢٠٤٢٦-٠٣٣٠١٣_Chrome2.jpg', 'jpg', 'image', 'uploads/media/2022/', '246608', '2022-04-26 12:16:38'),
(144, 2, 'Screenshot_20220426-150442', 'Screenshot_20220426-150442.jpg', 'jpg', 'image', 'uploads/media/2022/', '78509', '2022-04-28 04:29:59'),
(145, 2, 'Screenshot_20220412-161611', 'Screenshot_20220412-161611.jpg', 'jpg', 'image', 'uploads/media/2022/', '104986', '2022-04-28 04:32:06'),
(146, 2, 'Screenshot_20220426-150450', 'Screenshot_20220426-150450.jpg', 'jpg', 'image', 'uploads/media/2022/', '82525', '2022-04-28 04:35:47'),
(147, 2, 'Screenshot_20220412-1550371', 'Screenshot_20220412-1550371.jpg', 'jpg', 'image', 'uploads/media/2022/', '117001', '2022-04-28 04:36:58'),
(148, 2, 'Screenshot_20220426-1504421', 'Screenshot_20220426-1504421.jpg', 'jpg', 'image', 'uploads/media/2022/', '78509', '2022-04-28 04:40:47'),
(149, 2, 'Screenshot_20220426-1504422', 'Screenshot_20220426-1504422.jpg', 'jpg', 'image', 'uploads/media/2022/', '78509', '2022-04-28 04:42:23'),
(150, 2, 'Screenshot_20220425-162924', 'Screenshot_20220425-162924.jpg', 'jpg', 'image', 'uploads/media/2022/', '102098', '2022-04-28 04:44:22'),
(151, 2, 'Screenshot_20220426-1504423', 'Screenshot_20220426-1504423.jpg', 'jpg', 'image', 'uploads/media/2022/', '78509', '2022-04-28 04:45:44'),
(152, 2, 'Screenshot_20220412-1616111', 'Screenshot_20220412-1616111.jpg', 'jpg', 'image', 'uploads/media/2022/', '104986', '2022-04-28 04:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `type`, `type_id`, `image`, `date_sent`) VALUES
(5, 'test', 'test', 'default', 0, NULL, '2022-03-29 06:19:49'),
(2, 'test', 'test', 'default', 0, NULL, '2022-02-28 09:10:38'),
(3, 'test', 'test', 'default', 0, NULL, '2022-02-28 10:29:36'),
(4, 'test', 'test', 'default', 0, NULL, '2022-02-28 10:50:59'),
(6, 'test', 'etst', 'categories', 3, NULL, '2022-03-29 06:20:25'),
(7, 'test', 'test', 'products', 58, NULL, '2022-03-29 06:32:09'),
(8, 'test', 'test', 'categories', 3, NULL, '2022-03-30 04:20:46'),
(9, 'test', 'test', 'categories', 3, NULL, '2022-03-30 04:22:21'),
(10, 'test', 'test', 'categories', 3, NULL, '2022-03-30 04:32:10'),
(11, 'test', 'test', 'categories', 3, NULL, '2022-03-30 04:32:23'),
(12, 'tt', 'tt', 'categories', 5, NULL, '2022-03-30 04:32:54'),
(13, 'jghwefhjkwafkhswahkjfsfjk', 'kjhjdfvadfjknvdajfkhvkljdefv;ledr', 'default', 0, NULL, '2022-03-30 04:33:46'),
(14, 'For customization, Reskin or installation service i am going to share a contact, his name is Ketan and he is leading our customi', 'For customization, Reskin or installation service i am going to share a contact, his name is Ketan and he is leading our customization and reskins department. Mr. Ketan Skype https://join.skype.com/invite/lR9hpWyzgblK', 'default', 0, NULL, '2022-03-30 04:36:04'),
(15, 'awaismansha1998', 'awaismansha1998', 'default', 0, NULL, '2022-03-30 04:44:48'),
(16, 'color: colors.primary,', 'color: colors.primary,', 'default', 0, NULL, '2022-03-30 05:06:03'),
(17, 'color: colors.primary,', 'color: colors.primary,', 'default', 0, NULL, '2022-03-30 05:06:55'),
(18, 'https://figzon.com/', 'https://figzon.com/', 'default', 0, NULL, '2022-03-30 05:10:33'),
(19, 'test', 'test', 'default', 0, NULL, '2022-03-30 06:59:30'),
(20, 'dvd', 'dsfvc', 'default', 0, NULL, '2022-03-30 07:04:49'),
(21, 'test', 'test', 'default', 0, 'uploads/media/2022/Screenshot_from_2022-03-12_10-54-45.png', '2022-03-30 07:05:59'),
(22, 'drfgf', 'sdv', 'default', 0, 'uploads/media/2022/Screenshot_from_2022-03-12_10-54-45.png', '2022-03-30 07:07:03'),
(23, 'rgrgdfgdfg', 'fgdfg', 'default', 0, 'uploads/media/2022/painting_art.jpg', '2022-03-30 07:07:37'),
(24, 'fgbff', 'fbf', 'default', 0, NULL, '2022-03-30 07:18:33'),
(25, 'dfgvdfv', 'dfdfdfgv', 'default', 0, NULL, '2022-03-30 07:34:03'),
(26, 'jykm', 'jkkmj', 'default', 0, NULL, '2022-03-30 07:42:48'),
(27, 'dsf', 'df', 'default', 0, NULL, '2022-03-30 07:51:19'),
(28, 'sdfc', 'sdcf', 'default', 0, NULL, '2022-03-30 09:42:09'),
(29, 'l;l', 'lll', 'default', 0, 'uploads/media/2022/painting_art.jpg', '2022-03-30 09:58:26'),
(30, 'utu', 'ujyt', 'default', 0, NULL, '2022-03-30 10:02:46'),
(31, 'rre', 'rere', 'default', 0, NULL, '2022-03-30 10:05:20'),
(32, 'kk', 'kk', 'products', 47, NULL, '2022-03-30 10:05:51'),
(33, 'gjng', 'cgyhghhj c hjghhghgh g hgchghcu hg', 'default', 0, NULL, '2022-03-30 10:08:50'),
(34, 'sddc', 'sdcd', 'categories', 5, NULL, '2022-03-30 10:09:07'),
(35, 'tfgb', 'tfrdgv', 'default', 0, NULL, '2022-03-30 10:31:39'),
(36, 'g', 'rdtfg', 'default', 0, NULL, '2022-03-30 10:39:54'),
(37, 'dfxfd', 'd', 'default', 0, NULL, '2022-03-30 10:43:23'),
(38, 'rtyh', 'rtyh', 'default', 0, NULL, '2022-03-30 11:15:21'),
(39, 'sdvs', 'sfcsd', 'categories', 3, NULL, '2022-03-30 11:15:48'),
(40, 'test', 'test', 'default', 0, 'uploads/media/2022/painting_art.jpg', '2022-04-12 11:37:34'),
(41, 'test', 'test', 'categories', 3, NULL, '2022-04-14 11:44:14'),
(42, 'test', 'test', 'products', 61, NULL, '2022-04-14 11:44:25'),
(43, 'test', 'test', 'products', 63, NULL, '2022-04-25 11:05:54'),
(44, 'test', 'test', 'default', 0, 'uploads/media/2022/Screenshot_20220415-164023.jpg', '2022-04-25 11:06:39'),
(45, 'test', 'test', 'products', 61, NULL, '2022-04-25 11:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT 0,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `type`, `type_id`, `image`, `date_added`) VALUES
(3, 'default', 0, 'uploads/media/2022/banner_4.jpg', '2022-04-22 05:16:59'),
(4, 'default', 0, 'uploads/media/2022/banner_4.jpg', '2022-04-22 05:17:31'),
(5, 'categories', 1, 'uploads/media/2022/banner_1.png', '2022-04-22 05:21:00'),
(6, 'products', 60, 'uploads/media/2022/banner_2.png', '2022-04-22 05:21:24'),
(7, 'products', 63, 'uploads/media/2022/banner_3.png', '2022-04-22 05:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `mobile` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `delivery_charge` double DEFAULT 0,
  `is_delivery_charge_returnable` tinyint(4) NOT NULL DEFAULT 0,
  `wallet_balance` double DEFAULT 0,
  `promo_code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_discount` double DEFAULT NULL,
  `discount` double DEFAULT 0,
  `total_payable` double DEFAULT NULL,
  `final_total` double DEFAULT NULL,
  `payment_method` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `otp` int(11) DEFAULT 0,
  `notes` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `mobile`, `total`, `delivery_charge`, `is_delivery_charge_returnable`, `wallet_balance`, `promo_code`, `promo_discount`, `discount`, `total_payable`, `final_total`, `payment_method`, `latitude`, `longitude`, `address`, `delivery_time`, `delivery_date`, `date_added`, `otp`, `notes`, `attachments`) VALUES
(1, 9, 2, '84696555258', 1000, 0, 0, 0, ' ', 0, 0, 1000, 1000, 'PayPal', '21.1893857', '72.7711222', '219,Bhatha,Surat, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'Anytime', '2022-02-03', '2022-02-02 06:02:21', 0, '', NULL),
(4, 7, 1, '1231321321', 1140, 0, 0, 0, 'GETTHIRTY', 124, 0, 1016, 1016, 'COD', '23.2330662', '69.6442444', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'Anytime', '2022-02-12', '2022-02-10 05:30:34', 0, 'test', NULL),
(5, 7, 1, '1231321321', 9999, 0, 0, 0, ' ', 0, 0, 9999, 9999, 'COD', '23.2330662', '69.6442444', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'Anytime', '2022-02-12', '2022-02-10 05:34:18', 0, '', NULL),
(6, 7, 1, '1231321321', 100, 20, 0, 0, 'GETTHIRTY', 500, 0, 20, 20, 'COD', '23.2330662', '69.6442444', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'Anytime', '2022-02-12', '2022-02-10 05:35:19', 0, '', NULL),
(7, 7, 1, '1231321321', 100, 20, 1, 0, ' ', 0, 0, 120, 120, 'COD', '23.2330662', '69.6442444', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'Anytime', '2022-02-12', '2022-02-10 05:41:22', 0, '', NULL),
(8, 7, 1, '1231321321', 120, 20, 1, 0, ' ', 0, 0, 140, 140, 'COD', '23.2330662', '69.6442444', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'Anytime', '2022-02-13', '2022-02-10 06:21:15', 0, '', NULL),
(9, 7, 1, '1231321321', 100, 20, 1, 0, ' ', 0, 0, 120, 120, 'COD', '23.2330662', '69.6442444', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'Anytime', '2022-02-13', '2022-02-10 06:26:24', 0, '', NULL),
(10, 1, 7, '2222222222', 9999, 0, 0, 0, '', 0, 0, 9999, 9999, 'COD', '', '', '237 time square, Jubulee Circle, Bhuj, gujarat, India, 370001', 'test', '2022-02-12', '2022-02-11 10:28:36', 0, '', NULL),
(11, 1, 7, '2222222222', 14999, 20, 1, 0, '', 0, 0, 15019, 15019, 'COD', '', '', '237 time square, Jubulee Circle, Bhuj, gujarat, India, 370001', 'test', '2022-02-15', '2022-02-15 03:37:40', 0, '', '[\"uploads\\/order_attachments\\/61-qLpDnJGL__SL1280_.jpg\",\"uploads\\/order_attachments\\/110.jpg\"]'),
(12, 1, 1, '9876543210', 0, 0, 0, 0, ' ', 0, 0, 0, 0, 'COD', NULL, NULL, NULL, NULL, NULL, '2022-02-15 03:40:05', 0, '', '[\"uploads\\/order_attachments\\/61-qLpDnJGL__SL1280_1.jpg\",\"uploads\\/order_attachments\\/1101.jpg\"]'),
(13, 12, 10, '9974093845', 202, 20, 1, 0, ' ', 0, 0, 222, 222, 'bank_transfer', '23.2330641', '69.6442489', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'test', '2022-03-06', '2022-03-04 11:21:34', 0, '', '[\"uploads\\/order_attachments\\/Check.jpg\"]'),
(14, 12, 10, '9974093845', 9999, 20, 1, 0, ' ', 0, 0, 10019, 10019, 'COD', '23.2330641', '69.6442489', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'test', '2022-03-06', '2022-03-04 11:22:44', 0, '', ''),
(15, 7, 6, '12313312312', 0, 0, 1, 0, ' ', 0, 0, 0, 0, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'test', '2022-03-13', '2022-03-11 12:34:01', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_20220223_130601.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_130608.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_130618.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_130502.jpg\"]'),
(16, 7, 6, '12313312312', 0, 0, 1, 0, ' ', 0, 0, 0, 0, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'test', '2022-03-14', '2022-03-11 12:48:29', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_20220223_1306011.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306081.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220309_152804.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306181.jpg\"]'),
(17, 7, 6, '12313312312', 202, 20, 1, 0, ' ', 0, 0, 222, 222, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'test', '2022-03-14', '2022-03-12 09:27:52', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_20220223_130551.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306082.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306012.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1305021.jpg\",\"uploads'),
(18, 7, 6, '12313312312', 0, 0, 1, 0, ' ', 0, 0, 0, 0, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Jubulee Circle, Bhuj, Gujarat, India, 370001', 'test', '2022-03-17', '2022-03-14 04:29:43', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_20220223_1306083.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306013.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220309_1528042.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220312_1348561.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306183.jpg\"]'),
(19, 7, 6, '12313312312', 181.8, 100, 1, 0, ' ', 0, 0, 281.8, 281.8, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-03-19', '2022-03-15 07:30:12', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_20220223_1306014.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306084.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220312_1348562.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220309_1528043.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1305511.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_130557.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306184.jpg\"]'),
(20, 7, 6, '12313312312', 383.8, 100, 1, 0, ' ', 0, 0, 483.8, 483.8, 'Stripe', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-03-16', '2022-03-15 08:11:28', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_20220223_1306015.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306085.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220312_1348563.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220309_1528044.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1305512.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1305571.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220223_1306185.jpg\"]'),
(21, 7, 6, '12313312312', 181.8, 100, 1, 0, ' ', 0, 0, 0, 281.8, 'Stripe', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-03-19', '2022-03-15 10:47:13', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_20220309_1528045.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220312_1348564.jpg\",\"uploads\\/order_attachments\\/Screenshot_20220315_154007.jpg\"]'),
(22, 1, 7, '2222222222', 0, 0, 1, 0, '', 0, 0, 0, 0, 'bank_transfer', '', '', '237 time square, Jubulee Circle, Bhuj, gujarat, India, 370001', 'test', '2022-03-16', '2022-03-15 11:19:05', 0, '', '[\"uploads\\/order_attachments\\/Screenshot_from_2022-03-12_11-16-46.png\"]'),
(23, 15, 11, '8160629965', 9999, 0, 0, 100, ' ', 0, 0, 9899, 9999, 'bank_transfer', '23.2330658', '69.6442443', 'GMDC Guest House Road,Uma Nagar,Bhuj, vdv, Bhuj, Gujarat, India, 370001', 'test', '2022-03-17', '2022-03-15 12:47:58', 0, '', ''),
(24, 15, 11, '8160629965', 0, 0, 0, 0, 'SIXTY', 0, 0, 0, 0, 'COD', '23.2330658', '69.6442443', 'GMDC Guest House Road,Uma Nagar,Bhuj, vdv, Bhuj, Gujarat, India, 370001', 'test', '2022-03-17', '2022-03-16 04:30:02', 0, '', NULL),
(25, 15, 11, '8160629965', -157560, 0, 0, 0, ' ', 0, 0, 0, -157560, 'bank_transfer', '23.2330658', '69.6442443', 'GMDC Guest House Road,Uma Nagar,Bhuj, vdv, Bhuj, Gujarat, India, 370001', 'test', '2022-03-18', '2022-03-16 04:34:07', 0, '', NULL),
(26, 15, 11, '8160629965', 4500, 0, 0, 0, ' ', 0, 0, 4500, 4500, 'COD', '23.2330658', '69.6442443', 'GMDC Guest House Road,Uma Nagar,Bhuj, vdv, Bhuj, Gujarat, India, 370001', 'test', '2022-03-18', '2022-03-16 04:37:35', 0, '', NULL),
(28, 7, 6, '12313312312', 78780, 100, 1, 0, 'GETTHIRTY', 10, 0, 78870, 78870, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-03-20', '2022-03-16 06:31:14', 0, '', NULL),
(29, 7, 6, '12313312312', 15917.6, 100, 1, 0, ' ', 0, 0, 16017.6, 16017.6, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-03-20', '2022-03-16 06:31:41', 0, '', NULL),
(30, 7, 6, '12313312312', 9999, 100, 1, 0, ' ', 0, 0, 10099, 10099, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-03-17', '2022-03-16 06:32:29', 0, '', NULL),
(31, 15, 11, '8160629965', 82780, 0, 0, 82780, ' ', 0, 0, 0, 82780, 'Wallet', '23.2330658', '69.6442443', 'GMDC Guest House Road,Uma Nagar,Bhuj, vdv, Bhuj, Gujarat, India, 370001', 'test', '2022-03-18', '2022-03-16 06:45:07', 0, 'gift for myself', NULL),
(33, 15, 11, '8160629965', 6120, 0, 0, 0, ' ', 0, 0, 6120, 6120, 'Paytm', '23.2330658', '69.6442443', 'GMDC Guest House Road,Uma Nagar,Bhuj, vdv, Bhuj, Gujarat, India, 370001', 'test', '2022-03-23', '2022-03-21 05:35:32', 0, '', NULL),
(34, 1, 12, '7656789876', 4100, 20, 1, 0, '', 0, 0, 4120, 4120, 'COD', '23.232512', '69.6418304', 'home, Jubulee Circle, Bhuj, gujarat, India, 370001', 'test', '2022-03-23', '2022-03-21 07:44:03', 0, 'gift for me', NULL),
(35, 458, 16, '1231231231', 0, 0, 0, 0, ' ', 0, 0, 0, 0, 'Stripe', '23.2330692', '69.6442212', 'GMDC Guest House Road,Uma Nagar,Bhuj, 111, Bhuj, Gujarat, India, 370001', 'test', '2022-03-24', '2022-03-22 10:36:47', 0, '', NULL),
(36, 7, 6, '12313312312', 10458, 100, 1, 0, ' ', 0, 0, 10558, 10558, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-02', '2022-03-29 09:56:35', 0, '', NULL),
(37, 7, 6, '12313312312', 3813, 100, 1, 0, ' ', 0, 0, 3913, 3913, 'Stripe', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-07', '2022-04-05 05:00:21', 0, '', NULL),
(38, 2, 18, '9925880172', 300, 0, 0, 0, '', 0, 0, 300, 300, 'bank_transfer', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-07', '2022-04-07 09:34:52', 0, 'mast product', NULL),
(39, 2, 18, '9925880172', 300, 0, 0, 0, '', 0, 0, 300, 300, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-07', '2022-04-07 09:36:37', 0, 'mast product', NULL),
(40, 7, 6, '12313312312', 450, 100, 1, 0, '', 0, 0, 550, 550, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-08', '2022-04-07 09:42:42', 0, 'mast product', NULL),
(41, 7, 6, '12313312312', 450, 100, 1, 0, '', 0, 0, 550, 550, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-08', '2022-04-07 09:42:53', 0, 'mast product', NULL),
(42, 1, 15, '789567567543', 150, 20, 1, 0, '', 0, 0, 170, 170, 'COD', '', '', 'bhuj, Jubulee Circle, Bhuj, gujarat, india, 370001', 'test', '2022-04-16', '2022-04-11 04:07:57', 0, '', NULL),
(43, 7, 6, '12313312312', 459, 100, 1, 0, ' ', 0, 0, 559, 559, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-14', '2022-04-12 04:32:41', 0, 'vhnb', NULL),
(44, 7, 6, '12313312312', 450, 100, 1, 0, ' ', 0, 0, 550, 550, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-14', '2022-04-12 04:37:47', 0, 'ghj', NULL),
(45, 7, 6, '12313312312', 4000, 100, 1, 0, ' ', 0, 0, 4100, 4100, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-14', '2022-04-12 04:39:29', 0, 'bahah', NULL),
(46, 7, 6, '12313312312', 4500, 100, 1, 0, ' ', 0, 0, 4600, 4600, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-14', '2022-04-12 04:40:03', 0, '', NULL),
(47, 7, 6, '12313312312', 4000, 100, 1, 0, ' ', 0, 0, 4100, 4100, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-14', '2022-04-12 04:40:56', 0, 'vgfhg', NULL),
(48, 7, 6, '12313312312', 9999, 100, 1, 0, ' ', 0, 0, 10099, 10099, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-14', '2022-04-12 04:43:12', 0, '', NULL),
(49, 7, 6, '12313312312', 4590, 100, 1, 0, 'show', 0, 0, 4690, 4690, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-15', '2022-04-14 12:09:19', 0, '', NULL),
(50, 7, 6, '12313312312', 4590, 100, 1, 0, 'hidden', 0, 0, 4690, 4690, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-15', '2022-04-14 12:11:00', 0, '', NULL),
(51, 7, 6, '12313312312', 4590, 100, 1, 0, 'test', 0, 0, 4690, 4690, 'bank_transfer', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-15', '2022-04-14 12:13:01', 0, '', NULL),
(52, 7, 6, '12313312312', 4500, 100, 1, 0, 'SIXTY', 0, 0, 4600, 4600, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-16', '2022-04-14 14:08:21', 0, '', NULL),
(53, 7, 6, '12313312312', 4590, 100, 1, 0, 'show', 0, 0, 4690, 4690, 'RazorPay', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-16', '2022-04-14 14:11:40', 0, '', NULL),
(54, 7, 6, '12313312312', 5040, 100, 1, 0, 'hidden', 0, 0, 5140, 5140, 'RazorPay', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-18', '2022-04-14 14:15:33', 0, '', NULL),
(55, 7, 6, '12313312312', 4590, 100, 1, 0, 'SIXTY', 0, 0, 4690, 4690, 'RazorPay', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-18', '2022-04-14 14:22:52', 0, '', NULL),
(56, 7, 6, '12313312312', 0, 0, 1, 0, 'SIXTY', 0, 0, 0, 0, 'COD', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-16', '2022-04-14 14:28:03', 0, '', NULL),
(57, 1, 15, '789567567543', 9999, 20, 1, 0, 'SIXTY', 500, 0, 9519, 9519, 'COD', '', '', 'bhuj, Jubulee Circle, Bhuj, gujarat, india, 370001', 'test', '2022-04-15', '2022-04-15 02:49:27', 0, '', NULL),
(58, 1, 15, '789567567543', 9999, 20, 1, 0, 'show', 0, 0, 10019, 10019, 'COD', '', '', 'bhuj, Jubulee Circle, Bhuj, gujarat, india, 370001', 'test', '2022-04-15', '2022-04-15 03:22:38', 0, '', NULL),
(59, 1, 14, '789875645356', 150, 0, 0, 0, '', 0, 0, 150, 150, 'COD', '', '', 'bhuj, Bus stand, Vadodra, gujarat, india, 370001', 'test', '2022-04-15', '2022-04-15 04:13:10', 0, '', NULL),
(60, 1, 13, '7678675654', 150, 0, 0, 0, '', 0, 0, 150, 150, 'COD', '', '', 'bhuj, Anjar, Bhuj, gujarat, india, 370001', 'test', '2022-04-20', '2022-04-15 05:16:24', 0, 'test', NULL),
(61, 7, 17, '1231231231', 4508, 0, 0, 0, ' ', 0, 0, 4508, 4508, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-17', '2022-04-15 11:29:11', 0, '', NULL),
(62, 477, 19, '8200786264', 50, 50, 1, 0, ' ', 0, 0, 100, 100, 'COD', '23.2330756', '69.6441974', 'Kutch,Uma Nagar,Mirjapar Part, Ahmedabad-1, Ahmedabad, Gujarat, India, 370001', 'test', '2022-04-21', '2022-04-18 08:02:42', 0, '', NULL),
(63, 7, 17, '1231231231', 50, 0, 0, 0, ' ', 0, 0, 50, 50, 'bank_transfer', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-21', '2022-04-18 08:03:39', 0, '', NULL),
(64, 7, 6, '12313312312', 16075.2, 100, 1, 0, ' ', 0, 0, 16175.2, 16175.2, 'Stripe', '23.233068', '69.6442407', 'GMDC Guest House Road,Uma Nagar,Bhuj, Anjar, Anjar, Gujarat, India, 370002', 'test', '2022-04-19', '2022-04-18 11:58:35', 0, '', NULL),
(65, 7, 17, '1231231231', 9999, 0, 0, 0, 'hidden5', 1000, 0, 8999, 8999, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-18 12:31:11', 0, '', NULL),
(66, 7, 17, '1231231231', 16075.2, 0, 0, 0, 'hidden5', 0, 0, 16075.2, 16075.2, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-18 12:32:19', 0, '', NULL),
(67, 7, 17, '1231231231', 900, 0, 0, 0, 'hidden5', 0, 0, 900, 900, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-18 12:34:02', 0, '', NULL),
(68, 7, 17, '1231231231', 900, 0, 0, 0, 'hidden5', 0, 0, 900, 900, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-18 12:36:29', 0, '', NULL),
(69, 7, 17, '1231231231', 1350, 0, 0, 0, 'hidden5', 0, 0, 1350, 1350, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-20', '2022-04-18 13:08:43', 0, '', NULL),
(70, 7, 17, '1231231231', 79560, 0, 0, 0, ' ', 0, 0, 79560, 79560, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-19 05:39:03', 0, '', NULL),
(71, 7, 17, '1231231231', 26074.2, 0, 0, 0, 'test', 200, 0, 25874.2, 25874.2, 'RazorPay', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-19 06:18:57', 0, '', NULL),
(72, 7, 17, '1231231231', 14999, 0, 0, 0, 'show', 200, 0, 14999, 14999, 'bank_transfer', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-19 06:42:58', 0, '', NULL),
(73, 1, 15, '789567567543', 55080, 0, 0, 0, '', 0, 0, 55080, 55080, 'bank_transfer', '', '', 'bhuj, Jubulee Circle, Bhuj, gujarat, india, 370001', 'test', '2022-04-23', '2022-04-19 07:18:03', 0, '', NULL),
(74, 7, 17, '1231231231', 2250, 0, 0, 0, 'hidden5', 1000, 0, 2250, 2250, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-19 09:34:14', 0, '', NULL),
(75, 7, 17, '1231231231', 900, 0, 0, 0, 'hidden5', 1000, 0, 900, 900, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-19 09:36:06', 0, '', NULL),
(76, 7, 17, '1231231231', 500, 0, 0, 0, 'hidden5', 1000, 0, 500, 500, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-19 09:39:28', 0, '', NULL),
(77, 7, 17, '1231231231', 4500, 0, 0, 0, 'hidden5', 1000, 0, 4500, 4500, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-23', '2022-04-19 09:58:17', 0, '', NULL),
(78, 7, 17, '1231231231', 2750, 0, 0, 0, 'hidden5', 2000, 0, 750, 750, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-23', '2022-04-19 10:06:26', 0, '', NULL),
(82, 7, 17, '1231231231', 450, 0, 0, 0, ' ', 0, 0, 450, 450, 'RazorPay', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-19', '2022-04-19 11:33:43', 0, '', NULL),
(83, 7, 17, '1231231231', 9999, 0, 0, 0, ' ', 0, 0, 9999, 9999, 'Paystack', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-20', '2022-04-19 11:43:29', 0, '', NULL),
(84, 7, 17, '1231231231', 450, 0, 0, 0, ' ', 0, 0, 450, 450, 'RazorPay', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-20', '2022-04-19 11:45:48', 0, '', NULL),
(85, 7, 17, '1231231231', 16075.2, 0, 0, 0, ' ', 0, 0, 16075.2, 16075.2, 'Stripe', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-20', '2022-04-19 11:47:07', 0, '', NULL),
(86, 7, 17, '1231231231', 800, 0, 0, 0, ' ', 0, 0, 800, 800, 'bank_transfer', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-20', '2022-04-19 11:47:53', 0, '', NULL),
(87, 7, 17, '1231231231', 1355, 0, 0, 0, ' ', 0, 0, 1355, 1355, 'Flutterwave', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-22', '2022-04-19 11:54:32', 0, '', NULL),
(88, 7, 17, '1231231231', 2250, 0, 0, 0, ' ', 0, 0, 2250, 2250, 'COD', '23.2330706', '69.6442238', 'GMDC Guest House Road,Uma Nagar,Bhuj, 1111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-21', '2022-04-20 05:54:41', 0, '', NULL),
(89, 2, 18, '9925880172', 500, 0, 0, 0, ' ', 0, 0, 500, 500, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-21', '2022-04-21 05:34:57', 0, '', NULL),
(90, 2, 18, '9925880172', 16075.2, 0, 0, 0, 'show', 0, 0, 16075.2, 16075.2, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-23', '2022-04-22 12:21:57', 0, '', NULL),
(91, 2, 18, '9925880172', 14999, 0, 0, 0, ' ', 0, 0, 14999, 14999, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-23', '2022-04-25 04:48:40', 0, '', NULL),
(92, 2, 18, '9925880172', 1020, 0, 0, 1020, ' ', 0, 0, 0, 1020, 'Wallet', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-26', '2022-04-25 09:33:10', 0, '', NULL),
(93, 2, 18, '9925880172', 29998, 0, 0, 0, ' ', 0, 0, 29998, 29998, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-26', '2022-04-25 09:43:04', 0, '', NULL),
(94, 7, 20, '1234567890', 14999, 0, 0, 0, ' ', 0, 0, 14999, 14999, 'COD', '23.2330715', '69.6441983', 'Kutch,Uma Nagar,Mirjapar Part, 111111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-27', '2022-04-25 11:14:22', 0, '', NULL),
(95, 7, 20, '1234567890', 14999, 0, 0, 0, ' ', 0, 0, 14999, 14999, 'COD', '23.2330715', '69.6441983', 'Kutch,Uma Nagar,Mirjapar Part, 111111, Bhuj, Gujarat, India, 370001', 'test', '2022-04-27', '2022-04-25 11:16:20', 0, '', NULL),
(96, 2, 18, '9925880172', 14999, 0, 0, 0, ' ', 0, 0, 14999, 14999, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-26', '2022-04-25 11:39:28', 0, '', NULL),
(97, 2, 18, '9925880172', 29998, 0, 0, 0, ' ', 0, 0, 29998, 29998, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-26', '2022-04-25 11:45:28', 0, '', NULL),
(98, 2, 18, '9925880172', 14999, 0, 0, 0, ' ', 0, 0, 14999, 14999, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-26', '2022-04-25 11:46:34', 0, '', NULL),
(99, 1, 14, '789875645356', 44997, 0, 0, 0, '', 0, 0, 44997, 44997, 'COD', '', '', 'bhuj, Bus stand, Vadodra, gujarat, india, 370001', 'test', '2022-04-27', '2022-04-25 11:54:41', 0, 'test', NULL),
(100, 1, 12, '7656789876', 47997, 0, 0, 0, '', 0, 0, 47997, 47997, 'COD', '', '', 'home, Jubulee Circle, Bhuj, gujarat, India, 370001', 'test', '2022-04-30', '2022-04-25 11:56:19', 0, '', NULL),
(101, 1, 12, '7656789876', 44997, 0, 0, 0, '', 0, 0, 44997, 44997, 'COD', '', '', 'home, Jubulee Circle, Bhuj, gujarat, India, 370001', 'test', '2022-04-28', '2022-04-25 11:57:31', 0, '', NULL),
(102, 1, 7, '2222222222', 14999, 20, 1, 0, '', 0, 0, 15019, 15019, 'COD', '', '', '237 time square, Jubulee Circle, Bhuj, gujarat, India, 370001', 'test', '2022-04-27', '2022-04-25 12:00:51', 0, 'test', NULL),
(103, 2, 18, '9925880172', 14999, 0, 0, 0, ' ', 0, 0, 14999, 14999, 'COD', '', '', 'time squre, dfvbd, Bhuj, gujrat, India, 370001', 'test', '2022-04-26', '2022-04-25 12:15:04', 0, '', NULL),
(104, 1, 15, '789567567543', 14999, 20, 1, 0, '', 0, 0, 15019, 15019, 'COD', '', '', 'bhuj, Jubulee Circle, Bhuj, gujarat, india, 370001', 'test', '2022-04-29', '2022-04-26 02:41:34', 0, '', NULL),
(105, 1, 15, '789567567543', 14999, 20, 1, 0, '', 0, 0, 15019, 15019, 'COD', '', '', 'bhuj, Jubulee Circle, Bhuj, gujarat, india, 370001', 'test', '2022-04-27', '2022-04-26 02:43:30', 0, '', NULL),
(106, 7, 20, '1234567890', 15879, 0, 0, 0, ' ', 0, 0, 15879, 15879, 'COD', '23.2330715', '69.6441983', 'Kutch,Uma Nagar,Mirjapar Part, 111111, Bhuj, Gujarat, India, 370001', 'test', '2022-05-11', '2022-05-09 09:37:14', 0, '', NULL),
(107, 7, 20, '1234567890', 100, 100, 1, 0, ' ', 0, 0, 200, 200, 'COD', '23.2330715', '69.6441983', 'Kutch,Uma Nagar,Mirjapar Part, 111111, Bhuj, Gujarat, India, 370001', 'test', '2022-05-11', '2022-05-09 10:29:57', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_bank_transfer`
--

CREATE TABLE `order_bank_transfer` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `attachments` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) DEFAULT 0 COMMENT '(0:pending|1:rejected|2:accepted)',
  `date_created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_bank_transfer`
--

INSERT INTO `order_bank_transfer` (`id`, `order_id`, `attachments`, `status`, `date_created`) VALUES
(1, 17, 'uploads/bank_transfer/Screenshot_20220312_134856.jpg', 2, '2022-03-12 09:48:23'),
(2, 16, 'uploads/bank_transfer/Screenshot_20220312_1348561.jpg', 2, '2022-03-12 10:01:10'),
(3, 19, 'uploads/bank_transfer/Screenshot_20220312_1348562.jpg', 2, '2022-03-15 07:55:28'),
(4, 18, 'uploads/bank_transfer/Screenshot_20220315-122736.png', 2, '2022-03-15 11:31:22'),
(5, 23, 'uploads/bank_transfer/Screenshot_20220315-1227361.png', 2, '2022-03-15 12:48:25'),
(6, 25, 'uploads/bank_transfer/Screenshot_20220312-162329.png', 2, '2022-03-16 05:36:29'),
(8, 22, 'uploads/bank_transfer/Screenshot_20220312-155653.png', 2, '2022-03-21 07:29:07'),
(9, 22, 'uploads/bank_transfer/music.jpg', 2, '2022-03-21 07:32:02'),
(10, 43, 'uploads/bank_transfer/IMG-20220411-WA0003.jpg', 2, '2022-04-12 04:34:01'),
(11, 51, 'uploads/bank_transfer/IMG-20220414-WA0001.jpg', 2, '2022-04-14 13:34:08'),
(12, 72, 'uploads/bank_transfer/m_12.jpg', 2, '2022-04-19 06:45:28'),
(13, 73, 'uploads/bank_transfer/ac_3.jpg', 2, '2022-04-19 07:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `is_credited` tinyint(2) NOT NULL DEFAULT 0,
  `otp` int(11) NOT NULL DEFAULT 0,
  `product_name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `discounted_price` double DEFAULT NULL,
  `tax_percent` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT 0,
  `sub_total` double NOT NULL,
  `deliver_by` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int(11) DEFAULT 0,
  `status` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_commission_amount` double NOT NULL DEFAULT 0,
  `seller_commission_amount` double NOT NULL DEFAULT 0,
  `active_status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `delivery_boy_id`, `seller_id`, `is_credited`, `otp`, `product_name`, `variant_name`, `product_variant_id`, `quantity`, `price`, `discounted_price`, `tax_percent`, `tax_amount`, `discount`, `sub_total`, `deliver_by`, `status`, `admin_commission_amount`, `seller_commission_amount`, `active_status`, `date_added`) VALUES
(1, 9, 1, 3, 2, 0, 387589, 'Electric Kettle', 'small', 64, 1, 1000, NULL, 1, 0, 0, 1000, NULL, '[[\"awaiting\",\"02-02-2022 11:32:21am\"]]', 0, 0, 'awaiting', '2022-02-02 06:02:21'),
(4, 7, 4, NULL, 2, 0, 264114, 'Electric Kettle', 'small', 64, 1, 1000, NULL, 1, 0, 0, 1000, NULL, '[[\"received\",\"10-02-2022 11:00:34am\"]]', 0, 0, 'received', '2022-02-10 05:30:34'),
(5, 7, 4, NULL, 4, 0, 405520, 'test', '', 76, 1, 100, NULL, 1, 0, 0, 100, NULL, '[[\"received\",\"10-02-2022 11:00:34am\"],[\"cancelled\",\"2022-02-10 11:01:47\"]]', 0, 0, 'cancelled', '2022-02-10 05:30:34'),
(6, 7, 4, NULL, 2, 0, 434102, 'Variant Product - Product Level', '500 gm, gray', 67, 7, 20, NULL, 1, 0, 0, 140, NULL, '[[\"received\",\"10-02-2022 11:00:34am\"]]', 0, 0, 'received', '2022-02-10 05:30:34'),
(7, 7, 5, NULL, 2, 0, 684387, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 1, 0, 0, 9999, NULL, '[[\"received\",\"10-02-2022 11:04:18am\"]]', 0, 0, 'received', '2022-02-10 05:34:18'),
(8, 7, 6, NULL, 4, 0, 511013, 'test', '', 76, 1, 100, NULL, 1, 0, 0, 100, NULL, '[[\"received\",\"10-02-2022 11:05:19am\"]]', 0, 0, 'received', '2022-02-10 05:35:19'),
(9, 7, 6, NULL, 2, 0, 914417, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 1, 0, 0, 9999, NULL, '[[\"received\",\"10-02-2022 11:05:19am\"],[\"cancelled\",\"2022-02-10 11:05:44\"]]', 0, 0, 'cancelled', '2022-02-10 05:35:19'),
(10, 7, 7, NULL, 4, 0, 518730, 'test', '', 76, 1, 100, NULL, 1, 0, 0, 100, NULL, '[[\"received\",\"10-02-2022 11:11:22am\"]]', 0, 0, 'received', '2022-02-10 05:41:22'),
(11, 7, 8, NULL, 4, 0, 372479, 'test', '', 76, 1, 100, NULL, 1, 0, 0, 100, NULL, '[[\"received\",\"10-02-2022 11:51:15am\"]]', 0, 0, 'received', '2022-02-10 06:21:15'),
(12, 7, 8, NULL, 2, 0, 413330, 'Variant Product - Product Level', '500 gm, gray', 67, 1, 20, NULL, 1, 0, 0, 20, NULL, '[[\"received\",\"10-02-2022 11:51:15am\"]]', 0, 0, 'received', '2022-02-10 06:21:15'),
(13, 7, 9, NULL, 4, 1, 121208, 'test', '', 76, 1, 100, NULL, 1, 0, 0, 100, NULL, '[[\"received\",\"10-02-2022 11:56:24am\"],[\"processed\",\"2022-03-11 18:21:00\"],[\"shipped\",\"2022-03-11 18:21:00\"],[\"delivered\",\"2022-03-11 18:21:00\"]]', 0, 0, 'delivered', '2022-02-10 06:26:24'),
(14, 1, 10, 3, 2, 1, 812048, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 1, 0, 0, 9999, NULL, '[[\"received\",\"11-02-2022 03:58:36pm\"],[\"processed\",\"2022-02-11 15:59:02\"],[\"shipped\",\"2022-02-11 15:59:02\"],[\"delivered\",\"2022-02-11 15:59:02\"]]', 0, 0, 'delivered', '2022-02-11 10:28:36'),
(15, 1, 11, NULL, 2, 0, 168076, 'realme', 'black', 53, 1, 14999, NULL, 1, 0, 0, 14999, NULL, '[[\"received\",\"15-02-2022 09:07:40am\"]]', 0, 0, 'received', '2022-02-15 03:37:40'),
(16, 1, 12, 3, 2, 0, 441151, 'Sarape Face Mask', 'medium, blue', 30, 1, 50, NULL, 1, 0, 0, 50, NULL, '[[\"received\",\"15-02-2022 09:10:05am\"],[\"cancelled\",\"2022-02-22 17:26:42\"]]', 0, 0, 'cancelled', '2022-02-15 03:40:05'),
(17, 12, 13, NULL, 4, 0, 153257, 'test', '', 76, 2, 101, NULL, 1, 0, 0, 202, NULL, '[[\"awaiting\",\"04-03-2022 04:51:34pm\"]]', 0, 0, 'awaiting', '2022-03-04 11:21:34'),
(18, 12, 14, NULL, 2, 0, 115559, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 1, 0, 0, 9999, NULL, '[[\"received\",\"04-03-2022 04:52:44pm\"]]', 0, 0, 'received', '2022-03-04 11:22:44'),
(19, 7, 15, 13, 4, 0, 283721, 'test', '', 76, 2, 101, NULL, 1, 0, 0, 202, NULL, '[[\"awaiting\",\"11-03-2022 06:04:01pm\"],[\"cancelled\",\"2022-03-15 16:34:21\"]]', 0, 0, 'cancelled', '2022-03-11 12:34:01'),
(20, 7, 15, 13, 4, 0, 253538, 'Redmi note 8', '', 48, 2, 7958.8, NULL, 1, 0, 0, 15917.6, NULL, '[[\"awaiting\",\"11-03-2022 06:04:01pm\"],[\"cancelled\",\"2022-03-15 16:34:21\"]]', 0, 0, 'cancelled', '2022-03-11 12:34:01'),
(21, 7, 16, 13, 4, 0, 815871, 'test', '', 76, 2, 101, NULL, 1, 0, 0, 202, NULL, '[[\"awaiting\",\"11-03-2022 06:18:29pm\"],[\"processed\",\"2022-03-15 17:22:25\"],[\"shipped\",\"2022-03-15 17:23:59\"],[\"delivered\",\"2022-03-15 17:26:50\"],[\"returned\",\"2022-03-15 17:29:04\"]]', 0, 0, 'returned', '2022-03-11 12:48:29'),
(22, 7, 17, NULL, 4, 1, 363140, 'test', '', 76, 2, 101, NULL, 1, 0, 0, 202, NULL, '[[\"awaiting\",\"12-03-2022 02:57:52pm\"],[\"processed\",\"2022-03-12 15:21:03\"],[\"shipped\",\"2022-03-12 15:21:03\"],[\"delivered\",\"2022-03-12 15:21:03\"]]', 0, 0, 'delivered', '2022-03-12 09:27:52'),
(23, 7, 18, 13, 4, 0, 328908, 'test', '', 76, 2, 101, NULL, 1, 0, 0, 202, NULL, '[[\"awaiting\",\"14-03-2022 09:59:43am\"],[\"processed\",\"2022-03-15 17:02:59\"],[\"shipped\",\"2022-03-15 17:31:30\"],[\"delivered\",\"2022-03-15 17:32:07\"],[\"returned\",\"2022-03-15 17:49:01\"]]', 0, 0, 'returned', '2022-03-14 04:29:43'),
(24, 7, 19, NULL, 2, 0, 804993, 'test', '', 84, 1, 181.8, NULL, 1, 0, 0, 181.8, NULL, '[[\"awaiting\",\"15-03-2022 01:00:12pm\"],[\"processed\",\"2022-03-15 13:26:36\"]]', 0, 0, 'processed', '2022-03-15 07:30:12'),
(25, 7, 20, 13, 2, 0, 263443, 'test', '', 84, 1, 181.8, NULL, 1, 0, 0, 181.8, NULL, '[[\"received\",\"15-03-2022 01:41:28pm\"],[\"processed\",\"2022-03-15 15:01:32\"]]', 0, 0, 'processed', '2022-03-15 08:11:28'),
(26, 7, 20, 13, 4, 0, 536163, 'test', '', 76, 2, 101, NULL, 1, 0, 0, 202, NULL, '[[\"received\",\"15-03-2022 01:41:28pm\"],[\"processed\",\"2022-03-15 15:01:32\"]]', 0, 0, 'processed', '2022-03-15 08:11:28'),
(27, 7, 21, 14, 4, 0, 243605, 'test', '', 76, 2, 101, NULL, 1, 0, 0, 202, NULL, '[[\"received\",\"15-03-2022 04:17:13pm\"],[\"processed\",\"2022-03-15 16:18:03\"],[\"shipped\",\"2022-03-15 16:44:21\"],[\"delivered\",\"2022-03-15 16:44:46\"],[\"returned\",\"2022-03-15 16:45:44\"]]', 0, 0, 'returned', '2022-03-15 10:47:13'),
(28, 7, 21, 14, 2, 0, 821682, 'test', '', 84, 1, 181.8, NULL, 1, 0, 0, 181.8, NULL, '[[\"received\",\"15-03-2022 04:17:13pm\"],[\"processed\",\"2022-03-15 16:18:03\"],[\"shipped\",\"2022-03-15 16:44:21\"]]', 0, 0, 'shipped', '2022-03-15 10:47:13'),
(29, 1, 22, 13, 2, 0, 309566, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 1, 0, 0, 9999, NULL, '[[\"awaiting\",\"15-03-2022 04:49:05pm\"],[\"processed\",\"2022-03-21 13:05:23\"],[\"shipped\",\"2022-03-21 13:05:54\"],[\"delivered\",\"2022-03-21 13:06:26\"],[\"returned\",\"2022-03-21 13:07:53\"]]', 0, 0, 'returned', '2022-03-15 11:19:05'),
(30, 15, 23, 13, 2, 1, 878670, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 1, 0, 0, 9999, NULL, '[[\"awaiting\",\"15-03-2022 06:17:58pm\"],[\"processed\",\"2022-03-15 18:23:42\"],[\"shipped\",\"2022-03-15 18:24:18\"],[\"delivered\",\"2022-03-15 18:26:11\"]]', 0, 0, 'delivered', '2022-03-15 12:47:58'),
(31, 15, 24, 13, 4, 0, 492560, 'Redmi note 8', '', 48, 2, 7958.8, NULL, 1, 0, 0, 15917.6, NULL, '[[\"received\",\"16-03-2022 10:00:02am\"],[\"processed\",\"2022-03-21 10:47:23\"],[\"shipped\",\"2022-03-21 10:47:37\"],[\"delivered\",\"2022-03-21 10:47:52\"],[\"returned\",\"2022-03-21 10:55:02\"]]', 0, 0, 'returned', '2022-03-16 04:30:02'),
(32, 15, 25, NULL, 2, 0, 209391, 'Split AC 1.5T 5 Star', 'gray', 42, 1, 78780, NULL, 1, 0, 0, 78780, NULL, '[[\"awaiting\",\"16-03-2022 10:04:07am\"],[\"processed\",\"2022-03-16 11:23:37\"],[\"shipped\",\"2022-03-16 11:23:51\"],[\"delivered\",\"2022-03-16 11:24:00\"],[\"returned\",\"2022-03-16 11:25:06\"],[\"returned\",\"2022-03-16 11:25:18\"],[\"returned\",\"2022-03-17 17:40:15\"]]', 0, 0, 'returned', '2022-03-16 04:34:07'),
(33, 15, 26, 13, 2, 0, 875549, 'CP PLUS 1 MP HD IR Bullet Camera - 20 Mtr', '', 41, 1, 4500, NULL, 1, 0, 0, 4500, NULL, '[[\"received\",\"16-03-2022 10:07:35am\"],[\"processed\",\"2022-03-16 10:08:29\"]]', 0, 0, 'processed', '2022-03-16 04:37:35'),
(35, 7, 28, NULL, 2, 0, 955565, 'Split AC 1.5T 5 Star', 'gray', 42, 1, 78780, NULL, 1, 0, 0, 78780, NULL, '[[\"received\",\"16-03-2022 12:01:14pm\"]]', 0, 0, 'received', '2022-03-16 06:31:14'),
(36, 7, 29, NULL, 4, 0, 300509, 'Redmi note 8', '', 48, 2, 7958.8, NULL, 1, 0, 0, 15917.6, NULL, '[[\"received\",\"16-03-2022 12:01:41pm\"]]', 0, 0, 'received', '2022-03-16 06:31:41'),
(37, 7, 30, 13, 2, 0, 618288, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 1, 0, 0, 9999, NULL, '[[\"received\",\"16-03-2022 12:02:29pm\"]]', 0, 0, 'received', '2022-03-16 06:32:29'),
(38, 15, 31, 13, 2, 1, 460696, 'silver ornaments', '', 90, 1, 4000, NULL, 1, 0, 0, 4000, NULL, '[[\"received\",\"16-03-2022 12:15:07pm\"],[\"processed\",\"2022-03-17 13:09:16\"],[\"shipped\",\"2022-03-17 13:09:16\"],[\"delivered\",\"2022-03-17 13:09:16\"]]', 0, 0, 'delivered', '2022-03-16 06:45:07'),
(39, 15, 31, 13, 2, 1, 666391, 'Split AC 1.5T 5 Star', 'gray', 42, 1, 78780, NULL, 1, 0, 0, 78780, NULL, '[[\"received\",\"16-03-2022 12:15:07pm\"],[\"processed\",\"2022-03-17 13:09:16\"],[\"shipped\",\"2022-03-17 13:09:16\"],[\"delivered\",\"2022-03-17 13:09:16\"]]', 0, 0, 'delivered', '2022-03-16 06:45:07'),
(45, 15, 33, NULL, 2, 0, 438349, 'Woman\\\'s Dress', '', 18, 1, 6120, NULL, 2, 0, 0, 6120, NULL, '[[\"received\",\"21-03-2022 11:05:32am\"]]', 0, 0, 'received', '2022-03-21 05:35:32'),
(46, 1, 34, 13, 2, 1, 747006, 'Cat Face Mask', '', 33, 1, 100, NULL, 2, 0, 0, 100, NULL, '[[\"received\",\"21-03-2022 01:14:03pm\"],[\"processed\",\"2022-03-29 15:18:58\"],[\"shipped\",\"2022-03-29 15:18:58\"],[\"delivered\",\"2022-03-29 15:18:58\"]]', 10, 90, 'delivered', '2022-03-21 07:44:03'),
(47, 1, 34, 13, 2, 1, 216455, 'silver ornaments', '', 90, 1, 4000, NULL, 2, 0, 0, 4000, NULL, '[[\"received\",\"21-03-2022 01:14:03pm\"],[\"processed\",\"2022-03-29 15:18:58\"],[\"shipped\",\"2022-03-29 15:18:58\"],[\"delivered\",\"2022-03-29 15:18:58\"]]', 400, 3600, 'delivered', '2022-03-21 07:44:03'),
(48, 458, 35, 3, 2, 0, 809446, 'potato', '500 gm', 37, 1, 10, NULL, 2, 0, 0, 10, NULL, '[[\"received\",\"22-03-2022 04:06:47pm\"],[\"processed\",\"2022-03-22 16:10:36\"],[\"shipped\",\"2022-03-22 16:10:36\"],[\"delivered\",\"2022-03-22 16:10:36\"],[\"returned\",\"2022-03-22 16:11:24\"]]', 0, 0, 'returned', '2022-03-22 10:36:47'),
(49, 458, 35, 3, 4, 0, 213743, 'test', '', 76, 1, 102, NULL, 2, 0, 0, 102, NULL, '[[\"received\",\"22-03-2022 04:06:47pm\"],[\"processed\",\"2022-03-22 16:13:32\"],[\"shipped\",\"2022-03-22 16:13:32\"],[\"delivered\",\"2022-03-22 16:13:32\"],[\"returned\",\"2022-03-22 16:13:57\"]]', 0, 0, 'returned', '2022-03-22 10:36:47'),
(50, 7, 36, NULL, 19, 0, 342434, 'TEST SUB CATEGORY', '', 104, 1, 459, NULL, 2, 0, 0, 459, NULL, '[[\"awaiting\",\"29-03-2022 03:26:35pm\"]]', 0, 0, 'awaiting', '2022-03-29 09:56:35'),
(51, 7, 36, NULL, 2, 0, 938474, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 2, 0, 0, 9999, NULL, '[[\"awaiting\",\"29-03-2022 03:26:35pm\"]]', 0, 0, 'awaiting', '2022-03-29 09:56:35'),
(52, 7, 37, 14, 19, 0, 590224, 'TEST FASHION', '', 103, 3, 200, NULL, 0, 0, 0, 600, NULL, '[[\"received\",\"05-04-2022 10:30:21am\"],[\"processed\",\"2022-04-07 09:57:39\"],[\"shipped\",\"2022-04-07 09:57:39\"]]', 0, 0, 'shipped', '2022-04-05 05:00:21'),
(53, 7, 37, 20, 19, 0, 673814, 'TEST SUB CATEGORY', '', 104, 7, 459, NULL, 2, 0, 0, 3213, NULL, '[[\"received\",\"05-04-2022 10:30:21am\"],[\"processed\",\"2022-04-07 09:58:32\"],[\"shipped\",\"2022-04-07 09:58:32\"]]', 0, 0, 'shipped', '2022-04-05 05:00:21'),
(54, 2, 38, NULL, 2, 0, 588348, 'sdgdf', '', 101, 2, 150, NULL, 2, 0, 0, 300, NULL, '[[\"awaiting\",\"07-04-2022 03:04:52pm\"]]', 0, 0, 'awaiting', '2022-04-07 09:34:52'),
(55, 2, 39, 3, 2, 1, 550344, 'sdgdf', '', 101, 2, 150, NULL, 2, 0, 0, 300, NULL, '[[\"received\",\"07-04-2022 03:06:37pm\"],[\"processed\",\"2022-04-07 15:07:37\"],[\"shipped\",\"2022-04-07 15:07:37\"],[\"delivered\",\"2022-04-07 15:07:37\"]]', 30, 270, 'delivered', '2022-04-07 09:36:37'),
(56, 7, 40, 14, 2, 0, 815568, 'sdgdf', '', 101, 3, 150, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"07-04-2022 03:12:42pm\"]]', 0, 0, 'received', '2022-04-07 09:42:42'),
(57, 7, 41, 20, 2, 1, 489857, 'sdgdf', '', 101, 3, 150, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"07-04-2022 03:12:53pm\"],[\"processed\",\"2022-04-07 15:13:33\"],[\"shipped\",\"2022-04-07 15:13:47\"],[\"delivered\",\"2022-04-07 15:13:47\"]]', 45, 405, 'delivered', '2022-04-07 09:42:53'),
(58, 1, 42, 14, 2, 1, 149783, 'sdgdf', '', 101, 1, 150, NULL, 2, 0, 0, 150, NULL, '[[\"received\",\"11-04-2022 09:37:57am\"],[\"processed\",\"2022-04-11 09:38:36\"],[\"shipped\",\"2022-04-11 09:38:36\"],[\"delivered\",\"2022-04-11 09:38:36\"]]', 15, 135, 'delivered', '2022-04-11 04:07:57'),
(59, 7, 43, NULL, 2, 0, 252350, 'TEST SUB CATEGORY', '', 104, 1, 459, NULL, 2, 0, 0, 459, NULL, '[[\"awaiting\",\"12-04-2022 10:02:41am\"]]', 0, 0, 'awaiting', '2022-04-12 04:32:41'),
(60, 7, 44, 14, 2, 1, 797428, 'TEST SUB CATEGORY', '', 104, 1, 450, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"12-04-2022 10:07:47am\"],[\"processed\",\"2022-04-12 10:08:39\"],[\"shipped\",\"2022-04-12 10:08:39\"],[\"delivered\",\"2022-04-12 10:08:39\"]]', 45, 405, 'delivered', '2022-04-12 04:37:47'),
(61, 7, 45, 14, 2, 1, 909530, 'silver ornaments', '', 90, 1, 4000, NULL, 2, 0, 0, 4000, NULL, '[[\"received\",\"12-04-2022 10:09:29am\"],[\"processed\",\"2022-04-12 10:11:40\"],[\"shipped\",\"2022-04-12 10:11:40\"],[\"delivered\",\"2022-04-12 10:11:40\"]]', 400, 3600, 'delivered', '2022-04-12 04:39:29'),
(62, 7, 46, 14, 2, 1, 609229, 'CP PLUS 1 MP HD IR Bullet Camera - 20 Mtr', '', 41, 1, 4500, NULL, 2, 0, 0, 4500, NULL, '[[\"received\",\"12-04-2022 10:10:03am\"],[\"processed\",\"2022-04-12 10:11:58\"],[\"shipped\",\"2022-04-12 10:11:58\"],[\"delivered\",\"2022-04-12 10:11:58\"]]', 450, 4050, 'delivered', '2022-04-12 04:40:03'),
(63, 7, 47, 20, 2, 1, 482277, 'silver ornaments', '', 90, 1, 4000, NULL, 2, 0, 0, 4000, NULL, '[[\"received\",\"12-04-2022 10:10:56am\"],[\"processed\",\"2022-04-12 10:12:18\"],[\"shipped\",\"2022-04-12 10:12:18\"],[\"delivered\",\"2022-04-12 10:12:18\"]]', 400, 3600, 'delivered', '2022-04-12 04:40:56'),
(64, 7, 48, 14, 2, 1, 949349, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 2, 0, 0, 9999, NULL, '[[\"received\",\"12-04-2022 10:13:12am\"],[\"processed\",\"2022-04-12 10:13:40\"],[\"shipped\",\"2022-04-12 10:13:40\"],[\"delivered\",\"2022-04-12 10:13:40\"]]', 999.9, 8999.1, 'delivered', '2022-04-12 04:43:12'),
(65, 7, 49, NULL, 19, 0, 591299, 'test vegetable', '', 102, 10, 459, NULL, 2, 0, 0, 4590, NULL, '[[\"awaiting\",\"14-04-2022 05:39:19pm\"]]', 0, 0, 'awaiting', '2022-04-14 12:09:19'),
(66, 7, 50, NULL, 19, 0, 935289, 'test vegetable', '', 102, 10, 459, NULL, 2, 0, 0, 4590, NULL, '[[\"awaiting\",\"14-04-2022 05:41:00pm\"]]', 0, 0, 'awaiting', '2022-04-14 12:11:00'),
(67, 7, 51, 20, 19, 0, 714093, 'test vegetable', '', 102, 10, 459, NULL, 2, 0, 0, 4590, NULL, '[[\"awaiting\",\"14-04-2022 05:43:01pm\"],[\"processed\",\"2022-04-14 19:05:51\"]]', 0, 0, 'processed', '2022-04-14 12:13:01'),
(68, 7, 52, 20, 2, 1, 175292, 'TEST SUB CATEGORY', '', 104, 10, 450, NULL, 2, 0, 0, 4500, NULL, '[[\"received\",\"14-04-2022 07:38:21pm\"],[\"processed\",\"2022-04-14 19:39:07\"],[\"shipped\",\"2022-04-14 19:39:07\"],[\"delivered\",\"2022-04-14 19:39:07\"]]', 450, 4050, 'delivered', '2022-04-14 14:08:21'),
(69, 7, 53, NULL, 19, 1, 942233, 'test vegetable', '', 102, 10, 459, NULL, 2, 0, 0, 4590, NULL, '[[\"received\",\"14-04-2022 07:41:40pm\"],[\"processed\",\"2022-04-14 19:42:23\"],[\"shipped\",\"2022-04-14 19:42:23\"],[\"delivered\",\"2022-04-14 19:42:23\"]]', 91.8, 4498.2, 'delivered', '2022-04-14 14:11:40'),
(70, 7, 54, NULL, 19, 0, 433028, 'test vegetable', '', 102, 10, 459, NULL, 2, 0, 0, 4590, NULL, '[[\"received\",\"14-04-2022 07:45:33pm\"]]', 0, 0, 'received', '2022-04-14 14:15:33'),
(71, 7, 54, NULL, 2, 0, 318930, 'TEST SUB CATEGORY', '', 104, 1, 450, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"14-04-2022 07:45:33pm\"],[\"processed\",\"2022-04-15 12:44:34\"],[\"shipped\",\"2022-04-15 12:44:34\"]]', 0, 0, 'shipped', '2022-04-14 14:15:33'),
(72, 7, 55, NULL, 19, 0, 454792, 'test vegetable', '', 102, 10, 459, NULL, 2, 0, 0, 4590, NULL, '[[\"received\",\"14-04-2022 07:52:52pm\"]]', 0, 0, 'received', '2022-04-14 14:22:52'),
(73, 7, 56, NULL, 2, 0, 945269, 'TEST SUB CATEGORY', '', 104, 10, 450, NULL, 2, 0, 0, 4500, NULL, '[[\"received\",\"14-04-2022 07:58:03pm\"],[\"processed\",\"2022-04-15 12:43:26\"],[\"shipped\",\"2022-04-15 12:43:33\"],[\"delivered\",\"2022-04-15 12:43:44\"],[\"returned\",\"2022-04-15 12:43:58\"]]', 0, 0, 'returned', '2022-04-14 14:28:03'),
(74, 1, 57, NULL, 2, 0, 711024, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 2, 0, 0, 9999, NULL, '[[\"received\",\"15-04-2022 08:19:27am\"]]', 0, 0, 'received', '2022-04-15 02:49:27'),
(75, 1, 58, 14, 2, 1, 487932, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 2, 0, 0, 9999, NULL, '[[\"received\",\"15-04-2022 08:52:38am\"],[\"processed\",\"2022-04-15 08:54:41\"],[\"shipped\",\"2022-04-15 08:54:41\"],[\"delivered\",\"2022-04-15 08:54:41\"]]', 999.9, 8999.1, 'delivered', '2022-04-15 03:22:38'),
(76, 1, 59, NULL, 16, 0, 347241, 'sdgdf', '', 101, 1, 150, NULL, 2, 0, 0, 150, NULL, '[[\"received\",\"15-04-2022 09:43:10am\"]]', 0, 0, 'received', '2022-04-15 04:13:10'),
(77, 1, 60, 20, 16, 1, 0, 'sdgdf', '', 101, 1, 150, NULL, 2, 0, 0, 150, NULL, '[[\"received\",\"15-04-2022 10:46:24am\"],[\"processed\",\"2022-04-15 10:47:15\"],[\"shipped\",\"2022-04-15 14:56:34\"],[\"delivered\",\"2022-04-15 14:56:34\"]]', 22.5, 127.5, 'delivered', '2022-04-15 05:16:24'),
(78, 7, 61, 20, 25, 1, 0, 'Variant Testing', 'small, black', 105, 1, 8, NULL, 5, 0, 0, 8, NULL, '[[\"received\",\"15-04-2022 04:59:11pm\"],[\"processed\",\"2022-04-15 16:59:53\"],[\"shipped\",\"2022-04-15 17:27:03\"],[\"delivered\",\"2022-04-15 17:43:53\"]]', 0.08, 7.92, 'delivered', '2022-04-15 11:29:11'),
(79, 7, 61, NULL, 2, 0, 0, 'TEST SUB CATEGORY', '', 104, 10, 450, NULL, 2, 0, 0, 4500, NULL, '[[\"received\",\"15-04-2022 04:59:11pm\"]]', 0, 0, 'received', '2022-04-15 11:29:11'),
(80, 477, 62, NULL, 2, 0, 0, 'Variant Testing', 'small, black', 107, 10, 5, NULL, 5, 0, 0, 50, NULL, '[[\"received\",\"18-04-2022 01:32:42pm\"]]', 0, 0, 'received', '2022-04-18 08:02:42'),
(81, 7, 63, NULL, 2, 0, 0, 'Variant Testing', 'small, black', 107, 10, 5, NULL, 5, 0, 0, 50, NULL, '[[\"awaiting\",\"18-04-2022 01:33:39pm\"]]', 0, 0, 'awaiting', '2022-04-18 08:03:39'),
(82, 7, 64, NULL, 4, 0, 0, 'Redmi note 8', '', 48, 2, 8037.6, NULL, 2, 0, 0, 16075.2, NULL, '[[\"received\",\"18-04-2022 05:28:35pm\"]]', 0, 0, 'received', '2022-04-18 11:58:35'),
(83, 7, 65, NULL, 2, 0, 0, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 2, 0, 0, 9999, NULL, '[[\"received\",\"18-04-2022 06:01:11pm\"]]', 0, 0, 'received', '2022-04-18 12:31:11'),
(84, 7, 66, 14, 4, 1, 0, 'Redmi note 8', '', 48, 2, 8037.6, NULL, 2, 0, 0, 16075.2, NULL, '[[\"received\",\"18-04-2022 06:02:19pm\"],[\"processed\",\"2022-04-18 18:02:51\"],[\"shipped\",\"2022-04-18 18:02:51\"],[\"delivered\",\"2022-04-18 18:02:51\"]]', 803.76, 15271.44, 'delivered', '2022-04-18 12:32:19'),
(85, 7, 67, NULL, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 2, 450, NULL, 2, 0, 0, 900, NULL, '[[\"received\",\"18-04-2022 06:04:02pm\"],[\"processed\",\"2022-04-18 18:04:22\"],[\"shipped\",\"2022-04-18 18:04:22\"],[\"delivered\",\"2022-04-18 18:04:22\"]]', 90, 810, 'delivered', '2022-04-18 12:34:02'),
(86, 7, 68, NULL, 2, 0, 0, 'TEST SUB CATEGORY', '', 104, 2, 450, NULL, 2, 0, 0, 900, NULL, '[[\"received\",\"18-04-2022 06:06:29pm\"]]', 0, 0, 'received', '2022-04-18 12:36:29'),
(87, 7, 69, NULL, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 3, 450, NULL, 2, 0, 0, 1350, NULL, '[[\"received\",\"18-04-2022 06:38:43pm\"],[\"processed\",\"2022-04-18 18:39:10\"],[\"shipped\",\"2022-04-18 18:39:10\"],[\"delivered\",\"2022-04-18 18:39:10\"]]', 135, 1215, 'delivered', '2022-04-18 13:08:43'),
(88, 7, 70, 17, 2, 1, 0, 'Split AC 1.5T 5 Star', 'gray', 42, 1, 79560, NULL, 2, 0, 0, 79560, NULL, '[[\"received\",\"19-04-2022 11:09:03am\"],[\"processed\",\"2022-04-19 11:18:14\"],[\"shipped\",\"2022-04-19 11:18:14\"],[\"delivered\",\"2022-04-19 11:18:14\"]]', 7956, 71604, 'delivered', '2022-04-19 05:39:03'),
(89, 7, 71, 17, 4, 1, 0, 'Redmi note 8', '', 48, 2, 8037.6, NULL, 2, 0, 0, 16075.2, NULL, '[[\"received\",\"19-04-2022 11:48:57am\"],[\"processed\",\"2022-04-19 12:07:39\"],[\"shipped\",\"2022-04-19 12:07:39\"],[\"delivered\",\"2022-04-19 12:07:57\"]]', 803.76, 15271.44, 'delivered', '2022-04-19 06:18:57'),
(90, 7, 71, 17, 2, 1, 0, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 2, 0, 0, 9999, NULL, '[[\"received\",\"19-04-2022 11:48:57am\"],[\"processed\",\"2022-04-19 12:07:39\"],[\"shipped\",\"2022-04-19 12:07:39\"],[\"delivered\",\"2022-04-19 12:07:57\"]]', 999.9, 8999.1, 'delivered', '2022-04-19 06:18:57'),
(91, 7, 72, 14, 4, 1, 0, 'realme', 'black', 49, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"awaiting\",\"19-04-2022 12:12:58pm\"],[\"processed\",\"2022-04-19 14:58:33\"],[\"shipped\",\"2022-04-19 14:58:33\"],[\"delivered\",\"2022-04-19 14:58:44\"]]', 749.95, 14249.05, 'delivered', '2022-04-19 06:42:58'),
(92, 1, 73, 17, 2, 1, 0, 'Woman\\\'s Dress', '', 18, 9, 6120, NULL, 2, 0, 0, 55080, NULL, '[[\"awaiting\",\"19-04-2022 12:48:03pm\"],[\"processed\",\"2022-04-19 12:52:06\"],[\"shipped\",\"2022-04-19 12:52:06\"],[\"delivered\",\"2022-04-19 12:52:06\"]]', 5508, 49572, 'delivered', '2022-04-19 07:18:03'),
(93, 7, 74, 14, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 5, 450, NULL, 2, 0, 0, 2250, NULL, '[[\"received\",\"19-04-2022 03:04:14pm\"],[\"processed\",\"2022-04-19 15:04:35\"],[\"shipped\",\"2022-04-19 15:04:35\"],[\"delivered\",\"2022-04-19 15:04:35\"]]', 225, 2025, 'delivered', '2022-04-19 09:34:14'),
(94, 7, 75, NULL, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 2, 450, NULL, 2, 0, 0, 900, NULL, '[[\"received\",\"19-04-2022 03:06:06pm\"],[\"processed\",\"2022-04-19 15:06:29\"],[\"shipped\",\"2022-04-19 15:06:29\"],[\"delivered\",\"2022-04-19 15:06:29\"]]', 90, 810, 'delivered', '2022-04-19 09:36:06'),
(95, 7, 76, NULL, 2, 1, 0, 'Variant Testing', 'small, black', 107, 10, 5, NULL, 5, 0, 0, 50, NULL, '[[\"received\",\"19-04-2022 03:09:28pm\"],[\"processed\",\"2022-04-19 15:10:12\"],[\"shipped\",\"2022-04-19 15:10:12\"],[\"delivered\",\"2022-04-19 15:10:12\"]]', 5, 45, 'delivered', '2022-04-19 09:39:28'),
(96, 7, 76, NULL, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 1, 450, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"19-04-2022 03:09:28pm\"],[\"processed\",\"2022-04-19 15:10:32\"],[\"shipped\",\"2022-04-19 15:10:32\"],[\"delivered\",\"2022-04-19 15:10:32\"]]', 45, 405, 'delivered', '2022-04-19 09:39:28'),
(97, 7, 77, NULL, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 10, 450, NULL, 2, 0, 0, 4500, NULL, '[[\"received\",\"19-04-2022 03:28:17pm\"],[\"processed\",\"2022-04-19 15:28:36\"],[\"shipped\",\"2022-04-19 15:28:36\"],[\"delivered\",\"2022-04-19 15:28:36\"]]', 450, 4050, 'delivered', '2022-04-19 09:58:17'),
(98, 7, 78, NULL, 2, 0, 0, 'TEST SUB CATEGORY', '', 104, 6, 450, NULL, 2, 0, 0, 2700, NULL, '[[\"received\",\"19-04-2022 03:36:26pm\"]]', 0, 0, 'received', '2022-04-19 10:06:26'),
(99, 7, 78, NULL, 2, 0, 0, 'Variant Testing', 'small, black', 107, 10, 5, NULL, 5, 0, 0, 50, NULL, '[[\"received\",\"19-04-2022 03:36:26pm\"]]', 0, 0, 'received', '2022-04-19 10:06:26'),
(109, 7, 82, NULL, 2, 0, 0, 'TEST SUB CATEGORY', '', 104, 1, 450, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"19-04-2022 05:03:43pm\"]]', 0, 0, 'received', '2022-04-19 11:33:43'),
(110, 7, 83, NULL, 2, 0, 0, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', '', 63, 1, 9999, NULL, 2, 0, 0, 9999, NULL, '[[\"received\",\"19-04-2022 05:13:29pm\"]]', 0, 0, 'received', '2022-04-19 11:43:29'),
(111, 7, 84, NULL, 2, 0, 0, 'TEST SUB CATEGORY', '', 104, 1, 450, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"19-04-2022 05:15:48pm\"]]', 0, 0, 'received', '2022-04-19 11:45:48'),
(112, 7, 85, 20, 4, 1, 0, 'Redmi note 8', '', 48, 2, 8037.6, NULL, 2, 0, 0, 16075.2, NULL, '[[\"received\",\"19-04-2022 05:17:07pm\"],[\"processed\",\"2022-04-29 12:24:34\"],[\"shipped\",\"2022-04-29 12:24:34\"],[\"delivered\",\"2022-04-29 12:24:34\"]]', 803.76, 15271.44, 'delivered', '2022-04-19 11:47:07'),
(113, 7, 86, NULL, 2, 0, 0, 'T - Shirt', '', 91, 1, 800, NULL, 5, 0, 0, 800, NULL, '[[\"awaiting\",\"19-04-2022 05:17:53pm\"]]', 0, 0, 'awaiting', '2022-04-19 11:47:53'),
(114, 7, 87, 20, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 3, 450, NULL, 2, 0, 0, 1350, NULL, '[[\"received\",\"19-04-2022 05:24:32pm\"],[\"processed\",\"2022-04-25 16:40:41\"],[\"shipped\",\"2022-04-25 16:40:41\"],[\"delivered\",\"2022-04-25 16:40:41\"]]', 135, 1215, 'delivered', '2022-04-19 11:54:32'),
(115, 7, 87, 20, 2, 1, 0, 'Variant Testing', 'small, black', 107, 1, 5, NULL, 5, 0, 0, 5, NULL, '[[\"received\",\"19-04-2022 05:24:32pm\"],[\"processed\",\"2022-04-25 16:41:26\"],[\"shipped\",\"2022-04-25 16:41:26\"],[\"delivered\",\"2022-04-25 16:41:26\"]]', 0.5, 4.5, 'delivered', '2022-04-19 11:54:32'),
(116, 7, 88, 20, 2, 1, 0, 'TEST SUB CATEGORY', '', 104, 5, 450, NULL, 2, 0, 0, 2250, NULL, '[[\"received\",\"20-04-2022 11:24:41am\"],[\"processed\",\"2022-04-25 16:39:45\"],[\"shipped\",\"2022-04-25 16:39:45\"],[\"delivered\",\"2022-04-25 16:39:45\"]]', 225, 2025, 'delivered', '2022-04-20 05:54:41'),
(117, 2, 89, NULL, 2, 0, 0, 'TEST SUB CATEGORY', '', 104, 1, 450, NULL, 2, 0, 0, 450, NULL, '[[\"received\",\"21-04-2022 11:04:57am\"]]', 0, 0, 'received', '2022-04-21 05:34:57'),
(118, 2, 89, NULL, 2, 0, 0, 'Variant Testing', 'small, black', 107, 10, 5, NULL, 5, 0, 0, 50, NULL, '[[\"received\",\"21-04-2022 11:04:57am\"]]', 0, 0, 'received', '2022-04-21 05:34:57'),
(119, 2, 90, 3, 4, 1, 0, 'Redmi note 8', '', 48, 2, 8037.6, NULL, 2, 0, 0, 16075.2, NULL, '[[\"received\",\"22-04-2022 05:51:57pm\"],[\"processed\",\"2022-04-22 17:55:01\"],[\"shipped\",\"2022-04-22 17:55:01\"],[\"delivered\",\"2022-04-23 10:19:00\"]]', 803.76, 15271.44, 'delivered', '2022-04-22 12:21:57'),
(120, 2, 91, 3, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"25-04-2022 10:18:40am\"],[\"processed\",\"2022-04-25 10:20:33\"],[\"shipped\",\"2022-04-25 10:20:33\"],[\"delivered\",\"2022-04-25 10:20:33\"]]', 1799.88, 13199.12, 'delivered', '2022-04-25 04:48:40'),
(121, 2, 92, 3, 22, 1, 0, 'testing for sku\\\'s', 'small', 86, 10, 102, NULL, 2, 0, 0, 1020, NULL, '[[\"received\",\"25-04-2022 03:03:10pm\"],[\"processed\",\"2022-04-25 15:05:53\"],[\"shipped\",\"2022-04-25 15:05:53\"],[\"delivered\",\"2022-04-25 15:05:53\"]]', 20.4, 999.6, 'delivered', '2022-04-25 09:33:10'),
(122, 2, 93, NULL, 23, 0, 0, 'realme', 'black', 51, 2, 14999, NULL, 2, 0, 0, 29998, NULL, '[[\"received\",\"25-04-2022 03:13:04pm\"]]', 0, 0, 'received', '2022-04-25 09:43:04'),
(123, 7, 94, 20, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"25-04-2022 04:44:22pm\"],[\"processed\",\"2022-04-25 16:44:45\"],[\"shipped\",\"2022-04-25 16:44:45\"],[\"delivered\",\"2022-04-25 16:44:45\"]]', 1799.88, 13199.12, 'delivered', '2022-04-25 11:14:22'),
(124, 7, 95, 20, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"25-04-2022 04:46:20pm\"],[\"processed\",\"2022-04-25 16:46:48\"],[\"shipped\",\"2022-04-25 16:46:48\"],[\"delivered\",\"2022-04-25 16:46:48\"]]', 1799.88, 13199.12, 'delivered', '2022-04-25 11:16:20'),
(125, 2, 96, 3, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"25-04-2022 05:09:28pm\"],[\"processed\",\"2022-04-25 17:12:32\"],[\"shipped\",\"2022-04-25 17:12:32\"],[\"delivered\",\"2022-04-25 17:12:32\"]]', 1799.88, 13199.12, 'delivered', '2022-04-25 11:39:28'),
(126, 2, 97, 3, 23, 1, 0, 'realme', 'black', 51, 2, 14999, NULL, 2, 0, 0, 29998, NULL, '[[\"received\",\"25-04-2022 05:15:28pm\"],[\"processed\",\"2022-04-25 17:15:56\"],[\"shipped\",\"2022-04-25 17:15:56\"],[\"delivered\",\"2022-04-25 17:15:56\"]]', 3599.76, 26398.24, 'delivered', '2022-04-25 11:45:28'),
(127, 2, 98, 3, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"25-04-2022 05:16:34pm\"],[\"processed\",\"2022-04-25 17:16:54\"],[\"shipped\",\"2022-04-25 17:16:54\"],[\"delivered\",\"2022-04-25 17:16:54\"]]', 1799.88, 13199.12, 'delivered', '2022-04-25 11:46:34'),
(128, 1, 99, 3, 23, 1, 0, 'realme', 'black', 51, 3, 14999, NULL, 2, 0, 0, 44997, NULL, '[[\"received\",\"25-04-2022 05:24:41pm\"],[\"processed\",\"2022-04-25 17:25:20\"],[\"shipped\",\"2022-04-25 17:25:20\"],[\"delivered\",\"2022-04-25 17:25:20\"]]', 5399.64, 39597.36, 'delivered', '2022-04-25 11:54:41'),
(129, 1, 100, 14, 23, 1, 0, 'realme', 'white', 52, 3, 15999, NULL, 2, 0, 0, 47997, NULL, '[[\"received\",\"25-04-2022 05:26:19pm\"],[\"processed\",\"2022-04-25 17:26:49\"],[\"shipped\",\"2022-04-25 17:26:49\"],[\"delivered\",\"2022-04-25 17:26:49\"]]', 5759.64, 42237.36, 'delivered', '2022-04-25 11:56:19'),
(130, 1, 101, 3, 23, 1, 0, 'realme', 'black', 51, 3, 14999, NULL, 2, 0, 0, 44997, NULL, '[[\"received\",\"25-04-2022 05:27:31pm\"],[\"processed\",\"2022-04-25 17:28:01\"],[\"shipped\",\"2022-04-25 17:28:01\"],[\"delivered\",\"2022-04-25 17:28:01\"]]', 5399.64, 39597.36, 'delivered', '2022-04-25 11:57:31'),
(131, 1, 102, 3, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"25-04-2022 05:30:51pm\"],[\"processed\",\"2022-04-25 17:31:33\"],[\"shipped\",\"2022-04-25 17:31:33\"],[\"delivered\",\"2022-04-25 17:31:33\"]]', 1799.88, 13199.12, 'delivered', '2022-04-25 12:00:51'),
(132, 2, 103, 3, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"25-04-2022 05:45:04pm\"],[\"processed\",\"2022-04-25 17:45:55\"],[\"shipped\",\"2022-04-25 17:45:55\"],[\"delivered\",\"2022-04-25 17:45:55\"]]', 1799.88, 13199.12, 'delivered', '2022-04-25 12:15:04'),
(133, 1, 104, 17, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"26-04-2022 08:11:34am\"],[\"processed\",\"2022-04-26 08:12:06\"],[\"shipped\",\"2022-04-26 08:12:06\"],[\"delivered\",\"2022-04-26 08:12:06\"]]', 1799.88, 13199.12, 'delivered', '2022-04-26 02:41:34'),
(134, 1, 105, 17, 23, 1, 0, 'realme', 'black', 51, 1, 14999, NULL, 2, 0, 0, 14999, NULL, '[[\"received\",\"26-04-2022 08:13:30am\"],[\"processed\",\"2022-04-26 08:14:00\"],[\"shipped\",\"2022-04-26 08:14:00\"],[\"delivered\",\"2022-04-26 08:14:00\"]]', 1799.88, 13199.12, 'delivered', '2022-04-26 02:43:30'),
(135, 7, 106, 14, 2, 0, 0, 'T - Shirt', '', 91, 1, 800, NULL, 5, 40, 0, 800, NULL, '[[\"received\",\"09-05-2022 03:07:14pm\"],[\"processed\",\"2022-05-09 15:10:49\"],[\"shipped\",\"2022-05-09 15:10:49\"],[\"delivered\",\"2022-05-09 15:10:49\"]]', 0, 0, 'delivered', '2022-05-09 09:37:14'),
(136, 7, 106, 14, 4, 0, 0, 'realme', 'black', 49, 1, 14999, NULL, 2, 299.98, 0, 14999, NULL, '[[\"received\",\"09-05-2022 03:07:14pm\"],[\"processed\",\"2022-05-09 15:10:49\"],[\"shipped\",\"2022-05-09 15:10:49\"],[\"delivered\",\"2022-05-09 15:10:49\"]]', 0, 0, 'delivered', '2022-05-09 09:37:14'),
(137, 7, 106, 14, 4, 0, 0, 'Single Layer Active Sports Face Mask', 'black', 55, 1, 80, NULL, 2, 1.6, 0, 80, NULL, '[[\"received\",\"09-05-2022 03:07:14pm\"],[\"processed\",\"2022-05-09 15:10:49\"],[\"shipped\",\"2022-05-09 15:10:49\"],[\"delivered\",\"2022-05-09 15:10:49\"]]', 0, 0, 'delivered', '2022-05-09 09:37:14'),
(138, 7, 107, 14, 19, 0, 0, 'country_test', '', 181, 1, 100, NULL, 2, 2, 0, 100, NULL, '[[\"received\",\"09-05-2022 03:59:57pm\"],[\"processed\",\"2022-05-09 16:00:44\"],[\"shipped\",\"2022-05-09 16:00:44\"],[\"delivered\",\"2022-05-09 16:00:44\"]]', 0, 0, 'delivered', '2022-05-09 10:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `order_tracking`
--

CREATE TABLE `order_tracking` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `courier_agency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_tracking`
--

INSERT INTO `order_tracking` (`id`, `order_id`, `order_item_id`, `courier_agency`, `tracking_id`, `url`, `date_created`) VALUES
(1, 26, 33, 'csdfc', 'sfcs', 'sdfcvs', '2022-03-16 05:03:49'),
(2, 25, 32, 'Prince courier agenc', 'T101', 'prince courier', '2022-03-16 05:07:25'),
(3, 0, 58, 'test', '12', 'kalana.com', '2022-04-11 11:04:49'),
(4, 0, 117, 'testing', 'qwe', 'jfjdjd.com', '2022-04-21 05:35:39'),
(5, 0, 118, 'gdjg', '54', 'cdhdhf', '2022-04-21 05:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_address` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_requested` int(11) NOT NULL,
  `remarks` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `user_id`, `payment_type`, `payment_address`, `amount_requested`, `remarks`, `status`, `date_created`) VALUES
(1, 14, 'delivery_boy', 'ddf', 44, NULL, 0, '2022-03-17 05:52:03'),
(2, 2, 'seller', 'ff', 25, NULL, 0, '2022-04-12 07:15:08'),
(3, 3, 'delivery_boy', 'dae dyo', 500, NULL, 0, '2022-04-22 12:10:54'),
(4, 3, 'delivery_boy', 'dae dyo', 500, NULL, 0, '2022-04-22 12:11:03'),
(5, 3, 'delivery_boy', 'dae dyob', 500, NULL, 0, '2022-04-22 12:11:09'),
(6, 3, 'delivery_boy', 'dae dyo please', 500, NULL, 0, '2022-04-22 12:11:34'),
(7, 3, 'delivery_boy', 'dae dyo please', 72, NULL, 0, '2022-04-22 12:12:01'),
(8, 3, 'delivery_boy', '123456789\nifsc12345', 10, NULL, 0, '2022-04-25 05:12:57'),
(9, 3, 'delivery_boy', '123456789\nifsc1234\nqwist', 10, NULL, 0, '2022-04-25 05:14:32'),
(10, 3, 'delivery_boy', '123456789\nifsc1234\nqwist', 10, 'test', 1, '2022-04-25 05:20:06'),
(11, 3, 'delivery_boy', '123456789\nifsc1234\nqwist', 10, NULL, 1, '2022-04-25 05:24:31'),
(12, 20, 'delivery_boy', 'test', 10, NULL, 1, '2022-04-25 06:09:13'),
(13, 20, 'delivery_boy', 'test', 10, NULL, 0, '2022-04-25 06:09:19'),
(14, 3, 'delivery_boy', 'tewt', 6, 'ggh', 1, '2022-04-25 06:37:13'),
(15, 3, 'delivery_boy', '24556677788\nig4566\nfghhh', 20, NULL, 1, '2022-04-25 06:38:55'),
(16, 20, 'delivery_boy', 'test', 35, 'jyte', 1, '2022-04-25 11:17:53'),
(17, 20, 'delivery_boy', 'bnnb', 371, 'tyht', 1, '2022-04-25 11:48:15'),
(18, 20, 'delivery_boy', 'jyj', 3500, NULL, 1, '2022-04-25 11:48:41'),
(19, 20, 'delivery_boy', '\'{', 10, '\\\'ipo', 2, '2022-04-25 11:49:09'),
(20, 20, 'delivery_boy', 'tghr', 90, NULL, 2, '2022-04-25 12:03:00'),
(21, 20, 'delivery_boy', 'fghb', 20, NULL, 0, '2022-04-25 12:03:47'),
(22, 20, 'delivery_boy', 'fghb', 30, NULL, 0, '2022-04-25 12:03:57'),
(23, 20, 'delivery_boy', 'fghb', 40, NULL, 0, '2022-04-25 12:04:04'),
(24, 20, 'delivery_boy', 'fghb', 20, 'fsed', 2, '2022-04-25 12:04:10'),
(25, 20, 'delivery_boy', '54t', 90, 'wefd', 2, '2022-04-25 12:05:05'),
(26, 20, 'delivery_boy', 'xcvcx', 20, NULL, 0, '2022-04-25 12:05:48'),
(27, 3, 'delivery_boy', '123456788(', 10, NULL, 1, '2022-04-25 12:05:50'),
(28, 20, 'delivery_boy', 'we', 90, 'ewdrseerer', 2, '2022-04-25 12:06:17'),
(29, 3, 'delivery_boy', 'rg', 30, NULL, 1, '2022-04-25 12:06:38'),
(30, 3, 'delivery_boy', 'rgh', 50, NULL, 2, '2022-04-25 12:07:33'),
(31, 3, 'delivery_boy', 'gh', 20, NULL, 0, '2022-04-25 12:08:58'),
(32, 3, 'delivery_boy', 'gh', 20, NULL, 2, '2022-04-25 12:12:56'),
(33, 2, 'seller', 'dfhd', 2500, 'testing', 2, '2022-04-29 06:50:48'),
(34, 2, 'seller', 'ftgg', 10, NULL, 0, '2022-04-29 06:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_identity` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `tax` double DEFAULT NULL,
  `row_order` int(11) DEFAULT 0,
  `type` varchar(34) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 =>''Simple_Product_Stock_Active'' 1 => "Product_Level" 1 => "Variable_Level"',
  `name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicator` tinyint(4) DEFAULT NULL COMMENT '0 - none | 1 - veg | 2 - non-veg',
  `cod_allowed` int(11) NOT NULL DEFAULT 1,
  `minimum_order_quantity` int(11) NOT NULL DEFAULT 1,
  `quantity_step_size` int(11) NOT NULL DEFAULT 1,
  `total_allowed_quantity` int(11) DEFAULT NULL,
  `is_prices_inclusive_tax` int(11) NOT NULL DEFAULT 0,
  `is_returnable` int(11) DEFAULT 0,
  `is_cancelable` int(11) DEFAULT 0,
  `cancelable_till` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_attachment_required` tinyint(4) DEFAULT 0,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_images` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_period` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantee_period` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `made_in` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `availability` tinyint(4) DEFAULT NULL,
  `rating` double DEFAULT 0,
  `no_of_ratings` int(11) DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliverable_type` int(11) NOT NULL DEFAULT 1 COMMENT '(0:none, 1:all, 2:include, 3:exclude)',
  `deliverable_zipcodes` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_identity`, `category_id`, `seller_id`, `tax`, `row_order`, `type`, `stock_type`, `name`, `short_description`, `slug`, `indicator`, `cod_allowed`, `minimum_order_quantity`, `quantity_step_size`, `total_allowed_quantity`, `is_prices_inclusive_tax`, `is_returnable`, `is_cancelable`, `cancelable_till`, `is_attachment_required`, `image`, `other_images`, `video_type`, `video`, `tags`, `warranty_period`, `guarantee_period`, `made_in`, `sku`, `stock`, `availability`, `rating`, `no_of_ratings`, `description`, `deliverable_type`, `deliverable_zipcodes`, `status`, `date_added`) VALUES
(11, NULL, 1, 2, 1, 0, 'simple_product', NULL, 'Woman\\\'s Dress', 'Woman\\\'s Dress', 'womans-dress-1', 0, 1, 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2021/women_fashion_(1).png', '[]', '', '', 'Woman\\\\\\\'s Dress', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:32:52'),
(12, NULL, 4, 2, 1, 9, 'variable_product', NULL, 'carrot', 'carrot', 'carrot', 0, 1, 1, 1, 20, 0, 0, 0, NULL, 0, 'uploads/media/2021/vagi_carrots_6.png', '[]', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:34:48'),
(14, NULL, 4, 2, 1, 11, 'variable_product', NULL, 'karela', 'karela', 'karela', 0, 1, 1, 1, 50, 1, 0, 0, NULL, 0, 'uploads/media/2021/vagi_bitter_2.png', '[\"uploads\\/media\\/2021\\/vagi_bitter_1_(1).png\",\"uploads\\/media\\/2021\\/vagi_bitter_1.png\"]', '', '', 'karela', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:38:03'),
(15, NULL, 7, 24, 1, 12, 'variable_product', NULL, 'Sarape Face Mask', 'Adjustable Knotted Soft Elastic - Unisex Adult Size - 2 Layer, Reusable, Washable', 'sarape-face-mask-1', 0, 1, 1, 1, 20, 1, 1, 1, 'received', 0, 'uploads/media/2021/il_794xN_2998522784_30im.jpg', '[]', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0, '<p>Adjustable Knotted Soft Elastic - Unisex Adult Size - 2 Layer, Reusable, Washable<br></p>', 1, NULL, 1, '2022-01-01 07:41:07'),
(16, NULL, 5, 2, 1, 13, 'simple_product', NULL, 'Cat Face Mask', 'Cat Face Mask', 'cat-face-mask', 0, 1, 1, 1, 20, 1, 0, 0, NULL, 0, 'uploads/media/2021/il_1140xN_2725790893_3xzs.jpg', '[\"uploads\\/media\\/2021\\/il_1140xN_771287191_rbrb.jpg\",\"uploads\\/media\\/2021\\/il_1140xN_2352777240_5grn.jpg\",\"uploads\\/media\\/2021\\/il_1140xN_2725791245_jhxd.jpg\"]', '', '', '', '', '', 'india', NULL, NULL, NULL, 0, 0, '<p>Black Cat Mouth Cover - Cute Nose Mask Feline Kitten Nose Cover - Anti Pollution Dust Mask Kawaii Cosplay Harajuku Mask<br></p>', 1, NULL, 1, '2022-01-01 07:42:34'),
(6, NULL, 6, 2, 1, 14, 'simple_product', '0', 'LEOTUDE Regular Fit Half Sleeve Men\\\'s T-Shirt', 'A Style For Every Story introding the colorful trendy texture of fashion for all generations in extreme fashionable wardrobe collection', 'leotude-regular-fit-half-sleeve-mens-t-shirt', 0, 1, 1, 1, 5, 1, 1, 1, 'processed', 0, 'uploads/media/2021/41nvyksD5lL.jpg', '[\"uploads\\/media\\/2021\\/61VXloEmP1L__UL1262_1.jpg\",\"uploads\\/media\\/2021\\/61Sgn8YNKRS__UL1387_.jpg\"]', '', '', 'T-shirt', '', '', 'INDIA', '123456', 100, 1, 0, 0, '<ul class=\\\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\\\" style=\\\"margin-right: 0px; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\\\"><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">Product Dimensions ‏ : ‎&nbsp;</span>23 x 21 x 2 cm; 150 Grams</span></li><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">Date First Available ‏ : ‎&nbsp;</span>16 August 2021</span></li><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">ASIN ‏ : ‎&nbsp;</span>B09CV54MCJ</span></li><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">Item part number ‏ : ‎&nbsp;</span>18_NVVY_P</span></li><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">Department ‏ : ‎&nbsp;</span>Men</span></li><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">Packer ‏ : ‎&nbsp;</span>Leotude</span></li><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">Item Weight ‏ : ‎&nbsp;</span>150 g</span></li><li style=\\\"list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\\\"><span class=\\\"a-list-item\\\"><span class=\\\"a-text-bold\\\" style=\\\"font-weight: 700 !important;\\\">Item Dimensions LxWxH ‏ : ‎&nbsp;</span>23 x 21 x 2 Centimeters</span></li></ul>', 1, NULL, 1, '2021-12-31 11:46:01'),
(8, NULL, 1, 2, 1, 15, 'simple_product', NULL, 'Floral Print Button-Down A-line Dress with Ruffled', 'Floral Print Button-Down A-line Dress with Ruffled', 'floral-print-button-down-a-line-dress-with-ruffled', 0, 1, 1, 1, 10, 1, 1, 1, 'received', 0, 'uploads/media/2021/women_fashion_(1).png', '[]', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:13:56'),
(9, NULL, 6, 2, 1, 16, 'simple_product', NULL, 'front end swatch product', 'front end swatch product', 'front-end-swatch-product', 0, 1, 1, 1, NULL, 0, 1, 0, NULL, 0, 'uploads/media/2021/51YuwHpqBUL__UL1100_.jpg', '[]', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:26:04'),
(10, NULL, 1, 2, 1, 17, 'variable_product', NULL, 'men\\\'s shirt', 'men\\\'s shirt', 'mens-shirt', 0, 1, 1, 1, NULL, 1, 1, 1, 'received', 0, 'uploads/media/2021/51Q5ZCo05NL__UL1100_.jpg', '[\"uploads\\/media\\/2021\\/51T91MFX0mL__UL1100_.jpg\",\"uploads\\/media\\/2021\\/51YuwHpqBUL__UL1100_.jpg\"]', '', '', 'shirt', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:28:03'),
(17, NULL, 2, 2, 1, 18, 'variable_product', NULL, 'iphone 13', 'iphone 13', 'iphone-13', 0, 0, 1, 1, 8, 0, 0, 0, NULL, 0, 'uploads/media/2021/iphone2.jpg', '[]', '', '', 'iphone 13', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:44:20'),
(18, NULL, 2, 2, 1, 19, 'simple_product', NULL, 'samsung s10', 'samsung s10', 'samsung-s10', 0, 1, 1, 1, 2, 1, 1, 1, 'received', 0, 'uploads/media/2021/mobile_3.jpeg', '[\"uploads\\/media\\/2021\\/mobile_4.jpeg\"]', '', '', 'samsung s10', '', '', '', NULL, NULL, NULL, 0, 0, '<p>samsung s10<br></p>', 1, NULL, 1, '2022-01-01 07:45:51'),
(19, NULL, 4, 2, 1, 20, 'variable_product', NULL, 'potato', 'potato', 'potato', 1, 1, 1, 1, 50, 1, 0, 0, NULL, 0, 'uploads/media/2021/potato_a.png', '[\"uploads\\/media\\/2021\\/potato_b.png\",\"uploads\\/media\\/2021\\/potato_c.png\",\"uploads\\/media\\/2021\\/potato_a.png\"]', '', '', 'potato', '', '', 'india', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:48:10'),
(20, NULL, 3, 2, 1, 21, 'simple_product', NULL, 'CP PLUS 1 MP HD IR Bullet Camera - 20 Mtr', 'Available at a lower price from other sellers that may not offer free Prime shipping', 'cp-plus-1-mp-hd-ir-bullet-camera-20-mtr-1', 0, 1, 1, 1, 4, 1, 1, 1, 'received', 0, 'uploads/media/2021/ccTV.jpg', '[]', '', '', 'camera', '1 Year Warranty', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 07:50:06'),
(21, NULL, 3, 2, 1, 22, 'variable_product', NULL, 'Split AC 1.5T 5 Star', 'ac', 'split-ac-15t-5-star', 0, 1, 1, 1, 2, 0, 0, 1, 'received', 0, 'uploads/media/2021/ac.jpg', '[]', '', '', '', '2 Year Warranty', '', '', NULL, NULL, NULL, 4, 1, '', 1, NULL, 1, '2022-01-01 08:11:30'),
(22, NULL, 5, 2, 1, 23, 'simple_product', NULL, 'Black/Navy Subtly Patterned Overhead Three Layer Medium/Large Face Mask', 'Nose Wire, Filter Pocket, Adjustable Overhead Elastic & Toggle', 'blacknavy-subtly-patterned-overhead-three-layer-mediumlarge-face-mask-1', 0, 1, 1, 1, 50, 1, 1, 1, 'received', 0, 'uploads/media/2021/il_794xN_2370234822_f8td.jpg', '[\"uploads\\/media\\/2021\\/il_794xN_2697185910_2oy6.jpg\",\"uploads\\/media\\/2021\\/il_794xN_2697206720_3zvc.jpg\",\"uploads\\/media\\/2021\\/il_794xN_2744865161_9ar7.jpg\"]', '', '', 'mask,covid', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 08:24:34'),
(23, NULL, 1, 2, 1, 24, 'variable_product', '1', 'watch', 'watch', 'watch-1', 1, 1, 1, 1, 2, 1, 1, 1, 'received', 0, 'uploads/media/2021/watch.jpg', '[]', '', '', 'watch, time, ', '10', '1 year', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-01-01 08:26:57'),
(24, NULL, 2, 4, 1, 25, 'simple_product', NULL, 'Redmi note 8', 'Redmi note 8', 'redmi-note-1', 0, 1, 2, 2, 20, 0, 1, 0, '', 0, 'uploads/media/2021/mobile_6.jpg', '[]', '', '', 'Redmi note 8', '', '1 year', '', NULL, NULL, NULL, 1, 1, '', 1, NULL, 1, '2022-01-01 09:43:26'),
(25, NULL, 2, 4, 1, 26, 'variable_product', NULL, 'realme', 'realme', 'realme', 0, 1, 1, 1, NULL, 1, 0, 0, NULL, 0, 'uploads/media/2021/mobile_4.jpeg', '[]', '', '', 'realme', '', '', '', NULL, NULL, NULL, 1, 1, '', 1, NULL, 1, '2022-01-01 09:45:14'),
(26, NULL, 6, 23, 1, 27, 'variable_product', NULL, 'realme', 'realme', 'realme-2', 0, 1, 1, 1, NULL, 1, 0, 0, '', 0, 'uploads/media/2021/mobile_4.jpeg', '[]', '', '', 'realme', '', '', '', NULL, NULL, NULL, 3, 1, '', 1, NULL, 1, '2022-01-01 09:46:21'),
(28, NULL, 5, 4, 1, 29, 'variable_product', NULL, 'Single Layer Active Sports Face Mask', 'Black, Navy Athletic Face Mask, Workout Gym Face Mask - Cool Mesh Face Mask', 'single-layer-active-sports-face-mask', 0, 1, 1, 1, 20, 1, 0, 0, NULL, 0, 'uploads/media/2021/il_794xN_2998522136_de9y.jpg', '[\"uploads\\/media\\/2021\\/il_794xN_2370234822_f8td.jpg\"]', '', '', 'mask,covid', '', '', '', NULL, NULL, NULL, 1, 1, '', 1, NULL, 1, '2022-01-01 09:51:41'),
(30, NULL, 3, 2, 1, 31, 'simple_product', NULL, 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', 'Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)', 'fashion-multifunctional-hand-mixer-for-egg-beater-and-food-blender-with-7-speed-handheld-processor-automatic-electric-kitchen-tool-white-1', 0, 1, 1, 1, 2, 0, 0, 0, '', 0, 'uploads/media/2021/31drcwxxNJL.jpg', '[]', '', '', 'mixer,electronics', '', '', NULL, NULL, NULL, NULL, 5, 1, '<p>Fashion Multifunctional Hand Mixer for Egg Beater and Food Blender with 7 Speed Handheld Processor Automatic Electric Kitchen Tool (White)<br></p>', 1, NULL, 1, '2022-01-01 09:54:46'),
(36, NULL, 11, 1255, 0, 33, 'simple_product', NULL, 'test', 'test', 'test', NULL, 0, 1, 1, NULL, 0, 0, 0, NULL, 0, 'uploads/media/2021/51Lv37fiwTL__UL1100_.jpg', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, '2022-01-31 09:59:17'),
(37, NULL, 6, 4, 1, 34, 'simple_product', '0', 'test', 'mobile', 'test-4', 1, 0, 2, 2, 40, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220117-141822_One_UI_Home.jpg', '[]', '', '', '', '', '', 'INDIA', NULL, 95, 1, 4, 1, '', 1, NULL, 1, '2022-02-09 10:05:19'),
(48, NULL, 7, 2, 2, 1, 'simple_product', '1', 'T - Shirt', 'Polo T - Shirt', 't-shirt', 1, 1, 1, 1, 1, 1, 0, 0, '', 0, 'uploads/media/2022/Screenshot_from_2022-03-12_10-54-45.png', '[]', '', '', 'polo,  tshirt,  polo tshirt,  t,  p,  shirt,  girls,  womens,  women fashion,  fashion,  , ', '1 year', '1 year', 'India', '68', 25, 1, 3, 1, '<p>-</p>', 1, NULL, 1, '2022-03-17 04:53:25'),
(59, NULL, 4, 19, 1, 0, 'simple_product', NULL, 'test vegetable', 'test vegetables', 'test-vegetable', 0, 0, 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2022/painting_art.jpg', '[]', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-03-29 06:35:53'),
(38, NULL, 1, 2, 0, 35, 'simple_product', '0', 'test', 'test', 'test-3', 0, 0, 1, 1, 25, 0, 0, 1, 'received', 1, 'uploads/media/2022/Screenshot_20220117-141822_One_UI_Home3.jpg', '[]', '', '', '', 'ry', 'th', 'rc', 'guj', 20, 1, 0, 0, 'product_level', 1, NULL, 1, '2022-02-21 03:41:31'),
(62, NULL, 7, 25, 2, 0, 'variable_product', '2', 'Variant Testing', 'testing desc', 'variant-testing-1', 1, 1, 1, 1, 235, 1, 1, 1, 'processed', 0, 'uploads/media/2022/Screenshot_from_2022-03-12_10-54-45.png', '[\"uploads\\/media\\/2022\\/Screenshot_from_2022-03-12_10-54-45.png\",\"uploads\\/media\\/2022\\/painting_art.jpg\",\"uploads\\/media\\/2022\\/badminton.png\",\"uploads\\/media\\/2022\\/milkyway.jpg\"]', 'vimeo', 'no video please', 'dfsdf', '4 di ma bagde to pesa pacha', 'NO', 'INDIA', NULL, NULL, NULL, 0, 0, '<p>dgdfgfd</p>', 2, '1', 1, '2022-04-15 05:57:35'),
(41, NULL, 1, 2, 1, 2, 'simple_product', '0', 'test', 'test', 'test-6', 0, 0, 1, 1, 25, 0, 0, 0, '', 1, 'uploads/media/2022/Screenshot_20220117-141822_One_UI_Home3.jpg', '[]', '', '', '', 'ry', 'th', 'rc', 'guj', 16, 1, 0, 0, 'product_level', 1, NULL, 1, '2022-03-05 02:47:16'),
(58, NULL, 5, 16, 1, 0, 'simple_product', '0', 'sdgdf', 'asdsf', 'sdgdf', 0, 1, 1, 1, 55, 1, 1, 1, 'received', 0, 'uploads/media/2022/indianclassicalart.jpg', '[]', '', '', '', 'gh', 'dg', '', '56', 0, 0, 4, 2, '', 1, NULL, 1, '2022-03-22 09:19:05'),
(42, NULL, 1, 21, 1, 4, 'simple_product', NULL, 'test 2', 'test 2', 'test-1', 0, 0, 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2022/31drcwxxNJL.jpg', '[]', '', '', 'test 2', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-03-05 03:38:15'),
(43, NULL, 6, 22, 1, 5, 'variable_product', NULL, 'testing for sku\\\'s', 'dfgdfg', 'testing-for-skus-1', 1, 0, 1, 1, 21, 0, 0, 0, '', 1, 'uploads/media/2022/Screenshot_20220117-141822_One_UI_Home3.jpg', '[\"uploads\\/media\\/2022\\/Screenshot_20220117-141822_One_UI_Home3.jpg\"]', 'self_hosted', 'uploads/media/2022/20220203_162429.mp4', 'dfgdfgd', '4 di ma bagde to pesa pacha', 'NO', 'INDIA', NULL, NULL, NULL, 0, 0, '<p>dsfdsf</p>', 1, NULL, 1, '2022-03-09 06:01:41'),
(45, NULL, 1, 2, 1, 7, 'simple_product', '0', 'silver ornaments', 'silver store', 'silver-ornaments-1', 1, 0, 1, 1, 10, 0, 1, 1, 'processed', 0, 'uploads/media/2022/silver.jpg', '[]', 'youtube', 'https://www.youtube.com/watch?v=Kt4DVlR4NKo', '#silver,#ornaments,#fashion,#women,#girls', '1 year', 'Life Time', 'India', '10', 10, 1, 0, 0, '<p>Silver Ornaments</p>', 1, NULL, 1, '2022-03-15 09:39:24'),
(60, NULL, 1, 19, 3, 0, 'simple_product', NULL, 'TEST FASHION', 'TEST FASHION', 'test-fashion', 0, 0, 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2022/milkyway.jpg', '[]', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0, '', 1, NULL, 1, '2022-03-29 06:36:58'),
(61, NULL, 7, 2, 1, 0, 'simple_product', NULL, 'TEST SUB CATEGORY', 'TEST SUB CATEGORY', 'test-sub-category', 0, 1, 1, 1, NULL, 1, 0, 1, 'received', 0, 'uploads/media/2022/indianclassicalart.jpg', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, 3, 1, '<table class=\\\"table table-bordered\\\" style=\\\"color: rgb(0, 0, 0); font-size: 1rem;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><span style=\\\"font-size: 36px;\\\">NAME</span></td>\\r\\n<td>\\r\\n<h1><span style=\\\"background-color: rgb(0, 255, 0);\\\">Honeywell CP-400W Car Power, Platinum Serie<s style=\\\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 36px;\\\">s</s></span></h1>\\r\\n</td>\\r\\n</tr>\\r\\n<tr>\\r\\n<td>BRAND</td>\\r\\n<td><span style=\\\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(251, 251, 251);\\\">Honeywell</span></td>\\r\\n</tr>\\r\\n<tr>\\r\\n<td><span style=\\\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase;\\\">FUNCTION</span></td>\\r\\n<td><span style=\\\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\\\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span></td>\\r\\n</tr>\\r\\n<tr>\\r\\n<td><span style=\\\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; background-color: rgb(251, 251, 251);\\\">MODEL</span></td>\\r\\n<td>NO</td>\\r\\n</tr>\\r\\n<tr>\\r\\n<td><span style=\\\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase;\\\">COLOR TYPE</span></td>\\r\\n<td>Silver</td>\\r\\n</tr>\\r\\n<tr>\\r\\n<td>&nbsp;</td>\\r\\n<td>&nbsp;</td>\\r\\n</tr>\\r\\n<tr>\\r\\n<td>&nbsp;</td>\\r\\n<td>&nbsp;</td>\\r\\n</tr>\\r\\n</tbody>\\r\\n</table>\\r\\n<p>&nbsp;</p>', 1, NULL, 1, '2022-03-29 06:37:40'),
(47, NULL, 6, 4, 1, 8, 'simple_product', '0', 'silver ornaments', 'silver store', 'silver-ornaments', 1, 1, 1, 1, 10, 1, 1, 1, 'processed', 0, 'uploads/media/2022/silver.jpg', '[]', 'youtube', 'https://www.youtube.com/watch?v=Kt4DVlR4NKo', '#silver,#ornaments,#fashion,#women,#girls', '1 year', 'Life Time', 'India', '10', 5, 1, 0, 0, '<p>Silver Ornaments</p>', 1, NULL, 1, '2022-03-15 09:39:56'),
(63, NULL, 2, 2, 1, 0, 'variable_product', '2', 'Variant Testing', 'dfgdf', 'variant-testing-2', 1, 1, 1, 12, 100, 1, 0, 1, 'processed', 0, 'uploads/media/2022/badminton.png', '[\"uploads\\/media\\/2022\\/painting_art.jpg\"]', 'vimeo', 'no video please', 'dfg', '4 di ma bagde to pesa pacha', 'NO', 'INDIA', NULL, NULL, NULL, 4, 1, '<p>testing</p><p><a href=\\\"https://codecanyon.net/popular_item/by_category?category=mobile\\\" target=\\\"_blank\\\">click me</a><br></p>', 2, '1', 1, '2022-04-15 07:20:05'),
(65, NULL, 5, 2, 2, 0, 'simple_product', '1', 'hfhggg', 'trygg', 'hfhggg', 1, 1, 2, 5, 65666, 1, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220419-1759231.png', '[\"uploads\\/media\\/2022\\/Screenshot_20220419-175923.png\",\"uploads\\/media\\/2022\\/fashion1.png\"]', 'youtube', 'gtugg', 'ffhhf³', 'yu', 'gu', '4', 'tgg', 65, 1, 0, 0, '<p>Ggvfjygfrgryggdvk</p>', 2, '370002', 1, '2022-04-21 07:25:35'),
(66, NULL, 4, 2, 2, 0, 'simple_product', '0', 'spaghetti', 'Chinese', 'spaghetti-1', 1, 1, 1, 1, 20, 0, 1, 1, 'processed', 0, 'uploads/media/2022/Screenshot_20220419-1759231.png', '[\"uploads\\/media\\/2022\\/fashion1.png\"]', 'youtube', 'shjkhff', '', '1', '1', 'india', '20', 20, 1, 0, 0, '', 1, NULL, 1, '2022-04-21 09:47:11'),
(128, NULL, 11, 2, 0, 0, 'variable_product', NULL, 'test', 'fyg', 'test-2', NULL, 0, 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220415-164023.jpg', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-27 04:24:48'),
(131, NULL, 1, 2, 1, 0, 'variable_product', NULL, 'test variant images', 'test variant images', 'test-variant-images', 0, 1, 1, 1, NULL, 0, 1, 0, '', 0, 'uploads/media/2022/banner_2.png', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '', 1, NULL, 2, '2022-04-27 06:49:39'),
(130, NULL, 11, 2, 0, 0, 'variable_product', NULL, 'test', 'fyg', 'test-7', NULL, 0, 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220415-164023.jpg', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-27 06:44:52'),
(132, NULL, 11, 2, 0, 0, 'variable_product', NULL, 'test', 'fyg', 'test-5', NULL, 0, 1, 1, NULL, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220415-164023.jpg', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-27 07:13:13'),
(133, NULL, 7, 2, 2, 0, 'simple_product', '1', 'guhg', 'fhujg', 'guhg', 1, 1, 22, 1, 236, 1, 1, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[\"uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220425-162924.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220426-1504422.jpg\"]', '', '', 'fhjj', 'gyu', 'fyu', 'erd', 'fty', 633, 1, 0, 0, NULL, 1, NULL, 2, '2022-04-29 04:49:27'),
(134, NULL, 7, 2, 2, 0, 'simple_product', '1', 'guhg', 'fhujg', 'guhg-1', 1, 1, 22, 1, 236, 1, 1, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[\"[uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220425-162924.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220426-1504422.jpg]\"]', '', '', 'fhjj', 'gyu', 'fyu', 'erd', 'fty', 633, 1, 0, 0, NULL, 1, NULL, 2, '2022-04-29 04:50:50'),
(135, NULL, 2, 2, 1, 0, 'variable_product', '1', 'abv', 'hgege', 'abv', 1, 1, 5, 5, 5995, 1, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[\"[uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg]\"]', '', '', 'abv', 'r', 'r', 'r', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 2, '2022-04-29 09:55:30'),
(143, NULL, 1, 19, 1, 0, 'simple_product', NULL, 'country_test', 'country_test', 'country_test', 0, 1, 1, 1, NULL, 1, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220426-1504421.jpg', '[]', '', '', '', '', '', 'India', NULL, NULL, NULL, 1, 1, '', 1, NULL, 1, '2022-05-03 08:22:01'),
(137, NULL, 2, 2, 1, 0, 'variable_product', '1', 'dixita mam', 'gshsshsh', 'dixita-mam', 1, 0, 1, 5, 255, 1, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[\"[uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg]\"]', '', '', 'shsh', 'ghh', 'gy', 'dgh', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-29 10:53:07'),
(138, NULL, 2, 2, 1, 0, 'variable_product', '1', 'dixita mam 2', 'gshsshsh', 'dixita-mam-2', 1, 0, 1, 5, 255, 1, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[\"[uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg]\"]', '', '', 'shsh', 'ghh', 'gy', 'dgh', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-29 10:54:40'),
(139, NULL, 7, 2, 1, 0, 'variable_product', '1', 'hdjdj', 'hdjdjdbdj', 'hdjdj', NULL, 1, 25, 5, 55, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[\"[uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg\",\" uploads\\/media\\/2022\\/Screenshot_20220425-162924.jpg]\"]', '', '', 'bbbjd', 'ghu', 'gyu', 'fyh', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-29 10:56:18'),
(140, NULL, 7, 2, 1, 0, 'variable_product', '1', 'dikshita mam 2', 'hdjdjdbdj', 'dikshita-mam-2', NULL, 1, 25, 5, 55, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[\"uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220425-162924.jpg\"]', '', '', 'bbbjd', 'ghu', 'gyu', 'fyh', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-29 11:01:04'),
(141, NULL, 3, 2, 0, 0, 'simple_product', '1', 'gdhf', 'gdhhg', 'gdhf', NULL, 0, 25, 5, 1, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[]', '', '', '', 'ehf', 'fsg', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-29 11:31:43'),
(142, NULL, 6, 2, 0, 0, 'simple_product', '1', 'sdgsfdd', 'sdfsdfdsf', 'sdgsfdd', NULL, 0, 5, 9, 26, 0, 0, 0, '', 0, 'uploads/media/2022/Screenshot_20220412-1616111.jpg', '[]', '', '', '', 'sdf', 'sdffsd', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 2, '2022-04-29 17:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_value_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_value_ids`, `date_created`) VALUES
(6, 6, '', '2021-12-31 11:46:01'),
(8, 8, '', '2022-01-01 07:13:56'),
(9, 9, '', '2022-01-01 07:26:04'),
(10, 10, '1,2,3', '2022-01-01 07:28:03'),
(11, 11, '', '2022-01-01 07:32:52'),
(12, 12, '6,7,8,9', '2022-01-01 07:34:48'),
(14, 14, '6,7,8', '2022-01-01 07:38:03'),
(15, 15, '4,5,1,2,3', '2022-01-01 07:41:07'),
(16, 16, '', '2022-01-01 07:42:34'),
(17, 17, '4,5', '2022-01-01 07:44:20'),
(18, 18, '', '2022-01-01 07:45:51'),
(19, 19, '6,7,8,9', '2022-01-01 07:48:10'),
(20, 20, '', '2022-01-01 07:50:06'),
(21, 21, '10,11', '2022-01-01 08:11:30'),
(22, 22, '', '2022-01-01 08:24:34'),
(23, 23, '4,10,11', '2022-01-01 08:26:57'),
(24, 24, '', '2022-01-01 09:43:26'),
(25, 25, '4,11', '2022-01-01 09:45:14'),
(26, 26, '4,11', '2022-01-01 09:46:21'),
(28, 28, '4,5,10,11', '2022-01-01 09:51:41'),
(30, 30, '', '2022-01-01 09:54:46'),
(36, 36, '', '2022-01-31 09:59:17'),
(37, 37, '', '2022-02-09 10:05:19'),
(38, 38, '', '2022-02-21 03:41:31'),
(41, 41, '', '2022-03-05 02:47:16'),
(42, 42, '', '2022-03-05 03:38:15'),
(43, 43, '1,2,3', '2022-03-09 06:01:41'),
(45, 45, '', '2022-03-15 09:39:24'),
(47, 47, '', '2022-03-15 09:39:56'),
(48, 48, '', '2022-03-17 04:53:26'),
(58, 58, '', '2022-03-22 09:19:05'),
(59, 59, '', '2022-03-29 06:35:53'),
(60, 60, '', '2022-03-29 06:36:58'),
(61, 61, '', '2022-03-29 06:37:40'),
(62, 62, '4,5,1,2', '2022-04-15 05:57:35'),
(63, 63, '4,5,1,2', '2022-04-15 07:20:05'),
(65, 65, '', '2022-04-21 07:25:35'),
(66, 66, '', '2022-04-21 09:47:11'),
(67, 67, '4,5,1,3', '2022-04-26 10:10:51'),
(68, 68, '4,5,1,3', '2022-04-26 10:11:16'),
(69, 69, '4,5,1,3', '2022-04-26 10:12:16'),
(70, 70, '4,5,1,3', '2022-04-26 10:12:44'),
(71, 71, '', '2022-04-26 10:41:59'),
(72, 72, '', '2022-04-26 10:43:46'),
(73, 73, '', '2022-04-26 10:45:54'),
(74, 74, '', '2022-04-26 10:45:57'),
(75, 75, '', '2022-04-26 10:46:31'),
(76, 76, '', '2022-04-26 10:47:25'),
(77, 77, '', '2022-04-26 10:47:53'),
(78, 78, '', '2022-04-26 10:49:36'),
(79, 79, '', '2022-04-26 10:57:42'),
(80, 80, '', '2022-04-26 11:02:11'),
(81, 81, '', '2022-04-26 11:13:52'),
(82, 82, '', '2022-04-26 11:15:00'),
(83, 83, '', '2022-04-26 11:17:17'),
(84, 84, '', '2022-04-26 11:19:22'),
(85, 85, '', '2022-04-26 11:20:02'),
(86, 86, '', '2022-04-26 11:38:20'),
(87, 87, '', '2022-04-26 11:39:46'),
(88, 88, '', '2022-04-26 11:41:16'),
(89, 89, '', '2022-04-26 11:42:59'),
(90, 90, '', '2022-04-26 11:43:19'),
(91, 91, '', '2022-04-26 11:46:10'),
(92, 92, '', '2022-04-26 11:47:52'),
(93, 93, '', '2022-04-26 11:49:02'),
(94, 94, '', '2022-04-26 11:50:41'),
(95, 95, '', '2022-04-26 11:55:59'),
(96, 96, '', '2022-04-26 12:00:22'),
(97, 97, '', '2022-04-26 12:01:51'),
(98, 98, '', '2022-04-26 12:10:53'),
(99, 99, '', '2022-04-26 12:12:44'),
(100, 100, '', '2022-04-26 12:14:10'),
(101, 101, '', '2022-04-26 12:15:27'),
(102, 102, '', '2022-04-26 12:16:24'),
(103, 103, '', '2022-04-27 02:43:05'),
(104, 104, '', '2022-04-27 02:49:38'),
(105, 105, '', '2022-04-27 02:50:41'),
(106, 106, '', '2022-04-27 02:55:40'),
(107, 107, '', '2022-04-27 02:57:01'),
(108, 108, '', '2022-04-27 02:57:22'),
(109, 109, '', '2022-04-27 02:58:10'),
(110, 110, '', '2022-04-27 02:58:34'),
(111, 111, '', '2022-04-27 03:00:18'),
(112, 112, '', '2022-04-27 03:00:54'),
(113, 113, '', '2022-04-27 03:01:40'),
(114, 114, '', '2022-04-27 03:02:10'),
(115, 115, '', '2022-04-27 03:02:59'),
(116, 116, '', '2022-04-27 03:03:16'),
(117, 117, '', '2022-04-27 03:05:12'),
(118, 118, '', '2022-04-27 03:05:28'),
(119, 119, '', '2022-04-27 03:06:37'),
(120, 120, '', '2022-04-27 03:07:11'),
(121, 121, '', '2022-04-27 03:08:17'),
(122, 122, '', '2022-04-27 03:09:25'),
(123, 123, '', '2022-04-27 03:09:40'),
(124, 124, '', '2022-04-27 03:09:56'),
(125, 125, '', '2022-04-27 03:39:28'),
(126, 126, '', '2022-04-27 03:51:28'),
(127, 127, '', '2022-04-27 04:22:15'),
(128, 128, '', '2022-04-27 04:24:48'),
(129, 129, '', '2022-04-27 06:07:42'),
(130, 130, '', '2022-04-27 06:44:52'),
(131, 131, '2,3,4,5', '2022-04-27 06:49:39'),
(132, 132, '', '2022-04-27 07:13:13'),
(133, 133, '', '2022-04-29 04:49:27'),
(134, 134, '', '2022-04-29 04:50:50'),
(135, 135, '8,5', '2022-04-29 09:55:30'),
(137, 137, '4,8', '2022-04-29 10:53:07'),
(138, 138, '4,8', '2022-04-29 10:54:40'),
(139, 139, '4,1', '2022-04-29 10:56:18'),
(140, 140, '4,1', '2022-04-29 11:01:04'),
(141, 141, '', '2022-04-29 11:31:43'),
(142, 142, '', '2022-04-29 17:49:53'),
(143, 143, '', '2022-05-03 08:22:01');


--
-- Table structure for table `product_faqs`
--

CREATE TABLE `product_faqs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT 0,
  `question` text,
  `answer` text,
  `answered_by` int(11) NOT NULL DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `images` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`id`, `user_id`, `product_id`, `rating`, `images`, `comment`, `data_added`) VALUES
(1, 1, 30, 5, NULL, NULL, '2022-02-11 10:29:50'),
(2, 7, 37, 4, '[\"uploads\\/review_image\\/Screenshot_20220312_1348561.jpg\"]', 'test', '2022-03-14 07:44:22'),
(3, 2, 58, 5, '[\"uploads\\/review_image\\/Screenshot_2022-03-14-16-35-11-919_in_bodhimart_mshop_android_shopping.jpg\"]', 'this product is just awesome please buy this ..........', '2022-04-07 09:40:12'),
(4, 7, 58, 3, '[\"uploads\\/review_image\\/placeholder_rectangel.png\",\"uploads\\/review_image\\/placeholder_square.png\",\"uploads\\/review_image\\/Screenshot_2022-03-14-16-35-11-919_in_bodhimart_mshop_android_shopping1.jpg\",\"uploads\\/review_image\\/Screenshot_20220122-171723.jpg\",\"uploads\\/review_image\\/Screenshot_20220211-063216.jpg\",\"uploads\\/review_image\\/Screenshot_20220211-063216_(1).jpg\",\"uploads\\/review_image\\/Screenshot_20220211-171706_Chrome.jpg\"]', NULL, '2022-04-07 09:45:16'),
(5, 7, 61, 3, NULL, 'hhhhjjgffvbjkjbvcssghhbvvccvffhbggggggghhhhhhhhhh', '2022-05-05 07:15:28'),
(8, 7, 26, 3, NULL, 'testuuiii', '2022-05-09 09:31:45'),
(9, 7, 24, 1, NULL, 'test', '2022-05-05 07:11:55'),
(10, 7, 63, 4, NULL, NULL, '2022-05-05 07:14:54'),
(11, 7, 21, 4, NULL, NULL, '2022-05-05 07:15:51'),
(12, 7, 48, 3, NULL, 't', '2022-05-09 09:46:12'),
(13, 7, 25, 1, NULL, 'test', '2022-05-09 09:50:57'),
(14, 7, 28, 1, NULL, 'test', '2022-05-09 10:28:55'),
(15, 7, 143, 1, NULL, 'test', '2022-05-09 10:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_value_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_set` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `special_price` double DEFAULT 0,
  `sku` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `attribute_value_ids`, `attribute_set`, `price`, `special_price`, `sku`, `stock`, `images`, `availability`, `status`, `date_added`) VALUES
(11, 23, '45', NULL, 8000, 7999, NULL, NULL, '[]', NULL, 1, '2021-12-31 11:46:01'),
(13, 8, NULL, NULL, 5000, 2500, NULL, NULL, NULL, NULL, 1, '2022-01-01 07:13:56'),
(14, 9, NULL, NULL, 800, 650, NULL, NULL, NULL, NULL, 1, '2022-01-01 07:26:04'),
(15, 10, '1', NULL, 800, 700, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:28:03'),
(16, 10, '2', NULL, 1000, 800, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:28:03'),
(17, 10, '3', NULL, 1200, 1000, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:28:03'),
(18, 11, NULL, NULL, 7000, 6000, NULL, NULL, NULL, NULL, 1, '2022-01-01 07:32:52'),
(19, 12, '6', NULL, 20, 20, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:34:48'),
(20, 12, '7', NULL, 40, 40, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:34:48'),
(21, 12, '8', NULL, 80, 80, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:34:48'),
(22, 12, '9', NULL, 10, 10, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:34:48'),
(24, 14, '6', NULL, 50, 40, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:38:03'),
(25, 14, '7', NULL, 100, 80, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:38:03'),
(26, 14, '8', NULL, 200, 160, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:38:03'),
(27, 15, '1,4', NULL, 50, 40, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:41:07'),
(28, 15, '1,5', NULL, 50, 40, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:41:07'),
(29, 15, '2,4', NULL, 60, 50, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:41:07'),
(30, 15, '2,5', NULL, 60, 50, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:41:07'),
(31, 15, '3,4', NULL, 70, 60, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:41:07'),
(32, 15, '3,5', NULL, 70, 60, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:41:07'),
(33, 16, NULL, NULL, 120, 100, NULL, NULL, NULL, NULL, 1, '2022-01-01 07:42:34'),
(34, 17, '4', NULL, 90000, 85000, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:44:20'),
(35, 17, '5', NULL, 90000, 80000, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:44:20'),
(36, 18, NULL, NULL, 80000, 75000, NULL, NULL, NULL, NULL, 1, '2022-01-01 07:45:51'),
(37, 19, '6', NULL, 12, 10, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:48:10'),
(38, 19, '7', NULL, 24, 20, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:48:10'),
(39, 19, '8', NULL, 48, 40, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:48:10'),
(40, 19, '9', NULL, 10, 8, NULL, NULL, '[]', NULL, 1, '2022-01-01 07:48:10'),
(41, 20, NULL, NULL, 5000, 4500, NULL, NULL, NULL, NULL, 1, '2022-01-01 07:50:06'),
(42, 21, '10', NULL, 80000, 78000, NULL, NULL, '[]', NULL, 1, '2022-01-01 08:11:30'),
(43, 21, '11', NULL, 50000, 49000, NULL, NULL, '[]', NULL, 1, '2022-01-01 08:11:30'),
(44, 22, NULL, NULL, 120, 100, NULL, NULL, NULL, NULL, 1, '2022-01-01 08:24:34'),
(45, 23, '4', NULL, 8000, 7999, '20', 50, '[]', 1, 7, '2022-01-01 08:26:57'),
(46, 23, '10', NULL, 7000, 6999, '20', 50, '[]', 1, 7, '2022-01-01 08:26:57'),
(47, 23, '11', NULL, 6000, 5999, '20', 50, '[]', 1, 7, '2022-01-01 08:26:57'),
(48, 24, NULL, NULL, 7881, 7880, NULL, NULL, NULL, NULL, 1, '2022-01-01 09:43:26'),
(49, 25, '4', NULL, 15000, 14999, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:45:14'),
(50, 25, '11', NULL, 16000, 15999, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:45:14'),
(51, 26, '4', NULL, 15000, 14999, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:46:21'),
(52, 26, '11', NULL, 16000, 15999, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:46:21'),
(55, 28, '4', NULL, 90, 80, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:51:41'),
(56, 28, '5', NULL, 90, 80, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:51:41'),
(57, 28, '10', NULL, 90, 80, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:51:41'),
(58, 28, '11', NULL, 90, 80, NULL, NULL, '[]', NULL, 1, '2022-01-01 09:51:41'),
(63, 30, NULL, NULL, 2000, 500, NULL, NULL, NULL, NULL, 1, '2022-01-01 09:54:46'),
(75, 36, NULL, NULL, 200, 100, NULL, NULL, NULL, NULL, 1, '2022-01-31 09:59:17'),
(76, 37, NULL, NULL, 100, 10, NULL, NULL, NULL, NULL, 1, '2022-02-09 10:05:19'),
(77, 38, NULL, NULL, 200, 180, 'test', NULL, NULL, NULL, 1, '2022-02-21 03:41:31'),
(82, 23, '46', NULL, 7000, 6999, NULL, NULL, '[]', NULL, 1, '2022-03-04 10:17:35'),
(83, 23, '47', NULL, 6000, 5999, NULL, NULL, '[]', NULL, 1, '2022-03-04 10:17:35'),
(84, 41, NULL, NULL, 200, 180, NULL, NULL, NULL, NULL, 1, '2022-03-05 02:47:16'),
(85, 42, NULL, NULL, 20, 10, NULL, NULL, NULL, NULL, 1, '2022-03-05 03:38:15'),
(86, 43, '1', NULL, 1000, 100, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220117-141822_One_UI_Home3.jpg\"]', NULL, 1, '2022-03-09 06:01:41'),
(88, 45, NULL, NULL, 5000, 4000, NULL, NULL, NULL, NULL, 1, '2022-03-15 09:39:24'),
(90, 47, NULL, NULL, 5000, 4000, NULL, NULL, NULL, NULL, 1, '2022-03-15 09:39:56'),
(91, 48, NULL, NULL, 900, 800, NULL, NULL, NULL, NULL, 1, '2022-03-17 04:53:26'),
(101, 58, NULL, NULL, 200, 150, NULL, NULL, NULL, NULL, 1, '2022-03-22 09:19:05'),
(102, 59, NULL, NULL, 500, 450, NULL, NULL, NULL, NULL, 1, '2022-03-29 06:35:53'),
(103, 60, NULL, NULL, 200, 0, NULL, NULL, NULL, NULL, 1, '2022-03-29 06:36:58'),
(104, 61, NULL, NULL, 500, 450, NULL, NULL, NULL, NULL, 1, '2022-03-29 06:37:40'),
(105, 62, '1,4', NULL, 10, 8, '10', 0, '[\"uploads\\/media\\/2022\\/Screenshot_from_2022-03-12_10-54-45.png\"]', 0, 1, '2022-04-15 05:57:35'),
(106, 62, '2,5', NULL, 20, 7, '22', 4, '[]', 0, 1, '2022-04-15 05:57:35'),
(107, 63, '1,4', NULL, 25000, 25000, '51', 9, '[\"uploads\\/media\\/2022\\/painting_art.jpg\",\"uploads\\/media\\/2022\\/31drcwxxNJL1.jpg\",\"uploads\\/media\\/2022\\/51GNDwvogcL__SL1080_2.jpg\",\"uploads\\/media\\/2022\\/51Ptg9X9mdL1.jpg\"]', 1, 1, '2022-04-15 07:20:05'),
(108, 63, '2,4', NULL, 25000, 0, 'knm', 51, '[\"uploads\\/media\\/2022\\/61DWugD6jnL__SL1252_2.jpg\",\"uploads\\/media\\/2022\\/fashion.png\",\"uploads\\/media\\/2022\\/fashion1.png\"]', 1, 1, '2022-04-15 07:20:05'),
(111, 65, NULL, NULL, 25, 5, NULL, NULL, NULL, NULL, 1, '2022-04-21 07:25:35'),
(112, 66, NULL, NULL, 25000, 0, NULL, NULL, NULL, NULL, 1, '2022-04-21 09:47:11'),
(163, 130, '4,1', NULL, 25, 2, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220415-164023.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220419-1759231.png\"]', NULL, 1, '2022-04-27 06:44:52'),
(164, 130, '5,3', NULL, 36, 2, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220415-164023.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220419-1759231.png\"]', NULL, 1, '2022-04-27 06:44:52'),
(165, 131, '2,4', NULL, 200, 180, NULL, NULL, '[\"uploads\\/media\\/2022\\/banner_2.png\",\"uploads\\/media\\/2022\\/banner_3.png\"]', NULL, 1, '2022-04-27 06:49:39'),
(166, 131, '2,5', NULL, 200, 180, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_\\u0662\\u0660\\u0662\\u0662\\u0660\\u0664\\u0662\\u0666-\\u0660\\u0663\\u0663\\u0660\\u0661\\u0663_Chrome.jpg\",\"uploads\\/media\\/2022\\/Screenshot_\\u0662\\u0660\\u0662\\u0662\\u0660\\u0664\\u0662\\u0666-\\u0660\\u0663\\u0663\\u0660\\u0661\\u0663_Chrome1.jpg\"]', NULL, 1, '2022-04-27 06:49:39'),
(167, 131, '3,4', NULL, 200, 180, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220419-175923.png\",\"uploads\\/media\\/2022\\/banner_4.jpg\"]', NULL, 1, '2022-04-27 06:49:39'),
(168, 131, '3,5', NULL, 200, 180, NULL, NULL, '[\"uploads\\/media\\/2022\\/fashion1.png\",\"uploads\\/media\\/2022\\/Screenshot_from_2022-03-12_10-48-32.png\"]', NULL, 1, '2022-04-27 06:49:39'),
(169, 132, '4,1', NULL, 25, 2, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220415-164023.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220419-1759231.png\"]', NULL, 1, '2022-04-27 07:13:13'),
(170, 132, '5,3', NULL, 36, 2, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220415-164023.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220419-1759231.png\"]', NULL, 1, '2022-04-27 07:13:13'),
(171, 133, NULL, NULL, 25, 2, NULL, NULL, NULL, NULL, 1, '2022-04-29 04:49:27'),
(172, 134, NULL, NULL, 25, 2, NULL, NULL, NULL, NULL, 1, '2022-04-29 04:50:50'),
(173, 135, '8,5', NULL, 25, 3, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\"]', NULL, 1, '2022-04-29 09:55:30'),
(175, 137, '4,8', NULL, 25, 1, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg\"]', NULL, 1, '2022-04-29 10:53:07'),
(176, 138, '4,8', NULL, 25, 1, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\",\"uploads\\/media\\/2022\\/Screenshot_20220426-1504423.jpg\"]', NULL, 1, '2022-04-29 10:54:40'),
(177, 139, '4,1', NULL, 25, 5, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\"]', NULL, 1, '2022-04-29 10:56:18'),
(178, 140, '4,1', NULL, 25, 5, NULL, NULL, '[\"uploads\\/media\\/2022\\/Screenshot_20220412-1616111.jpg\"]', NULL, 1, '2022-04-29 11:01:04'),
(179, 141, NULL, NULL, 85, 0, NULL, NULL, NULL, NULL, 1, '2022-04-29 11:31:43'),
(180, 142, NULL, NULL, 65, 0, NULL, NULL, NULL, NULL, 1, '2022-04-29 17:49:53'),
(181, 143, NULL, NULL, 200, 100, NULL, NULL, NULL, NULL, 1, '2022-05-03 08:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `promo_code` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_users` int(11) DEFAULT NULL,
  `minimum_order_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discount_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_discount_amount` double DEFAULT NULL,
  `repeat_usage` tinyint(4) NOT NULL,
  `no_of_repeat_usage` int(11) NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `is_cashback` tinyint(4) NOT NULL DEFAULT 0,
  `list_promocode` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `promo_code`, `message`, `start_date`, `end_date`, `no_of_users`, `minimum_order_amount`, `discount`, `discount_type`, `max_discount_amount`, `repeat_usage`, `no_of_repeat_usage`, `image`, `status`, `is_cashback`, `list_promocode`, `date_created`) VALUES
(1, 'GETTHIRTY', 'testing', '2022-02-10', '2022-12-11', 5, 100, 10, 'amount', 500, 1, 3, 'uploads/media/2022/image2.png', 1, 0, 1, '2022-02-10 05:27:26'),
(2, 'SIXTY', 'Get 30% off upto 500 on order amount above 2500', '2022-02-10', '2022-12-28', 101, 2500, 30, 'percentage', 500, 1, 5, 'uploads/media/2021/eshop-favicon.png', 1, 0, 1, '2022-02-10 09:58:08'),
(3, 'heartbs', 'promo code is updated', '2022-03-17', '2022-03-25', 6, 1000, 500, 'percentage', 500, 1, 2, NULL, 1, 0, 1, '2022-03-17 11:34:37'),
(4, 'test', 'test', '2022-04-13', '2022-04-30', 10000, 1000, 200, 'amount', 200, 1, 1000, 'uploads/media/2022/Screenshot_from_2022-03-12_10-54-45.png', 1, 0, 1, '2022-04-13 07:24:22'),
(5, 'hidden', 'hidden', '2022-04-11', '2022-04-28', 2000, 2000, 200, 'amount', 200, 0, 20000, 'uploads/media/2022/Screenshot_from_2022-03-12_10-54-45.png', 1, 0, 1, '2022-04-14 07:21:59'),
(6, 'show', 'show', '2022-04-13', '2022-04-30', 200, 2000, 200, 'amount', 200, 0, 2000, 'uploads/media/2022/painting_art.jpg', 1, 1, 1, '2022-04-14 07:23:30'),
(7, 'hidden5', 'hidden5', '2022-04-18', '2022-04-30', 2500, 500, 1000, 'amount', 2000, 0, 400, 'uploads/media/2021/vegetables.png', 1, 0, 0, '2022-04-18 12:24:15'),
(8, 'TDC100', 'Get ₹100 Cashback on Order Above ₹1999', '2022-04-19', '2022-05-20', 10000, 1999, 10, 'percentage', 100, 0, 0, 'uploads/media/2022/fashion.png', 1, 1, 0, '2022-04-20 04:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `return_requests`
--

CREATE TABLE `return_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remarks` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_requests`
--

INSERT INTO `return_requests` (`id`, `user_id`, `product_id`, `product_variant_id`, `order_id`, `order_item_id`, `status`, `remarks`, `date_created`) VALUES
(1, 15, 21, 42, 25, 32, 1, NULL, '2022-03-16 05:54:18'),
(2, 15, 30, 63, 23, 30, 0, NULL, '2022-03-21 04:10:44'),
(3, 15, 24, 48, 24, 31, 1, NULL, '2022-03-21 05:21:23'),
(4, 1, 30, 63, 22, 29, 1, NULL, '2022-03-21 07:37:31'),
(5, 7, 61, 104, 56, 73, 0, NULL, '2022-04-15 07:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row_order` int(11) NOT NULL DEFAULT 0,
  `categories` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `short_description`, `style`, `product_ids`, `row_order`, `categories`, `product_type`, `date_added`) VALUES
(1, 'Testing Style Default', 'New added products display here', 'default', NULL, 0, '3,2', 'new_added_products', '2022-01-05 11:44:04'),
(2, 'Testing Style 1', 'Explore our products on sale', 'style_1', NULL, 1, NULL, 'products_on_sale', '2022-01-05 11:45:17'),
(3, 'Testing Stype 2', 'all the items categories wise for kids', 'style_2', NULL, 2, '1', 'products_on_sale', '2022-03-17 11:46:44'),
(4, 'Testting Style 3', 'test', 'style_3', NULL, 3, '1', 'products_on_sale', '2022-04-21 08:09:48'),
(5, 'Testing Style 4', 'test', 'style_4', NULL, 4, '6', 'most_selling_products', '2022-04-21 08:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `seller_commission`
--

CREATE TABLE `seller_commission` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `commission` double(10,2) NOT NULL DEFAULT 0.00,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_commission`
--

INSERT INTO `seller_commission` (`id`, `seller_id`, `category_id`, `commission`, `date_created`) VALUES
(11, 4, 6, 5.00, '2022-03-17 04:23:28'),
(12, 2, 1, 10.00, '2022-03-17 04:23:53'),
(13, 2, 2, 10.00, '2022-03-17 04:23:53'),
(14, 2, 3, 10.00, '2022-03-17 04:23:53'),
(15, 2, 4, 10.00, '2022-03-17 04:23:53'),
(16, 2, 5, 10.00, '2022-03-17 04:23:53'),
(21, 16, 5, 15.00, '2022-03-17 07:23:52'),
(22, 19, 4, 2.00, '2022-03-29 06:32:39'),
(23, 19, 1, 2.00, '2022-03-29 06:32:39'),
(24, 19, 7, 2.00, '2022-03-29 06:32:39'),
(25, 21, 1, 2.00, '2022-04-14 13:22:11'),
(26, 21, 5, 2.00, '2022-04-14 13:22:11'),
(27, 21, 0, 0.00, '2022-04-14 13:22:11'),
(28, 22, 6, 2.00, '2022-04-14 13:23:50'),
(29, 22, 5, 2.00, '2022-04-14 13:23:50'),
(30, 22, 1, 2.00, '2022-04-14 13:23:50'),
(31, 22, 7, 1.00, '2022-04-14 13:23:50'),
(32, 23, 1, 2.00, '2022-04-15 04:51:24'),
(33, 23, 5, 3.00, '2022-04-15 04:51:24'),
(34, 23, 0, 0.00, '2022-04-15 04:51:24'),
(35, 24, 1, 2.00, '2022-04-15 05:08:13'),
(36, 24, 6, 1.00, '2022-04-15 05:08:13'),
(37, 24, 0, 0.00, '2022-04-15 05:08:13'),
(38, 25, 6, 2.00, '2022-04-15 07:02:48'),
(39, 25, 1, 2.00, '2022-04-15 07:02:48'),
(40, 25, 5, 2.00, '2022-04-15 07:02:48'),
(41, 25, 0, 0.00, '2022-04-15 07:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `seller_data`
--

CREATE TABLE `seller_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_ids` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `store_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_description` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL,
  `logo` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `store_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_ratings` int(11) DEFAULT 0,
  `rating` double(8,2) DEFAULT 0.00,
  `bank_name` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bank_code` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `account_name` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_identity_card` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `address_proof` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `pan_number` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `tax_name` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `tax_number` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `commission` double(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(2) NOT NULL DEFAULT 2 COMMENT 'approved: 1 | not-approved: 2 | deactive:0 | removed :7',
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_data`
--

INSERT INTO `seller_data` (`id`, `user_id`, `slug`, `category_ids`, `store_name`, `store_description`, `logo`, `store_url`, `no_of_ratings`, `rating`, `bank_name`, `bank_code`, `account_name`, `account_number`, `national_identity_card`, `address_proof`, `pan_number`, `tax_name`, `tax_number`, `permissions`, `commission`, `status`, `date_added`) VALUES
(1, 2, NULL, '1,2,3,4,5', 'nivi', 'This store has all the product that you need.', 'uploads/seller/Screenshot_20220428-160550.jpg', 'nivi', 5, 3.80, 'SBI', 'SBI0123456789', 'Eshop Seller', 'SBHY0000743', 'uploads/seller/wrteam2.jpg', 'uploads/seller/1_WRT-Logo-new_1024_x_10241.jpg', 'GNU12345', 'GST', 'GSTIN12345', '{\"require_products_approval\":\"1\",\"customer_privacy\":\"1\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 0.00, 1, '2021-12-28 10:16:36'),
(2, 4, 'test-store', '6', 'test store', 'test store', 'uploads/seller/wrteam.jpg', '', 4, 1.80, '', '', '', '', 'uploads/seller/wrteam1.jpg', 'uploads/seller/1_WRT-Logo-new_1024_x_1024.jpg', '', 'test', '1234', '{\"require_products_approval\":\"1\",\"customer_privacy\":\"1\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 5.00, 1, '2022-01-01 09:40:07'),
(7, 16, 'women', '5', 'Women\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\', 'fashion', 'uploads/seller/music3.jpg', 'www.womenfashion.com', 0, 0.00, 'bank of baroda', 'b123', 'kinjal', '1235678906', 'uploads/seller/music4.jpg', 'uploads/seller/music5.jpg', 'E34567', 'Fund Tax', 'T101', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 0.00, 2, '2022-03-16 07:24:03'),
(8, 19, 'mafat-ka-maal', '4,1,7', 'mafat ka maal', '', 'uploads/seller/dosa-restro.jpg', '', 1, 1.00, '', '', '', '', 'uploads/seller/dosa-restro1.jpg', 'uploads/seller/dosa-restro2.jpg', '', 'test', '1234', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 0.00, 1, '2022-03-29 06:32:39'),
(9, 21, 'super-comnet', '1,5,', 'Super Comnet', '', 'uploads/seller/Screenshot_from_2022-03-29_11-19-57.png', '', 0, 0.00, '', '', '9876543210', '', 'uploads/seller/Screenshot_from_2022-04-01_11-22-40.png', 'uploads/seller/Screenshot_from_2022-03-24_15-12-35.png', 'test', 'test', 'test', '{\"require_products_approval\":\"1\",\"customer_privacy\":\"1\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 12.00, 1, '2022-04-14 13:22:11'),
(10, 22, 'superb-ecommerce', '6,5,1,7', 'SuperB eCommerce', '', 'uploads/seller/Screenshot_from_2022-04-01_11-22-401.png', '', 0, 0.00, '', '', '9876543210', '', 'uploads/seller/Screenshot_from_2022-03-15_12-15-23.png', 'uploads/seller/Screenshot_from_2022-04-11_16-04-57.png', 'test', 'test', 'test', '{\"require_products_approval\":\"1\",\"customer_privacy\":\"1\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 12.00, 1, '2022-04-14 13:23:50'),
(11, 23, 'stpl-exclusive-online', '1,5,', 'STPL Exclusive Online', '', 'uploads/seller/Screenshot_from_2022-04-11_16-04-571.png', '', 1, 3.00, '', '', '9876543210', '', 'uploads/seller/Screenshot_from_2022-03-16_10-32-10.png', 'uploads/seller/Screenshot_from_2022-04-11_16-04-572.png', '', 'test', 'test', '{\"require_products_approval\":\"1\",\"customer_privacy\":\"1\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 12.00, 1, '2022-04-15 04:51:24'),
(12, 24, 'dawn-tech-electronics', '1,6,', 'Dawn Tech Electronics', '', 'uploads/seller/Screenshot_from_2022-03-24_10-37-32.png', '', 0, 0.00, '', '', '9876543210', '', 'uploads/seller/Screenshot_from_2022-03-24_15-12-351.png', 'uploads/seller/Screenshot_from_2022-03-24_15-12-352.png', 'test', 'test', 'test', '{\"require_products_approval\":\"1\",\"customer_privacy\":\"1\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 1.00, 1, '2022-04-15 05:08:13'),
(13, 25, 'appario-retails-private-ltd', '6,1,5,', 'Appario Retails Private Ltd', '', 'uploads/seller/Screenshot_from_2022-04-01_14-56-41.png', '', 0, 0.00, '', '', '9876543210', 'test', 'uploads/seller/Screenshot_from_2022-04-15_10-42-00.png', 'uploads/seller/Screenshot_from_2022-04-04_16-32-22.png', '', 'test', 'test', '{\"require_products_approval\":\"1\",\"customer_privacy\":\"1\",\"view_order_otp\":\"1\",\"assign_delivery_boy\":\"1\"}', 1.00, 1, '2022-04-15 07:02:48'),
(14, 28, 'omnitechretail', NULL, 'OmniTechRetail', 'OmniTechRetail', 'uploads/seller/Screenshot_20220415-16402328.jpg', 'OmniTechRetail', 0, 0.00, 'fhfrhft⁹8j', 'fggxvc', 'ffhxctrjcdh', '8958682', 'uploads/seller/Screenshot_20220415-16402329.jpg', 'uploads/seller/Screenshot_20220415-16402330.jpg', 'gngugjfvh', 'fhhgnbb', 'gbjyjh', '{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\"}', 0.00, 1, '2022-04-21 10:29:10'),
(15, 29, 'store_name', NULL, 'store_name', 'store_description', '', 'store_url', 0, 0.00, 'gfufug', '1234', 'dudif', '252555', '', '', '4556hjhb', 'tax_name', '123agbh', NULL, 0.00, 2, '2022-04-30 06:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `variable` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `variable`, `value`) VALUES
(1, 'logo', 'uploads/media/2021/eshop-logo-full.png'),
(2, 'privacy_policy', '<p></p><h2><b>Privacy policy</b></h2> costumers ACCESSING, BROWSING OR OTHERWISE USING THE \\r\\nWEBSITE eShop.com, Missed Call Service or mobile application \\r\\nINDICATES user is in AGREEMENT with eShop vegetables & \\r\\nfruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. \\r\\nUser is requested to READ terms and conditions CAREFULLY BEFORE \\r\\nPROCEEDING FURTHER.<br>\\r\\nUser is the person, group of person, company, trust, society, legal \\r\\nentity, legal personality or anyone who visits website, mobile app or \\r\\ngives missed call or places order with eShop via phone or website \\r\\nor mobile application or browse through website www.eShop.com.<p></p>\\r\\n\\r\\n<p>email is eShop reserves the right to add, alter, change, modify or delete\\r\\n any of these terms and conditions at any time without prior \\r\\ninformation. The altered terms and conditions becomes binding on the \\r\\nuser since the moment same are unloaded on the website \\r\\nwww.eShop.com</p>\\r\\n\\r\\n<p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p>\\r\\n\\r\\n<p>That any user who gives missed call/call for order on any number \\r\\npublished/used by eShop.com, consents to receive, accept calls and \\r\\nmessages or any after communication from eShop vegetables & \\r\\nfruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p>\\r\\n\\r\\n<p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p>\\r\\n\\r\\n<p>eShop accept orders on all seven days and user will receive the \\r\\ndelivery next day from date of order placement, as we at eShop \\r\\nprocure the fresh produce from the procurement center and deliver it \\r\\nstraight to user.</p>\\r\\n\\r\\n<p>There is Minimum Order value of Rs. 200. There are no delivery \\r\\ncharges on an order worth Rs. 200 or above. In special cases, if \\r\\npermitted, order value is less then Rs. 200/– , Rs. 40 as shipping \\r\\ncharges shall be charged from user.</p>\\r\\n\\r\\n<p>eShop updates the prices on daily basis and the price displayed \\r\\nat our website www.eShop.com, at the time of placement of order by \\r\\nuser he/she/it will be charged as per the price listed at the website \\r\\nwww.eShop.com.</p>\\r\\n\\r\\n<p>In the event, though there are remote possibilities, of wrong invoice\\r\\n generation due to any reason, in case it happens eShop vegetables \\r\\n& fruits Pvt Ltd reserve its right to again raise the correct \\r\\ninvoice at the revised amount and same shall be paid by user.</p>\\r\\n\\r\\n<p>At times it is difficult to weigh certain vegetables or fruits \\r\\nexactly as per the order or desired quantity of user, hence the delivery\\r\\n might be with five percent variation on both higher or lower side of \\r\\nexact ordered quantity, user are hereby under takes to pay to eShop\\r\\n vegetables & fruits Pvt Ltd as per the final invoice. We at \\r\\neShop understands and our endeavor is to always deliver in exact \\r\\nquantity in consonance with quantity ordered but every time it’s not \\r\\npossible but eShop guarantee the fair deal and weight to all its \\r\\nusers. eShop further assures its users that at no instance delivery\\r\\n weights/quantity vary dramatically from what quantity ordered by user.</p>\\r\\n\\r\\n<p>If some product is not available or is not of good quality, the same \\r\\nitem will not be delivered and will be adjusted accordingly in the \\r\\ninvoice; all rights in this regards are reserved with eShop. Images\\r\\n of Fruits & Vegetables present in the website are for demonstration\\r\\n purpose and may not resemble exactly in size, colour, weight, contrast \\r\\netc; though we assure our best to maintain the best quality in product, \\r\\nwhich is being our foremost commitment to the customer.</p>\\r\\n\\r\\n<p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p><p><br></p><p><a href=\\\"https://vendor.eshopweb.store/\\\" target=\\\"_blank\\\">Url</a><br></p><p><a href=\\\"tel:8200786264\\\" target=\\\"_blank\\\">Number</a><br></p><p><a href=\\\"mailto:wrteam.jignesh@gmail.com\\\" target=\\\"_blank\\\">mail</a><br></p>'),
(3, 'terms_conditions', '<h3><b>Terms and conditions</b></h3><p> costumers eshop.com is a sole proprietary firm , Juridical rights of eshop.com are reserved with eshop</p><p>Personal Information eshop.com and the website eshop.com (”The Site”) . respects your privacy. This Privacy Policy succinctly provides the manner your data is collected and used by eshop.com. on the Site. As a visitor to the Site/ Customer you are advised to please read the Privacy Policy carefully.</p><p><br></p><p>Services Overview As part of the registration process on the Site, eshop.com may collect the following personally identifiable information about you: Name including first and last name, alternate email address, mobile phone number and contact details, Postal code, GPS location, Demographic profile &#40;like your age, gender, occupation, education, address etc.&#41; and information about the pages on the site you visit/access, the links you click on the site, the number of times you access the page and any such browsing information.</p><p><br></p><p>Eligibility Services of the Site would be available to only select geographies in India. Persons who are \\\"incompetent to contract\\\" within the meaning of the Indian Contract Act, 1872 including un-discharged insolvents etc. are not eligible to use the Site. If you are a minor i.e. under the age of 18 years but at least 13 years of age you may use the Site only under the supervision of a parent or legal guardian who agrees to be bound by these Terms of Use. If your age is below 18 years, your parents or legal guardians can transact on behalf of you if they are registered users. You are prohibited from purchasing any material which is for adult consumption and the sale of which to minors is prohibited.</p><p><br></p><p>License & Site Access eshop.com grants you a limited sub-license to access and make personal use of this site and not to download (other than page caching) or modify it, or any portion of it, except with express written consent of eshop.com. This license does not include any resale or commercial use of this site or its contents; any collection and use of any product listings, descriptions, or prices; any derivative use of this site or its contents; any downloading or copying of account information for the benefit of another merchant; or any use of data mining, robots, or similar data gathering and extraction tools. This site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, visited or otherwise exploited for any commercial purpose without express written consent of eshop.com. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of the Site or of eshop.com and its affiliates without express written consent. You may not use any meta tags or any other \\\"hidden text\\\" utilizing the Site’s or eshop.com’s name or eshop.com’s name or trademarks without the express written consent of eshop.com. Any unauthorized use, terminates the permission or license granted by eshop.com</p><p><br></p><p>Account & Registration Obligations All shoppers have to register and login for placing orders on the Site. You have to keep your account and registration details current and correct for communications related to your purchases from the site. By agreeing to the terms and conditions, the shopper agrees to receive promotional communication and newsletters upon registration. The customer can opt out either by unsubscribing in \\\"My Account\\\" or by contacting the customer service.</p><p><br></p><p>Pricing All the products listed on the Site will be sold at MRP unless otherwise specified. The prices mentioned at the time of ordering will be the prices charged on the date of the delivery. Although prices of most of the products do not fluctuate on a daily basis but some of the commodities and fresh food prices do change on a daily basis. In case the prices are higher or lower on the date of delivery not additional charges will be collected or refunded as the case may be at the time of the delivery of the order.</p><p><br></p><p>Cancellation by Site / Customer You as a customer can cancel your order anytime up to the cut-off time of the slot for which you have placed an order by calling our customer service. In such a case we will Credit your wallet against any payments already made by you for the order. If we suspect any fraudulent transaction by any customer or any transaction which defies the terms & conditions of using the website, we at our sole discretion could cancel such orders. We will maintain a negative list of all fraudulent transactions and customers and would deny access to them or cancel any orders placed by them.</p><p><br></p><p>Return & Refunds We have a \\\"no questions asked return policy\\\" which entitles all our Delivery Ambassadors to return the product at the time of delivery if due to any reason they are not satisfied with the quality or freshness of the product. We will take the returned product back with us and issue a credit note for the value of the return products which will be credited to your account on the Site. This can be used to pay your subsequent shopping bills. Refund will be processed through same online mode within 7 working days.</p><p><br></p><p><br></p><p>Delivery & Shipping Charge</p><p><br></p><p>1.You can expect to receive your order depending on the delivery option you have chosen.</p><p><br></p><p>2.You can order 24*7 in website & mobile application , Our delivery timeings are between 06:00 AM - 02:00PM Same day delivery.</p><p><br></p><p>3.You will get free shipping on order amount above Rs.150.</p><p>You Agree and Confirm</p><p>1. That in the event that a non-delivery occurs on account of a mistake by you (i.e. wrong name or address or any other wrong information) any extra cost incurred by eshop. for redelivery shall be claimed from you.</p><p>2. That you will use the services provided by the Site, its affiliates, consultants and contracted companies, for lawful purposes only and comply with all applicable laws and regulations while using and transacting on the Site.</p><p>3. You will provide authentic and true information in all instances where such information is requested you. eshop reserves the right to confirm and validate the information and other details provided by you at any point of time. If upon confirmation your details are found not to be true (wholly or partly), it has the right in its sole discretion to reject the registration and debar you from using the Services and / or other affiliated websites without prior intimation whatsoever.</p><p>4. That you are accessing the services available on this Site and transacting at your sole risk and are using your best and prudent judgment before entering into any transaction through this Site.</p><p>5. That the address at which delivery of the product ordered by you is to be made will be correct and proper in all respects.</p><p>6. That before placing an order you will check the product description carefully. By placing an order for a product you agree to be bound by the conditions of sale included in the item\\\'s description.</p><p><br></p><p>You may not use the Site for any of the following purposes:</p><p>1. Disseminating any unlawful, harassing, libelous, abusive, threatening, harmful, vulgar, obscene, or otherwise objectionable material.</p><p>2. Transmitting material that encourages conduct that constitutes a criminal offence or results in civil liability or otherwise breaches any relevant laws, regulations or code of practice.</p><p>3. Gaining unauthorized access to other computer systems.</p><p>4. Interfering with any other person\\\'s use or enjoyment of the Site.</p><p>5. Breaching any applicable laws;</p><p>6. Interfering or disrupting networks or web sites connected to the Site.</p><p>7. Making, transmitting or storing electronic copies of materials protected by copyright without the permission of the owner.</p><p><br></p><p>Colors we have made every effort to display the colors of our products that appear on the Website as accurately as possible. However, as the actual colors you see will depend on your monitor, we cannot guarantee that your monitor\\\'s display of any color will be accurate.</p><p><br></p><p>Modification of Terms & Conditions of Service eshop may at any time modify the Terms & Conditions of Use of the Website without any prior notification to you. You can access the latest version of these Terms & Conditions at any given time on the Site. You should regularly review the Terms & Conditions on the Site. In the event the modified Terms & Conditions is not acceptable to you, you should discontinue using the Service. However, if you continue to use the Service you shall be deemed to have agreed to accept and abide by the modified Terms & Conditions of Use of this Site.</p><p><br></p><p>Governing Law and Jurisdiction This User Agreement shall be construed in accordance with the applicable laws of India. The Courts at Faridabad shall have exclusive jurisdiction in any proceedings arising out of this agreement. Any dispute or difference either in interpretation or otherwise, of any terms of this User Agreement between the parties hereto, the same shall be referred to an independent arbitrator who will be appointed by eshop and his decision shall be final and binding on the parties hereto. The above arbitration shall be in accordance with the Arbitration and Conciliation Act, 1996 as amended from time to time. The arbitration shall be held in Nagpur. The High Court of judicature at Nagpur Bench of Mumbai High Court alone shall have the jurisdiction and the Laws of India shall apply.</p><p><br></p><p>Reviews, Feedback, Submissions All reviews, comments, feedback, postcards, suggestions, ideas, and other submissions disclosed, submitted or offered to the Site on or by this Site or otherwise disclosed, submitted or offered in connection with your use of this Site (collectively, the \\\"Comments\\\") shall be and remain the property of eshop Such disclosure, submission or offer of any Comments shall constitute an assignment to eshop of all worldwide rights, titles and interests in all copyrights and other intellectual properties in the Comments. Thus, eshop owns exclusively all such rights, titles and interests and shall not be limited in any way in its use, commercial or otherwise, of any Comments. eshopwill be entitled to use, reproduce, disclose, modify, adapt, create derivative works from, publish, display and distribute any Comments you submit for any purpose whatsoever, without restriction and without compensating you in any way. eshop is and shall be under no obligation (1) to maintain any Comments in confidence; (2) to pay you any compensation for any Comments; or (3) to respond to any Comments. You agree that any Comments submitted by you to the Site will not violate this policy or any right of any third party, including copyright, trademark, privacy or other personal or proprietary right(s), and will not cause injury to any person or entity. You further agree that no Comments submitted by you to the Website will be or contain libelous or otherwise unlawful, threatening, abusive or obscene material, or contain software viruses, political campaigning, commercial solicitation, chain letters, mass mailings or any form of \\\"spam\\\". eshop does not regularly review posted Comments, but does reserve the right (but not the obligation) to monitor and edit or remove any Comments submitted to the Site. You grant eshopthe right to use the name that you submit in connection with any Comments. You agree not to use a false email address, impersonate any person or entity, or otherwise mislead as to the origin of any Comments you submit. You are and shall remain solely responsible for the content of any Comments you make and you agree to indemnify eshop and its affiliates for all claims resulting from any Comments you submit. eshop and its affiliates take no responsibility and assume no liability for any Comments submitted by you or any third party.</p><p><br></p><p>Copyright & Trademark eshop.com and eshop.com, its suppliers and licensors expressly reserve all intellectual property rights in all text, programs, products, processes, technology, content and other materials, which appear on this Site. Access to this Website does not confer and shall not be considered as conferring upon anyone any license under any of eshop.com or any third party\\\'s intellectual property rights. All rights, including copyright, in this website are owned by or licensed to eshop.com from eshop.com. Any use of this website or its contents, including copying or storing it or them in whole or part, other than for your own personal, non-commercial use is prohibited without the permission of eshop.com and/or eshop.com. You may not modify, distribute or re-post anything on this website for any purpose.The names and logos and all related product and service names, design marks and slogans are the trademarks or service marks of eshop.com, eshop.com, its affiliates, its partners or its suppliers. All other marks are the property of their respective companies. No trademark or service mark license is granted in connection with the materials contained on this Site. Access to this Site does not authorize anyone to use any name, logo or mark in any manner.References on this Site to any names, marks, products or services of third parties or hypertext links to third party sites or information are provided solely as a convenience to you and do not in any way constitute or imply eshop.com or eshop.com\\\'s endorsement, sponsorship or recommendation of the third party, information, product or service. eshop.com or eshop.com is not responsible for the content of any third party sites and does not make any representations regarding the content or accuracy of material on such sites. If you decide to link to any such third party websites, you do so entirely at your own risk. All materials, including images, text, illustrations, designs, icons, photographs, programs, music clips or downloads, video clips and written and other materials that are part of this Website (collectively, the \\\"Contents\\\") are intended solely for personal, non-commercial use. You may download or copy the Contents and other downloadable materials displayed on the Website for your personal use only. No right, title or interest in any downloaded materials or software is transferred to you as a result of any such downloading or copying. You may not reproduce (except as noted above), publish, transmit, distribute, display, modify, create derivative works from, sell or participate in any sale of or exploit in any way, in whole or in part, any of the Contents, the Website or any related software. All software used on this Website is the property of eshop.com or its licensees and suppliers and protected by Indian and international copyright laws. The Contents and software on this Website may be used only as a shopping resource. Any other use, including the reproduction, modification, distribution, transmission, republication, display, or performance, of the Contents on this Website is strictly prohibited. Unless otherwise noted, all Contents are copyrights, trademarks, trade dress and/or other intellectual property owned, controlled or licensed by eshop.com, one of its affiliates or by third parties who have licensed their materials to eshop.com and are protected by Indian and international copyright laws. The compilation (meaning the collection, arrangement, and assembly) of all Contents on this Website is the exclusive property of eshop.com and eshop.com and is also protected by Indian and international copyright laws.</p><p><br></p><p>Objectionable Material You understand that by using this Site or any services provided on the Site, you may encounter Content that may be deemed by some to be offensive, indecent, or objectionable, which Content may or may not be identified as such. You agree to use the Site and any service at your sole risk and that to the fullest extent permitted under applicable law, eshop.com and/or eshop.com and its affiliates shall have no liability to you for Content that may be deemed offensive, indecent, or objectionable to you.</p><p><br></p><p>Indemnity You agree to defend, indemnify and hold harmless eshop.com, eshop.com, its employees, directors, Coordinators, officers, agents, interns and their successors and assigns from and against any and all claims, liabilities, damages, losses, costs and expenses, including attorney\\\'s fees, caused by or arising out of claims based upon your actions or inactions, which may result in any loss or liability to eshop.com or eshop.com or any third party including but not limited to breach of any warranties, representations or undertakings or in relation to the non-fulfillment of any of your obligations under this User Agreement or arising out of the violation of any applicable laws, regulations including but not limited to Intellectual Property Rights, payment of statutory dues and taxes, claim of libel, defamation, violation of rights of privacy or publicity, loss of service by other subscribers and infringement of intellectual property or other rights. This clause shall survive the expiry or termination of this User Agreement.</p><p><br></p><p>Termination This User Agreement is effective unless and until terminated by either you or eshop.com. You may terminate this User Agreement at any time, provided that you discontinue any further use of this Site. eshop.com may terminate this User Agreement at any time and may do so immediately without notice, and accordingly deny you access to the Site, Such termination will be without any liability to eshop.com. Upon any termination of the User Agreement by either you or eshop.com, you must promptly destroy all materials downloaded or otherwise obtained from this Site, as well as all copies of such materials, whether made under the User Agreement or otherwise. eshop.com\\\'s right to any Comments shall survive any termination of this User Agreement. Any such termination of the User Agreement shall not cancel your obligation to pay for the product already ordered from the Website or affect any liability that may have arisen under the User Agreement.</p>'),
(4, 'fcm_server_key', 'AAAAoScB0xE:APA91bEHz6z-EmF93comx9G8Nwe5BJX46W1nz8JqxDwuTmYZmaOrHRBXbtTHA0I07nC4YbtqOtrcXe9uxeVKZdqPmpSEUyZt3s7UHjN_loi0PetklapWHCQXrPR5vyJkiRwpIrgel_XV'),
(5, 'contact_us', '<h2><strong xss=removed>Contact Us</strong></h2>\\r\\n\\r\\n<p>For any kind of queries related to products, orders or services feel free to contact us on our official email address or phone number as given below :</p>\\r\\n\\r\\n<p> </p>\\r\\n\\r\\n<h3><strong>Areas we deliver : </strong></h3>\\r\\n\\r\\n<p> </p>\\r\\n\\r\\n<h3><strong>Delivery Timings :</strong></h3>\\r\\n\\r\\n<ol>\\r\\n <li><strong>  8:00 AM To 10:30 AM</strong></li>\\r\\n <li><strong>10:30 AM To 12:30 PM</strong></li>\\r\\n <li><strong>  4:00 PM To  7:00 PM</strong></li></ol><h3> <strong></strong>\\r\\n\\r\\n</h3><p><strong>Note : </strong>You can order for maximum 2days in advance. i.e., Today & Tomorrow only.  <br></p>'),
(6, 'system_settings', '{\"system_configurations\":\"1\",\"system_timezone_gmt\":\"+05:30\",\"system_configurations_id\":\"13\",\"app_name\":\"eShop - ecommerce\",\"support_number\":\"9876543210\",\"support_email\":\"support@eshop.com\",\"current_version\":\"1.0.0\",\"current_version_ios\":\"1.0.0\",\"is_version_system_on\":\"1\",\"area_wise_delivery_charge\":\"1\",\"currency\":\"\\u20b9\",\"delivery_charge\":\"10\",\"min_amount\":\"100\",\"system_timezone\":\"Asia\\/Kolkata\",\"is_refer_earn_on\":\"1\",\"min_refer_earn_order_amount\":\"100\",\"refer_earn_bonus\":\"10\",\"refer_earn_method\":\"percentage\",\"max_refer_earn_amount\":\"50\",\"refer_earn_bonus_times\":\"2\",\"welcome_wallet_balance_on\":\"1\",\"wallet_balance_amount\":\"100\",\"minimum_cart_amt\":\"50\",\"low_stock_limit\":\"15\",\"max_items_cart\":\"12\",\"delivery_boy_bonus_percentage\":\"1\",\"max_product_return_days\":\"1\",\"is_delivery_boy_otp_setting_on\":\"0\",\"is_single_seller_order\":\"0\",\"is_customer_app_under_maintenance\":\"0\",\"is_seller_app_under_maintenance\":\"0\",\"is_delivery_boy_app_under_maintenance\":\"0\",\"message_for_customer_app\":\"tu nikal... Pehli fursat me nikal\",\"message_for_seller_app\":\"\",\"message_for_delivery_boy_app\":\"gbhnbvxn\",\"cart_btn_on_list\":\"1\",\"expand_product_images\":\"0\",\"tax_name\":\"GST Number\",\"tax_number\":\"24GSTIN1022520\",\"company_name\":\"\",\"company_url\":\"\",\"supported_locals\":\"INR\"}'),
(7, 'payment_method', '{\"paypal_payment_method\":\"1\",\"paypal_mode\":\"sandbox\",\"paypal_business_email\":\"seller@somedomain.com\",\"currency_code\":\"USD\",\"razorpay_payment_method\":\"1\",\"razorpay_key_id\":\"rzp_test_UQsBfm9zCB2M2N\",\"razorpay_secret_key\":\"e5xPdwX4JvV1aebMfzFmGMjB\",\"paystack_payment_method\":\"1\",\"paystack_key_id\":\"pk_test_1a3186e7b1d29d13acf2f6162d97ae15be22e541\",\"paystack_secret_key\":\"sk_test_6085bc0f5e678c1d64f187b4f4c09ceec7c383ee\",\"stripe_payment_method\":\"1\",\"stripe_payment_mode\":\"test\",\"stripe_publishable_key\":\"pk_test_51KOFsJAlIMTFVRVSzZ8ZVGKRfrb4AYlls8axymynwivEXycPs7N9xDpMmVg2PSCHT67u5aGfjvilq3KKXOve7W2v005WfQUjoX\",\"stripe_secret_key\":\"sk_test_51KOFsJAlIMTFVRVS4nxNmXJkbzGRJNu8jD7zQHVz1endBem7o6Pjh4lkOMvEvnF7moCkwCAiJMOmpgWPiIcHIw5Y00cr7VIAfp\",\"stripe_webhook_secret_key\":\"whsec_KCcfDYhIX1T1WqudnnugtxlpJiSObbZw\",\"stripe_currency_code\":\"INR\",\"flutterwave_payment_method\":\"1\",\"flutterwave_public_key\":\"FLWPUBK_TEST-1ffbaed6ee3788cd2bcbb898d3b90c59-X\",\"flutterwave_secret_key\":\"FLWSECK_TEST-c659ffd76304fff90fc4b67ae735b126-X\",\"flutterwave_encryption_key\":\"FLWSECK_TEST25c36edcfcaa\",\"flutterwave_currency_code\":\"NGN\",\"paytm_payment_method\":\"1\",\"paytm_payment_mode\":\"sandbox\",\"paytm_merchant_key\":\"eIcrB!DTHJlQ5DN8\",\"paytm_merchant_id\":\"PpGeMd34849525540215\",\"paytm_website\":\"WEBSTAGING\",\"paytm_industry_type_id\":\"Retail\",\"direct_bank_transfer\":\"1\",\"account_name\":\"eShop E-Commerce LLC.\",\"account_number\":\"020211022000001\",\"bank_name\":\"State Bank of India\",\"bank_code\":\"SBIIN0007\",\"notes\":\"                          Please do not forget to upload the bank transfer receipt upon sending \\/ depositing money to the above-mentioned account. Once the amount deposit is confirmed the order will be processed further. To upload the receipt go to your order details page or screen and find a form to upload the receipt.\",\"cod_method\":\"1\"}'),
(8, 'about_us', '<table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>          \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>                              <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>    \r\n                          <table class=\"table table-bordered\" xss=\"removed\"><tbody><tr><td><span xss=\"removed\">NAME</span></td><td><span xss=\"removed\">Honeywell CP-400W Car Power, Platinum Series</span><br></td></tr><tr><td>BRAND</td><td><span xss=\"removed\">Honeywell</span><br></td></tr><tr><td><span xss=\"removed\">FUNCTION</span><br></td><td><span xss=\"removed\">220V Output Voltage, 90 cm Clamp Cable, 90 cm Cable, Dual USB port</span><br></td></tr><tr><td><span xss=\"removed\">MODEL</span><br></td><td>NO</td></tr><tr><td><span xss=\"removed\">COLOR TYPE</span><br></td><td>Silver</td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>'),
(9, 'currency', '₹'),
(11, 'email_settings', '{\"email\":\"infinitietechnologies04@gmail.com\",\"password\":\"pfpjdndlbphnscrb\",\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"465\",\"mail_content_type\":\"html\",\"smtp_encryption\":\"ssl\"}'),
(12, 'time_slot_config', '{\"time_slot_config\":\"1\",\"is_time_slots_enabled\":\"1\",\"delivery_starts_from\":\"1\",\"allowed_days\":\"7\"}'),
(13, 'favicon', 'uploads/media/2021/eshop-favicon.png'),
(14, 'delivery_boy_privacy_policy', '<p><span xss=\\\"removed\\\"> delivery boy ACCESSING, </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(15, 'delivery_boy_terms_conditions', '<p><span xss=\\\"removed\\\"> delivery boy ACCESSING,</span><span xss=\\\"removed\\\"> </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(16, 'web_logo', 'uploads/media/2021/eshop-logo-full.png'),
(17, 'web_favicon', 'uploads/media/2021/eshop-favicon.png'),
(18, 'web_settings', '{\"site_title\":\"eShop - Multipurpose Ecommerce Store\",\"support_number\":\"1234567890\",\"support_email\":\"eshop@gmail.com\",\"copyright_details\":\"Copyright \\u00a9 2021, All Right Reserved WRTeam\",\"address\":\"Time Square Empire, WRTeam , Mirzapar Highway , Bhuj , Kutch , Gujarat - 370001\",\"app_short_description\":\"eShop is a multipurpose Ecommerce Platform best suitable for all kinds of sectors like Electronics, Fashion, Groceries and Vegetables, Flowers, Gift articles, Medical, and more ..\",\"map_iframe\":\"&lt;iframe src=\\\\\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d58652.60185263579!2d69.63381478835316!3d23.250814410717105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3950e209000b6f17:0x7077f358af0774a6!2sBhuj, Gujarat!5e0!3m2!1sen!2sin!4v1614852897708!5m2!1sen!2sin\\\\\\\" width=\\\\\\\"600\\\\\\\" height=\\\\\\\"450\\\\\\\" style=\\\\\\\"border:0;\\\\\\\" allowfullscreen=\\\\\\\"\\\\\\\" loading=\\\\\\\"lazy\\\\\\\"&gt;&lt;\\/iframe&gt;\",\"logo\":\"uploads\\/media\\/2021\\/eshop-logo-full.png\",\"favicon\":\"uploads\\/media\\/2021\\/eshop-favicon.png\",\"meta_keywords\":\"Eshop , E-commerce\",\"meta_description\":\"Eshop is an ecommerce platform\",\"app_download_section\":true,\"app_download_section_title\":\"eShop Mobile App\",\"app_download_section_tagline\":\"Affordable Ecommerce Platform\",\"app_download_section_short_description\":\"Shop with us at affordable prices and get exciting cashback & offers.\",\"app_download_section_playstore_url\":\"https:\\/\\/play.google.com\\/\",\"app_download_section_appstore_url\":\"https:\\/\\/www.apple.com\\/in\\/app-store\\/\",\"twitter_link\":\"https:\\/\\/twitter.com\\/\",\"facebook_link\":\"https:\\/\\/facebook.com\\/\",\"instagram_link\":\"https:\\/\\/instagram.com\\/\",\"youtube_link\":\"https:\\/\\/youtube.com\\/\",\"shipping_mode\":true,\"shipping_title\":\"Free Shipping\",\"shipping_description\":\"Free Shipping at your door step.\",\"return_mode\":true,\"return_title\":\"Free Returns\",\"return_description\":\"Free return if products are damaged.\",\"support_mode\":true,\"support_title\":\"Support 24\\/7\",\"support_description\":\"24\\/7 and 365 days support is available.\",\"safety_security_mode\":true,\"safety_security_title\":\"100% Safe & Secure\",\"safety_security_description\":\"100% safe & secure.\"}'),
(19, 'firebase_settings', '{\"apiKey\":\"AIzaSyCAxO1231313KAHoYtqWmwhbf7-NeQmT0\",\"authDomain\":\"eshop-221144.firebaseapp.com\",\"databaseURL\":\"https:\\/\\/eshop-221144.firebaseio.com\",\"projectId\":\"eshop-221144\",\"storageBucket\":\"eshop-221144.appspot.com\",\"messagingSenderId\":\"3650512312317814\",\"appId\":\"1:3650512312314:web:e205a5nnjn7719a7687\",\"measurementId\":\"G-1JN5123127J6\"}');
INSERT INTO `settings` (`id`, `variable`, `value`) VALUES
(20, 'admin_privacy_policy', '<p>Admin ACCESSING, BROWSING</span> OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.</span></p><p>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & <span xss=\\\"removed\\\">ACCESSING </span><span xss=\\\"removed\\\">fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</span></p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(21, 'admin_terms_conditions', '<p><span xss=\\\"removed\\\"><span xss=\\\"removed\\\"> admin ACCESSING, BROWSING</span> OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.</span></p><p>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(22, 'seller_privacy_policy', '<p><span xss=\\\"removed\\\"><span xss=\\\"removed\\\" xss=removed><b>Privacy Policy</b></span><br></span></p><p><span xss=\\\"removed\\\">Seller ACCESSING, </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(23, 'seller_terms_conditions', '<p><span xss=\\\"removed\\\"><span xss=\\\"removed\\\" xss=removed><b>Terms & Conditions</b></span></span><span xss=\\\"removed\\\">﻿</span><span xss=\\\"removed\\\"><br></span></p><p><span xss=\\\"removed\\\">Seller ACCESSING, </span>BROWSING OR OTHERWISE USING THE WEBSITE eShop.com, Missed Call Service or mobile application INDICATES user is in AGREEMENT with eShop vegetables & fruits Pvt Ltd for ALL THE TERMS AND CONDITIONS MENTIONED henceforth. User is requested to READ terms and conditions CAREFULLY BEFORE PROCEEDING FURTHER.<br>User is the person, group of person, company, trust, society, legal entity, legal personality or anyone who visits website, mobile app or gives missed call or places order with eShop via phone or website or mobile application or browse through website www.eShop.com.</p><p>eShop reserves the right to add, alter, change, modify or delete any of these terms and conditions at any time without prior information. The altered terms and conditions becomes binding on the user since the moment same are unloaded on the website www.eShop.com</p><p>eShop is in trade of fresh fruits and vegetables and delivers the order to home (user’s desired address) directly.</p><p>That any user who gives missed call/call for order on any number published/used by eShop.com, consents to receive, accept calls and messages or any after communication from eShop vegetables & fruits Pvt Ltd for Promotion and Telemarketing Purposes within a week.</p><p>If a customer do not wish to receive any communication from eShop, please SMS NO OFFERS to 9512512125.</p><p>eShop accept orders on all seven days and user will receive the delivery next day from date of order placement, as we at eShop procure the fresh produce from the procurement center and deliver it straight to user.</p><p>There is Minimum Order value of Rs. 200. There are no delivery charges on an order worth Rs. 200 or above. In special cases, if permitted, order value is less then Rs. 200/– , Rs. 40 as shipping charges shall be charged from user.</p><p>eShop updates the prices on daily basis and the price displayed at our website www.eShop.com, at the time of placement of order by user he/she/it will be charged as per the price listed at the website www.eShop.com.</p><p>In the event, though there are remote possibilities, of wrong invoice generation due to any reason, in case it happens eShop vegetables & fruits Pvt Ltd reserve its right to again raise the correct invoice at the revised amount and same shall be paid by user.</p><p>At times it is difficult to weigh certain vegetables or fruits exactly as per the order or desired quantity of user, hence the delivery might be with five percent variation on both higher or lower side of exact ordered quantity, user are hereby under takes to pay to eShop vegetables & fruits Pvt Ltd as per the final invoice. We at eShop understands and our endeavor is to always deliver in exact quantity in consonance with quantity ordered but every time it’s not possible but eShop guarantee the fair deal and weight to all its users. eShop further assures its users that at no instance delivery weights/quantity vary dramatically from what quantity ordered by user.</p><p>If some product is not available or is not of good quality, the same item will not be delivered and will be adjusted accordingly in the invoice; all rights in this regards are reserved with eShop. Images of Fruits & Vegetables present in the website are for demonstration purpose and may not resemble exactly in size, colour, weight, contrast etc; though we assure our best to maintain the best quality in product, which is being our foremost commitment to the customer.</p><p>All orders placed before 11 PM in the Night will be delivered next day or as per delivery date chosen.</p>'),
(24, 'return_policy', '<div class=\\\"col-sm-6\\\" xss=removed><h4>Return Policy</h4><div><br></div></div><div class=\\\"col-sm-6\\\" xss=removed><ol class=\\\"breadcrumb float-sm-right\\\" xss=removed></ol></div>'),
(25, 'shipping_policy', '<h4 xss=removed>Shiping Policy</h4>'),
(26, 'doctor_brown', '{\"code_bravo\":\"567f0616-4654-4d90-bdec-da10233ddbd6\",\"time_check\":\"0f4d21066049d730e4ccc5bbe0492155061c9b7e16f3621b951e3a0a8ce29ae6\",\"code_adam\":\"mr_busy\",\"dr_firestone\":32062835}');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `type`, `type_id`, `image`, `date_added`) VALUES
(4, 'categories', 1, 'uploads/media/2022/Winter_Slider-min.jpg', '2022-04-18 12:10:14'),
(3, 'default', 0, 'uploads/media/2022/new_Slider-3-min.jpg', '2022-04-18 12:09:54'),
(5, 'products', 45, 'uploads/media/2022/new_Slider-2.jpg', '2022-04-18 12:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(256) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `read_by` tinyint(4) DEFAULT 0,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_notification`
--

INSERT INTO `system_notification` (`id`, `title`, `message`, `type`, `type_id`, `read_by`, `date_sent`) VALUES
(1, 'New order placed ID #49', 'New order received for eShop - ecommerce please process it.', 'place_order', 49, 1, '2022-04-14 12:09:27'),
(2, 'New order placed ID #50', 'New order received for eShop - ecommerce please process it.', 'place_order', 50, 1, '2022-04-14 12:11:09'),
(3, 'New order placed ID #51', 'New order received for eShop - ecommerce please process it.', 'place_order', 51, 1, '2022-04-14 12:13:08'),
(4, 'New order placed ID #52', 'New order received for eShop - ecommerce please process it.', 'place_order', 52, 1, '2022-04-14 14:08:30'),
(5, 'New order placed ID #53', 'New order received for eShop - ecommerce please process it.', 'place_order', 53, 1, '2022-04-14 14:11:48'),
(6, 'New order placed ID #54', 'New order received for eShop - ecommerce please process it.', 'place_order', 54, 1, '2022-04-14 14:15:45'),
(7, 'New order placed ID #55', 'New order received for eShop - ecommerce please process it.', 'place_order', 55, 1, '2022-04-14 14:23:01'),
(8, 'New order placed ID #56', 'New order received for eShop - ecommerce please process it.', 'place_order', 56, 1, '2022-04-14 14:28:11'),
(9, 'New order placed ID #57', 'New order received for eShop - ecommerce please process it.', 'place_order', 57, 1, '2022-04-15 02:49:35'),
(10, 'New order placed ID #58', 'New order received for eShop - ecommerce please process it.', 'place_order', 58, 1, '2022-04-15 03:22:47'),
(11, 'New order placed ID #59', 'New order received for eShop - ecommerce please process it.', 'place_order', 59, 1, '2022-04-15 04:13:18'),
(12, 'New order placed ID #60', 'New order received for eShop - ecommerce please process it.', 'place_order', 60, 1, '2022-04-15 05:16:31'),
(13, 'New order placed ID #61', 'New order received for eShop - ecommerce please process it.', 'place_order', 61, 1, '2022-04-15 11:29:22'),
(14, 'New order placed ID #62', 'New order received for eShop - ecommerce please process it.', 'place_order', 62, 1, '2022-04-18 08:02:50'),
(15, 'New order placed ID #63', 'New order received for eShop - ecommerce please process it.', 'place_order', 63, 1, '2022-04-18 08:03:46'),
(16, 'New order placed ID #64', 'New order received for eShop - ecommerce please process it.', 'place_order', 64, 1, '2022-04-18 11:58:42'),
(17, 'New order placed ID #65', 'New order received for eShop - ecommerce please process it.', 'place_order', 65, 1, '2022-04-18 12:31:19'),
(18, 'New order placed ID #66', 'New order received for eShop - ecommerce please process it.', 'place_order', 66, 1, '2022-04-18 12:32:26'),
(19, 'New order placed ID #67', 'New order received for eShop - ecommerce please process it.', 'place_order', 67, 1, '2022-04-18 12:34:10'),
(20, 'New order placed ID #68', 'New order received for eShop - ecommerce please process it.', 'place_order', 68, 1, '2022-04-18 12:36:36'),
(21, 'New order placed ID #69', 'New order received for eShop - ecommerce please process it.', 'place_order', 69, 1, '2022-04-18 13:08:51'),
(22, 'New order placed ID #70', 'New order received for eShop - ecommerce please process it.', 'place_order', 70, 1, '2022-04-19 05:39:11'),
(23, 'New order placed ID #71', 'New order received for eShop - ecommerce please process it.', 'place_order', 71, 1, '2022-04-19 06:19:09'),
(24, 'New order placed ID #72', 'New order received for eShop - ecommerce please process it.', 'place_order', 72, 1, '2022-04-19 06:43:05'),
(25, 'New order placed ID #73', 'New order received for eShop - ecommerce please process it.', 'place_order', 73, 1, '2022-04-19 07:18:12'),
(26, 'New order placed ID #74', 'New order received for eShop - ecommerce please process it.', 'place_order', 74, 1, '2022-04-19 09:34:21'),
(27, 'New order placed ID #75', 'New order received for eShop - ecommerce please process it.', 'place_order', 75, 1, '2022-04-19 09:36:14'),
(28, 'New order placed ID #76', 'New order received for eShop - ecommerce please process it.', 'place_order', 76, 1, '2022-04-19 09:39:36'),
(29, 'New order placed ID #77', 'New order received for eShop - ecommerce please process it.', 'place_order', 77, 1, '2022-04-19 09:58:24'),
(30, 'New order placed ID #78', 'New order received for eShop - ecommerce please process it.', 'place_order', 78, 1, '2022-04-19 10:06:34'),
(31, 'New order placed ID #79', 'New order received for eShop - ecommerce please process it.', 'place_order', 79, 1, '2022-04-19 10:49:52'),
(32, 'New order placed ID #80', 'New order received for eShop - ecommerce please process it.', 'place_order', 80, 1, '2022-04-19 11:24:19'),
(33, 'New order placed ID #81', 'New order received for eShop - ecommerce please process it.', 'place_order', 81, 1, '2022-04-19 11:30:40'),
(34, 'New order placed ID #82', 'New order received for eShop - ecommerce please process it.', 'place_order', 82, 1, '2022-04-19 11:33:50'),
(35, 'New order placed ID #83', 'New order received for eShop - ecommerce please process it.', 'place_order', 83, 1, '2022-04-19 11:43:36'),
(36, 'New order placed ID #84', 'New order received for eShop - ecommerce please process it.', 'place_order', 84, 1, '2022-04-19 11:45:55'),
(37, 'New order placed ID #85', 'New order received for eShop - ecommerce please process it.', 'place_order', 85, 1, '2022-04-19 11:47:15'),
(38, 'New order placed ID #86', 'New order received for eShop - ecommerce please process it.', 'place_order', 86, 1, '2022-04-19 11:48:01'),
(39, 'New order placed ID #87', 'New order received for eShop - ecommerce please process it.', 'place_order', 87, 1, '2022-04-19 11:54:39'),
(40, 'New order placed ID #88', 'New order received for eShop - ecommerce please process it.', 'place_order', 88, 1, '2022-04-20 05:54:48'),
(41, 'New order placed ID #89', 'New order received for eShop - ecommerce please process it.', 'place_order', 89, 1, '2022-04-21 05:35:06'),
(42, 'New order placed ID #90', 'New order received for eShop - ecommerce please process it.', 'place_order', 90, 1, '2022-04-22 12:22:05'),
(43, 'New order placed ID #91', 'New order received for eShop - ecommerce please process it.', 'place_order', 91, 1, '2022-04-25 04:48:48'),
(44, 'New order placed ID #92', 'New order received for eShop - ecommerce please process it.', 'place_order', 92, 1, '2022-04-25 09:33:17'),
(45, 'New order placed ID #93', 'New order received for eShop - ecommerce please process it.', 'place_order', 93, 1, '2022-04-25 09:43:10'),
(46, 'New order placed ID #94', 'New order received for eShop - ecommerce please process it.', 'place_order', 94, 1, '2022-04-25 11:14:29'),
(47, 'New order placed ID #95', 'New order received for eShop - ecommerce please process it.', 'place_order', 95, 1, '2022-04-25 11:16:27'),
(48, 'New order placed ID #96', 'New order received for eShop - ecommerce please process it.', 'place_order', 96, 1, '2022-04-25 11:39:35'),
(49, 'New order placed ID #97', 'New order received for eShop - ecommerce please process it.', 'place_order', 97, 1, '2022-04-25 11:45:35'),
(50, 'New order placed ID #98', 'New order received for eShop - ecommerce please process it.', 'place_order', 98, 1, '2022-04-25 11:46:41'),
(51, 'New order placed ID #99', 'New order received for eShop - ecommerce please process it.', 'place_order', 99, 1, '2022-04-25 11:54:48'),
(52, 'New order placed ID #100', 'New order received for eShop - ecommerce please process it.', 'place_order', 100, 1, '2022-04-25 11:56:26'),
(53, 'New order placed ID #101', 'New order received for eShop - ecommerce please process it.', 'place_order', 101, 1, '2022-04-25 11:57:38'),
(54, 'New order placed ID #102', 'New order received for eShop - ecommerce please process it.', 'place_order', 102, 1, '2022-04-25 12:00:59'),
(55, 'New order placed ID #103', 'New order received for eShop - ecommerce please process it.', 'place_order', 103, 1, '2022-04-25 12:15:11'),
(56, 'New order placed ID #104', 'New order received for eShop - ecommerce please process it.', 'place_order', 104, 1, '2022-04-26 02:41:42'),
(57, 'New order placed ID #105', 'New order received for eShop - ecommerce please process it.', 'place_order', 105, 1, '2022-04-26 02:43:37'),
(58, 'New order placed ID #106', 'New order received for eShop - ecommerce please process it.', 'place_order', 106, 0, '2022-05-09 09:37:28'),
(59, 'New order placed ID #107', 'New order received for eShop - ecommerce please process it.', 'place_order', 107, 0, '2022-05-09 10:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `status`) VALUES
(1, 'apna khudka text', '2', 1),
(2, 'Fund Tax', '5', 1),
(3, 'Ye tax nai lega me', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `image`, `is_default`, `status`, `created_on`) VALUES
(1, 'Classic', 'classic', 'classic.jpg', 1, 0, '2021-02-11 05:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `ticket_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_type_id`, `user_id`, `subject`, `email`, `description`, `status`, `last_updated`, `date_created`) VALUES
(1, 2, 7, 'tt', 'tets@gmail.com', 'tt', 5, '2022-03-17 05:52:28', '2022-03-12 10:19:11'),
(2, 2, 7, 'test', 'test@gmail.com', 'tse', 2, '2022-03-17 05:53:50', '2022-03-12 10:22:24'),
(3, 2, 7, 'test', 'abc@gmail.com', 'test', 3, '2022-03-17 06:08:34', '2022-03-14 12:39:40'),
(4, 2, 7, 'test', 'test@gmail.com', 'test', 3, '2022-03-14 12:44:00', '2022-03-14 12:40:00'),
(5, 2, 7, 'test', 'abc@gmail.com', 'test', 2, '2022-04-20 05:21:42', '2022-03-14 12:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(11) NOT NULL,
  `user_type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `attachments` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `user_type`, `user_id`, `ticket_id`, `message`, `attachments`, `last_updated`, `date_created`) VALUES
(1, 'user', 1, 1, '3223232', '[\"uploads\\/tickets\\/200.png\"]', '2022-01-08 19:16:58', '2022-01-08 19:16:58'),
(2, 'user', 1, 1, '3223232', '[\"uploads\\/tickets\\/4671.zip\"]', '2022-01-08 19:18:41', '2022-01-08 19:18:41'),
(3, 'admin', 1, 5, 'Test', NULL, '2022-03-15 06:57:21', '2022-03-15 06:57:21'),
(4, 'admin', 1, 5, 'ewerre', NULL, '2022-03-15 06:57:30', '2022-03-15 06:57:30'),
(5, 'user', 7, 5, '', '[\"uploads\\/tickets\\/IMG-20220316-WA0010.jpg\"]', '2022-03-16 09:30:55', '2022-03-16 09:30:55'),
(6, 'user', 7, 5, '', '[\"uploads\\/tickets\\/IMG-20220316-WA0011.jpg\"]', '2022-03-17 05:31:57', '2022-03-17 05:31:57'),
(7, 'admin', 1, 1, 'the product', '[\"uploads\\/media\\/2022\\/image2.png\"]', '2022-03-17 05:53:18', '2022-03-17 05:53:18'),
(8, 'admin', 1, 2, '345678', '[\"uploads\\/media\\/2022\\/Screenshot_20220117-141822_One_UI_Home3.jpg\"]', '2022-03-17 05:56:33', '2022-03-17 05:56:33'),
(9, 'admin', 1, 5, 'rt4wthrhy4', NULL, '2022-03-18 11:54:28', '2022-03-18 11:54:28'),
(10, 'admin', 1, 5, 'hi', NULL, '2022-04-20 05:21:31', '2022-04-20 05:21:31'),
(11, 'admin', 1, 5, 'hi', '[\"uploads\\/media\\/2022\\/fashion1.png\"]', '2022-04-20 05:22:04', '2022-04-20 05:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `title`, `date_created`) VALUES
(3, 'Ticket type 1', '2022-03-17 05:43:46'),
(4, 'Ticket Type 2', '2022-03-17 05:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `last_order_time` time NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `title`, `from_time`, `to_time`, `last_order_time`, `status`) VALUES
(1, 'test', '16:00:00', '05:01:00', '17:04:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `transaction_type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payu_txn_id` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_email` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_type`, `user_id`, `order_id`, `type`, `txn_id`, `payu_txn_id`, `amount`, `status`, `currency_code`, `payer_email`, `message`, `transaction_date`, `date_created`) VALUES
(1, 'wallet', 7, NULL, 'credit', NULL, NULL, 100, NULL, NULL, NULL, 'gg', '2022-02-01 11:37:29', '2022-02-01 11:37:29'),
(2, 'wallet', 7, 'wallet-refill-user-7-1643776056571-444', 'credit', 'pay_Ir0aRBS6HyhBx8', NULL, 1234, 'Success', NULL, NULL, 'razorpay - Wallet credited on successful payment confirmation.', '2022-02-02 04:27:38', '2022-02-02 04:27:38'),
(3, 'wallet', 7, 'wallet-refill-user-7-1644212844636-125', 'credit', 'pi_3KQQ4PAlIMTFVRVS0iDA6PRa', NULL, 1234, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-07 05:47:40', '2022-02-07 05:47:40'),
(4, 'wallet', 3, '14', 'credit', '', NULL, 1199.88, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #14', '2022-02-11 10:29:02', '2022-02-11 10:29:02'),
(5, 'transaction', 3, '14', 'delivery_boy_cash', '', NULL, 9999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-02-11 10:29:02', '2022-02-11 10:29:02'),
(6, 'wallet', 143, 'wallet-refill-user-143-1645160225576-612', 'credit', 'pi_3KUOWmAlIMTFVRVS0lNjRa5I', NULL, 1500, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-18 04:57:23', '2022-02-18 04:57:23'),
(7, 'wallet', 142, 'wallet-refill-user-142-1645164635214-815', 'credit', 'pi_3KUPfsAlIMTFVRVS0lQEd2j9', NULL, 1000, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-18 06:11:55', '2022-02-18 06:11:55'),
(8, 'wallet', 143, 'wallet-refill-user-143-1645174448230-959', 'credit', 'pi_3KUSEAAlIMTFVRVS1HhKiR2p', NULL, 100, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-18 08:54:32', '2022-02-18 08:54:32'),
(9, 'wallet', 144, 'wallet-refill-user-144-1645444365876-379', 'credit', 'pi_3KVaRgAlIMTFVRVS1A35Kxhw', NULL, 1000, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-21 11:53:04', '2022-02-21 11:53:04'),
(10, 'wallet', 144, 'wallet-refill-user-144-1645534480054-180', 'credit', 'pi_3KVxt6AlIMTFVRVS0RBJtiAf', NULL, 2550, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-22 12:54:57', '2022-02-22 12:54:57'),
(11, 'wallet', 144, 'wallet-refill-user-144-1645593033429-924', 'credit', 'pi_3KWD7WAlIMTFVRVS0PE4sFeu', NULL, 1000, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-23 05:10:48', '2022-02-23 05:10:48'),
(12, 'wallet', 144, 'wallet-refill-user-144-1645602943584-924', 'credit', 'pi_3KWFhMAlIMTFVRVS0pwA4Yc1', NULL, 100, 'success', NULL, NULL, 'Wallet refill successful', '2022-02-23 07:55:58', '2022-02-23 07:55:58'),
(13, 'transaction', 12, '13', 'bank_transfer', '', NULL, 222, 'awaiting', NULL, NULL, '', '2022-03-04 11:21:38', '2022-03-04 11:21:38'),
(14, 'wallet', 143, 'wallet-refill-user-143-1646628989059-320', 'credit', 'pi_3KaYcVAlIMTFVRVS03miVT6O', NULL, 2000, 'success', NULL, NULL, 'Wallet refill successful', '2022-03-07 04:56:49', '2022-03-07 04:56:49'),
(15, 'wallet', 143, 'wallet-refill-user-143-1646629722416-164', 'credit', 'pi_3KaYoJAlIMTFVRVS0tpbx8aJ', NULL, 212, 'success', NULL, NULL, 'Wallet refill successful', '2022-03-07 05:08:58', '2022-03-07 05:08:58'),
(16, 'wallet', 143, 'wallet-refill-user-143-1646638916261-806', 'credit', 'pi_3KabCbAlIMTFVRVS0gnDThr6', NULL, 2500, 'success', NULL, NULL, 'Wallet refill successful', '2022-03-07 07:42:13', '2022-03-07 07:42:13'),
(17, 'wallet', 143, 'wallet-refill-user-143-1646644874197-195', 'credit', 'pi_3KackhAlIMTFVRVS0A3c3y1p', NULL, 2000, 'success', NULL, NULL, 'Wallet refill successful', '2022-03-07 09:21:30', '2022-03-07 09:21:30'),
(18, 'wallet', 143, 'wallet-refill-user-143-1646804180471-418', 'credit', 'pi_3KbICAAlIMTFVRVS0y9HAiXt', NULL, 685, 'success', NULL, NULL, 'Wallet refill successful', '2022-03-09 05:36:41', '2022-03-09 05:36:41'),
(19, 'wallet', 7, NULL, 'debit', NULL, NULL, 2568, NULL, NULL, NULL, 'Used against Order Placement', '2022-03-11 12:34:01', '2022-03-11 12:34:01'),
(20, 'transaction', 7, '15', 'bank_transfer', '', NULL, 13571.6, 'awaiting', NULL, NULL, '', '2022-03-11 12:34:04', '2022-03-11 12:34:04'),
(21, 'transaction', 7, '16', 'bank_transfer', 'rythr', NULL, 222, 'Success', NULL, NULL, 'gh', '2022-03-11 12:48:31', '2022-03-11 12:48:31'),
(22, 'transaction', 7, '17', 'bank_transfer', 'cvb', NULL, 222, 'Success', NULL, NULL, 'cvb', '2022-03-12 09:27:55', '2022-03-12 09:27:55'),
(23, 'transaction', 7, '18', 'bank_transfer', '455', NULL, 222, 'Success', NULL, NULL, 'promo code is updated', '2022-03-14 04:29:46', '2022-03-14 04:29:46'),
(24, 'transaction', 7, '19', 'bank_transfer', '455', NULL, 281.8, 'Failed', NULL, NULL, 'sfsda', '2022-03-15 07:30:15', '2022-03-15 07:30:15'),
(25, 'transaction', 7, '20', 'stripe', 'pi_3KdVT9AlIMTFVRVS1JT4HjG3', NULL, 483.8, 'received', NULL, NULL, 'Order Placed Successfully', '2022-03-15 08:11:32', '2022-03-15 08:11:32'),
(26, 'transaction', 7, '21', 'stripe', 'pi_3KdXttAlIMTFVRVS0dd6wizU', NULL, 483.8, 'received', NULL, NULL, 'Order Placed Successfully', '2022-03-15 10:47:17', '2022-03-15 10:47:17'),
(27, 'wallet', 7, NULL, 'credit', NULL, NULL, 202, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 19', '2022-03-15 11:04:21', '2022-03-15 11:04:21'),
(28, 'wallet', 7, NULL, 'credit', NULL, NULL, 2366, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 20', '2022-03-15 11:04:22', '2022-03-15 11:04:22'),
(29, 'wallet', 14, '27', 'credit', '', NULL, 20.2, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #27', '2022-03-15 11:14:46', '2022-03-15 11:14:46'),
(30, 'wallet', 7, NULL, 'credit', NULL, NULL, 202, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 27', '2022-03-15 11:15:44', '2022-03-15 11:15:44'),
(31, 'transaction', 1, '22', 'bank_transfer', 't234', NULL, 10019, 'Success', NULL, NULL, '', '2022-03-15 11:19:08', '2022-03-15 11:19:08'),
(32, 'wallet', 13, '21', 'credit', '', NULL, 20.2, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #21', '2022-03-15 11:56:50', '2022-03-15 11:56:50'),
(33, 'wallet', 7, NULL, 'credit', NULL, NULL, 222, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 21', '2022-03-15 11:59:04', '2022-03-15 11:59:04'),
(34, 'wallet', 13, '23', 'credit', '', NULL, 20.2, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #23', '2022-03-15 12:02:07', '2022-03-15 12:02:07'),
(35, 'wallet', 7, NULL, 'credit', NULL, NULL, 222, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 23', '2022-03-15 12:19:01', '2022-03-15 12:19:01'),
(36, 'wallet', 15, NULL, 'debit', NULL, NULL, 100, NULL, NULL, NULL, 'Used against Order Placement', '2022-03-15 12:47:58', '2022-03-15 12:47:58'),
(37, 'transaction', 15, '23', 'bank_transfer', '455', NULL, 9899, 'Success', NULL, NULL, 'the product', '2022-03-15 12:48:01', '2022-03-15 12:48:01'),
(38, 'wallet', 13, '30', 'credit', '', NULL, 999.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #30', '2022-03-15 12:56:11', '2022-03-15 12:56:11'),
(39, 'transaction', 15, '25', 'bank_transfer', 't123', NULL, 78780, 'Success', NULL, NULL, 'the products', '2022-03-16 04:34:10', '2022-03-16 04:34:10'),
(40, 'wallet', 4, NULL, 'credit', NULL, NULL, 100, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 13', '2022-03-16 05:03:19', '2022-03-16 05:03:19'),
(41, 'wallet', 2, NULL, 'credit', NULL, NULL, 8999.1, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 14', '2022-03-16 05:03:19', '2022-03-16 05:03:19'),
(42, 'wallet', 4, NULL, 'credit', NULL, NULL, 202, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 22', '2022-03-16 05:03:19', '2022-03-16 05:03:19'),
(43, 'wallet', 2, NULL, 'credit', NULL, NULL, 8999.1, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 30', '2022-03-16 05:03:19', '2022-03-16 05:03:19'),
(44, 'wallet', 15, NULL, 'credit', NULL, NULL, 78780, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 32', '2022-03-16 05:55:06', '2022-03-16 05:55:06'),
(45, 'wallet', 15, NULL, 'credit', NULL, NULL, 78780, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 32', '2022-03-16 05:55:18', '2022-03-16 05:55:18'),
(46, 'wallet', 15, NULL, 'debit', NULL, NULL, 82780, NULL, NULL, NULL, 'Used against Order Placement', '2022-03-16 06:45:07', '2022-03-16 06:45:07'),
(47, 'wallet', 13, '38', 'credit', '', NULL, 400, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #38', '2022-03-17 07:39:16', '2022-03-17 07:39:16'),
(48, 'wallet', 13, '39', 'credit', '', NULL, 7878, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #39', '2022-03-17 07:39:16', '2022-03-17 07:39:16'),
(49, 'wallet', 2, NULL, 'credit', NULL, NULL, 3600, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 38', '2022-03-17 07:42:19', '2022-03-17 07:42:19'),
(50, 'wallet', 2, NULL, 'credit', NULL, NULL, 70902, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 39', '2022-03-17 07:42:19', '2022-03-17 07:42:19'),
(51, 'wallet', 7, NULL, 'debit', NULL, NULL, 3214, NULL, NULL, NULL, 'debit', '2022-03-17 12:04:02', '2022-03-17 12:04:02'),
(52, 'wallet', 12, NULL, 'credit', NULL, NULL, 50, NULL, NULL, NULL, 'credit', '2022-03-17 12:04:18', '2022-03-17 12:04:18'),
(53, 'wallet', 15, NULL, 'credit', NULL, NULL, 78780, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 32', '2022-03-17 12:10:15', '2022-03-17 12:10:15'),
(54, 'wallet', 13, NULL, 'debit', NULL, NULL, 500, NULL, NULL, NULL, 'Balance Debited', '2022-03-17 12:42:05', '2022-03-17 12:42:05'),
(55, 'wallet', 13, '31', 'credit', '', NULL, 1591.76, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #31', '2022-03-21 05:17:52', '2022-03-21 05:17:52'),
(56, 'transaction', 13, '31', 'delivery_boy_cash', '', NULL, 15917.6, '1', NULL, NULL, 'Delivery boy collected COD', '2022-03-21 05:17:52', '2022-03-21 05:17:52'),
(57, 'transaction', 15, '33', 'paytm', '20220321111212800110168204703532626', NULL, 6120, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-03-21 05:35:35', '2022-03-21 05:35:35'),
(58, 'wallet', 13, '29', 'credit', '', NULL, 999.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #29', '2022-03-21 07:36:26', '2022-03-21 07:36:26'),
(59, 'wallet', 1, NULL, 'credit', NULL, NULL, 9999, NULL, NULL, NULL, 'Refund Amount Credited for Order Item ID  : 29', '2022-03-21 07:37:53', '2022-03-21 07:37:53'),
(60, 'transaction', 458, '35', 'stripe', 'pi_3Kg54gAlIMTFVRVS0YX4eDZy', NULL, 112, 'received', NULL, NULL, 'Order Placed Successfully', '2022-03-22 10:37:00', '2022-03-22 10:37:00'),
(61, 'wallet', 3, '48', 'credit', '', NULL, 1.2, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #48', '2022-03-22 10:40:36', '2022-03-22 10:40:36'),
(62, 'wallet', 13, '46', 'credit', '', NULL, 10, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #46', '2022-03-29 09:48:58', '2022-03-29 09:48:58'),
(63, 'transaction', 13, '46', 'delivery_boy_cash', '', NULL, 100, '1', NULL, NULL, 'Delivery boy collected COD', '2022-03-29 09:48:58', '2022-03-29 09:48:58'),
(64, 'wallet', 13, '47', 'credit', '', NULL, 400, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #47', '2022-03-29 09:48:58', '2022-03-29 09:48:58'),
(65, 'transaction', 13, '47', 'delivery_boy_cash', '', NULL, 4000, '1', NULL, NULL, 'Delivery boy collected COD', '2022-03-29 09:48:58', '2022-03-29 09:48:58'),
(66, 'transaction', 7, '36', 'bank_transfer', '', NULL, 10558, 'awaiting', NULL, NULL, '', '2022-03-29 09:56:50', '2022-03-29 09:56:50'),
(67, 'transaction', 7, '37', 'stripe', 'pi_3Kl4UhAlIMTFVRVS01PKR9nN', NULL, 3913, 'received', NULL, NULL, 'Order Placed Successfully', '2022-04-05 05:00:32', '2022-04-05 05:00:32'),
(68, 'transaction', 2, '38', 'bank_transfer', '', NULL, 300, 'awaiting', NULL, NULL, '', '2022-04-07 09:35:03', '2022-04-07 09:35:03'),
(69, 'wallet', 3, '55', 'credit', '', NULL, 36, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #55', '2022-04-07 09:37:37', '2022-04-07 09:37:37'),
(70, 'transaction', 3, '55', 'delivery_boy_cash', '', NULL, 300, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-07 09:37:37', '2022-04-07 09:37:37'),
(71, 'wallet', 20, '57', 'credit', '', NULL, 45, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #57', '2022-04-07 09:43:47', '2022-04-07 09:43:47'),
(72, 'transaction', 20, '57', 'delivery_boy_cash', '', NULL, 450, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-07 09:43:47', '2022-04-07 09:43:47'),
(73, 'wallet', 14, '58', 'credit', '', NULL, 15, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #58', '2022-04-11 04:08:36', '2022-04-11 04:08:36'),
(74, 'transaction', 14, '58', 'delivery_boy_cash', '', NULL, 150, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-11 04:08:36', '2022-04-11 04:08:36'),
(75, 'transaction', 7, '43', 'bank_transfer', '', NULL, 559, 'awaiting', NULL, NULL, '', '2022-04-12 04:32:52', '2022-04-12 04:32:52'),
(76, 'wallet', 14, '60', 'credit', '', NULL, 45, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #60', '2022-04-12 04:38:39', '2022-04-12 04:38:39'),
(77, 'transaction', 14, '60', 'delivery_boy_cash', '', NULL, 450, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-12 04:38:39', '2022-04-12 04:38:39'),
(78, 'wallet', 14, '61', 'credit', '', NULL, 400, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #61', '2022-04-12 04:41:40', '2022-04-12 04:41:40'),
(79, 'transaction', 14, '61', 'delivery_boy_cash', '', NULL, 4000, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-12 04:41:40', '2022-04-12 04:41:40'),
(80, 'wallet', 14, '62', 'credit', '', NULL, 450, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #62', '2022-04-12 04:41:58', '2022-04-12 04:41:58'),
(81, 'transaction', 14, '62', 'delivery_boy_cash', '', NULL, 4500, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-12 04:41:58', '2022-04-12 04:41:58'),
(82, 'wallet', 20, '63', 'credit', '', NULL, 400, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #63', '2022-04-12 04:42:18', '2022-04-12 04:42:18'),
(83, 'transaction', 20, '63', 'delivery_boy_cash', '', NULL, 4000, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-12 04:42:18', '2022-04-12 04:42:18'),
(84, 'wallet', 14, '64', 'credit', '', NULL, 999.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #64', '2022-04-12 04:43:40', '2022-04-12 04:43:40'),
(85, 'transaction', 14, '64', 'delivery_boy_cash', '', NULL, 9999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-12 04:43:40', '2022-04-12 04:43:40'),
(86, 'transaction', 20, '', 'delivery_boy_cash_collection', '', NULL, 21, '1', NULL, NULL, 'test', '2022-04-12 09:38:35', '2022-04-12 09:38:35'),
(87, 'transaction', 7, '49', 'bank_transfer', '', NULL, 4490, 'awaiting', NULL, NULL, '', '2022-04-14 12:09:29', '2022-04-14 12:09:29'),
(88, 'transaction', 7, '50', 'bank_transfer', '', NULL, 4690, 'awaiting', NULL, NULL, '', '2022-04-14 12:11:11', '2022-04-14 12:11:11'),
(89, 'transaction', 7, '51', 'bank_transfer', 'qq', NULL, 4490, 'Success', NULL, NULL, 'Get 30% off upto 500 on order amount above 2500', '2022-04-14 12:13:10', '2022-04-14 12:13:10'),
(90, 'wallet', 20, '68', 'credit', '', NULL, 450, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #68', '2022-04-14 14:09:07', '2022-04-14 14:09:07'),
(91, 'transaction', 20, '68', 'delivery_boy_cash', '', NULL, 4500, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-14 14:09:07', '2022-04-14 14:09:07'),
(92, 'transaction', 7, '53', 'razorpay', 'pay_JJGSiqQDYPhmwj', NULL, 4490, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-14 14:11:50', '2022-04-14 14:11:50'),
(93, 'transaction', 7, '54', 'razorpay', 'pay_JJGWkYjZxVvXKW', NULL, 5140, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-14 14:15:48', '2022-04-14 14:15:48'),
(94, 'transaction', 7, '55', 'razorpay', 'pay_JJGelwlsXwouZq', NULL, 4190, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-14 14:23:04', '2022-04-14 14:23:04'),
(95, 'wallet', 14, '75', 'credit', '', NULL, 999.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #75', '2022-04-15 03:24:41', '2022-04-15 03:24:41'),
(96, 'transaction', 14, '75', 'delivery_boy_cash', '', NULL, 9999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-15 03:24:41', '2022-04-15 03:24:41'),
(97, 'wallet', 20, '77', 'credit', '', NULL, 15, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #77', '2022-04-15 09:26:34', '2022-04-15 09:26:34'),
(98, 'transaction', 20, '77', 'delivery_boy_cash', '', NULL, 150, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-15 09:26:34', '2022-04-15 09:26:34'),
(99, 'wallet', 20, '78', 'credit', '', NULL, 0.8, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #78', '2022-04-15 12:13:53', '2022-04-15 12:13:53'),
(100, 'transaction', 20, '78', 'delivery_boy_cash', '', NULL, 8, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-15 12:13:53', '2022-04-15 12:13:53'),
(101, 'transaction', 7, '63', 'bank_transfer', '', NULL, 50, 'awaiting', NULL, NULL, '', '2022-04-18 08:03:49', '2022-04-18 08:03:49'),
(102, 'transaction', 7, '64', 'stripe', 'pi_3KptCLAlIMTFVRVS0Rre3erz', NULL, 16175.2, 'received', NULL, NULL, 'Order Placed Successfully', '2022-04-18 11:58:44', '2022-04-18 11:58:44'),
(103, 'wallet', 14, '84', 'credit', '', NULL, 1607.52, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #84', '2022-04-18 12:32:51', '2022-04-18 12:32:51'),
(104, 'transaction', 14, '84', 'delivery_boy_cash', '', NULL, 16075.2, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-18 12:32:51', '2022-04-18 12:32:51'),
(105, 'wallet', 17, '88', 'credit', '', NULL, 7956, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #88', '2022-04-19 05:48:14', '2022-04-19 05:48:14'),
(106, 'transaction', 17, '88', 'delivery_boy_cash', '', NULL, 79560, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-19 05:48:14', '2022-04-19 05:48:14'),
(107, 'transaction', 7, '71', 'razorpay', 'pay_JL758tQmT7StfQ', NULL, 25874.2, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-19 06:19:11', '2022-04-19 06:19:11'),
(108, 'wallet', 17, '89', 'credit', '', NULL, 1607.52, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #89', '2022-04-19 06:37:57', '2022-04-19 06:37:57'),
(109, 'wallet', 17, '90', 'credit', '', NULL, 999.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #90', '2022-04-19 06:37:57', '2022-04-19 06:37:57'),
(110, 'transaction', 7, '72', 'bank_transfer', 'txn_1', NULL, 14999, 'Success', NULL, NULL, 'successfully updated', '2022-04-19 06:43:07', '2022-04-19 06:43:07'),
(111, 'transaction', 1, '73', 'bank_transfer', '2222', NULL, 55080, 'Success', NULL, NULL, '2222', '2022-04-19 07:18:16', '2022-04-19 07:18:16'),
(112, 'wallet', 17, '92', 'credit', '', NULL, 5508, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #92', '2022-04-19 07:22:06', '2022-04-19 07:22:06'),
(113, 'wallet', 14, '93', 'credit', '', NULL, 225, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #93', '2022-04-19 09:34:35', '2022-04-19 09:34:35'),
(114, 'transaction', 14, '93', 'delivery_boy_cash', '', NULL, 2250, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-19 09:34:35', '2022-04-19 09:34:35'),
(115, 'wallet', 7, NULL, 'credit', NULL, NULL, 200, NULL, NULL, NULL, 'Discounted Amount Credited for Order Item ID  : 72', '2022-04-19 09:35:01', '2022-04-19 09:35:01'),
(116, 'wallet', 7, NULL, 'credit', NULL, NULL, 1000, NULL, NULL, NULL, 'Discounted Amount Credited for Order Item ID  : 74', '2022-04-19 09:35:01', '2022-04-19 09:35:01'),
(117, 'wallet', 7, NULL, 'credit', NULL, NULL, 1000, NULL, NULL, NULL, 'Discounted Amount Credited for Order Item ID  : 75', '2022-04-19 09:36:34', '2022-04-19 09:36:34'),
(118, 'wallet', 7, NULL, 'credit', NULL, NULL, 1000, NULL, NULL, NULL, 'Discounted Amount Credited for Order Item ID  : 76', '2022-04-19 09:58:44', '2022-04-19 09:58:44'),
(119, 'wallet', 7, NULL, 'credit', NULL, NULL, 1000, NULL, NULL, NULL, 'Discounted Amount Credited for Order Item ID  : 77', '2022-04-19 09:58:44', '2022-04-19 09:58:44'),
(120, 'transaction', 7, '82', 'razorpay', 'pay_JLCRfVaWZv5IJx', NULL, 450, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-19 11:33:54', '2022-04-19 11:33:54'),
(121, 'transaction', 7, '83', 'paystack', 'ChargedFromAndroid_1650368501382', NULL, 9999, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-19 11:43:38', '2022-04-19 11:43:38'),
(122, 'transaction', 7, '84', 'razorpay', 'pay_JLCeSc6z5E5gX8', NULL, 450, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-19 11:45:58', '2022-04-19 11:45:58'),
(123, 'transaction', 7, '85', 'stripe', 'pi_3KqFVtAlIMTFVRVS1HkiyWwg', NULL, 16075.2, 'received', NULL, NULL, 'Order Placed Successfully', '2022-04-19 11:47:17', '2022-04-19 11:47:17'),
(124, 'transaction', 7, '86', 'bank_transfer', '', NULL, 800, 'awaiting', NULL, NULL, '', '2022-04-19 11:48:04', '2022-04-19 11:48:04'),
(125, 'transaction', 7, '87', 'flutterwave', '3297774', NULL, 1355, 'Success', NULL, NULL, 'Order Placed Successfully', '2022-04-19 11:54:42', '2022-04-19 11:54:42'),
(126, 'wallet', 2, NULL, 'credit', NULL, NULL, 90, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 46', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(127, 'wallet', 2, NULL, 'credit', NULL, NULL, 3600, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 47', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(128, 'wallet', 2, NULL, 'credit', NULL, NULL, 270, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 55', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(129, 'wallet', 2, NULL, 'credit', NULL, NULL, 405, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 57', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(130, 'wallet', 2, NULL, 'credit', NULL, NULL, 135, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 58', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(131, 'wallet', 2, NULL, 'credit', NULL, NULL, 405, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 60', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(132, 'wallet', 2, NULL, 'credit', NULL, NULL, 3600, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 61', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(133, 'wallet', 2, NULL, 'credit', NULL, NULL, 4050, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 62', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(134, 'wallet', 2, NULL, 'credit', NULL, NULL, 3600, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 63', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(135, 'wallet', 2, NULL, 'credit', NULL, NULL, 8999.1, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 64', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(136, 'wallet', 2, NULL, 'credit', NULL, NULL, 4050, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 68', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(137, 'wallet', 19, NULL, 'credit', NULL, NULL, 4498.2, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 69', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(138, 'wallet', 2, NULL, 'credit', NULL, NULL, 8999.1, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 75', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(139, 'wallet', 16, NULL, 'credit', NULL, NULL, 127.5, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 77', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(140, 'wallet', 25, NULL, 'credit', NULL, NULL, 7.92, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 78', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(141, 'wallet', 4, NULL, 'credit', NULL, NULL, 15271.44, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 84', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(142, 'wallet', 2, NULL, 'credit', NULL, NULL, 810, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 85', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(143, 'wallet', 2, NULL, 'credit', NULL, NULL, 1215, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 87', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(144, 'wallet', 2, NULL, 'credit', NULL, NULL, 71604, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 88', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(145, 'wallet', 4, NULL, 'credit', NULL, NULL, 15271.44, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 89', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(146, 'wallet', 2, NULL, 'credit', NULL, NULL, 8999.1, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 90', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(147, 'wallet', 4, NULL, 'credit', NULL, NULL, 14249.05, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 91', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(148, 'wallet', 2, NULL, 'credit', NULL, NULL, 49572, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 92', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(149, 'wallet', 2, NULL, 'credit', NULL, NULL, 2025, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 93', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(150, 'wallet', 2, NULL, 'credit', NULL, NULL, 810, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 94', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(151, 'wallet', 2, NULL, 'credit', NULL, NULL, 45, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 95', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(152, 'wallet', 2, NULL, 'credit', NULL, NULL, 405, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 96', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(153, 'wallet', 2, NULL, 'credit', NULL, NULL, 4050, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 97', '2022-04-20 02:54:12', '2022-04-20 02:54:12'),
(154, 'transaction', 20, '', 'delivery_boy_cash_collection', '', NULL, 21, '1', NULL, NULL, 'iuloiuol', '2022-04-22 12:11:03', '2022-04-22 12:11:03'),
(155, 'transaction', 20, '', 'delivery_boy_cash_collection', '', NULL, 21, '1', NULL, NULL, 'jjj', '2022-04-22 12:13:33', '2022-04-22 12:13:33'),
(156, 'transaction', 20, '', 'delivery_boy_cash_collection', '', NULL, 9045, '1', NULL, NULL, 'oo', '2022-04-22 12:13:56', '2022-04-22 12:13:56'),
(157, 'wallet', 3, '119', 'credit', '', NULL, 1929.024, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #119', '2022-04-23 04:49:00', '2022-04-23 04:49:00'),
(158, 'transaction', 3, '119', 'delivery_boy_cash', '', NULL, 16075.2, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-23 04:49:00', '2022-04-23 04:49:00'),
(159, 'transaction', 3, '', 'delivery_boy_cash_collection', '', NULL, 15000, '1', NULL, NULL, 'collected', '2022-04-23 04:51:18', '2022-04-23 04:51:18'),
(160, 'wallet', 3, NULL, 'debit', NULL, NULL, 3000, NULL, NULL, NULL, 'Balance Debited', '2022-04-25 05:00:47', '2022-04-25 05:00:47'),
(161, 'wallet', 2, NULL, 'debit', NULL, NULL, 1020, NULL, NULL, NULL, 'Used against Order Placement', '2022-04-25 09:33:10', '2022-04-25 09:33:10'),
(162, 'wallet', 3, '121', 'credit', '', NULL, 122.4, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #121', '2022-04-25 09:35:53', '2022-04-25 09:35:53'),
(163, 'wallet', 20, '116', 'credit', '', NULL, 225, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #116', '2022-04-25 11:09:45', '2022-04-25 11:09:45'),
(164, 'transaction', 20, '116', 'delivery_boy_cash', '', NULL, 2250, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-25 11:09:45', '2022-04-25 11:09:45'),
(165, 'wallet', 20, '114', 'credit', '', NULL, 135, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #114', '2022-04-25 11:10:41', '2022-04-25 11:10:41'),
(166, 'wallet', 20, '115', 'credit', '', NULL, 0.5, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #115', '2022-04-25 11:11:26', '2022-04-25 11:11:26'),
(167, 'wallet', 20, '123', 'credit', '', NULL, 1499.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #123', '2022-04-25 11:14:45', '2022-04-25 11:14:45'),
(168, 'transaction', 20, '123', 'delivery_boy_cash', '', NULL, 14999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-25 11:14:45', '2022-04-25 11:14:45'),
(169, 'wallet', 20, '124', 'credit', '', NULL, 1499.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #124', '2022-04-25 11:16:48', '2022-04-25 11:16:48'),
(170, 'transaction', 20, '124', 'delivery_boy_cash', '', NULL, 14999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-25 11:16:48', '2022-04-25 11:16:48'),
(171, 'wallet', 3, '125', 'credit', '', NULL, 1799.88, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #125', '2022-04-25 11:42:32', '2022-04-25 11:42:32'),
(172, 'transaction', 3, '125', 'delivery_boy_cash', '', NULL, 14999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-25 11:42:32', '2022-04-25 11:42:32'),
(173, 'transaction', 3, '', 'delivery_boy_cash_collection', '', NULL, 1000, '1', NULL, NULL, 'jk', '2022-04-25 11:43:31', '2022-04-25 11:43:31'),
(174, 'transaction', 3, '', 'delivery_boy_cash_collection', '', NULL, 5000, '1', NULL, NULL, '7iukuy', '2022-04-25 11:43:55', '2022-04-25 11:43:55'),
(175, 'wallet', 3, '126', 'credit', '', NULL, 3599.76, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #126', '2022-04-25 11:45:56', '2022-04-25 11:45:56'),
(176, 'transaction', 3, '126', 'delivery_boy_cash', '', NULL, 29998, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-25 11:45:56', '2022-04-25 11:45:56'),
(177, 'wallet', 3, '128', 'credit', '', NULL, 5399.64, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #128', '2022-04-25 11:55:20', '2022-04-25 11:55:20'),
(178, 'transaction', 3, '128', 'delivery_boy_cash', '', NULL, 44997, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-25 11:55:20', '2022-04-25 11:55:20'),
(179, 'wallet', 3, '130', 'credit', '', NULL, 5399.64, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #130', '2022-04-25 11:58:01', '2022-04-25 11:58:01'),
(180, 'transaction', 3, '130', 'delivery_boy_cash', '', NULL, 44997, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-25 11:58:01', '2022-04-25 11:58:01'),
(181, 'wallet', 17, '133', 'credit', '', NULL, 1499.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #133', '2022-04-26 02:42:06', '2022-04-26 02:42:06'),
(182, 'transaction', 17, '133', 'delivery_boy_cash', '', NULL, 14999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-26 02:42:06', '2022-04-26 02:42:06'),
(183, 'transaction', 17, '', 'delivery_boy_cash_collection', '', NULL, 94559, '1', NULL, NULL, 'Delivery boy cash collection by admin', '2022-04-26 02:42:34', '2022-04-26 02:42:34'),
(184, 'wallet', 17, '134', 'credit', '', NULL, 1499.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #134', '2022-04-26 02:44:00', '2022-04-26 02:44:00'),
(185, 'transaction', 17, '134', 'delivery_boy_cash', '', NULL, 14999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-04-26 02:44:00', '2022-04-26 02:44:00'),
(186, 'wallet', 20, '112', 'credit', '', NULL, 1607.52, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #112', '2022-04-29 06:54:34', '2022-04-29 06:54:34'),
(187, 'wallet', 4, NULL, 'credit', NULL, NULL, 15271.44, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 112', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(188, 'wallet', 2, NULL, 'credit', NULL, NULL, 1215, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 114', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(189, 'wallet', 2, NULL, 'credit', NULL, NULL, 4.5, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 115', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(190, 'wallet', 2, NULL, 'credit', NULL, NULL, 2025, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 116', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(191, 'wallet', 4, NULL, 'credit', NULL, NULL, 15271.44, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 119', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(192, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 120', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(193, 'wallet', 22, NULL, 'credit', NULL, NULL, 999.6, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 121', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(194, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 123', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(195, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 124', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(196, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 125', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(197, 'wallet', 23, NULL, 'credit', NULL, NULL, 26398.24, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 126', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(198, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 127', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(199, 'wallet', 23, NULL, 'credit', NULL, NULL, 39597.36, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 128', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(200, 'wallet', 23, NULL, 'credit', NULL, NULL, 42237.36, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 129', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(201, 'wallet', 23, NULL, 'credit', NULL, NULL, 39597.36, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 130', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(202, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 131', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(203, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 132', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(204, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 133', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(205, 'wallet', 23, NULL, 'credit', NULL, NULL, 13199.12, NULL, NULL, NULL, 'Commission Amount Credited for Order Item ID  : 134', '2022-04-30 06:27:52', '2022-04-30 06:27:52'),
(206, 'wallet', 14, '135', 'credit', '', NULL, 80, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #135', '2022-05-09 09:40:49', '2022-05-09 09:40:49'),
(207, 'transaction', 14, '135', 'delivery_boy_cash', '', NULL, 800, '1', NULL, NULL, 'Delivery boy collected COD', '2022-05-09 09:40:49', '2022-05-09 09:40:49'),
(208, 'wallet', 14, '136', 'credit', '', NULL, 1499.9, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #136', '2022-05-09 09:40:49', '2022-05-09 09:40:49'),
(209, 'transaction', 14, '136', 'delivery_boy_cash', '', NULL, 14999, '1', NULL, NULL, 'Delivery boy collected COD', '2022-05-09 09:40:49', '2022-05-09 09:40:49'),
(210, 'wallet', 14, '137', 'credit', '', NULL, 8, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #137', '2022-05-09 09:40:49', '2022-05-09 09:40:49'),
(211, 'transaction', 14, '137', 'delivery_boy_cash', '', NULL, 80, '1', NULL, NULL, 'Delivery boy collected COD', '2022-05-09 09:40:49', '2022-05-09 09:40:49'),
(212, 'wallet', 14, '138', 'credit', '', NULL, 10, 'success', NULL, NULL, 'Order delivery bonus for order item ID: #138', '2022-05-09 10:30:44', '2022-05-09 10:30:44'),
(213, 'transaction', 14, '138', 'delivery_boy_cash', '', NULL, 100, '1', NULL, NULL, 'Delivery boy collected COD', '2022-05-09 10:30:44', '2022-05-09 10:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `version`) VALUES
(1, '1.0'),
(2, '1.0.1'),
(3, '1.0.2'),
(4, '1.0.3'),
(5, '2.0.0'),
(6, '2.0.1'),
(7, '2.0.2'),
(8, '2.0.3'),
(9, '2.0.4'),
(10, '2.0.5');



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double DEFAULT 0,
  `activation_selector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forgotten_password_selector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forgotten_password_time` int(11) DEFAULT NULL,
  `remember_selector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'percentage_per_order',
  `bonus` int(11) DEFAULT NULL,
  `cash_received` double(15,2) NOT NULL DEFAULT 0.00,
  `dob` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serviceable_zipcodes` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apikey` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friends_code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `mobile`, `image`, `balance`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `company`, `address`, `bonus_type`, `bonus`, `cash_received`, `dob`, `country_code`, `city`, `area`, `street`, `pincode`, `serviceable_zipcodes`, `apikey`, `referral_code`, `friends_code`, `fcm_id`, `latitude`, `longitude`, `created_at`) VALUES
(1, '41.176.193.214', 'Admin', '$2y$12$sBCMK.mZ/EMKmd8sIqIlnedHVbN2YTZz0hzPkfaJk49YuHR7K.bdS', 'admin@admin.com', '9876543210', NULL, 21610483637.449993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1268889823, 1652089196, 1, 'ADMIN', NULL, NULL, 0.00, NULL, 91, '57', '157', NULL, NULL, NULL, NULL, 'vXaEvNuR', NULL, 'fFQa3MftQ6uliFS6T1IdGk:APA91bGNY-dntY4Yu0zTtjS9hB1ncLHnVmyDnnF4QCvRx3BOT57TfKAIIg036aBQ2tNt3SKFyLVGamBviZu0TjDluRdojAVJMdH40BwL3Hrpr6YNkYwQGYzwmKfpf42Ktp0AyITmT7R5', NULL, NULL, '2020-06-30 10:20:08'),
(2, '150.129.54.191', 'Vijay Vaghela', '$2y$10$H9lxIPxBXGpiaFpsKVB5seUHCFTScoAYDN2IdsW6uOQ.mJzzgVHRW', 'eshop.seller@gmail.com', '9925880172', NULL, 272428, '2965157843338a33a5b2', '$2y$10$Itxetu.U.01ThxeFwhR7ee3WMwSrC.3F8OKWBCI2aslxesuI6sLq.', NULL, NULL, NULL, NULL, NULL, 1640686596, 1651639105, 1, NULL, '#123,time square,bhuj', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ja7IcBXF', NULL, 'dmU4P2YITXq7Co1t1cgnYR:APA91bGel0EGZ5TFvPreE-rpBwEwy9St2EJnoZ3Dm_piKwzEXktojLQs2DkqWcisFDBVY6eANfIlckt6Xt4Ik35oW7VD7yC9piHszPGS66ziwjvryYhiYIVH23QPyYyTYekabB_ctm6A', '23.3830207', '69.5236417546', '2021-12-28 10:16:36'),
(3, '150.129.54.191', 'test', '$2y$10$skpOMaIziL.KP0aPZdBLXuW2Mx9Ebh8L7zHjX7SUQm3qYZZ3dFDZK', 'deliveryboy@gmail.com', '1234567890', NULL, 16427.424, 'dce8f413f3293dae0ad9', '$2y$10$fOdvRAafNF6sHzVztE5EYuobZ0rCTUrxr5pa6Q8vvK/Ua.Y/vtdzq', NULL, NULL, NULL, NULL, NULL, 1640686855, 1650627666, 1, NULL, '#78, time square,bhuj', 12, 140365.20, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'c1RTARvrSkGHA7Ctz0LKgO:APA91bE2XKpok2XyS76xCQpptCw_tYOtkHuxvtD0KZOSlFz7N-M74FHIpvz-taImb_-ImduCibPi-nafBZFITk1yBTzhrRYjTxi6IvYJzd1C_EFObU47bd1yYZnbHoRehMWRjME0j2_E', NULL, NULL, '2021-12-28 10:20:55'),
(4, '150.129.54.164', 'test', '$2y$10$4PcTtINprFRxKvVnOktM/.7IsuJiheRgLgqtfGWnP9jUInT0Td7bW', 'seller@gmail.com', '9925880171', NULL, 75636.81, '2b1b3aad4a73a51e486d', '$2y$10$.r42EL8Rt/YIZyrnIPG.P.plECV2fqWNhTZhHi0jW.VR9opX5ODAG', NULL, NULL, NULL, NULL, NULL, 1641030007, 1647332013, 1, NULL, 'test', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dmU4P2YITXq7Co1t1cgnYR:APA91bGel0EGZ5TFvPreE-rpBwEwy9St2EJnoZ3Dm_piKwzEXktojLQs2DkqWcisFDBVY6eANfIlckt6Xt4Ik35oW7VD7yC9piHszPGS66ziwjvryYhiYIVH23QPyYyTYekabB_ctm6A', '', '', '2022-01-01 09:40:07'),
(5, '106.200.78.148', 'test seller for customer', '$2y$10$gWyLLfvfmFyI35v02QLLA.Cj.vl3kgysiSRDX.Ish7ERDRHJnf1ZO', 'test@gmail.com', '9537376389', NULL, 0, 'df39eb9f9d841838a400', '$2y$10$GFFrTu3L1JRqxnZo8l/c4eF9ocIK7ercla57yLwy3TgOt0gful0VS', NULL, NULL, NULL, NULL, NULL, 1641382261, NULL, 1, NULL, 'wefuheuerguierg', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-01-05 11:31:01'),
(6, '150.129.54.171', 'test', '$2y$10$SzxH8rNha7olndFvpMhshe1mJVJdwUdIeeKTuLYv6sOdLI47gyPHi', 'shashiappu2@gmail.com', '9890374019', NULL, 0, '07b549d16f1e7a9d588c', '$2y$10$3ZTnHs0e/MBSHMQ6HUgX5.M0oNggIXMpkhihtMdI61lYwrV/oYdKS', NULL, NULL, NULL, NULL, NULL, 1641382755, 1643782203, 1, NULL, '12fwf', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2rD5jV4i', NULL, 'cRpBZD09SWm8SyTi_3_GLe:APA91bEjSxPoa7k5QffuzveBVJ0Lpqj6oX0D49vy9VWYY4wkYaQkwfXCnAWgbNNT0_xsxKZJqI8nujTQLaPhiaf_5rruZhT5grScn9LKxDjU4e3TBnyVfKXTipapXqNhJMJXeFUjxFt8', '', '', '2022-01-05 11:39:15'),
(7, '103.96.14.161', 'jignesh2707', '$2y$10$ZCblNcWcGGNxP9DAW8i9cewATSuEt.8nQKaZTzJq2zPF63j4GkfNa', 'jigs@gmail.com', '8200786264', 'Screenshot_20220312_134856.jpg', 4200, '16138cd568e5ef12a9fd', '$2y$10$XduamIS9bz2t8s.TwKy1buXNdZuAinru3SRXMboMOjXS20wWQuMHK', NULL, NULL, NULL, NULL, NULL, 1643701820, 1652091461, 1, NULL, NULL, NULL, 0.00, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, 'HCnPK4Q4', '', 'eGDjDZGhTeqaiQt9gheHc8:APA91bFdUAgKagQr8HC6VgDbVb-OdfDjcaReowr8mO1xOH5UYxs4_7mIb9MDxfxSxVOu5lzzRFtEvvZzzWJ6cAFJH9uR35TEDD9jTkI3kaKQz0Cjz_a4AueSc2INguJ65XsmouKX-T42', NULL, NULL, '2022-02-01 07:50:20'),
(8, '157.49.200.127', 'hhshs', '$2y$10$/521nKyHA2w4E4R7QVsI2OOc03kivyECuxg1y0A3vnCdN9QuXY1TC', 'hi@gmail.com', '9488011306', NULL, 0, '89e84ce2b5187df9a2f1', '$2y$10$XjLdensygcnqFZ4P9tysM.B6X7CNR3CHQymXoMX85IRqJ66ovZcli', NULL, NULL, NULL, NULL, NULL, 1643797265, NULL, 1, NULL, 'kk street', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 10:21:05'),
(9, '157.49.200.127', 'hhshs', '$2y$10$ci.C.BTjxk05fqeKlrfK0uMDNAGhLz7waNVtZuMOhWNAqsQlKZGQa', 'kkz@gmailcom', '948801131', NULL, 0, '75a007949da49b15830a', '$2y$10$a0QF7Fs92N7rg4GsxPXmO.Ti/B3ZdKNPKE0i4ccBoUHxChz1/hQD6', NULL, NULL, NULL, NULL, NULL, 1643797851, NULL, 1, NULL, 'kk street', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-02-02 10:30:51'),
(10, '27.57.92.105', 'Jack Ryan', '$2y$10$mI2SecFo5JP4F5DyxA3J1.564zk95KI0wIuLNJpUWZzzMMBz.KxXq', 'jack@gmail.com', '7073287403', NULL, 0, 'c775cc79ce1bc8b7ef7c', '$2y$10$K5ZdVSSj3ISBRyJGpfZAeujDcYOSHD5OGTlqgm91LC6H/qDRKAP6O', NULL, NULL, NULL, NULL, NULL, 1645432984, NULL, 1, NULL, NULL, NULL, 0.00, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, 'r6dh3ENQ', '', 'f2SfJGcnSrqYyYAIqbedzu:APA91bGs_gcA2v62lSYbN6CR4BSKuUaS7LOIoBGIPZOHWhd053yRe6fzPXybI7ysR4N6SbttYddtS-X-QpaabctrtvA7YZt7wVPi8EJ3nX0MNiKgtZUWNZavekWwB9-5QFFzQlQeMi7_', NULL, NULL, '2022-02-21 08:43:04'),
(11, '103.96.14.161', 'WRTeam', '$2y$10$m0CL/ymLMcedf/CfCgmc8OUP6yFuYzKgChb7gDgVeJH6RF0RubvXu', 'support@wrteam.in', '8200323468', NULL, 100, '84e941ab9733ca685143', '$2y$10$5nEvSK6KwK7DU2RFziIu7ek1sBPJklx8GqW0Xl6BtDEv.SYS1Ulpm', NULL, NULL, NULL, NULL, NULL, 1645683212, 1647501426, 1, NULL, NULL, NULL, 0.00, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, 'cawe8HtP', 'HCnPK4Q4', 'ffCXVsqqSkGDq5MGo5kmXf:APA91bEG97ZhpJMXUIBHaNWuiZFvYFfOO9R3yquo_TIjT3p-pgE8fKxRFrNffiBX0IQi7TSUgCeYAq8F32TUKslNjRogifOiXFoqH3HGsfG6HwsFEIrrJLOSk8Hh6xLyHpqh-CjykcvB', NULL, NULL, '2022-02-24 06:13:32'),
(12, '103.96.14.161', 'Nikita', '$2y$10$GIHwzZPUJ2owAygfhKWuH.FyO/GhowG1VUFgAG0.mhY2hLsQzo22C', 'wrteamnikita@gmail.com', '9974093845', NULL, 150, '196db1e716e06adc2627', '$2y$10$9xU75.XfdvWlh9hBA1MuruUwcyDfCfmKwGq0qg9sjLGwxdLmwrg6O', NULL, NULL, NULL, NULL, NULL, 1646387965, NULL, 1, NULL, NULL, NULL, 0.00, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, '3uFhkewm', '', 'feUoqWuAQSaOfpOTICJWtt:APA91bGNjsrosdaXexS4BAjR316ce2NMcsSmVc0ghxQokiVdUx_lw5k0ABJFEKIzh7pgmGklVXJTzKCoxnhDIw_dHDYl5HFuRuYyWREa5jpgfrsfW47PsfMq-MZErEg46yTp-Jz7WCAv', NULL, NULL, '2022-03-04 09:59:25'),
(13, '103.96.14.161', 'jignesh', '$2y$10$IxAvwrtzo3frCUF2Wuqs8.KzyBWNTuIvAnFL/hKR1HvlvXX13G472', '9876543210@gmail.com', '08200786264', NULL, 11919.96, '335108a736d369917490', '$2y$10$SOEYH9NeYRUNyguNOSuc/.I1iMAvzF0cfavTZ3dzmr9j7JiNCMWfW', NULL, NULL, NULL, NULL, NULL, 1647336628, 1647496884, 1, NULL, 'bhuj', 10, 20017.60, NULL, NULL, NULL, NULL, NULL, NULL, '1,2', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 09:30:28'),
(14, '103.96.14.161', 'test1', '$2y$10$EvwlZNvG41KfL9BIbfvQK.kgll9WCYAKRgPhzc8c4mtKwF472L2SS', 'vsdfv1@gmail.com', '1237894560', NULL, 6416.42, '0f4fb06613a83645067c', '$2y$10$EpHwGx9xRhYG41n/8Deep.vecgmJS0lrxqNSu65mgkqeaTkqltWA2', NULL, NULL, NULL, NULL, NULL, 1647340880, 1647496946, 1, NULL, 'bhuj', 10, 63402.20, NULL, NULL, NULL, NULL, NULL, NULL, '1,2', NULL, NULL, NULL, 'dgBzhb3LTYadqZvH1ryTEM:APA91bEzBvMzP8SrKEXZo5weOxcCKRuh561JyS7AIjrS6dwfDEg2lEI9h1APhgbtaDswnF5rd64xOH8dhUUNYHdlOGcyz_eZspkcy-p4dM-ueudKu0oh8bGEuouF_K0jYi1QheFRC5Px', NULL, NULL, '2022-03-15 10:41:20'),
(15, '103.96.14.161', 'kinjal', '$2y$10$mai30dmiTpW2NN/oUb4M5.bMjrqlhCHSYkBypvCOtzHszqDM1CACS', 'kp@gmail.com', '8160629965', 'Screenshot_20220321-095747.png', 153560, '9d07e757407c6fdde897', '$2y$10$/WcSrM7PmneARFytLhUKWOJO25c7RlMUkJEwL4Zo9CLy4naz77VVG', NULL, NULL, NULL, NULL, NULL, 1647348188, 1647842122, 1, NULL, NULL, NULL, 0.00, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, 'JSosPyEU', '', 'cONiU3yWTNeW_ow5G4-flz:APA91bHgCO8AXUB53BQg-8EjW1eDqh2CfPTe-W0pfAx4UwvMtpW7h4DqyOrat9786wayUOG_TxZ6iymMEwk5pdHy_mDuYzKBzwmosjghUYPQLOWdRyaJsEMc4XN6UhiOgZHfhvJvHObO', NULL, NULL, '2022-03-15 12:43:08'),
(16, '103.96.14.161', 'Shyam', '$2y$10$qkLODhJLvCMAT2UgQqtGOu/Xo3qs9dLwYIeXJh8WcYHYFwq557Kn6', 'thackershyam12@gmail.com', '9867876567', NULL, 227.5, '286d597ed740087e7a65', '$2y$10$1bzJTRlfavtOhAdw.7wrcOnKIRECJ/PqzCd4cYQyzzxVES0Bk4BJW', NULL, NULL, NULL, NULL, NULL, 1647415443, NULL, 1, NULL, 'bhuj', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34', '45', '2022-03-16 07:24:03'),
(17, '103.96.14.161', 'mohan', '$2y$10$rKlpVuLQWNECi4QJ/kqLE.ReN8W57tZDLg/o4H0y2F7YlMyOoSBuS', 'mohan@gmail.com', '7867567876', NULL, 19171.22, 'c8a39a56df936e73d8e3', '$2y$10$QS00jtmS6dn8kZNz8l4t7u2V6PK1duZOmnqxlwkWf.WebqkeLjaQK', NULL, NULL, NULL, NULL, NULL, 1647520288, NULL, 1, NULL, 'Bhuj', 10, 14999.00, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17 12:31:28'),
(18, '103.96.14.161', 'Raghav Chouhan', '$2y$10$cR9NQJAVAm43P6LW8acsAuVTgk6XMDTev2/PdHTxqrXgbpt0i.W8m', 'raghav@gmailcom', '78987678765678777557', NULL, 100, 'c40bdd0e72c2783a83a9', '$2y$10$MPt7ufQWGHq7u3Kuu8kaY.RGmhfQ/KzgiCpzjNVfFOfOC8yTnolTq', NULL, NULL, NULL, NULL, NULL, 1647520826, NULL, 0, NULL, 'ghfgfgjfgf', 20, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, 'faZubqa3QIamGkxNzc2Xr1:APA91bHreBaWW7LtNPZGuUJYhRX2b0Z8ZPsqoU82t3CLMqOtXHd6210-EFkjT4OMHgQku6H9twKISZv3evA2d2qKHVrMUqdE3EU8vR3SQCBOyaRNTMqEITClIqyCPFvll3m0YXO9MOHv', NULL, NULL, '2022-03-17 12:40:26'),
(19, '150.129.54.189', 'dikshita', '$2y$10$Pt0S9F8R8EPDt03E0ZQizevJIFGDpryehkSrD6KFrMg05634R/20C', 'dikshita4@gmail.com', '4545454545', NULL, 4598.2, '45c4127e2e089e0f2de8', '$2y$10$OJuNg61modQjhICRjPgZ8O6oqoHfTMq6LWuNfgryp1FEksB.rJRDu', NULL, NULL, NULL, NULL, NULL, 1648535559, 1651566081, 1, NULL, 'test', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fseHCWakTVOG5Q1NU1j28z:APA91bG02nk0kCEeqaEyLeYWoEiIOhLY6UUgdI3z1tf9rJ9O6huOLiuKXZQfISLZwQ3ND7gkos7l3bNa-yJPCTjtOLCFHlTT5f5tlDO4IyoSJBhripPLCcS-DK7zy1G81vAW2OmcueDl', '', '', '2022-03-29 06:32:39'),
(20, '103.96.14.161', 'testqwe', '$2y$10$6B.1po12Lsa7UXYEB369seMdI8bxDaFzdyvyy0b8au6rDmeTe7kWW', '987654321@gmail.com', '8200786465', NULL, 1997.6200000000003, '52c3a16b150774226a8b', '$2y$10$ENT.jR/B5czU2mIfpbOk4O1z5HWWavW6Dx716.YrHScmK3J83uoNq', NULL, NULL, NULL, NULL, NULL, 1649071775, 1651208450, 1, NULL, 'bhuj', 10, 32248.00, NULL, NULL, NULL, NULL, NULL, NULL, '1,2', NULL, NULL, NULL, 'cuQMDZpLQfKGV_9i764WeK:APA91bGZKnzc4n3GXzE1aPUdoPzwC-CH-aRsVVA_sqIN8SYByoTi9ibRnEimWUkq0bswFyMNy5OimlkVqejqdE6kKM3WKJQEnEa9z1j1d67i5emu_BD3jBxuU91zIsMC-C8IL8ovt54s', NULL, NULL, '2022-04-04 11:29:35'),
(21, '103.96.14.161', 'Super Comnet', '$2y$10$VuiRyu9Z1xYVIfHuy.WUeObO5OtSzVYDMpsN/M.Zry5TxjYmSqY86', 'SuperComnet@gmail.com', '1231231231', NULL, 100, '61ec687700d36a81fa32', '$2y$10$g53JHfpjGz5Onc.767.RVOoPXFuiH2qIQ.tf2PNOzWlORnMBXyEpy', NULL, NULL, NULL, NULL, NULL, 1649942530, NULL, 1, NULL, 'bhuj', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-04-14 13:22:10'),
(22, '103.96.14.161', 'SuperB eCommerce', '$2y$10$X6fXNiDb2m7pzh2.OKWVKu7tx3iSi5c9FFMnrU.jXD7DMN1JQ8BSy', 'SuperBeCommerce@gmail.com', '01234567890', NULL, 1099.6, '3dcca9eb7f1c5d88970a', '$2y$10$Yuz8xWWi3RZm7WkWGuCebO.LZT10dMX.L/g3DdVA5gOexyS2.U91e', NULL, NULL, NULL, NULL, NULL, 1649942630, NULL, 1, NULL, 'ahmedabad', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-04-14 13:23:50'),
(23, '103.96.14.161', 'STPL Exclusive Online', '$2y$10$9YyJQwfI.4nkqQGz06rsguLvRKUSblrzZWMhDCZqhQpbjvFzJ52s.', 'STPLExclusiveOnline@gmail.com', '1234561234', NULL, 266722.39999999997, '87dcc9619455c9d77d50', '$2y$10$fdQvy12SVG2ZR.n8fZrYHemTjJ612zRHa18/GC4SqHaAq0tMzF.JC', NULL, NULL, NULL, NULL, NULL, 1649998284, NULL, 1, NULL, 'bhuj', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-04-15 04:51:24'),
(24, '103.96.14.161', 'Dawn Tech Electronics', '$2y$10$u0snhqYzF7AyPbZA9UbihuthSnoFAb9Nedvl.5PLiSFuQHQspV..u', 'DawnTechElectronics@gmail.com', '1234567812', NULL, 100, 'd0ea8061ba10f797da02', '$2y$10$3JpJ40.cc9C3Rbldy6kDsOHqVEBsoEu8t9TWVnh4uMdPr1jyQXpey', NULL, NULL, NULL, NULL, NULL, 1649999293, NULL, 1, NULL, 'bhuj', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-04-15 05:08:13'),
(25, '103.96.14.161', 'Appario Retails Private Ltd', '$2y$10$Viro4UqUSPFoVEgx2nmg/.VrQNCjnzaCnU4mRtXc98YMl7tS.4T42', 'ApparioRetailsPrivateLtd@gmail.com', '08203430786264', NULL, 107.92, 'f285ab97008732a7473c', '$2y$10$wC7uWFaXNfPuFd19IjTUw.gu2YAnWvnIDp9clR2OXuf.fzG3q5cda', NULL, NULL, NULL, NULL, NULL, 1650006168, NULL, 1, NULL, 'bhuj', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-04-15 07:02:48'),
(26, '103.96.14.161', 'test tes tes t', '$2y$10$253QP3YKlWncaumlVAkoBuDXtptYfhPc19c9MHNzHhd8eWKb3J3OS', '9876543210$@gmail.com', '12345678910', NULL, 100, 'cdb6caf2e0b4c486bd78', '$2y$10$EplXbMsdv1bPdKloIuLgD.oimDtHHG80jbepzbY80.XhZxrGHm.x.', NULL, NULL, NULL, NULL, NULL, 1650015579, 1650015602, 1, NULL, 'bhuj', 12, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '1,2', NULL, NULL, NULL, 'cONiU3yWTNeW_ow5G4-flz:APA91bHgCO8AXUB53BQg-8EjW1eDqh2CfPTe-W0pfAx4UwvMtpW7h4DqyOrat9786wayUOG_TxZ6iymMEwk5pdHy_mDuYzKBzwmosjghUYPQLOWdRyaJsEMc4XN6UhiOgZHfhvJvHObO', NULL, NULL, '2022-04-15 09:39:39'),
(27, '103.96.14.161', 'admin1', '$2y$12$QmxwPkW4IApRJJi00AJDjefbuajLp0AJ0MMMTl7IUZHJJW8.hmNdy', 'wrteamkinjal@gmail.com', '7654565678', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1650533172, 1, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 07:32:06'),
(28, '103.96.14.161', 'OmniTechRetail', '$2y$10$xQKt0apkDIyaXaVopxgpUeg/BqVIjKb7s9KJKOKg3d8hjICpc9KCm', 'OmniTechRetail@gmail.com', '8666696855666', NULL, 100, '9ffc72ea3b1c3b836f39', '$2y$10$M4iWWfaYpl7xTYYMLR8cuOMnSoZBXb5kJraxEv.Ih/zgJXhC117hC', NULL, NULL, NULL, NULL, NULL, 1650536950, NULL, 1, NULL, 'ghuujfjfjgj', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2022-04-21 10:29:10'),
(29, '150.129.54.156', 'dikshita mam', '$2y$10$/UwfLqKz/IlFawSyAiS.v.K7el8N5c1PlRKyK1u/jsmE3406ZRGf2', 'allc123@gmail.com', '1234123400', NULL, 100, '2a8d76a0f4de04e33869', '$2y$10$ASixylLzFlYfkqFMCZRKfeZFKzNgb7Wis3IxqiubbGIdabbHvvp9C', NULL, NULL, NULL, NULL, NULL, 1651299533, NULL, 1, NULL, 'address', NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30 06:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 3),
(4, 4, 4),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 3),
(15, 15, 2),
(16, 16, 4),
(17, 17, 3),
(18, 18, 3),
(19, 19, 4),
(20, 20, 3),
(21, 21, 4),
(22, 22, 4),
(23, 23, 4),
(24, 24, 4),
(25, 25, 4),
(26, 26, 3),
(27, 27, 1),
(28, 28, 4),
(29, 29, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `permissions` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `role`, `permissions`, `created_by`) VALUES
(1, 1, 0, NULL, '2021-05-06 04:24:52'),
(2, 27, 1, '{\"orders\":{\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"categories\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"category_order\":{\"read\":\"on\",\"update\":\"on\"},\"product\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"media\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"product_order\":{\"read\":\"on\",\"update\":\"on\"},\"tax\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"attribute\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"attribute_set\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"attribute_value\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"home_slider_images\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"new_offer_images\":{\"create\":\"on\",\"read\":\"on\",\"delete\":\"on\"},\"promo_code\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"featured_section\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"customers\":{\"read\":\"on\",\"update\":\"on\"},\"return_request\":{\"read\":\"on\",\"update\":\"on\"},\"delivery_boy\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"fund_transfer\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"send_notification\":{\"create\":\"on\",\"read\":\"on\",\"delete\":\"on\"},\"notification_setting\":{\"read\":\"on\",\"update\":\"on\"},\"client_api_keys\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"area\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"city\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"faq\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"zipcodes\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"support_tickets\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"settings\":{\"read\":\"on\",\"update\":\"on\"},\"system_update\":{\"update\":\"on\"},\"seller\":{\"create\":\"on\",\"read\":\"on\",\"update\":\"on\",\"delete\":\"on\"}}', '2022-04-21 07:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'credit | debit',
  `amount` double NOT NULL,
  `message` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zipcodes`
--

CREATE TABLE `zipcodes` (
  `id` int(11) NOT NULL,
  `zipcode` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zipcodes`
--

INSERT INTO `zipcodes` (`id`, `zipcode`, `date_created`) VALUES
(1, '370001', '2021-12-28 10:19:41'),
(2, '370002', '2022-02-14 10:41:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_set_id` (`attribute_set_id`);

--
-- Indexes for table `attribute_set`
--
ALTER TABLE `attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_api_keys`
--
ALTER TABLE `client_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy_notifications`
--
ALTER TABLE `delivery_boy_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_boy_id` (`delivery_boy_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `fund_transfers`
--
ALTER TABLE `fund_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_boy_id` (`delivery_boy_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_bank_transfer`
--
ALTER TABLE `order_bank_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Indexes for table `order_tracking`
--
ALTER TABLE `order_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_requests`
--
ALTER TABLE `return_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_commission`
--
ALTER TABLE `seller_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_data`
--
ALTER TABLE `seller_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variable` (`variable`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile` (`mobile`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `zipcodes`
--
ALTER TABLE `zipcodes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_set`
--
ALTER TABLE `attribute_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `client_api_keys`
--
ALTER TABLE `client_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `delivery_boy_notifications`
--
ALTER TABLE `delivery_boy_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `fund_transfers`
--
ALTER TABLE `fund_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `order_bank_transfer`
--
ALTER TABLE `order_bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `order_tracking`
--
ALTER TABLE `order_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `return_requests`
--
ALTER TABLE `return_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seller_commission`
--
ALTER TABLE `seller_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `seller_data`
--
ALTER TABLE `seller_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_notification`
--
ALTER TABLE `system_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zipcodes`
--
ALTER TABLE `zipcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
