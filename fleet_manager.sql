-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2022 at 12:10 PM
-- Server version: 5.7.33
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleet_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customer_id`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 'edtrfyghjkl;\'', NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(2, 5, ';LWKJhbv', NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(3, 5, 'fghs,kmjnbsehvjygbejbhefjljfehjbukrelklrndf bjebfejebnwrd br bjfehkjrferjk', NULL, '2022-06-06 14:18:52', '2022-06-06 14:18:52'),
(4, 4, '70024 Hoppe Port Suite 539South Shannaport, MT 39571', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(5, 4, '5424 Lesch AlleyAmericoshire, PA 16801', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(6, 5, 'sdfghjklsdfghjkxcvbnm  sdfghjerty dfgh', NULL, '2022-06-07 08:17:43', '2022-06-07 08:17:43'),
(7, 5, 'sdfghjklsdfghjkxcvbnm  sdfghjerty dfgh cvvbn', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(8, 5, ';LWKJhbvv vvbhkjhgfd', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(9, 4, 'm', NULL, '2022-06-14 12:36:41', '2022-06-14 12:36:41'),
(10, 4, 'j,', NULL, '2022-06-14 12:37:02', '2022-06-14 12:37:02'),
(11, 4, '3, R.A Adeleye Close Utako.', NULL, '2022-06-14 12:38:05', '2022-06-14 12:38:05'),
(12, 4, 'NITT building', NULL, '2022-06-14 12:38:05', '2022-06-14 12:38:05'),
(13, 4, 'NITT buildinggh', NULL, '2022-06-14 12:54:42', '2022-06-14 12:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `api_settings`
--

CREATE TABLE `api_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_settings`
--

INSERT INTO `api_settings` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'api', '1', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL),
(2, 'anyone_register', '0', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL),
(3, 'region_availability', 'region one, region two, region three', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL),
(4, 'driver_review', '1', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL),
(5, 'booking', '3', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL),
(6, 'cancel', '2', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL),
(7, 'max_trip', '1', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL),
(8, 'api_key', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(9, 'db_url', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(10, 'db_secret', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(11, 'server_key', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(12, 'google_api', '0', '2022-05-24 13:26:03', '2022-06-14 12:10:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `pickup` timestamp NULL DEFAULT NULL,
  `dropoff` timestamp NULL DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `pickup_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dest_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `travellers` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `payment` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `user_id`, `vehicle_id`, `driver_id`, `pickup`, `dropoff`, `duration`, `pickup_addr`, `dest_addr`, `note`, `travellers`, `status`, `payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 1, 1, 7, '2022-05-17 06:32:58', '2022-05-18 13:16:33', 2880, '5159 Orn Plains Apt. 816\nSouth Tavaresberg, NY 52834', '73521 Sabina Crest\nChristophefort, VT 12745-6221', 'sample note', 4, 1, 1, '2022-05-24 13:26:02', '2022-05-24 13:26:03', NULL),
(2, 4, 1, 1, 7, '2022-04-29 06:14:07', '2022-05-01 02:12:04', 2880, '70024 Hoppe Port Suite 539\nSouth Shannaport, MT 39571', '5424 Lesch Alley\nAmericoshire, PA 16801', 'sample note', 3, 0, 0, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(3, 5, NULL, NULL, NULL, '2022-06-08 11:00:00', NULL, NULL, 'edtrfyghjkl;\'', ';LWKJhbv', 'we are coming for you', 45, 0, 0, '2022-06-06 13:52:38', '2022-06-14 14:03:42', '2022-06-14 14:03:42'),
(4, 5, 1, 1, 6, '2022-06-06 14:16:45', '2022-06-06 15:16:45', 60, 'edtrfyghjkl;\'', ';LWKJhbv', 'dfghjk', 3, 0, 0, '2022-06-06 14:17:27', '2022-06-06 15:47:21', '2022-06-06 15:47:21'),
(5, 5, 1, 1, 7, '2022-06-06 14:18:04', '2022-06-06 15:18:04', 60, 'fghs,kmjnbsehvjygbejbhefjljfehjbukrelklrndf bjebfejebnwrd br bjfehkjrferjk', ';LWKJhbv', 'dfghjkl;', 1, 0, 0, '2022-06-06 14:18:52', '2022-06-06 15:47:21', '2022-06-06 15:47:21'),
(6, 5, 1, 2, 9, '2022-06-06 14:21:24', '2022-06-06 14:21:24', 0, 'fghs,kmjnbsehvjygbejbhefjljfehjbukrelklrndf bjebfejebnwrd br bjfehkjrferjk', ';LWKJhbv', 'll', 1, 0, 0, '2022-06-06 14:22:22', '2022-06-06 15:47:21', '2022-06-06 15:47:21'),
(7, 4, 1, 2, 9, '2022-06-06 14:25:06', '2022-06-06 14:25:06', 0, '70024 Hoppe Port Suite 539South Shannaport, MT 39571', '5424 Lesch AlleyAmericoshire, PA 16801', 'klj', 1, 0, 0, '2022-06-06 14:25:20', '2022-06-06 15:47:21', '2022-06-06 15:47:21'),
(8, 5, 1, 3, 7, '2022-06-06 14:25:06', '2022-06-06 14:25:06', 0, 'fghs,kmjnbsehvjygbejbhefjljfehjbukrelklrndf bjebfejebnwrd br bjfehkjrferjk', ';LWKJhbv', 'klj', 1, 0, 0, '2022-06-06 14:28:32', '2022-06-06 15:47:21', '2022-06-06 15:47:21'),
(9, 4, 1, 3, 7, '2022-06-06 15:47:33', '2022-06-06 15:47:33', 0, '70024 Hoppe Port Suite 539South Shannaport, MT 39571', '5424 Lesch AlleyAmericoshire, PA 16801', 'ljkhjgh', 1, 0, 0, '2022-06-06 15:51:14', '2022-06-06 15:51:14', NULL),
(10, 5, 1, 1, 6, '2022-06-07 08:16:59', '2022-06-07 08:16:59', 0, 'sdfghjklsdfghjkxcvbnm  sdfghjerty dfgh', ';LWKJhbv', 'sqdbsjgjbgfhvyubvbdwsSGcv dgdfghjfdsfdsbfbdfg\\\r\nhdsgvdghjkdfvnfbnmbfnm hjsfhjdfhdfbnm\r\nvbsdcbgdfjkfgnkdgf\r\njhdfdhjfdbhj', 1, 0, 0, '2022-06-07 08:17:43', '2022-06-07 08:17:43', NULL),
(11, 5, 1, 2, 9, '2022-06-07 08:16:59', '2022-06-07 08:16:59', 0, 'sdfghjklsdfghjkxcvbnm  sdfghjerty dfgh', ';LWKJhbv', 'sqdbsjgjbgfhvyubvbdwsSGcv dgdfghjfdsfdsbfbdfg\\\r\nhdsgvdghjkdfvnfbnmbfnm hjsfhjdfhdfbnm\r\nvbsdcbgdfjkfgnkdgf\r\njhdfdhjfdbhj', 1, 0, 0, '2022-06-07 08:18:10', '2022-06-07 08:18:10', NULL),
(12, 5, 1, 3, 7, '2022-06-07 09:25:26', '2022-06-07 10:25:26', 60, 'sdfghjklsdfghjkxcvbnm  sdfghjerty dfgh cvvbn', ';LWKJhbvv vvbhkjhgfd', 'dfghjkloiujhygtfhvnbm gfhgjhkjlk;j dgfhgjhkjlgfdcv dtgfhgjhbm', 1, 0, 0, '2022-06-07 09:26:12', '2022-06-07 09:26:12', NULL),
(13, 5, 1, 2, 9, '2022-06-14 12:19:25', '2022-06-14 12:19:25', 0, 'sdfghjklsdfghjkxcvbnm  sdfghjerty dfgh cvvbn', ';LWKJhbvv vvbhkjhgfd', NULL, 1, 0, 0, '2022-06-14 12:19:43', '2022-06-14 12:21:11', '2022-06-14 12:21:11'),
(14, 4, NULL, NULL, NULL, '2022-06-14 12:36:41', NULL, NULL, 'm', 'm', NULL, 4, 0, 0, '2022-06-14 12:36:41', '2022-06-14 14:03:32', '2022-06-14 14:03:32'),
(15, 4, NULL, NULL, NULL, '2022-06-14 12:37:02', NULL, NULL, 'm', 'j,', NULL, 43, 0, 0, '2022-06-14 12:37:02', '2022-06-14 14:02:15', '2022-06-14 14:02:15'),
(16, 4, 1, 2, 7, '2022-06-14 12:38:05', '2022-06-14 15:01:43', 143, '3, R.A Adeleye Close Utako.', 'NITT building', NULL, 5, 0, 0, '2022-06-14 12:38:05', '2022-06-14 14:02:01', NULL),
(17, 4, 1, 3, 9, '2022-06-14 12:54:14', '2022-06-14 12:54:14', 0, '3, R.A Adeleye Close Utako.', 'NITT buildinggh', 'Impedit necessitati', 94, 0, 0, '2022-06-14 12:54:42', '2022-06-14 12:54:42', NULL),
(18, 4, 1, 2, 9, '2022-06-14 12:54:14', '2022-06-14 12:54:14', 0, '3, R.A Adeleye Close Utako.', 'NITT buildinggh', 'Impedit necessitati', 94, 0, 0, '2022-06-14 12:56:13', '2022-06-14 12:56:13', NULL),
(19, 4, 1, 2, 9, '2022-06-14 12:59:35', '2022-06-14 12:59:35', 0, '3, R.A Adeleye Close Utako.', 'NITT buildinggh', 'd', 1, 0, 0, '2022-06-14 12:59:47', '2022-06-14 12:59:47', NULL),
(20, 4, 1, 1, 6, '2022-06-14 12:59:35', '2022-06-14 12:59:35', 0, '3, R.A Adeleye Close Utako.', 'NITT buildinggh', 'd', 1, 0, 0, '2022-06-14 13:03:47', '2022-06-14 13:03:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_meta`
--

CREATE TABLE `bookings_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookings_meta`
--

INSERT INTO `bookings_meta` (`id`, `booking_id`, `type`, `key`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'integer', 'tax_total', '500', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(2, 1, 'integer', 'total_tax_percent', '0', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(3, 1, 'integer', 'total_tax_charge_rs', '0', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(4, 1, 'string', 'ride_status', 'Completed', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(5, 1, 'string', 'journey_date', '17-05-2022', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(6, 1, 'string', 'journey_time', '07:32:58', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(7, 1, 'integer', 'customerid', '4', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(8, 1, 'integer', 'vehicleid', '1', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(9, 1, 'integer', 'day', '1', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(10, 1, 'integer', 'mileage', '10', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(11, 1, 'integer', 'waiting_time', '0', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(12, 1, 'string', 'date', '2022-05-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(13, 1, 'integer', 'total', '500', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(14, 1, 'integer', 'receipt', '1', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(15, 2, 'string', 'ride_status', 'Upcoming', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(16, 2, 'string', 'journey_date', '29-04-2022', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(17, 2, 'string', 'journey_time', '07:14:07', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(18, 3, 'string', 'journey_date', '2022-06-08', NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(19, 3, 'string', 'journey_time', '12:00', NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(20, 3, 'integer', 'booking_type', '1', NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(21, 3, 'integer', 'accept_status', '0', NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(22, 3, 'NULL', 'ride_status', NULL, NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(23, 3, 'string', 'vehicle_typeid', '6', NULL, '2022-06-06 13:52:38', '2022-06-06 13:52:38'),
(24, 4, 'string', 'udf', 'N;', NULL, '2022-06-06 14:17:27', '2022-06-06 14:17:27'),
(25, 4, 'integer', 'accept_status', '1', NULL, '2022-06-06 14:17:27', '2022-06-06 14:17:27'),
(26, 4, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-06 14:17:27', '2022-06-06 14:17:27'),
(27, 4, 'integer', 'booking_type', '1', NULL, '2022-06-06 14:17:27', '2022-06-06 14:17:27'),
(28, 4, 'string', 'journey_date', '06-06-2022', NULL, '2022-06-06 14:17:27', '2022-06-06 14:17:27'),
(29, 4, 'string', 'journey_time', '15:16:45', NULL, '2022-06-06 14:17:27', '2022-06-06 14:17:27'),
(30, 5, 'string', 'udf', 'N;', NULL, '2022-06-06 14:18:52', '2022-06-06 14:18:52'),
(31, 5, 'integer', 'accept_status', '1', NULL, '2022-06-06 14:18:52', '2022-06-06 14:18:52'),
(32, 5, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-06 14:18:52', '2022-06-06 14:18:52'),
(33, 5, 'integer', 'booking_type', '1', NULL, '2022-06-06 14:18:52', '2022-06-06 14:18:52'),
(34, 5, 'string', 'journey_date', '06-06-2022', NULL, '2022-06-06 14:18:52', '2022-06-06 14:18:52'),
(35, 5, 'string', 'journey_time', '15:18:04', NULL, '2022-06-06 14:18:52', '2022-06-06 14:18:52'),
(36, 6, 'string', 'udf', 'N;', NULL, '2022-06-06 14:22:22', '2022-06-06 14:22:22'),
(37, 6, 'integer', 'accept_status', '1', NULL, '2022-06-06 14:22:22', '2022-06-06 14:22:22'),
(38, 6, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-06 14:22:22', '2022-06-06 14:22:22'),
(39, 6, 'integer', 'booking_type', '1', NULL, '2022-06-06 14:22:22', '2022-06-06 14:22:22'),
(40, 6, 'string', 'journey_date', '06-06-2022', NULL, '2022-06-06 14:22:22', '2022-06-06 14:22:22'),
(41, 6, 'string', 'journey_time', '15:21:24', NULL, '2022-06-06 14:22:22', '2022-06-06 14:22:22'),
(42, 7, 'string', 'udf', 'N;', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(43, 7, 'integer', 'accept_status', '1', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(44, 7, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(45, 7, 'integer', 'booking_type', '1', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(46, 7, 'string', 'journey_date', '06-06-2022', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(47, 7, 'string', 'journey_time', '15:25:06', NULL, '2022-06-06 14:25:20', '2022-06-06 14:25:20'),
(48, 8, 'string', 'udf', 'N;', NULL, '2022-06-06 14:28:32', '2022-06-06 14:28:32'),
(49, 8, 'integer', 'accept_status', '1', NULL, '2022-06-06 14:28:32', '2022-06-06 14:28:32'),
(50, 8, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-06 14:28:32', '2022-06-06 14:28:32'),
(51, 8, 'integer', 'booking_type', '1', NULL, '2022-06-06 14:28:32', '2022-06-06 14:28:32'),
(52, 8, 'string', 'journey_date', '06-06-2022', NULL, '2022-06-06 14:28:32', '2022-06-06 14:28:32'),
(53, 8, 'string', 'journey_time', '15:25:06', NULL, '2022-06-06 14:28:32', '2022-06-06 14:28:32'),
(54, 9, 'string', 'udf', 'N;', NULL, '2022-06-06 15:51:14', '2022-06-06 15:51:14'),
(55, 9, 'integer', 'accept_status', '1', NULL, '2022-06-06 15:51:14', '2022-06-06 15:51:14'),
(56, 9, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-06 15:51:14', '2022-06-06 15:51:14'),
(57, 9, 'integer', 'booking_type', '1', NULL, '2022-06-06 15:51:14', '2022-06-06 15:51:14'),
(58, 9, 'string', 'journey_date', '06-06-2022', NULL, '2022-06-06 15:51:14', '2022-06-06 15:51:14'),
(59, 9, 'string', 'journey_time', '16:47:33', NULL, '2022-06-06 15:51:14', '2022-06-06 15:51:14'),
(60, 10, 'string', 'udf', 'N;', NULL, '2022-06-07 08:17:43', '2022-06-07 08:17:43'),
(61, 10, 'integer', 'accept_status', '1', NULL, '2022-06-07 08:17:43', '2022-06-07 08:17:43'),
(62, 10, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-07 08:17:43', '2022-06-07 08:17:43'),
(63, 10, 'integer', 'booking_type', '1', NULL, '2022-06-07 08:17:43', '2022-06-07 08:17:43'),
(64, 10, 'string', 'journey_date', '07-06-2022', NULL, '2022-06-07 08:17:43', '2022-06-07 08:17:43'),
(65, 10, 'string', 'journey_time', '09:16:59', NULL, '2022-06-07 08:17:43', '2022-06-07 08:17:43'),
(66, 11, 'string', 'udf', 'N;', NULL, '2022-06-07 08:18:10', '2022-06-07 08:18:10'),
(67, 11, 'integer', 'accept_status', '1', NULL, '2022-06-07 08:18:10', '2022-06-07 08:18:10'),
(68, 11, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-07 08:18:10', '2022-06-07 08:18:10'),
(69, 11, 'integer', 'booking_type', '1', NULL, '2022-06-07 08:18:10', '2022-06-07 08:18:10'),
(70, 11, 'string', 'journey_date', '07-06-2022', NULL, '2022-06-07 08:18:10', '2022-06-07 08:18:10'),
(71, 11, 'string', 'journey_time', '09:16:59', NULL, '2022-06-07 08:18:10', '2022-06-07 08:18:10'),
(72, 12, 'string', 'udf', 'N;', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(73, 12, 'integer', 'accept_status', '1', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(74, 12, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(75, 12, 'integer', 'booking_type', '1', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(76, 12, 'string', 'journey_date', '07-06-2022', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(77, 12, 'string', 'journey_time', '10:25:26', NULL, '2022-06-07 09:26:12', '2022-06-07 09:26:12'),
(78, 13, 'string', 'udf', 'N;', NULL, '2022-06-14 12:19:43', '2022-06-14 12:19:43'),
(79, 13, 'integer', 'accept_status', '1', NULL, '2022-06-14 12:19:43', '2022-06-14 12:19:43'),
(80, 13, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-14 12:19:43', '2022-06-14 12:19:43'),
(81, 13, 'integer', 'booking_type', '1', NULL, '2022-06-14 12:19:43', '2022-06-14 12:19:43'),
(82, 13, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 12:19:43', '2022-06-14 12:19:43'),
(83, 13, 'string', 'journey_time', '13:19:25', NULL, '2022-06-14 12:19:43', '2022-06-14 12:19:43'),
(84, 14, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 12:36:41', '2022-06-14 12:36:41'),
(85, 14, 'string', 'journey_time', '13:36:41', NULL, '2022-06-14 12:36:41', '2022-06-14 12:36:41'),
(86, 14, 'integer', 'accept_status', '0', NULL, '2022-06-14 12:36:41', '2022-06-14 12:36:41'),
(87, 14, 'NULL', 'ride_status', NULL, NULL, '2022-06-14 12:36:41', '2022-06-14 12:36:41'),
(88, 14, 'integer', 'booking_type', '0', NULL, '2022-06-14 12:36:41', '2022-06-14 12:36:41'),
(89, 14, 'string', 'vehicle_typeid', '3', NULL, '2022-06-14 12:36:41', '2022-06-14 12:36:41'),
(90, 15, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 12:37:02', '2022-06-14 12:37:02'),
(91, 15, 'string', 'journey_time', '13:37:02', NULL, '2022-06-14 12:37:02', '2022-06-14 12:37:02'),
(92, 15, 'integer', 'accept_status', '0', NULL, '2022-06-14 12:37:02', '2022-06-14 12:37:02'),
(93, 15, 'NULL', 'ride_status', NULL, NULL, '2022-06-14 12:37:02', '2022-06-14 12:37:02'),
(94, 15, 'integer', 'booking_type', '0', NULL, '2022-06-14 12:37:02', '2022-06-14 12:37:02'),
(95, 15, 'string', 'vehicle_typeid', '2', NULL, '2022-06-14 12:37:02', '2022-06-14 12:37:02'),
(96, 16, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 12:38:05', '2022-06-14 12:38:05'),
(97, 16, 'string', 'journey_time', '13:38:05', NULL, '2022-06-14 12:38:05', '2022-06-14 12:38:05'),
(98, 16, 'integer', 'accept_status', '0', NULL, '2022-06-14 12:38:05', '2022-06-14 12:38:05'),
(99, 16, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-14 12:38:05', '2022-06-14 14:02:01'),
(100, 16, 'integer', 'booking_type', '0', NULL, '2022-06-14 12:38:05', '2022-06-14 12:38:05'),
(101, 16, 'string', 'vehicle_typeid', '3', NULL, '2022-06-14 12:38:05', '2022-06-14 12:38:05'),
(102, 17, 'string', 'udf', 'N;', NULL, '2022-06-14 12:54:42', '2022-06-14 12:54:42'),
(103, 17, 'integer', 'accept_status', '1', NULL, '2022-06-14 12:54:42', '2022-06-14 12:54:42'),
(104, 17, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-14 12:54:42', '2022-06-14 12:54:42'),
(105, 17, 'integer', 'booking_type', '1', NULL, '2022-06-14 12:54:42', '2022-06-14 12:54:42'),
(106, 17, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 12:54:42', '2022-06-14 12:54:42'),
(107, 17, 'string', 'journey_time', '13:54:14', NULL, '2022-06-14 12:54:42', '2022-06-14 12:54:42'),
(108, 18, 'string', 'udf', 'N;', NULL, '2022-06-14 12:56:13', '2022-06-14 12:56:13'),
(109, 18, 'integer', 'accept_status', '1', NULL, '2022-06-14 12:56:13', '2022-06-14 12:56:13'),
(110, 18, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-14 12:56:13', '2022-06-14 12:56:13'),
(111, 18, 'integer', 'booking_type', '1', NULL, '2022-06-14 12:56:13', '2022-06-14 12:56:13'),
(112, 18, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 12:56:13', '2022-06-14 12:56:13'),
(113, 18, 'string', 'journey_time', '13:54:14', NULL, '2022-06-14 12:56:13', '2022-06-14 12:56:13'),
(114, 19, 'string', 'udf', 'N;', NULL, '2022-06-14 12:59:47', '2022-06-14 12:59:47'),
(115, 19, 'integer', 'accept_status', '1', NULL, '2022-06-14 12:59:47', '2022-06-14 12:59:47'),
(116, 19, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-14 12:59:47', '2022-06-14 12:59:47'),
(117, 19, 'integer', 'booking_type', '1', NULL, '2022-06-14 12:59:47', '2022-06-14 12:59:47'),
(118, 19, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 12:59:47', '2022-06-14 12:59:47'),
(119, 19, 'string', 'journey_time', '13:59:35', NULL, '2022-06-14 12:59:47', '2022-06-14 12:59:47'),
(120, 20, 'string', 'udf', 'N;', NULL, '2022-06-14 13:03:47', '2022-06-14 13:03:47'),
(121, 20, 'integer', 'accept_status', '1', NULL, '2022-06-14 13:03:47', '2022-06-14 13:03:47'),
(122, 20, 'string', 'ride_status', 'Upcoming', NULL, '2022-06-14 13:03:47', '2022-06-14 13:03:47'),
(123, 20, 'integer', 'booking_type', '1', NULL, '2022-06-14 13:03:47', '2022-06-14 13:03:47'),
(124, 20, 'string', 'journey_date', '14-06-2022', NULL, '2022-06-14 13:03:47', '2022-06-14 13:03:47'),
(125, 20, 'string', 'journey_time', '13:59:35', NULL, '2022-06-14 13:03:47', '2022-06-14 13:03:47'),
(126, 16, 'string', 'udf', 'N;', NULL, '2022-06-14 14:02:01', '2022-06-14 14:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `booking_income`
--

CREATE TABLE `booking_income` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `income_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking_income`
--

INSERT INTO `booking_income` (`id`, `booking_id`, `income_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_payments`
--

CREATE TABLE `booking_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_quotation`
--

CREATE TABLE `booking_quotation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `pickup` timestamp NULL DEFAULT NULL,
  `dropoff` timestamp NULL DEFAULT NULL,
  `pickup_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dest_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `travellers` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `payment` int(11) NOT NULL DEFAULT '0',
  `day` int(11) DEFAULT NULL,
  `mileage` double DEFAULT NULL,
  `waiting_time` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tax_total` double(10,2) DEFAULT NULL,
  `total_tax_percent` double(10,2) DEFAULT NULL,
  `total_tax_charge_rs` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_services`
--

CREATE TABLE `company_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_services`
--

INSERT INTO `company_services` (`id`, `title`, `image`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Best price guranteed', 'fleet-bestprice.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(2, '24/7 Customer care', 'fleet-care.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(3, 'Home pickups', 'fleet-homepickup.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(4, 'Easy Bookings', 'fleet-easybooking.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `driver_logs`
--

CREATE TABLE `driver_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver_logs`
--

INSERT INTO `driver_logs` (`id`, `vehicle_id`, `driver_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2022-05-24 13:26:03', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(2, 3, 7, '2022-06-03 16:59:11', '2022-06-03 16:59:11', '2022-06-03 16:59:11'),
(3, 3, 7, '2022-06-03 16:59:14', '2022-06-03 16:59:14', '2022-06-03 16:59:14'),
(4, 2, 9, '2022-06-06 13:11:41', '2022-06-06 13:11:41', '2022-06-06 13:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `driver_vehicle`
--

CREATE TABLE `driver_vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver_vehicle`
--

INSERT INTO `driver_vehicle` (`id`, `vehicle_id`, `driver_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(2, 3, 7, '2022-06-03 16:59:11', '2022-06-03 16:59:11'),
(3, 2, 9, '2022-06-06 13:11:41', '2022-06-06 13:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `email_content`
--

CREATE TABLE `email_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_content`
--

INSERT INTO `email_content` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'insurance', 'vehicle insurance email content', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(2, 'vehicle_licence', 'vehicle licence email content', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(3, 'driving_licence', 'driving licence email content', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(4, 'registration', 'vehicle registration email content', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(5, 'service_reminder', 'service reminder email content', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(6, 'users', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(7, 'options', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(8, 'email', '0', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `exp_id` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'e',
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `expense_type` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `vehicle_id`, `exp_id`, `type`, `amount`, `user_id`, `expense_type`, `comment`, `date`, `created_at`, `updated_at`, `deleted_at`, `vendor_id`) VALUES
(1, 1, NULL, 'e', 4021.00, 2, 1, 'Sample Comment', '2022-05-23', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, NULL),
(2, 2, NULL, 'e', 1677.00, 3, 4, 'Sample Comment', '2022-05-19', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, NULL),
(3, 1, 1, 'e', 500.00, 2, 8, 'Sample Comment', '2022-05-22', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, NULL),
(4, 1, 2, 'e', 500.00, 2, 8, 'Sample Comment', '2022-06-03', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, NULL),
(5, 2, NULL, 'e', 234567.00, 1, 3, 'fdhagfsajlkhjgbnm,,jmhnvbcvbvfghjkl', '2022-06-03', '2022-06-03 16:18:08', '2022-06-03 16:18:08', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `expense_cat`
--

CREATE TABLE `expense_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_cat`
--

INSERT INTO `expense_cat` (`id`, `name`, `user_id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Insurance', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(2, 'Patente', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(3, 'Mechanics', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(4, 'Car wash', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(5, 'Vignette', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(6, 'Maintenance', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(7, 'Parking', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(8, 'Fuel', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(9, 'Car Services', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fare_settings`
--

CREATE TABLE `fare_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fare_settings`
--

INSERT INTO `fare_settings` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`, `type_id`) VALUES
(1, 'hatchback_base_fare', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:20', NULL, 1),
(2, 'hatchback_base_km', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(3, 'hatchback_base_time', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(4, 'hatchback_std_fare', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(5, 'hatchback_weekend_base_fare', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(6, 'hatchback_weekend_base_km', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(7, 'hatchback_weekend_wait_time', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(8, 'hatchback_weekend_std_fare', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(9, 'hatchback_night_base_fare', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(10, 'hatchback_night_base_km', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(11, 'hatchback_night_wait_time', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(12, 'hatchback_night_std_fare', '0', '2022-05-24 13:26:03', '2022-06-14 14:15:21', NULL, 1),
(13, 'sedan_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(14, 'sedan_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(15, 'sedan_base_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(16, 'sedan_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(17, 'sedan_weekend_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(18, 'sedan_weekend_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(19, 'sedan_weekend_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(20, 'sedan_weekend_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(21, 'sedan_night_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(22, 'sedan_night_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(23, 'sedan_night_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(24, 'sedan_night_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 2),
(25, 'minivan_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(26, 'minivan_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(27, 'minivan_base_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(28, 'minivan_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(29, 'minivan_weekend_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(30, 'minivan_weekend_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(31, 'minivan_weekend_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(32, 'minivan_weekend_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(33, 'minivan_night_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(34, 'minivan_night_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(35, 'minivan_night_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(36, 'minivan_night_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 3),
(37, 'saloon_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(38, 'saloon_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(39, 'saloon_base_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(40, 'saloon_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(41, 'saloon_weekend_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(42, 'saloon_weekend_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(43, 'saloon_weekend_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(44, 'saloon_weekend_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(45, 'saloon_night_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(46, 'saloon_night_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(47, 'saloon_night_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(48, 'saloon_night_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 4),
(49, 'suv_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(50, 'suv_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(51, 'suv_base_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(52, 'suv_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(53, 'suv_weekend_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(54, 'suv_weekend_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(55, 'suv_weekend_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(56, 'suv_weekend_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(57, 'suv_night_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(58, 'suv_night_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(59, 'suv_night_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(60, 'suv_night_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 5),
(61, 'bus_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(62, 'bus_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(63, 'bus_base_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(64, 'bus_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(65, 'bus_weekend_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(66, 'bus_weekend_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(67, 'bus_weekend_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(68, 'bus_weekend_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(69, 'bus_night_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(70, 'bus_night_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(71, 'bus_night_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(72, 'bus_night_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 6),
(73, 'truck_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(74, 'truck_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(75, 'truck_base_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(76, 'truck_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(77, 'truck_weekend_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(78, 'truck_weekend_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(79, 'truck_weekend_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(80, 'truck_weekend_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(81, 'truck_night_base_fare', '500', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(82, 'truck_night_base_km', '10', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(83, 'truck_night_wait_time', '2', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7),
(84, 'truck_night_std_fare', '20', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `frontend`
--

CREATE TABLE `frontend` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend`
--

INSERT INTO `frontend` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'about_us', 'Pyrich Group Limited is a Nigerian indigenous software development and professional ICT consultancy company.', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(2, 'contact_email', 'master@admin.com', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(3, 'contact_phone', '0123456789', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(4, 'customer_support', '0999988888', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(5, 'about_description', 'This Application is designed to mitigate the potential issues between drivers, staffs and assignment of vehicles and help strengthen the daily processes of moving around, making transportation of staffs more efficient and organized than ever before.', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(6, 'about_title', 'Proudly serving you', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(7, 'facebook', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(8, 'twitter', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(9, 'instagram', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(10, 'linkedin', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(11, 'faq_link', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(12, 'cities', '8', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(13, 'vehicles', '12', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(14, 'cancellation', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(15, 'terms', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(16, 'privacy_policy', NULL, '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(17, 'enable', '1', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(18, 'language', 'English-en', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL),
(19, 'admin_approval', '1', '2022-05-24 13:26:03', '2022-06-14 11:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_meter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_meter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `vendor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `fuel_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost_per_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumption` int(11) DEFAULT NULL,
  `complete` int(11) DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`id`, `vehicle_id`, `user_id`, `start_meter`, `end_meter`, `reference`, `province`, `note`, `vendor_name`, `qty`, `fuel_from`, `cost_per_unit`, `consumption`, `complete`, `date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, '1000', '2000', NULL, 'Gujarat', 'sample note', NULL, 10, 'Fuel Tank', '50', 100, 0, '2022-05-22', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(2, 1, 2, '2000', '0', NULL, 'Gujarat', 'sample note', NULL, 10, 'Fuel Tank', '50', 0, 0, '2022-06-03', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `income_id` int(11) DEFAULT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `income_cat` int(11) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tax_percent` double(10,2) DEFAULT NULL,
  `tax_charge_rs` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `vehicle_id`, `income_id`, `amount`, `user_id`, `income_cat`, `mileage`, `date`, `created_at`, `updated_at`, `deleted_at`, `tax_percent`, `tax_charge_rs`) VALUES
(1, 1, NULL, 1107.00, 2, 1, NULL, '2022-05-19', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 0.00, 0.00),
(2, 2, NULL, 3598.00, 3, 1, NULL, '2022-05-23', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 0.00, 0.00),
(3, 1, 1, 500.00, 1, 1, 10, '2022-05-24', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `income_cat`
--

CREATE TABLE `income_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `income_cat`
--

INSERT INTO `income_cat` (`id`, `name`, `user_id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Booking', 1, 'd', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`id`, `user_id`, `name`, `email`, `contact_number`, `category`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Danika Heller DDS', 'fmckenzie@example.net', '(589) 446-8727', 'Electrical Engineering', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(2, 1, 'Joesph Douglas', 'lemke.sigrid@example.net', '(982) 971-2233', 'Electrical Engineering', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) UNSIGNED NOT NULL,
  `fcm_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `fcm_id`, `user_id`, `message`, `deleted_at`, `created_at`, `updated_at`, `name`, `email`) VALUES
(1, NULL, NULL, 'xdcfvgbhjkzxcvbnmkzxcv sdfghjk', NULL, '2022-06-14 14:12:05', '2022-06-14 14:12:05', 'Samuel Adewale', 'samadewale2014@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2017_06_03_134331_create_expense_table', 1),
(7, '2017_06_03_134332_create_expense_cat_table', 1),
(8, '2017_06_03_134332_create_income_table', 1),
(9, '2017_06_03_134333_create_income_cat_table', 1),
(10, '2017_06_03_134336_create_password_resets_table', 1),
(11, '2017_06_03_134337_create_users_table', 1),
(12, '2017_06_03_134338_create_vehicles_table', 1),
(13, '2017_07_24_080537_create_booking_table', 1),
(14, '2017_07_24_080643_create_settings_table', 1),
(15, '2017_08_01_073926_create_booking_income_table', 1),
(16, '2017_10_30_064357_create_notifications_table', 1),
(17, '2017_10_30_094858_create_fuel_table', 1),
(18, '2017_11_09_105729_create_vendors_table', 1),
(19, '2017_11_10_062609_create_work_orders_table', 1),
(20, '2017_11_10_095438_create_notes_table', 1),
(21, '2017_11_22_093559_create_vehicle_group_table', 1),
(22, '2017_12_28_091600_create_service_items_table', 1),
(23, '2017_12_28_122952_create_service_reminder_table', 1),
(24, '2017_12_28_174333_create_api_settings_table', 1),
(25, '2018_01_08_062105_create_driver_vehicle_table', 1),
(26, '2018_01_10_130517_users_meta', 1),
(27, '2018_01_13_050018_bookings_meta', 1),
(28, '2018_01_16_095657_fare_settings', 1),
(29, '2018_01_25_050939_create_vehicles_meta_table', 1),
(30, '2018_02_06_052302_create_message_table', 1),
(31, '2018_02_06_125252_create_reviews_table', 1),
(32, '2018_03_13_124424_create_addresses_table', 1),
(33, '2018_03_28_085735_create_reasons_table', 1),
(34, '2018_04_28_073004_create_email_content_table', 1),
(35, '2018_08_14_061757_create_vehicle_review_table', 1),
(36, '2019_01_18_063916_add_vendor_id_to_expense', 1),
(37, '2019_01_19_080738_add_udf_to_vendors', 1),
(38, '2019_01_19_103826_create_parts_table', 1),
(39, '2019_01_19_110823_create_vehicle_types_table', 1),
(40, '2019_01_22_101948_create_driver_logs_table', 1),
(41, '2019_01_23_113852_add_type_id_to_vehicles_table', 1),
(42, '2019_01_24_095115_add_type_id_to_fare_settings_table', 1),
(43, '2019_04_12_092111_create_parts_category_table', 1),
(44, '2019_04_19_053314_create_work_order_logs_table', 1),
(45, '2019_05_13_062039_create_push_notification_table', 1),
(46, '2019_07_18_110031_add_column_to_vendors', 1),
(47, '2019_07_31_082514_create_testimonials_table', 1),
(48, '2019_07_31_102801_create_frontend_table', 1),
(49, '2019_08_01_045837_add_columns_to_message_table', 1),
(50, '2019_08_19_101509_create_booking_quotation_table', 1),
(51, '2019_08_22_052138_create_parts_used_table', 1),
(52, '2019_08_22_113138_add_parts_price_to_work_order_logs_table', 1),
(53, '2019_08_29_104613_create_company_services_table', 1),
(54, '2019_09_16_085700_create_teams_table', 1),
(55, '2019_12_10_083547_add_columns_to_booking_quotation_table', 1),
(56, '2019_12_16_064152_add_indexes_to_users_table', 1),
(57, '2019_12_16_064951_add_indexes_to_addresses_table', 1),
(58, '2019_12_16_065511_add_indexes_to_bookings_table', 1),
(59, '2019_12_16_083315_add_indexes_to_booking_income_table', 1),
(60, '2019_12_16_084539_add_indexes_to_booking_quotation_table', 1),
(61, '2019_12_16_085312_add_indexes_to_driver_logs_table', 1),
(62, '2019_12_16_085505_add_indexes_to_driver_vehicle_table', 1),
(63, '2019_12_16_091010_add_indexes_to_email_content_table', 1),
(64, '2019_12_16_091713_add_indexes_to_expense_table', 1),
(65, '2019_12_16_094305_add_indexes_to_expense_cat_table', 1),
(66, '2019_12_16_094651_add_indexes_to_fare_settings_table', 1),
(67, '2019_12_16_095024_add_indexes_to_frontend_table', 1),
(68, '2019_12_16_095339_add_indexes_to_fuel_table', 1),
(69, '2019_12_16_095634_add_indexes_to_income_table', 1),
(70, '2019_12_16_095953_add_indexes_to_income_cat_table', 1),
(71, '2019_12_16_100221_add_indexes_to_notes_table', 1),
(72, '2019_12_16_100437_add_indexes_to_notifications_table', 1),
(73, '2019_12_16_100545_add_indexes_to_parts_table', 1),
(74, '2019_12_16_101113_add_indexes_to_parts_used_table', 1),
(75, '2019_12_16_101540_add_indexes_to_push_notification_table', 1),
(76, '2019_12_16_101851_add_indexes_to_reviews_table', 1),
(77, '2019_12_16_102259_add_indexes_to_service_reminder_table', 1),
(78, '2019_12_16_102555_add_indexes_to_vehicles_table', 1),
(79, '2019_12_16_104209_add_indexes_to_vehicle_review_table', 1),
(80, '2019_12_16_104440_add_indexes_to_vendors_table', 1),
(81, '2019_12_16_104704_add_indexes_to_work_orders_table', 1),
(82, '2019_12_16_105013_add_indexes_to_work_order_logs_table', 1),
(83, '2019_12_16_115309_add_indexes_to_api_settings_table', 1),
(84, '2019_12_17_080649_add_taxes_to_income_table', 1),
(85, '2019_12_19_052248_create_payment_settings_table', 1),
(86, '2019_12_19_063520_create_booking_payments_table', 1),
(87, '2021_01_04_113449_create_twilio_settings_table', 1),
(88, '2021_06_29_052236_add_udf_field_to_vehicle_review_table', 1),
(89, '2021_06_29_115538_create_mechanics_table', 1),
(90, '2021_07_02_051340_create_permission_tables', 1),
(91, '2021_07_02_052117_add_mechanic_work_order_table', 1),
(92, '2021_07_02_055514_add_mechanic_work_order_log_table', 1),
(93, '2021_07_22_071412_create_push_subscriptions_table', 1),
(94, '2021_07_22_113433_add_provider_to_oauth_clients_table', 1),
(95, '2021_08_27_050813_create_vehicle_make_table', 1),
(96, '2021_08_27_050840_create_vehicle_colors_table', 1),
(97, '2021_08_27_050857_create_vehicle_model_table', 1),
(98, '2021_08_27_051918_add_make_model_color_table', 1),
(99, '2021_08_27_121756_add_user_id_to_mechanics_table', 1),
(100, '2021_08_27_121856_add_user_id_to_parts_category_table', 1),
(101, '2021_08_27_121941_add_user_id_to_service_items_table', 1),
(102, '2021_08_27_122008_add_user_id_to_service_reminder_table', 1),
(103, '2021_08_27_122045_add_user_id_to_vehicle_group_table', 1),
(104, '2021_08_27_122127_add_user_id_to_vendors_table', 1),
(105, '2021_08_27_122155_add_user_id_to_work_orders_table', 1),
(106, '2021_08_27_122217_add_user_id_to_work_order_logs_table', 1),
(107, '2021_08_27_122259_add_user_id_to_notes_table', 1),
(108, '2021_09_07_070458_add_user_id_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(71, 'App\\Model\\User', 4),
(72, 'App\\Model\\User', 4),
(73, 'App\\Model\\User', 4),
(74, 'App\\Model\\User', 4),
(71, 'App\\Model\\User', 5),
(72, 'App\\Model\\User', 5),
(73, 'App\\Model\\User', 5),
(74, 'App\\Model\\User', 5),
(9, 'App\\Model\\User', 6),
(81, 'App\\Model\\User', 6),
(82, 'App\\Model\\User', 6),
(83, 'App\\Model\\User', 6),
(84, 'App\\Model\\User', 6),
(101, 'App\\Model\\User', 6),
(102, 'App\\Model\\User', 6),
(103, 'App\\Model\\User', 6),
(104, 'App\\Model\\User', 6),
(9, 'App\\Model\\User', 7),
(81, 'App\\Model\\User', 7),
(82, 'App\\Model\\User', 7),
(83, 'App\\Model\\User', 7),
(84, 'App\\Model\\User', 7),
(101, 'App\\Model\\User', 7),
(102, 'App\\Model\\User', 7),
(103, 'App\\Model\\User', 7),
(104, 'App\\Model\\User', 7),
(9, 'App\\Model\\User', 9),
(101, 'App\\Model\\User', 9),
(102, 'App\\Model\\User', 9),
(103, 'App\\Model\\User', 9),
(104, 'App\\Model\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Model\\User', 1),
(3, 'App\\Model\\User', 2),
(2, 'App\\Model\\User', 3),
(2, 'App\\Model\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `submitted_on` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `user_id`, `vehicle_id`, `customer_id`, `note`, `submitted_on`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, 'sedrftyuiop[]\';lkjhgfdsaASZXCVBN', '2022-06-06', 'Pending', NULL, '2022-06-06 11:45:07', '2022-06-06 11:45:07'),
(2, 9, 2, 9, 'sdfghyujikolp;lkjhgfzxcvbnmlkjhgfsxcvbn', '2022-06-24', 'Completed', NULL, '2022-06-06 13:13:58', '2022-06-06 13:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Fleet Manager Personal Access Client', '09Kbabi8YBvfn4G0NPTRDBdlorq7dFxl8C0BFJ1W', NULL, 'http://localhost', 1, 0, 0, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(2, NULL, 'Fleet Manager Password Grant Client', 'rZlqAeEs5mbgkhXcXbeXOsBd8ArxGXMBRJAwIk6v', 'users', 'http://localhost', 0, 1, 0, '2022-05-24 13:26:03', '2022-05-24 13:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-24 13:26:03', '2022-05-24 13:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `availability` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `stock` int(11) DEFAULT NULL,
  `udf` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parts_category`
--

CREATE TABLE `parts_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parts_category`
--

INSERT INTO `parts_category` (`id`, `user_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Engine Parts', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(2, 1, 'Electricals', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parts_used`
--

CREATE TABLE `parts_used` (
  `id` int(10) UNSIGNED NOT NULL,
  `part_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'method', '[\"cash\"]', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(2, 'currency_code', 'INR', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(3, 'stripe_publishable_key', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(4, 'stripe_secret_key', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(5, 'razorpay_key', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(6, 'razorpay_secret', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Users add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(2, 'Users edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(3, 'Users delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(4, 'Users list', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(5, 'Users import', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(6, 'Drivers add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(7, 'Drivers edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(8, 'Drivers delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(9, 'Drivers list', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(10, 'Drivers import', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(11, 'Customer add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(12, 'Customer edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(13, 'Customer delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(14, 'Customer list', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(15, 'Customer import', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(16, 'VehicleType add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(17, 'VehicleType edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(18, 'VehicleType delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(19, 'VehicleType list', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(20, 'VehicleType import', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(21, 'VehicleMaker add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(22, 'VehicleMaker edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(23, 'VehicleMaker delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(24, 'VehicleMaker list', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(25, 'VehicleMaker import', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(26, 'VehicleModels add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(27, 'VehicleModels edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(28, 'VehicleModels delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(29, 'VehicleModels list', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(30, 'VehicleModels import', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(31, 'VehicleColors add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(32, 'VehicleColors edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(33, 'VehicleColors delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(34, 'VehicleColors list', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(35, 'VehicleColors import', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(36, 'VehicleGroup add', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(37, 'VehicleGroup edit', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(38, 'VehicleGroup delete', 'web', '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(39, 'VehicleGroup list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(40, 'VehicleGroup import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(41, 'VehicleInspection add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(42, 'VehicleInspection edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(43, 'VehicleInspection delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(44, 'VehicleInspection list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(45, 'VehicleInspection import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(46, 'BookingQuotations add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(47, 'BookingQuotations edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(48, 'BookingQuotations delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(49, 'BookingQuotations list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(50, 'BookingQuotations import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(51, 'PartsCategory add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(52, 'PartsCategory edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(53, 'PartsCategory delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(54, 'PartsCategory list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(55, 'PartsCategory import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(56, 'Mechanics add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(57, 'Mechanics edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(58, 'Mechanics delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(59, 'Mechanics list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(60, 'Mechanics import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(61, 'Vehicles add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(62, 'Vehicles edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(63, 'Vehicles delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(64, 'Vehicles list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(65, 'Vehicles import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(66, 'Transactions add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(67, 'Transactions edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(68, 'Transactions delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(69, 'Transactions list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(70, 'Transactions import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(71, 'Bookings add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(72, 'Bookings edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(73, 'Bookings delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(74, 'Bookings list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(75, 'Bookings import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(76, 'Reports add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(77, 'Reports edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(78, 'Reports delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(79, 'Reports list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(80, 'Reports import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(81, 'Fuel add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(82, 'Fuel edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(83, 'Fuel delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(84, 'Fuel list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(85, 'Fuel import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(86, 'Vendors add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(87, 'Vendors edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(88, 'Vendors delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(89, 'Vendors list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(90, 'Vendors import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(91, 'Parts add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(92, 'Parts edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(93, 'Parts delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(94, 'Parts list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(95, 'Parts import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(96, 'WorkOrders add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(97, 'WorkOrders edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(98, 'WorkOrders delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(99, 'WorkOrders list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(100, 'WorkOrders import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(101, 'Notes add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(102, 'Notes edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(103, 'Notes delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(104, 'Notes list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(105, 'Notes import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(106, 'ServiceReminders add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(107, 'ServiceReminders edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(108, 'ServiceReminders delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(109, 'ServiceReminders list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(110, 'ServiceReminders import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(111, 'ServiceItems add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(112, 'ServiceItems edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(113, 'ServiceItems delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(114, 'ServiceItems list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(115, 'ServiceItems import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(116, 'Testimonials add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(117, 'Testimonials edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(118, 'Testimonials delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(119, 'Testimonials list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(120, 'Testimonials import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(121, 'Team add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(122, 'Team edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(123, 'Team delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(124, 'Team list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(125, 'Team import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(126, 'Settings add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(127, 'Settings edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(128, 'Settings delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(129, 'Settings list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(130, 'Settings import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(131, 'Inquiries add', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(132, 'Inquiries edit', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(133, 'Inquiries delete', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(134, 'Inquiries list', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(135, 'Inquiries import', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `push_notification`
--

CREATE TABLE `push_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authtoken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contentencoding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publickey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subscribable_id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `reason`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'No fuel', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(2, 'Tire punctured', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `ratings` double(8,2) DEFAULT NULL,
  `review_text` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(2, 'Admin', 'web', '2022-05-24 13:26:04', '2022-05-24 13:26:04'),
(3, 'Customer', 'web', '2022-06-06 13:18:01', '2022-06-06 13:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(134, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service_items`
--

CREATE TABLE `service_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `time_interval` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'off',
  `overdue_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overdue_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meter_interval` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'off',
  `overdue_meter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'off',
  `duesoon_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duesoon_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_meter` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'off',
  `duesoon_meter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_items`
--

INSERT INTO `service_items` (`id`, `user_id`, `description`, `time_interval`, `overdue_time`, `overdue_unit`, `meter_interval`, `overdue_meter`, `show_time`, `duesoon_time`, `duesoon_unit`, `show_meter`, `duesoon_meter`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Change oil', 'on', '60', 'day(s)', 'off', NULL, 'on', '2', 'day(s)', 'off', NULL, NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `service_reminder`
--

CREATE TABLE `service_reminder` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `last_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_meter` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `label`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Website Name', 'app_name', 'PGL Fleet Manager', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(2, 'Business Address 1', 'badd1', '3 R.A. Adeleye Close', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(3, 'Business Address 2', 'badd2', 'Utako.', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(4, 'Email Address', 'email', 'master@admin.com', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(5, 'City', 'city', 'Abuja', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(6, 'State', 'state', 'Federal Capital Territory', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(7, 'Country', 'country', 'Nigeria', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(8, 'Distence Format', 'dis_format', 'km', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(9, 'Language', 'language', 'English-en', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(10, 'Currency', 'currency', '₦', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(11, 'Tax No', 'tax_no', 'ABCD8735XXX', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(12, 'Invoice Text', 'invoice_text', 'Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(13, 'Small Logo', 'icon_img', '15d80d85-ef23-4dee-b214-e6aa6688e090.png', '2022-05-24 13:26:03', '2022-05-31 09:43:41', NULL),
(14, 'Main Logo', 'logo_img', '62e7c44d-2212-4def-93ff-eebc6dfc2171.png', '2022-05-24 13:26:03', '2022-05-31 09:43:41', NULL),
(15, 'Time Interval', 'time_interval', '30', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(16, 'Tax Charge', 'tax_charge', 'null', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(17, 'Fuel Unit', 'fuel_unit', 'liter', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(18, 'Date Format', 'date_format', 'd-m-Y', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(19, 'Website Footer', 'web_footer', '<p><span style=\"font-size: 16px;\">© Pyrich Groups Solutions 2022. All Rights Reserved.&nbsp;<span class=\"vertical-spacer d-none d-lg-inline\">|</span>&nbsp;Powered By <a href=\"http://edsinetechnologiesltd.com\" target=\"_blank\">EDSINE</a></span></p>', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL),
(20, 'Fuel enable for Driver', 'fuel_enable_driver', '0', '2022-05-24 13:26:03', '2022-05-31 09:43:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `details`, `designation`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shehu Abdul', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus neque est nemo et ipsum fugiat, ab facere adipisci. Aliquam quibusdam molestias quisquam distinctio? Culpa, voluptatem voluptates exercitationem sequi velit quaerat.', 'Developer', NULL, '2022-05-24 13:26:02', '2022-06-14 11:26:04', NULL),
(2, 'Opeyemi Ayeni', 'Back-end Web Developer', 'Developer', NULL, '2022-05-24 13:26:02', '2022-06-14 11:25:34', NULL),
(3, 'Omeiza Alabi', 'Full-stack Web Developer', 'Developer', NULL, '2022-05-24 13:26:02', '2022-06-14 11:24:57', NULL),
(4, 'Andrew Azeez', 'Front-end Web Developer', 'Developer', NULL, '2022-05-24 13:26:02', '2022-06-14 11:24:19', NULL),
(5, 'Adewale Samuel', 'Front-end Web developer', 'Developer', NULL, '2022-05-24 13:26:02', '2022-06-14 11:23:29', NULL),
(6, 'James Atuluku', 'Full Stack Web Developer and Edsine Team Lead', 'Team Lead', NULL, '2022-06-14 11:27:12', '2022-06-14 11:27:12', NULL),
(7, 'Anthonio', 'Graphics / UI Designer', 'Design', NULL, '2022-06-14 11:27:48', '2022-06-14 11:29:03', NULL),
(8, 'Judith', 'Graphics designer', 'Design', NULL, '2022-06-14 11:28:39', '2022-06-14 11:28:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `details`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adolf Krajcik PhD', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(2, 'Bell Bahringer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(3, 'Micheal Steuber I', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(4, 'Blaise Okuneva', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(5, 'Miss Eula Williamson', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `twilio_settings`
--

CREATE TABLE `twilio_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `twilio_settings`
--

INSERT INTO `twilio_settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sid', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(2, 'token', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(3, 'from', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(4, 'customer_message', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(5, 'driver_message', '', '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `password`, `user_type`, `group_id`, `api_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Administrator', 'master@admin.com', '$2a$12$4.mWHFKaJcIR8UFc2D8Cx.bkt9DQCKrba4e3PD8Pl7GIdSQN0OCz.', 'S', NULL, 'LeaU8Jyi2AgfJ91KvWqDi0tAhCFqj6nktdbciXpaF2pQKfI3G1TvnAxbrdMe', 'nUBIhEzEOD1WJHR4vx3CViWiLWX0Od4lUllvOgHAU0VPTt8IGXIxYffh7keP', '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(2, 1, 'User One', 'user1@admin.com', '$2a$12$4.mWHFKaJcIR8UFc2D8Cx.bkt9DQCKrba4e3PD8Pl7GIdSQN0OCz.', 'O', 1, 'Q9Yuq5h0u4PL0WjlHvYgB0fqUs0RwGO63tLVOE57r7KWEmCBIB5DMhmdOdJZ', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(3, 1, 'User Two', 'user2@admin.com', '$2y$10$BusRMZvODI4v2SnNYYPGN.fb69p.OMnNdnj274BsH0Jgu4vDqJJAS', 'O', 1, '2Km7vnsAQ7yNAQ0ONSvynbaXrsS7lf8qMYGd3KbQ8k78YSuOg3BHFriruEkR', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(4, 1, 'Customer One', 'customer1@gmail.com', '$2a$12$4.mWHFKaJcIR8UFc2D8Cx.bkt9DQCKrba4e3PD8Pl7GIdSQN0OCz.', 'C', NULL, 'iBn78H6196VSiZzeCAtpHgH6ApeafHkRSDy6FbkihiC61d7eVXYlXplwoKGw', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL),
(5, 1, 'Customer Two', 'customer2@gmail.com', '$2y$10$pzvvOgp8jWTxSre9dyw4UuVELhr2kl77e2K2biE03MkYFLbwOrMt6', 'C', NULL, 'x4OidQY6HfsMicyW4ilQvXlkYgVflcqbdV9VwH1xcS0wamQTEdQuqoepzskm', NULL, '2022-05-24 13:26:03', '2022-06-14 12:02:34', NULL),
(6, 1, 'Pink Sanford', 'vkuphal@example.com', '$2y$10$a1rLEzlIxO12OFQnsgO2R.VsESkk0JMVzp8lys1pZC36U.SrkJS5a', 'D', NULL, 'gXBLgYuOwGWfRKrbcnmBdqy6kjATNxeIZP4BINowSmQAHR2BvhNXH9sa0CAm', 'Q056xPWc3E', '2022-05-24 13:26:03', '2022-06-14 14:07:08', NULL),
(7, 1, 'Mrs. Daphne', 'janae.corwin@example.org', '$2y$10$Kb.cjbJVZYiIPCqyDY2jtusciaAhtjMl2Ggjffof5oSGUFEsz8K3u', 'D', NULL, '6JEhKWCKOn1pA18CxWivuQgsF35P5a9cWdws7jYLhwiSVaDnBmbahVH6lVWV', '0jFwrvvz30g4jruJThCq2G0CWnj8zB0onHRyd4yg7gJno2J42W4DFY0j4TD6', '2022-05-24 13:26:03', '2022-06-14 14:06:09', NULL),
(8, 1, 'Ordinary admin', 'admin@example.com', '$2y$10$bh88XpnqmLxfH0gqoe3pBOOlFiK8y30eYHCpGl8azj4g5Mmtus5.G', 'O', 1, '7lKUPJuMOziuow1r3fzLf0sLxU3XYhQTAego0AXjd9c6LEc1ceDM2T9y2ogK', NULL, '2022-06-02 18:54:46', '2022-06-02 18:54:46', NULL),
(9, 1, 'Madeline William', 'madeline@driver.com', '$2y$10$CYP0CRBkgkS/NAWuot4Adem5em3IVM3PlN/VFAWcvhTEOdwFJjSRa', 'D', NULL, 'Jy8jW5RGZ6nptC93NHr7QKwkx6ue30D09oks8xjZ4D8r0YBaWhKCUIT00KLM', 'tLCRsxP0rZYg86kemrmhDp4wlKfKuNCSl0INGxtuEbsYpg05YJPLUOIE4Qtn', '2022-06-06 13:11:41', '2022-06-14 14:06:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`id`, `user_id`, `type`, `key`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'string', 'profile_image', 'no-user.jpg', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(2, 1, 'string', 'module', 'a:15:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;}', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(3, 2, 'string', 'module', 'N;', NULL, '2022-05-24 13:26:03', '2022-06-06 13:18:40'),
(4, 3, 'string', 'module', 'a:15:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;}', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(5, 4, 'string', 'first_name', 'Customer', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(6, 4, 'string', 'last_name', 'One', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(7, 2, 'string', 'address', '3, ra adeleye close, utako.', NULL, '2022-05-24 13:26:03', '2022-06-14 12:01:49'),
(8, 4, 'string', 'mobno', '8639379915669', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(9, 4, 'string', 'gender', '0', NULL, '2022-05-24 13:26:03', '2022-06-14 12:01:49'),
(10, 5, 'string', 'first_name', 'Customer', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(11, 5, 'string', 'last_name', 'Two', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(12, 5, 'string', 'address', '91158 Luigi Cliffs Lake Darby, MA 39627-1727', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(13, 5, 'string', 'mobno', '9773607007903', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(14, 5, 'integer', 'gender', '1', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(15, 6, 'string', 'first_name', 'Pink', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(16, 6, 'string', 'last_name', 'Sanford', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(17, 6, 'string', 'address', '37487 Morar Row\nNew Jaqueline, DE 69786-9970', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(18, 6, 'string', 'phone', '02481268645157', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(19, 6, 'string', 'issue_date', '2022-05-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(20, 6, 'string', 'exp_date', '2022-07-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(21, 6, 'string', 'start_date', '2022-05-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(22, 6, 'string', 'end_date', '2022-06-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(23, 6, 'integer', 'license_number', '816024', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(24, 6, 'integer', 'contract_number', '6016', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(25, 6, 'integer', 'emp_id', '46404', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(26, 7, 'string', 'first_name', 'Mrs.', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(27, 7, 'string', 'last_name', 'Daphne', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(28, 7, 'string', 'address', '6959 Aufderhar Hollow Suite 606Adeleburgh, OH 53009', NULL, '2022-05-24 13:26:03', '2022-06-06 12:46:56'),
(29, 7, 'string', 'phone', '09095838631232', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(30, 7, 'string', 'issue_date', '2022-05-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(31, 7, 'string', 'exp_date', '2022-07-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(32, 7, 'string', 'start_date', '2022-05-24', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(33, 7, 'string', 'end_date', '2022-06-30', NULL, '2022-05-24 13:26:03', '2022-06-06 12:46:56'),
(34, 7, 'string', 'license_number', '309528', NULL, '2022-05-24 13:26:03', '2022-06-06 12:46:56'),
(35, 7, 'string', 'contract_number', '4262', NULL, '2022-05-24 13:26:03', '2022-06-06 12:46:56'),
(36, 7, 'string', 'emp_id', '25570', NULL, '2022-05-24 13:26:03', '2022-06-06 12:46:56'),
(37, 6, 'integer', 'vehicle_id', '1', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(38, 1, 'string', 'language', 'English-en', NULL, '2022-05-31 09:35:55', '2022-05-31 09:35:55'),
(39, 8, 'string', 'module', 'N;', NULL, '2022-06-02 18:54:46', '2022-06-02 18:54:46'),
(40, 8, 'string', 'language', 'English-en', NULL, '2022-06-02 18:54:46', '2022-06-02 18:54:46'),
(41, 8, 'string', 'first_name', 'Ordinary', NULL, '2022-06-02 18:54:46', '2022-06-02 18:54:46'),
(42, 8, 'string', 'last_name', 'admin', NULL, '2022-06-02 18:54:46', '2022-06-02 18:54:46'),
(43, 7, 'string', 'vehicle_id', '3', NULL, '2022-06-03 16:59:11', '2022-06-03 16:59:14'),
(44, 7, 'string', '_method', 'PATCH', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(45, 7, 'string', '_token', '0y4LUFjzEnxbQfKmecD6HvcYIe2NvnBi06x8PLWL', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(46, 7, 'string', 'id', '7', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(47, 7, 'string', 'edit', '1', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(48, 7, 'NULL', 'detail_id', NULL, NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(49, 7, 'string', 'user_id', '1', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(50, 7, 'NULL', 'middle_name', NULL, NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(51, 7, 'string', 'email', 'janae.corwin@example.org', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(52, 7, 'string', 'phone_code', '+93', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(53, 7, 'string', 'gender', '0', NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(54, 7, 'NULL', 'econtact', NULL, NULL, '2022-06-06 12:46:56', '2022-06-06 12:46:56'),
(55, 9, 'string', '_token', '0y4LUFjzEnxbQfKmecD6HvcYIe2NvnBi06x8PLWL', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(56, 9, 'integer', 'is_active', '1', NULL, '2022-06-06 13:11:41', '2022-06-07 08:18:31'),
(57, 9, 'string', 'is_available', '0', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(58, 9, 'string', 'first_name', 'Madeline', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(59, 9, 'string', 'middle_name', 'Melanie Holloway', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(60, 9, 'string', 'last_name', 'William', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(61, 9, 'string', 'vehicle_id', '2', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(62, 9, 'string', 'address', 'Qui quo dolorem offi', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(63, 9, 'string', 'email', 'madeline@driver.com', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(64, 9, 'string', 'phone_code', '+977', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(65, 9, 'string', 'phone', '648', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(66, 9, 'string', 'emp_id', 'Minim quibusdam volu', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(67, 9, 'string', 'contract_number', '868', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(68, 9, 'string', 'license_number', '923', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(69, 9, 'string', 'issue_date', '2022-05-31', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(70, 9, 'string', 'exp_date', '2024-11-30', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(71, 9, 'string', 'start_date', '2021-11-28', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(72, 9, 'string', 'end_date', '2024-02-29', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(73, 9, 'string', 'password', 'password', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(74, 9, 'string', 'gender', '0', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(75, 9, 'string', 'econtact', 'Aut ut esse sed tene', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(76, 2, 'string', 'first_name', 'User', NULL, '2022-06-06 13:18:40', '2022-06-06 13:18:40'),
(77, 2, 'string', 'last_name', 'One', NULL, '2022-06-06 13:18:40', '2022-06-06 13:18:40'),
(78, 5, 'integer', 'login_status', '1', NULL, '2022-06-06 13:30:54', '2022-06-06 13:30:54'),
(79, 6, 'integer', 'is_active', '1', NULL, '2022-06-06 14:06:03', '2022-06-06 14:06:03'),
(80, 7, 'integer', 'is_active', '1', NULL, '2022-06-07 08:18:35', '2022-06-07 08:18:35'),
(81, 9, 'integer', 'login_status', '0', NULL, '2022-06-14 11:54:48', '2022-06-14 11:54:48'),
(82, 4, 'integer', 'login_status', '0', NULL, '2022-06-14 11:55:33', '2022-06-14 16:17:23'),
(83, 1, 'integer', 'login_status', '0', NULL, '2022-06-15 03:45:06', '2022-06-15 09:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `make_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `lic_exp_date` date DEFAULT NULL,
  `reg_exp_date` date DEFAULT NULL,
  `vehicle_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `engine_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horse_power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_plate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mileage` int(11) DEFAULT NULL,
  `in_service` tinyint(4) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `int_mileage` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `make_id`, `model_id`, `color_id`, `year`, `group_id`, `lic_exp_date`, `reg_exp_date`, `vehicle_image`, `engine_type`, `horse_power`, `vin`, `license_plate`, `mileage`, `in_service`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `int_mileage`, `type_id`) VALUES
(1, 1, 1, 1, '2015', 1, '2023-01-29', '2022-10-21', 'car1.jpeg', 'Petrol', '190', '2342342', '9191bh', 45464, 1, 1, '2022-05-24 13:26:03', '2022-06-06 14:16:38', NULL, 50, 3),
(2, 2, 2, 2, '2012', 1, '2023-05-24', '2022-08-22', 'car2.jpeg', 'Petrol', '150', '124578', '1245ab', 45464, 1, 1, '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, 40, 3),
(3, 2, 2, 2, '2021', 1, '2025-03-29', '2022-06-15', NULL, 'Petrol', '60', 'Sint aliquip vel obc', 'Ipsa culpa autem qu', NULL, 1, 1, '2022-06-03 16:57:45', '2022-06-03 16:59:20', NULL, 90, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_meta`
--

CREATE TABLE `vehicles_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles_meta`
--

INSERT INTO `vehicles_meta` (`id`, `vehicle_id`, `type`, `key`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'integer', 'driver_id', '6', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(2, 1, 'string', 'average', '35.45', NULL, '2022-05-24 13:26:03', '2022-06-06 14:05:33'),
(3, 1, 'string', 'ins_number', '70651', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(4, 1, 'string', 'ins_exp_date', '2022-11-30', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(5, 2, 'double', 'average', '42.5', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(6, 2, 'string', 'ins_number', '36945', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(7, 2, 'string', 'ins_exp_date', '2022-11-30', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03'),
(8, 3, 'string', 'ins_number', '', NULL, '2022-06-03 16:57:45', '2022-06-03 16:57:45'),
(9, 3, 'string', 'ins_exp_date', '', NULL, '2022-06-03 16:57:45', '2022-06-03 16:57:45'),
(10, 3, 'string', 'documents', '', NULL, '2022-06-03 16:57:45', '2022-06-03 16:57:45'),
(11, 3, 'string', 'udf', 'N;', NULL, '2022-06-03 16:57:45', '2022-06-03 16:57:45'),
(12, 3, 'string', 'average', '52', NULL, '2022-06-03 16:57:45', '2022-06-03 16:57:45'),
(13, 3, 'string', 'purchase_info', 'a:2:{i:0;a:2:{s:8:\"exp_name\";s:1:\"2\";s:10:\"exp_amount\";s:8:\"21345678\";}i:1;a:2:{s:8:\"exp_name\";s:1:\"1\";s:10:\"exp_amount\";s:8:\"34567890\";}}', NULL, '2022-06-03 16:58:54', '2022-06-03 16:59:04'),
(14, 3, 'string', 'driver_id', '7', NULL, '2022-06-03 16:59:11', '2022-06-03 16:59:11'),
(15, 2, 'integer', 'driver_id', '9', NULL, '2022-06-06 13:11:41', '2022-06-06 13:11:41'),
(16, 1, 'string', 'udf', 'N;', NULL, '2022-06-06 14:05:33', '2022-06-06 14:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_colors`
--

CREATE TABLE `vehicle_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_colors`
--

INSERT INTO `vehicle_colors` (`id`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'red', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(2, 'white', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_group`
--

CREATE TABLE `vehicle_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_group`
--

INSERT INTO `vehicle_group` (`id`, `user_id`, `name`, `description`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Default', 'Default vehicle group', 'Default vehicle group', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_make`
--

CREATE TABLE `vehicle_make` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_make`
--

INSERT INTO `vehicle_make` (`id`, `make`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tata', NULL, NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(2, 'Maruti', NULL, NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `make_id` int(11) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `make_id`, `model`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nano', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02'),
(2, 2, 'Suzuki', NULL, '2022-05-24 13:26:02', '2022-05-24 13:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_review`
--

CREATE TABLE `vehicle_review` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reg_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kms_outgoing` int(11) DEFAULT NULL,
  `kms_incoming` int(11) DEFAULT NULL,
  `fuel_level_out` int(11) DEFAULT NULL,
  `fuel_level_in` int(11) DEFAULT NULL,
  `datetime_outgoing` datetime DEFAULT NULL,
  `datetime_incoming` datetime DEFAULT NULL,
  `petrol_card` text COLLATE utf8_unicode_ci,
  `lights` text COLLATE utf8_unicode_ci,
  `invertor` text COLLATE utf8_unicode_ci,
  `car_mats` text COLLATE utf8_unicode_ci,
  `int_damage` text COLLATE utf8_unicode_ci,
  `int_lights` text COLLATE utf8_unicode_ci,
  `ext_car` text COLLATE utf8_unicode_ci,
  `tyre` text COLLATE utf8_unicode_ci,
  `ladder` text COLLATE utf8_unicode_ci,
  `leed` text COLLATE utf8_unicode_ci,
  `power_tool` text COLLATE utf8_unicode_ci,
  `ac` text COLLATE utf8_unicode_ci,
  `head_light` text COLLATE utf8_unicode_ci,
  `lock` text COLLATE utf8_unicode_ci,
  `windows` text COLLATE utf8_unicode_ci,
  `condition` text COLLATE utf8_unicode_ci,
  `oil_chk` text COLLATE utf8_unicode_ci,
  `suspension` text COLLATE utf8_unicode_ci,
  `tool_box` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `udf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicletype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isenable` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `vehicletype`, `displayname`, `icon`, `isenable`, `seats`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hatchback', 'Hatchback', NULL, 1, 4, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(2, 'Sedan', 'Sedan', NULL, 1, 4, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(3, 'Mini van', 'Mini van', NULL, 1, 7, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(4, 'Saloon', 'Saloon', NULL, 1, 4, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(5, 'SUV', 'SUV', NULL, 1, 4, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(6, 'Bus', 'Bus', NULL, 1, 40, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL),
(7, 'Truck', 'Truck', NULL, 1, 3, '2022-05-24 13:26:02', '2022-05-24 13:26:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `udf` text COLLATE utf8_unicode_ci,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `name`, `photo`, `type`, `website`, `custom_type`, `note`, `phone`, `address1`, `address2`, `city`, `province`, `email`, `deleted_at`, `created_at`, `updated_at`, `udf`, `country`, `postal_code`) VALUES
(1, 1, 'Prof. Asia Doyle I', NULL, 'Machinaries', 'http://www.example.com', NULL, 'default vendor', '03741832157729', '404 Sawayn Gateway\nKerlukebury, OR 89678-9590', NULL, 'Port Dillon', NULL, 'beer.ron@example.org', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, NULL, NULL),
(2, 1, 'Velma Beer', NULL, 'Parts', 'http://www.example.com', NULL, 'default vendor', '07884889635280', '678 Connie Crossroad\nLake Winnifred, AL 98368', NULL, 'Port Newton', NULL, 'dortha.walker@example.org', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_orders`
--

CREATE TABLE `work_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `required_by` date DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meter` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mechanic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `work_orders`
--

INSERT INTO `work_orders` (`id`, `user_id`, `created_on`, `required_by`, `vehicle_id`, `vendor_id`, `price`, `status`, `description`, `meter`, `note`, `deleted_at`, `created_at`, `updated_at`, `mechanic_id`) VALUES
(1, 1, '2022-05-24', '2022-05-29', 2, 1, 2000.00, 'Completed', 'Sample work order', 1041, 'sample work order', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03', 1),
(2, 1, '2022-05-24', '2022-05-29', 2, 2, 3000.00, 'Completed', 'Sample work order', 2774, 'sample work order', NULL, '2022-05-24 13:26:03', '2022-05-24 13:26:03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `work_order_logs`
--

CREATE TABLE `work_order_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `required_by` date DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meter` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parts_price` double DEFAULT '0',
  `mechanic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_index` (`customer_id`);

--
-- Indexes for table `api_settings`
--
ALTER TABLE `api_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_settings_key_name_index` (`key_name`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_customer_id_driver_id_vehicle_id_user_id_index` (`customer_id`,`driver_id`,`vehicle_id`,`user_id`),
  ADD KEY `bookings_payment_status_index` (`payment`,`status`);

--
-- Indexes for table `bookings_meta`
--
ALTER TABLE `bookings_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_meta_booking_id_index` (`booking_id`),
  ADD KEY `bookings_meta_key_index` (`key`);

--
-- Indexes for table `booking_income`
--
ALTER TABLE `booking_income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_income_booking_id_income_id_index` (`booking_id`,`income_id`);

--
-- Indexes for table `booking_payments`
--
ALTER TABLE `booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_quotation`
--
ALTER TABLE `booking_quotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_quotation_customer_id_user_id_vehicle_id_driver_id_index` (`customer_id`,`user_id`,`vehicle_id`,`driver_id`),
  ADD KEY `booking_quotation_status_payment_index` (`status`,`payment`);

--
-- Indexes for table `company_services`
--
ALTER TABLE `company_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_logs`
--
ALTER TABLE `driver_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_logs_driver_id_vehicle_id_index` (`driver_id`,`vehicle_id`);

--
-- Indexes for table `driver_vehicle`
--
ALTER TABLE `driver_vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_vehicle_driver_id_vehicle_id_index` (`driver_id`,`vehicle_id`);

--
-- Indexes for table `email_content`
--
ALTER TABLE `email_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_content_key_index` (`key`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_vehicle_id_exp_id_user_id_expense_type_index` (`vehicle_id`,`exp_id`,`user_id`,`expense_type`),
  ADD KEY `expense_type_index` (`type`),
  ADD KEY `expense_date_index` (`date`);

--
-- Indexes for table `expense_cat`
--
ALTER TABLE `expense_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_cat_name_type_index` (`name`,`type`);

--
-- Indexes for table `fare_settings`
--
ALTER TABLE `fare_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fare_settings_key_name_index` (`key_name`),
  ADD KEY `fare_settings_type_id_index` (`type_id`);

--
-- Indexes for table `frontend`
--
ALTER TABLE `frontend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_key_name_index` (`key_name`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fuel_vehicle_id_user_id_index` (`vehicle_id`,`user_id`),
  ADD KEY `fuel_date_index` (`date`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_vehicle_id_income_id_user_id_income_cat_index` (`vehicle_id`,`income_id`,`user_id`,`income_cat`),
  ADD KEY `income_date_index` (`date`);

--
-- Indexes for table `income_cat`
--
ALTER TABLE `income_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_cat_name_type_index` (`name`,`type`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_vehicle_id_customer_id_index` (`vehicle_id`,`customer_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  ADD KEY `notifications_type_index` (`type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_category_id_user_id_availability_index` (`category_id`,`user_id`,`availability`);

--
-- Indexes for table `parts_category`
--
ALTER TABLE `parts_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts_used`
--
ALTER TABLE `parts_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_used_part_id_work_id_index` (`part_id`,`work_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_settings_name_unique` (`name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notification`
--
ALTER TABLE `push_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notification_user_id_index` (`user_id`),
  ADD KEY `push_notification_user_type_index` (`user_type`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_booking_id_driver_id_index` (`user_id`,`booking_id`,`driver_id`);

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
-- Indexes for table `service_items`
--
ALTER TABLE `service_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_reminder`
--
ALTER TABLE `service_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_reminder_vehicle_id_service_id_index` (`vehicle_id`,`service_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio_settings`
--
ALTER TABLE `twilio_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `twilio_settings_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_type_index` (`user_type`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_meta_user_id_index` (`user_id`),
  ADD KEY `users_meta_key_index` (`key`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_group_id_type_id_user_id_in_service_index` (`group_id`,`type_id`,`user_id`,`in_service`),
  ADD KEY `vehicles_lic_exp_date_reg_exp_date_index` (`lic_exp_date`,`reg_exp_date`),
  ADD KEY `vehicles_license_plate_index` (`license_plate`);

--
-- Indexes for table `vehicles_meta`
--
ALTER TABLE `vehicles_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_meta_vehicle_id_index` (`vehicle_id`),
  ADD KEY `vehicles_meta_key_index` (`key`);

--
-- Indexes for table `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_group`
--
ALTER TABLE `vehicle_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_review`
--
ALTER TABLE `vehicle_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_review_vehicle_id_user_id_index` (`vehicle_id`,`user_id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendors_type_index` (`type`);

--
-- Indexes for table `work_orders`
--
ALTER TABLE `work_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_orders_vehicle_id_vendor_id_index` (`vehicle_id`,`vendor_id`),
  ADD KEY `work_orders_status_index` (`status`);

--
-- Indexes for table `work_order_logs`
--
ALTER TABLE `work_order_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_order_logs_vehicle_id_vendor_id_index` (`vehicle_id`,`vendor_id`),
  ADD KEY `work_order_logs_status_index` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `api_settings`
--
ALTER TABLE `api_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bookings_meta`
--
ALTER TABLE `bookings_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `booking_income`
--
ALTER TABLE `booking_income`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_payments`
--
ALTER TABLE `booking_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_quotation`
--
ALTER TABLE `booking_quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_services`
--
ALTER TABLE `company_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver_logs`
--
ALTER TABLE `driver_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver_vehicle`
--
ALTER TABLE `driver_vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_content`
--
ALTER TABLE `email_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expense_cat`
--
ALTER TABLE `expense_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fare_settings`
--
ALTER TABLE `fare_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `frontend`
--
ALTER TABLE `frontend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `income_cat`
--
ALTER TABLE `income_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parts_category`
--
ALTER TABLE `parts_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parts_used`
--
ALTER TABLE `parts_used`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `push_notification`
--
ALTER TABLE `push_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_items`
--
ALTER TABLE `service_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_reminder`
--
ALTER TABLE `service_reminder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `twilio_settings`
--
ALTER TABLE `twilio_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles_meta`
--
ALTER TABLE `vehicles_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vehicle_colors`
--
ALTER TABLE `vehicle_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_group`
--
ALTER TABLE `vehicle_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_review`
--
ALTER TABLE `vehicle_review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_orders`
--
ALTER TABLE `work_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_order_logs`
--
ALTER TABLE `work_order_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
