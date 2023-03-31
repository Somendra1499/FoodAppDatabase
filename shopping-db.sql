-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 10:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Food Category', 'fa-certificate', '/food-types', '*', '2021-11-08 04:58:13', '2022-01-01 00:16:59'),
(10, 0, 0, 'Users', 'fa-bars', '/users', '*', '2021-11-08 05:38:59', '2021-11-08 05:38:59'),
(11, 0, 0, 'Food', 'fa-beer', '/foods', '*', '2021-11-17 01:37:06', '2022-01-01 00:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '180.175.17.235', '[]', '2021-11-08 03:42:53', '2021-11-08 03:42:53'),
(2, 1, 'admin', 'GET', '101.85.201.147', '[]', '2021-11-08 04:57:07', '2021-11-08 04:57:07'),
(3, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 04:57:10', '2021-11-08 04:57:10'),
(4, 1, 'admin/auth/menu', 'POST', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-bars\",\"uri\":\"\\/article-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AMUYbLptKc2cKTgaD72XLJQOd17JLWL6PdTMmW79\"}', '2021-11-08 04:58:13', '2021-11-08 04:58:13'),
(5, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:13', '2021-11-08 04:58:13'),
(6, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:18', '2021-11-08 04:58:18'),
(7, 1, 'admin/auth/menu', 'POST', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Artcles\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AMUYbLptKc2cKTgaD72XLJQOd17JLWL6PdTMmW79\"}', '2021-11-08 04:58:55', '2021-11-08 04:58:55'),
(8, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:55', '2021-11-08 04:58:55'),
(9, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 04:58:58', '2021-11-08 04:58:58'),
(10, 1, 'admin/articles', 'GET', '101.85.201.147', '[]', '2021-11-08 05:02:22', '2021-11-08 05:02:22'),
(11, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:02:31', '2021-11-08 05:02:31'),
(12, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:02:46', '2021-11-08 05:02:46'),
(13, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:02:50', '2021-11-08 05:02:50'),
(14, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:06:27', '2021-11-08 05:06:27'),
(15, 1, 'admin/auth/logout', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:32', '2021-11-08 05:06:32'),
(16, 1, 'admin', 'GET', '101.85.201.147', '[]', '2021-11-08 05:06:36', '2021-11-08 05:06:36'),
(17, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:38', '2021-11-08 05:06:38'),
(18, 1, 'admin/article-types', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:40', '2021-11-08 05:06:40'),
(19, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:42', '2021-11-08 05:06:42'),
(20, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:06:43', '2021-11-08 05:06:43'),
(21, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:12:09', '2021-11-08 05:12:09'),
(22, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:13:21', '2021-11-08 05:13:21'),
(23, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:14:03', '2021-11-08 05:14:03'),
(24, 1, 'admin/article-types', 'GET', '101.85.201.147', '[]', '2021-11-08 05:14:10', '2021-11-08 05:14:10'),
(25, 1, 'admin/article-types/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:14:13', '2021-11-08 05:14:13'),
(26, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:14:18', '2021-11-08 05:14:18'),
(27, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:14:19', '2021-11-08 05:14:19'),
(28, 1, 'admin/article-types', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:15:02', '2021-11-08 05:15:02'),
(29, 1, 'admin/articles', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:15:05', '2021-11-08 05:15:05'),
(30, 1, 'admin/articles/create', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:15:08', '2021-11-08 05:15:08'),
(31, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:15:45', '2021-11-08 05:15:45'),
(32, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:19:56', '2021-11-08 05:19:56'),
(33, 1, 'admin/articles/create', 'GET', '101.85.201.147', '[]', '2021-11-08 05:22:13', '2021-11-08 05:22:13'),
(34, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:07', '2021-11-08 05:38:07'),
(35, 1, 'admin/auth/menu/8/edit', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:12', '2021-11-08 05:38:12'),
(36, 1, 'admin/auth/menu/8', 'PUT', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/article-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-11-08 05:38:24', '2021-11-08 05:38:24'),
(37, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:24', '2021-11-08 05:38:24'),
(38, 1, 'admin/auth/menu/9/edit', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:26', '2021-11-08 05:38:26'),
(39, 1, 'admin/auth/menu/9', 'PUT', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Articles\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-11-08 05:38:32', '2021-11-08 05:38:32'),
(40, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:32', '2021-11-08 05:38:32'),
(41, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:35', '2021-11-08 05:38:35'),
(42, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '{\"_pjax\":\"#pjax-container\"}', '2021-11-08 05:38:40', '2021-11-08 05:38:40'),
(43, 1, 'admin/auth/menu', 'POST', '101.85.201.147', '{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\"}', '2021-11-08 05:38:59', '2021-11-08 05:38:59'),
(44, 1, 'admin/auth/menu', 'GET', '101.85.201.147', '[]', '2021-11-08 05:38:59', '2021-11-08 05:38:59'),
(45, 1, 'admin/articles', 'GET', '180.175.17.235', '[]', '2021-11-17 01:36:07', '2021-11-17 01:36:07'),
(46, 1, 'admin/auth/roles', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:36:12', '2021-11-17 01:36:12'),
(47, 1, 'admin/auth/menu', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:36:14', '2021-11-17 01:36:14'),
(48, 1, 'admin/auth/menu', 'POST', '180.175.17.235', '{\"parent_id\":\"0\",\"title\":\"Places\",\"icon\":\"fa-map-marker\",\"uri\":\"\\/places\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 01:37:06', '2021-11-17 01:37:06'),
(49, 1, 'admin/auth/menu', 'GET', '180.175.17.235', '[]', '2021-11-17 01:37:06', '2021-11-17 01:37:06'),
(50, 1, 'admin/auth/menu', 'GET', '180.175.17.235', '[]', '2021-11-17 01:37:08', '2021-11-17 01:37:08'),
(51, 1, 'admin/places', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:37:10', '2021-11-17 01:37:10'),
(52, 1, 'admin/places', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:45:32', '2021-11-17 01:45:32'),
(53, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 01:45:35', '2021-11-17 01:45:35'),
(54, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 01:46:48', '2021-11-17 01:46:48'),
(55, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 01:46:50', '2021-11-17 01:46:50'),
(56, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:04:35', '2021-11-17 02:04:35'),
(57, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:04:35', '2021-11-17 02:04:35'),
(58, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:05:28', '2021-11-17 02:05:28'),
(59, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:05:28', '2021-11-17 02:05:28'),
(60, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:06:38', '2021-11-17 02:06:38'),
(61, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:06:38', '2021-11-17 02:06:38'),
(62, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:07:49', '2021-11-17 02:07:49'),
(63, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:07:49', '2021-11-17 02:07:49'),
(64, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":\"5\",\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:08:45', '2021-11-17 02:08:45'),
(65, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:08:45', '2021-11-17 02:08:45'),
(66, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":\"5\",\"selected_people\":\"5\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}', '2021-11-17 02:09:08', '2021-11-17 02:09:08'),
(67, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:09:09', '2021-11-17 02:09:09'),
(68, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:09:15', '2021-11-17 02:09:15'),
(69, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br style=\\\"box-sizing: border-box; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\\\"\\/><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This region is also frequented by a number of ancient glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:10:43', '2021-11-17 02:10:43'),
(70, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:10:44', '2021-11-17 02:10:44'),
(71, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:10:55', '2021-11-17 02:10:55'),
(72, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:11:20', '2021-11-17 02:11:20'),
(73, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:12:01', '2021-11-17 02:12:01'),
(74, 1, 'admin/places/1/edit', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:12:32', '2021-11-17 02:12:32'),
(75, 1, 'admin/articles', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:06', '2021-11-17 02:14:06'),
(76, 1, 'admin/article-types', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:08', '2021-11-17 02:14:08'),
(77, 1, 'admin/users', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:10', '2021-11-17 02:14:10'),
(78, 1, 'admin/articles', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:14:11', '2021-11-17 02:14:11'),
(79, 1, 'admin/places', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:15:36', '2021-11-17 02:15:36'),
(80, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:15:38', '2021-11-17 02:15:38'),
(81, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"total_people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promising epitome of ecstatic blue waters. This lake is fed from the glaciers and is gifted its startling blue color from the silicon deposits from the melting glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:16:31', '2021-11-17 02:16:31'),
(82, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:16:31', '2021-11-17 02:16:31'),
(83, 1, 'admin/places/create', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:17:49', '2021-11-17 02:17:49'),
(84, 1, 'admin/places/create', 'GET', '180.175.17.235', '[]', '2021-11-17 02:17:52', '2021-11-17 02:17:52'),
(85, 1, 'admin/places', 'POST', '180.175.17.235', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto. This region makes the center of the La Cloche Mountain Range.<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:18:46', '2021-11-17 02:18:46'),
(86, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:18:46', '2021-11-17 02:18:46'),
(87, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:20:22', '2021-11-17 02:20:22'),
(88, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:22:56', '2021-11-17 02:22:56'),
(89, 1, 'admin/places/1/edit', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:23:01', '2021-11-17 02:23:01'),
(90, 1, 'admin/places/1', 'PUT', '180.175.17.235', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"total_people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:23:07', '2021-11-17 02:23:07'),
(91, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:23:07', '2021-11-17 02:23:07'),
(92, 1, 'admin/places/2/edit', 'GET', '180.175.17.235', '{\"_pjax\":\"#pjax-container\"}', '2021-11-17 02:23:10', '2021-11-17 02:23:10'),
(93, 1, 'admin/places/2', 'PUT', '180.175.17.235', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br style=\\\"box-sizing: border-box; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\\\"\\/><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This region is also frequented by a number of ancient glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-17 02:23:18', '2021-11-17 02:23:18'),
(94, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 02:23:18', '2021-11-17 02:23:18'),
(95, 1, 'admin/places', 'GET', '180.175.17.235', '[]', '2021-11-17 03:12:02', '2021-11-17 03:12:02'),
(96, 1, 'admin/articles', 'GET', '116.224.235.15', '[]', '2021-11-19 05:37:22', '2021-11-19 05:37:22'),
(97, 1, 'admin/places', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:37:27', '2021-11-19 05:37:27'),
(98, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:37:31', '2021-11-19 05:37:31'),
(99, 1, 'admin/places/1', 'PUT', '116.224.235.15', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"total_people\":null,\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:37:37', '2021-11-19 05:37:37'),
(100, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '[]', '2021-11-19 05:37:37', '2021-11-19 05:37:37'),
(101, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:12', '2021-11-19 05:39:12'),
(102, 1, 'admin/places/1', 'PUT', '116.224.235.15', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\"}', '2021-11-19 05:39:17', '2021-11-19 05:39:17'),
(103, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:17', '2021-11-19 05:39:17'),
(104, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:20', '2021-11-19 05:39:20'),
(105, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:28', '2021-11-19 05:39:28'),
(106, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:28', '2021-11-19 05:39:28'),
(107, 1, 'admin/places/3/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:31', '2021-11-19 05:39:31'),
(108, 1, 'admin/places/3', 'PUT', '116.224.235.15', '{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promising epitome of ecstatic blue waters.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:37', '2021-11-19 05:39:37'),
(109, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:37', '2021-11-19 05:39:37'),
(110, 1, 'admin/places/4/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:39', '2021-11-19 05:39:39'),
(111, 1, 'admin/places/4', 'PUT', '116.224.235.15', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto. This region makes the center of the La Cloche Mountain Range.<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:42', '2021-11-19 05:39:42'),
(112, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:42', '2021-11-19 05:39:42'),
(113, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:48', '2021-11-19 05:39:48'),
(114, 1, 'admin/places/1', 'PUT', '116.224.235.15', '{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:39:55', '2021-11-19 05:39:55'),
(115, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:39:56', '2021-11-19 05:39:56'),
(116, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:39:57', '2021-11-19 05:39:57'),
(117, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:40:05', '2021-11-19 05:40:05'),
(118, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:40:05', '2021-11-19 05:40:05'),
(119, 1, 'admin/places/3/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:40:30', '2021-11-19 05:40:30'),
(120, 1, 'admin/places/3', 'PUT', '116.224.235.15', '{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:40:36', '2021-11-19 05:40:36'),
(121, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:40:37', '2021-11-19 05:40:37'),
(122, 1, 'admin/places/4/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 05:40:39', '2021-11-19 05:40:39'),
(123, 1, 'admin/places/4', 'PUT', '116.224.235.15', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 05:40:44', '2021-11-19 05:40:44'),
(124, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 05:40:45', '2021-11-19 05:40:45'),
(125, 1, 'admin/articles', 'GET', '116.224.235.15', '[]', '2021-11-19 06:16:18', '2021-11-19 06:16:18'),
(126, 1, 'admin/places', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 06:16:20', '2021-11-19 06:16:20'),
(127, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 06:16:25', '2021-11-19 06:16:25'),
(128, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields , Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 06:16:34', '2021-11-19 06:16:34'),
(129, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 06:16:34', '2021-11-19 06:16:34'),
(130, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 06:17:59', '2021-11-19 06:17:59'),
(131, 1, 'admin/places/2', 'PUT', '116.224.235.15', '{\"name\":\"Icefields\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-11-19 06:18:09', '2021-11-19 06:18:09'),
(132, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 06:18:09', '2021-11-19 06:18:09'),
(133, 1, 'admin/places/1/edit', 'GET', '116.224.235.15', '[]', '2021-11-19 06:59:35', '2021-11-19 06:59:35'),
(134, 1, 'admin/places', 'GET', '116.224.235.15', '[]', '2021-11-19 07:00:24', '2021-11-19 07:00:24'),
(135, 1, 'admin/places/2/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 07:00:27', '2021-11-19 07:00:27'),
(136, 1, 'admin/places', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 07:00:52', '2021-11-19 07:00:52'),
(137, 1, 'admin/places/3/edit', 'GET', '116.224.235.15', '{\"_pjax\":\"#pjax-container\"}', '2021-11-19 07:00:55', '2021-11-19 07:00:55'),
(138, 1, 'admin', 'GET', '82.205.1.223', '[]', '2021-12-08 03:52:01', '2021-12-08 03:52:01'),
(139, 1, 'admin/article-types', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:15', '2021-12-08 03:52:15'),
(140, 1, 'admin/articles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:17', '2021-12-08 03:52:17'),
(141, 1, 'admin/places', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:26', '2021-12-08 03:52:26'),
(142, 1, 'admin/auth/users', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:34', '2021-12-08 03:52:34'),
(143, 1, 'admin/auth/setting', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:50', '2021-12-08 03:52:50'),
(144, 1, 'admin/article-types', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:52:58', '2021-12-08 03:52:58'),
(145, 1, 'admin/articles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:00', '2021-12-08 03:53:00'),
(146, 1, 'admin/articles/create', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:03', '2021-12-08 03:53:03'),
(147, 1, 'admin/auth/permissions', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:08', '2021-12-08 03:53:08'),
(148, 1, 'admin/auth/menu', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:25', '2021-12-08 03:53:25'),
(149, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 03:53:33', '2021-12-08 03:53:33'),
(150, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2021-12-08 04:26:23', '2021-12-08 04:26:23'),
(151, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:29', '2021-12-08 04:26:29'),
(152, 1, 'admin/auth/roles', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:33', '2021-12-08 04:26:33'),
(153, 1, 'admin/article-types', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:35', '2021-12-08 04:26:35'),
(154, 1, 'admin/places', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:39', '2021-12-08 04:26:39'),
(155, 1, 'admin/places/create', 'GET', '82.205.1.223', '{\"_pjax\":\"#pjax-container\"}', '2021-12-08 04:26:44', '2021-12-08 04:26:44'),
(156, 1, 'admin/places', 'POST', '82.205.1.223', '{\"name\":\"Gaza\",\"price\":\"10\",\"location\":\"Palestine, Gaza\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p>Dome of the rock the beautiful and amazing human made architectural.<\\/p>\",\"_token\":\"jG1U1iWfeEo0sYzdJD2FlJzECW5vTYcBVk4Ka7Zl\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}', '2021-12-08 04:29:53', '2021-12-08 04:29:53'),
(157, 1, 'admin/places', 'GET', '82.205.1.223', '[]', '2021-12-08 04:29:54', '2021-12-08 04:29:54'),
(158, 1, 'admin/places', 'GET', '82.205.25.170', '[]', '2021-12-08 15:01:40', '2021-12-08 15:01:40'),
(159, 1, 'admin/articles', 'GET', '180.175.17.8', '[]', '2021-12-11 21:50:22', '2021-12-11 21:50:22'),
(160, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-11 21:50:24', '2021-12-11 21:50:24'),
(161, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-11 21:51:03', '2021-12-11 21:51:03'),
(162, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '[]', '2021-12-13 23:19:35', '2021-12-13 23:19:35'),
(163, 1, 'admin/articles', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-14 18:27:40', '2021-12-14 18:27:40'),
(164, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-14 18:27:43', '2021-12-14 18:27:43'),
(165, 1, 'admin/articles', 'GET', '223.104.212.153', '[]', '2021-12-17 22:21:45', '2021-12-17 22:21:45'),
(166, 1, 'admin/auth/users', 'GET', '223.104.212.153', '{\"_pjax\":\"#pjax-container\"}', '2021-12-17 22:21:52', '2021-12-17 22:21:52'),
(167, 1, 'admin/auth/users/1/edit', 'GET', '223.104.212.153', '{\"_pjax\":\"#pjax-container\"}', '2021-12-17 22:21:56', '2021-12-17 22:21:56'),
(168, 1, 'admin/auth/users/1', 'PUT', '223.104.212.153', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"admin1234\",\"password_confirmation\":\"admin1234\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"lexAFNMUDD87ySnp2CrCWmWNoLMnqAZFYxRhtFP5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/users\"}', '2021-12-17 22:22:14', '2021-12-17 22:22:14'),
(169, 1, 'admin/auth/users', 'GET', '223.104.212.153', '[]', '2021-12-17 22:22:14', '2021-12-17 22:22:14'),
(170, 1, 'admin/auth/logout', 'GET', '223.104.212.153', '{\"_pjax\":\"#pjax-container\"}', '2021-12-17 22:25:35', '2021-12-17 22:25:35'),
(171, 1, 'admin', 'GET', '223.104.212.153', '[]', '2021-12-17 22:25:52', '2021-12-17 22:25:52'),
(172, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-22 22:21:37', '2021-12-22 22:21:37'),
(173, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 22:32:01', '2021-12-22 22:32:01'),
(174, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 22:32:11', '2021-12-22 22:32:11'),
(175, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"British Columbia\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 22:32:39', '2021-12-22 22:32:39'),
(176, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:32:39', '2021-12-22 22:32:39'),
(177, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:33:54', '2021-12-22 22:33:54'),
(178, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:34:11', '2021-12-22 22:34:11'),
(179, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 22:58:48', '2021-12-22 22:58:48'),
(180, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"British Columbia\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 22:59:33', '2021-12-22 22:59:33'),
(181, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 22:59:33', '2021-12-22 22:59:33'),
(182, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:03:14', '2021-12-22 23:03:14'),
(183, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"British Columbia\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:03:35', '2021-12-22 23:03:35'),
(184, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:03:35', '2021-12-22 23:03:35'),
(185, 1, 'admin/places/2/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:03:38', '2021-12-22 23:03:38'),
(186, 1, 'admin/places/2', 'PUT', '180.175.17.8', '{\"name\":\"Sweet Dessert\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:04:26', '2021-12-22 23:04:26'),
(187, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:04:26', '2021-12-22 23:04:26'),
(188, 1, 'admin/places/3/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:04:31', '2021-12-22 23:04:31');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(189, 1, 'admin/places/3', 'PUT', '180.175.17.8', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Whether it\\u2019s lunch or dinner, these side dish recipes are fit for the occasion. Pick out a couple and give them a try!<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">If you\\u2019re looking for something savory, you\\u2019ve come to the right place.<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">These side dishes are flavored with the best seasonings and spices China is known for.<\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Block out some time to spend in the kitchen and call a couple of close friends. You might need some help to finish these off!<\\/p><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:05:53', '2021-12-22 23:05:53'),
(190, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:05:53', '2021-12-22 23:05:53'),
(191, 1, 'admin/places/4/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:06:10', '2021-12-22 23:06:10'),
(192, 1, 'admin/places/4', 'PUT', '180.175.17.8', '{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><a href=\\\"https:\\/\\/www.thespruceeats.com\\/introduction-to-cassava-yuca-2138084\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Yuca<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is a starchy root vegetable popular in Hispanic, Latin, and Caribbean cuisine. Used as an accompaniment for grilled meat or saucy preparations, yuca, also known as&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/introduction-to-cassava-yuca-2138084\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">cassava<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">, can play the part of potatoes in pretty much any dish you can think of. By simply peeling, boiling, and mashing yuca, you&#39;ll have a delicious dish on your table that can serve as a side to stews or&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/marinated-rump-roast-3058682\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"3\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">roasts<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;beautifully.<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:07:49', '2021-12-22 23:07:49'),
(193, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:07:49', '2021-12-22 23:07:49'),
(194, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:09:55', '2021-12-22 23:09:55'),
(195, 1, 'admin/places/5', 'PUT', '180.175.17.8', '{\"name\":\"Gaza\",\"price\":\"10\",\"location\":\"Palestine, Gaza\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled with&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/spanish-tomato-sauce-sofrito-sauce-recipe-3083539\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">sofrito<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">, or fried with a sprinkle of salt,&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/cassava-yuca-recipes-2137742\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">yuca<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is a wonderful addition to your ingredient list. It&#39;s affordable and widely available, so you can find it in most supermarkets and Latin stores.<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:10:36', '2021-12-22 23:10:36'),
(196, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:10:37', '2021-12-22 23:10:37'),
(197, 1, 'admin/places/5/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:11:59', '2021-12-22 23:11:59'),
(198, 1, 'admin/places/5', 'PUT', '180.175.17.8', '{\"name\":\"Creamed Yuca (Cassava)\",\"price\":\"10\",\"location\":\"China\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled with&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/spanish-tomato-sauce-sofrito-sauce-recipe-3083539\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">sofrito<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">, or fried with a sprinkle of salt,&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/cassava-yuca-recipes-2137742\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">yuca<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is a wonderful addition to your ingredient list. It&#39;s affordable and widely available, so you can find it in most supermarkets and Latin stores.<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:12:13', '2021-12-22 23:12:13'),
(199, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:12:13', '2021-12-22 23:12:13'),
(200, 1, 'admin/places/4/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:14:19', '2021-12-22 23:14:19'),
(201, 1, 'admin/places/4', 'PUT', '180.175.17.8', '{\"name\":\"Bitter Orange Marinade\",\"price\":\"33\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p id=\\\"mntl-sc-block_1-0\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges are often used in Caribbean cuisine as a breakdown agent in marinades. Sometimes called sour oranges, they add a unique citrus flavor to any kind of meat you might want to prepare. This marinade recipe goes well with pork, and I&#39;ve also used it with chicken with great results.<\\/p><p id=\\\"mntl-sc-block_1-0-2\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges grow on trees\\u2014specifically the&nbsp;<em style=\\\"box-sizing: border-box;\\\">citrus aurantium&nbsp;<\\/em>tree. Their fruit is much sourer than regular oranges and, as the name suggests, they&#39;re bitter. The flesh carries a hint of an aftertaste when it&#39;s eaten raw. Bitter oranges are uglier than regular oranges, with thick, rough skin.&nbsp;<\\/p><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:15:25', '2021-12-22 23:15:25'),
(202, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:15:25', '2021-12-22 23:15:25'),
(203, 1, 'admin/places/4/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:15:58', '2021-12-22 23:15:58'),
(204, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:16:21', '2021-12-22 23:16:21'),
(205, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-22 23:22:57', '2021-12-22 23:22:57'),
(206, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-22 23:23:21', '2021-12-22 23:23:21'),
(207, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-22 23:23:21', '2021-12-22 23:23:21'),
(208, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 01:00:18', '2021-12-23 01:00:18'),
(209, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul class=\\\"structured-ingredients__list text-passage list-paddingleft-2\\\" style=\\\"list-style-type: none;\\\"><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bitter oranges<\\/span>, or 3\\/4 cup bottled bitter orange juice<\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/types-of-olive-oil-1807855\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">olive oil<\\/span><\\/a><\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3&nbsp;<\\/span><span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;finely chopped&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">fresh oregano leaves<\\/span><\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bay<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">leaf<\\/span>, preferably fresh, finely chopped<\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1\\/4<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">teaspoon<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">ground cumin<\\/span><\\/p><\\/li><li class=\\\"structured-ingredients__\\\" style=\\\"\\\"><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">Salt<\\/span>,<span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">&nbsp;to taste<\\/span><\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 01:00:25', '2021-12-23 01:00:25'),
(210, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-23 01:00:25', '2021-12-23 01:00:25'),
(211, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 01:01:08', '2021-12-23 01:01:08'),
(212, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul class=\\\"structured-ingredients__list text-passage list-paddingleft-2\\\" style=\\\"list-style-type: none;\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bitter oranges<\\/span>, or 3\\/4 cup bottled bitter orange juice<\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/types-of-olive-oil-1807855\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">olive oil<\\/span><\\/a><\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">3&nbsp;<\\/span><span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">tablespoons<\\/span>&nbsp;finely chopped&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">fresh oregano leaves<\\/span><\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">bay<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">leaf<\\/span>, preferably fresh, finely chopped<\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">1\\/4<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">teaspoon<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">ground cumin<\\/span><\\/p><\\/li><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">Salt<\\/span>,<span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">&nbsp;to taste<\\/span><\\/p><\\/li><\\/ul><p><br\\/><\\/p><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p>You can make a passable substitute for sour orange juice by combining two parts regular orange juice with one part lemon juice and one part lime juice. Or, as an alternative, try two parts orange juice with one part grapefruit juice and a teaspoon of lime juice.<\\/p><\\/li><li><p>Add minced&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/hot-chile-peppers-scoville-scale-1807552\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\">hot peppers<\\/a>&nbsp;if you prefer a spicier marinade.&nbsp;<\\/p><\\/li><li><p>You can substitute one or more different fresh herbs for the oregano; thyme and sage are both good options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"RprprYTMQrKhj8cfk01DwqwkClMUGlw6yawxZK78\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 01:01:16', '2021-12-23 01:01:16'),
(213, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-23 01:01:16', '2021-12-23 01:01:16'),
(214, 1, 'admin', 'GET', '58.39.14.207', '[]', '2021-12-23 06:50:48', '2021-12-23 06:50:48'),
(215, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 06:50:52', '2021-12-23 06:50:52'),
(216, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 06:50:55', '2021-12-23 06:50:55'),
(217, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<h2 id=\\\"mntl-sc-block_1-0-2\\\" class=\\\"comp mntl-sc-block lifestyle-sc-block-heading mntl-sc-block-heading\\\" style=\\\"box-sizing: border-box; margin: 1rem 0px 0.25rem; padding: 0px; font-weight: 500; font-size: 1.5rem; line-height: 1.25; font-family: &quot;Work Sans&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\\\"><span class=\\\"mntl-sc-block-heading__text\\\" style=\\\"box-sizing: border-box;\\\">Creole and Cajun Cookery<\\/span><\\/h2><p id=\\\"mntl-sc-block_1-0-3\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Creoles&nbsp;refer to the original European\\u2014particularly French and Spanish\\u2014settlers of New Orleans who were mostly from wealthy families, and who brought their personal chefs from Paris, Madrid, and other European capitals. Since many of the ingredients they traditionally used were unavailable locally, they adapted their recipes to include native Louisiana&nbsp;ingredients like shellfish&nbsp;<a href=\\\"https:\\/\\/www.thespruceeats.com\\/about-red-snapper-334338\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\">snapper<\\/a>, pompano, alligator, meats, game, and squash like cushaw and mirliton (chayote), sugar cane, and pecans. Add to that the cooking tips and seasonings from the native Indians, Caribbean, and African cooks, and this new style of <a href=\\\"https:\\/\\/www.thespruceeats.com\\/what-is-an-andouille-995561\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s;\\\">Creole cooking<\\/a>&nbsp;was born.<\\/p>\",\"_token\":\"Ezpf15qYXuW1IU9oXWCFIG9Azk9Rheatu0T51w0M\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 07:03:24', '2021-12-23 07:03:24'),
(218, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-23 07:03:24', '2021-12-23 07:03:24'),
(219, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-23 07:03:32', '2021-12-23 07:03:32'),
(220, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Cuban Fufu\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Plantains are a popular ingredient in the Caribbean and are prepared in a variety of ways, similar to how potatoes are used in the United States. The tropical fruit can be incorporated into recipes when it is green as well as when it has ripened. One popular way to use&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/introduction-to-plantains-2137973\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"1\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">plantains<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;is in a stuffing; in Puerto Rico green plantains are made into&nbsp;<\\/span><a href=\\\"https:\\/\\/www.thespruceeats.com\\/traditional-mofongo-recipe-2138186\\\" data-component=\\\"link\\\" data-source=\\\"inlineLink\\\" data-type=\\\"internalLink\\\" data-ordinal=\\\"2\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; text-decoration-line: none; background-image: linear-gradient(to right, rgb(0, 143, 185) 0px, rgb(0, 143, 185) 100%); background-position: 0px 97%; background-repeat: repeat-x; background-size: 100% 1px; color: rgb(0, 143, 185); transition: background-image 0.25s ease 0s, color 0.25s ease 0s; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; white-space: normal; background-color: rgb(255, 255, 255);\\\">mofongo<\\/a><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">&nbsp;and in Cuba, the stuffing is made with ripe plantains and called fufu.<\\/span><\\/p>\",\"_token\":\"Ezpf15qYXuW1IU9oXWCFIG9Azk9Rheatu0T51w0M\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-23 07:04:49', '2021-12-23 07:04:49'),
(221, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-23 07:04:49', '2021-12-23 07:04:49'),
(222, 1, 'admin/places/1/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:05:55', '2021-12-24 09:05:55'),
(223, 1, 'admin/places/1', 'PUT', '58.39.14.207', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:06', '2021-12-24 09:06:06'),
(224, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:06', '2021-12-24 09:06:06'),
(225, 1, 'admin/places/2/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:09', '2021-12-24 09:06:09'),
(226, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:12', '2021-12-24 09:06:12'),
(227, 1, 'admin/places/3/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:15', '2021-12-24 09:06:15'),
(228, 1, 'admin/places/3', 'PUT', '58.39.14.207', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:22', '2021-12-24 09:06:22'),
(229, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:22', '2021-12-24 09:06:22'),
(230, 1, 'admin/places/4/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:25', '2021-12-24 09:06:25'),
(231, 1, 'admin/places/4', 'PUT', '58.39.14.207', '{\"name\":\"Bitter Orange Marinade\",\"price\":\"33\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p id=\\\"mntl-sc-block_1-0\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges are often used in Caribbean&nbsp;<\\/p><p><br\\/><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:36', '2021-12-24 09:06:36'),
(232, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:36', '2021-12-24 09:06:36'),
(233, 1, 'admin/places/5/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:40', '2021-12-24 09:06:40'),
(234, 1, 'admin/places/5', 'PUT', '58.39.14.207', '{\"name\":\"Creamed Yuca (Cassava)\",\"price\":\"10\",\"location\":\"China\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled&nbsp;<\\/span><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:48', '2021-12-24 09:06:48'),
(235, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:48', '2021-12-24 09:06:48'),
(236, 1, 'admin/places/7/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:06:52', '2021-12-24 09:06:52'),
(237, 1, 'admin/places/7', 'PUT', '58.39.14.207', '{\"name\":\"Cuban Fufu\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Plantains are a popular ingredient<\\/span><\\/p>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:06:58', '2021-12-24 09:06:58'),
(238, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:06:58', '2021-12-24 09:06:58'),
(239, 1, 'admin/places/6/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-24 09:07:01', '2021-12-24 09:07:01'),
(240, 1, 'admin/places/6', 'PUT', '58.39.14.207', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<h2 id=\\\"mntl-sc-block_1-0-2\\\" class=\\\"comp mntl-sc-block lifestyle-sc-block-heading mntl-sc-block-heading\\\" style=\\\"box-sizing: border-box; margin: 1rem 0px 0.25rem; padding: 0px; font-weight: 500; font-size: 1.5rem; line-height: 1.25; font-family: &quot;Work Sans&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\\\"><span class=\\\"mntl-sc-block-heading__text\\\" style=\\\"box-sizing: border-box;\\\">Creole and Cajun Cookery<\\/span><\\/h2>\",\"_token\":\"r8XWltlKUj6HDvHnGqL2Np0xa7pYWaW0vcuvZIls\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-24 09:07:08', '2021-12-24 09:07:08'),
(241, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-24 09:07:08', '2021-12-24 09:07:08'),
(242, 1, 'admin', 'GET', '58.39.14.207', '[]', '2021-12-25 17:34:46', '2021-12-25 17:34:46'),
(243, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 17:35:02', '2021-12-25 17:35:02'),
(244, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 17:35:07', '2021-12-25 17:35:07'),
(245, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Dessert\",\"price\":\"5\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"2\",\"description\":\"<p>Amazing food to eat with.<\\/p>\",\"_token\":\"SARfHDUmZ3Q6eubD983mvsFXsEC9vWU8AHxVm169\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 17:36:29', '2021-12-25 17:36:29'),
(246, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-25 17:36:29', '2021-12-25 17:36:29'),
(247, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-25 17:47:05', '2021-12-25 17:47:05'),
(248, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 19:59:46', '2021-12-25 19:59:46'),
(249, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 19:59:55', '2021-12-25 19:59:55'),
(250, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 19:59:55', '2021-12-25 19:59:55'),
(251, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 20:00:12', '2021-12-25 20:00:12'),
(252, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 20:00:21', '2021-12-25 20:00:21'),
(253, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 20:00:21', '2021-12-25 20:00:21'),
(254, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 20:02:13', '2021-12-25 20:02:13'),
(255, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 20:02:22', '2021-12-25 20:02:22'),
(256, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 20:02:22', '2021-12-25 20:02:22'),
(257, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 20:15:27', '2021-12-25 20:15:27'),
(258, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 20:15:35', '2021-12-25 20:15:35'),
(259, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 20:15:35', '2021-12-25 20:15:35'),
(260, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 21:23:53', '2021-12-25 21:23:53');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(261, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"sIUpDzEbW2wjjMdn7WrZlqKpT9MCP7hgSkejSuDO\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 21:23:59', '2021-12-25 21:23:59'),
(262, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 21:23:59', '2021-12-25 21:23:59'),
(263, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 23:42:02', '2021-12-25 23:42:02'),
(264, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p><br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 23:42:10', '2021-12-25 23:42:10'),
(265, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 23:42:10', '2021-12-25 23:42:10'),
(266, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 23:53:06', '2021-12-25 23:53:06'),
(267, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 23:53:26', '2021-12-25 23:53:26'),
(268, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 23:53:26', '2021-12-25 23:53:26'),
(269, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-25 23:53:34', '2021-12-25 23:53:34'),
(270, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-25 23:59:27', '2021-12-25 23:59:27'),
(271, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-25 23:59:27', '2021-12-25 23:59:27'),
(272, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:06:57', '2021-12-26 00:06:57'),
(273, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:07:01', '2021-12-26 00:07:01'),
(274, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:07:01', '2021-12-26 00:07:01'),
(275, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:13:50', '2021-12-26 00:13:50'),
(276, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:13:56', '2021-12-26 00:13:56'),
(277, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:13:56', '2021-12-26 00:13:56'),
(278, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:14:55', '2021-12-26 00:14:55'),
(279, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p><p>&nbsp;&nbsp;&nbsp;&nbsp;big oninions<br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:15:07', '2021-12-26 00:15:07'),
(280, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:15:07', '2021-12-26 00:15:07'),
(281, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 00:16:32', '2021-12-26 00:16:32'),
(282, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<header class=\\\"section__header \\\" style=\\\"box-sizing: border-box; margin: 1.875rem 0px 0px; padding: 0px 0px 1rem; position: relative; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);\\\"><h2 class=\\\"section__title section__title--dashed\\\" style=\\\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0.2rem; font-weight: 400; font-size: 1.5rem; background-image: repeating-linear-gradient(to right, rgb(221, 221, 221) 0px, rgb(221, 221, 221) 50%, transparent 50%, transparent 100%); background-position: left bottom; background-repeat: repeat-x; background-size: 8px 2px; line-height: 1.6;\\\">Ingredients<\\/h2><\\/header><ul style=\\\"list-style-type: none;\\\" class=\\\" list-paddingleft-2\\\"><li><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: -0.1px; display: inline-block;\\\"><span data-ingredient-quantity=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">5<\\/span>&nbsp;<span data-ingredient-unit=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">cloves<\\/span>&nbsp;<span data-ingredient-name=\\\"true\\\" style=\\\"box-sizing: border-box;\\\">garlic<\\/span>, minced<\\/p><\\/li><li><p>&nbsp;options.<\\/p><\\/li><\\/ul><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Super garlic<br\\/><\\/p><p><br\\/><\\/p>\",\"_token\":\"qeJb7ZfykBaL9kxprLFQn2TMxwyREiTAC1t4srHW\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 00:16:43', '2021-12-26 00:16:43'),
(283, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-26 00:16:43', '2021-12-26 00:16:43'),
(284, 1, 'admin/places/1/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 08:17:47', '2021-12-26 08:17:47'),
(285, 1, 'admin/places/1', 'PUT', '58.39.14.207', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Of five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"JFWwRalUx4l7yXvLG6jEhHpXjZR6EHhvfIwX2wR9\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 08:17:55', '2021-12-26 08:17:55'),
(286, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 08:17:55', '2021-12-26 08:17:55'),
(287, 1, 'admin/places/6/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 18:09:04', '2021-12-26 18:09:04'),
(288, 1, 'admin/places/6', 'PUT', '58.39.14.207', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"tFxmWiAvFsrB5gBB49iGh8okAF3XDNOXog3nZZCe\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 18:09:09', '2021-12-26 18:09:09'),
(289, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 18:09:09', '2021-12-26 18:09:09'),
(290, 1, 'admin/places/7/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 18:09:16', '2021-12-26 18:09:16'),
(291, 1, 'admin/places/7', 'PUT', '58.39.14.207', '{\"name\":\"Cuban Fufu\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"tFxmWiAvFsrB5gBB49iGh8okAF3XDNOXog3nZZCe\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 18:09:23', '2021-12-26 18:09:23'),
(292, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 18:09:24', '2021-12-26 18:09:24'),
(293, 1, 'admin/places/2/edit', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 18:10:08', '2021-12-26 18:10:08'),
(294, 1, 'admin/places/2', 'PUT', '58.39.14.207', '{\"name\":\"Sweet Dessert\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"tFxmWiAvFsrB5gBB49iGh8okAF3XDNOXog3nZZCe\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 18:10:14', '2021-12-26 18:10:14'),
(295, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 18:10:14', '2021-12-26 18:10:14'),
(296, 1, 'admin', 'GET', '58.39.14.207', '[]', '2021-12-26 22:24:07', '2021-12-26 22:24:07'),
(297, 1, 'admin/places', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:24:09', '2021-12-26 22:24:09'),
(298, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:24:12', '2021-12-26 22:24:12'),
(299, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Biriani\",\"price\":\"8\",\"location\":\"BD\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander\\/cilantro, then par boiled lightly spiced rice.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The crowning glory is to finish it off with a drizzle of saffron infused water to give it the signature patches of bright yellow rice, as well as ghee (or melted butter) for buttery richness.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The pot is then covered and cooked over a low heat for about 25 minutes during which time the rice absorbs the aromas and flavours of the curry underneath, whilst still being beautifully fluffy.<\\/p><p><br\\/><\\/p>\",\"_token\":\"DSevs3ByBGwx5oOQgMnKjFvBh0zg3CuqAdi32Lbn\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 22:27:38', '2021-12-26 22:27:38'),
(300, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 22:27:38', '2021-12-26 22:27:38'),
(301, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:28:12', '2021-12-26 22:28:12'),
(302, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Chicken biriani\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Chicken Biryani Served in a Bowl Close Up Photo. Indian Food, Indian Style Rice and Chicken. #Biryani #ChickenBiryani #IndianFood #StockPhoto<\\/span><\\/p>\",\"_token\":\"DSevs3ByBGwx5oOQgMnKjFvBh0zg3CuqAdi32Lbn\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 22:29:47', '2021-12-26 22:29:47'),
(303, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 22:29:47', '2021-12-26 22:29:47'),
(304, 1, 'admin/places/create', 'GET', '58.39.14.207', '{\"_pjax\":\"#pjax-container\"}', '2021-12-26 22:35:07', '2021-12-26 22:35:07'),
(305, 1, 'admin/places', 'POST', '58.39.14.207', '{\"name\":\"Hilsha fish\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"5\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/span><\\/p>\",\"_token\":\"DSevs3ByBGwx5oOQgMnKjFvBh0zg3CuqAdi32Lbn\",\"_previous_\":\"https:\\/\\/shop.dbestech.com\\/admin\\/places\"}', '2021-12-26 22:35:34', '2021-12-26 22:35:34'),
(306, 1, 'admin/places', 'GET', '58.39.14.207', '[]', '2021-12-26 22:35:34', '2021-12-26 22:35:34'),
(307, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-28 00:30:14', '2021-12-28 00:30:14'),
(308, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-28 00:32:00', '2021-12-28 00:32:00'),
(309, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:32:55', '2021-12-28 00:32:55'),
(310, 1, 'admin', 'GET', '180.175.17.8', '[]', '2021-12-28 00:37:50', '2021-12-28 00:37:50'),
(311, 1, 'admin/places', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:38:05', '2021-12-28 00:38:05'),
(312, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:38:08', '2021-12-28 00:38:08'),
(313, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '[]', '2021-12-28 00:38:23', '2021-12-28 00:38:23'),
(314, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"mW9sobVCPETMbDNxRhwi8qbb16F8LEZ6N5nQ8YgD\",\"_method\":\"PUT\"}', '2021-12-28 00:38:34', '2021-12-28 00:38:34'),
(315, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-28 00:38:34', '2021-12-28 00:38:34'),
(316, 1, 'admin/places/1/edit', 'GET', '180.175.17.8', '{\"_pjax\":\"#pjax-container\"}', '2021-12-28 00:40:14', '2021-12-28 00:40:14'),
(317, 1, 'admin/places/1', 'PUT', '180.175.17.8', '{\"name\":\"Nutritious fruit meal in china\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"mW9sobVCPETMbDNxRhwi8qbb16F8LEZ6N5nQ8YgD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.dbestech.com\\/admin\\/places\"}', '2021-12-28 00:40:19', '2021-12-28 00:40:19'),
(318, 1, 'admin/places', 'GET', '180.175.17.8', '[]', '2021-12-28 00:40:19', '2021-12-28 00:40:19'),
(319, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:04:37', '2021-12-31 23:04:37'),
(320, 1, 'admin/places/3/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:15:18', '2021-12-31 23:15:18'),
(321, 1, 'admin/places/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:15:27', '2021-12-31 23:15:27'),
(322, 1, 'admin/places/3/edit', 'GET', '180.152.243.50', '[]', '2021-12-31 23:15:27', '2021-12-31 23:15:27'),
(323, 1, 'admin/places/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\"}', '2021-12-31 23:16:26', '2021-12-31 23:16:26'),
(324, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:16:26', '2021-12-31 23:16:26'),
(325, 1, 'admin/places/6/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:16:46', '2021-12-31 23:16:46'),
(326, 1, 'admin/places/6', 'PUT', '180.152.243.50', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:16:53', '2021-12-31 23:16:53'),
(327, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:16:53', '2021-12-31 23:16:53'),
(328, 1, 'admin/places/3/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:20:14', '2021-12-31 23:20:14'),
(329, 1, 'admin/places/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:20:20', '2021-12-31 23:20:20'),
(330, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:20:20', '2021-12-31 23:20:20'),
(331, 1, 'admin/places/6/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:20:25', '2021-12-31 23:20:25');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(332, 1, 'admin/places/6', 'PUT', '180.152.243.50', '{\"name\":\"Creole Rice Side Dish Recipe\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:20:34', '2021-12-31 23:20:34'),
(333, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:20:34', '2021-12-31 23:20:34'),
(334, 1, 'admin/places/2/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:24:17', '2021-12-31 23:24:17'),
(335, 1, 'admin/places/2', 'PUT', '180.152.243.50', '{\"name\":\"Sweet Dessert\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/places\"}', '2021-12-31 23:24:27', '2021-12-31 23:24:27'),
(336, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:24:27', '2021-12-31 23:24:27'),
(337, 1, 'admin/places', 'GET', '180.152.243.50', '[]', '2021-12-31 23:25:52', '2021-12-31 23:25:52'),
(338, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:25:56', '2021-12-31 23:25:56'),
(339, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:26:02', '2021-12-31 23:26:02'),
(340, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Popular food\",\"description\":\"best food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:26:34', '2021-12-31 23:26:34'),
(341, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '[]', '2021-12-31 23:26:34', '2021-12-31 23:26:34'),
(342, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:26:57', '2021-12-31 23:26:57'),
(343, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:01', '2021-12-31 23:27:01'),
(344, 1, 'admin/auth/menu/11', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"icon\":\"fa-map-marker\",\"uri\":\"\\/places\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-12-31 23:27:12', '2021-12-31 23:27:12'),
(345, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:27:13', '2021-12-31 23:27:13'),
(346, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:19', '2021-12-31 23:27:19'),
(347, 1, 'admin/auth/menu/11', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"icon\":\"fa-beer\",\"uri\":\"\\/places\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2021-12-31 23:27:49', '2021-12-31 23:27:49'),
(348, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:27:49', '2021-12-31 23:27:49'),
(349, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:27:51', '2021-12-31 23:27:51'),
(350, 1, 'admin/places', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:53', '2021-12-31 23:27:53'),
(351, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:27:58', '2021-12-31 23:27:58'),
(352, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:02', '2021-12-31 23:28:02'),
(353, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:19', '2021-12-31 23:28:19'),
(354, 1, 'admin/auth/menu/9', 'DELETE', '180.152.243.50', '{\"_method\":\"delete\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2021-12-31 23:28:24', '2021-12-31 23:28:24'),
(355, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:25', '2021-12-31 23:28:25'),
(356, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2021-12-31 23:28:28', '2021-12-31 23:28:28'),
(357, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:28:35', '2021-12-31 23:28:35'),
(358, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:36:10', '2021-12-31 23:36:10'),
(359, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:37:05', '2021-12-31 23:37:05'),
(360, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Popular food\",\"description\":\"best food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:37:20', '2021-12-31 23:37:20'),
(361, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '[]', '2021-12-31 23:37:20', '2021-12-31 23:37:20'),
(362, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Popular food\",\"description\":\"best food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2021-12-31 23:41:24', '2021-12-31 23:41:24'),
(363, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:41:24', '2021-12-31 23:41:24'),
(364, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:41:31', '2021-12-31 23:41:31'),
(365, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":null,\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:41:46', '2021-12-31 23:41:46'),
(366, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '[]', '2021-12-31 23:41:46', '2021-12-31 23:41:46'),
(367, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":\"all food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2021-12-31 23:41:54', '2021-12-31 23:41:54'),
(368, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:41:54', '2021-12-31 23:41:54'),
(369, 1, 'admin/article-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:03', '2021-12-31 23:42:03'),
(370, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"parent_id\":\"2\",\"title\":\"Recommended food\",\"description\":\"recommended food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/article-types\"}', '2021-12-31 23:42:30', '2021-12-31 23:42:30'),
(371, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:42:30', '2021-12-31 23:42:30'),
(372, 1, 'admin/article-types', 'POST', '180.152.243.50', '{\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_order\":\"[{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":3}]}]\"}', '2021-12-31 23:42:39', '2021-12-31 23:42:39'),
(373, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:40', '2021-12-31 23:42:40'),
(374, 1, 'admin/article-types', 'GET', '180.152.243.50', '[]', '2021-12-31 23:42:42', '2021-12-31 23:42:42'),
(375, 1, 'admin/places', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:46', '2021-12-31 23:42:46'),
(376, 1, 'admin/places/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:42:48', '2021-12-31 23:42:48'),
(377, 1, 'admin/users', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:43:19', '2021-12-31 23:43:19'),
(378, 1, 'admin/users', 'GET', '180.152.243.50', '[]', '2021-12-31 23:53:24', '2021-12-31 23:53:24'),
(379, 1, 'admin/users', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:53:26', '2021-12-31 23:53:26'),
(380, 1, 'admin/article-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2021-12-31 23:53:27', '2021-12-31 23:53:27'),
(381, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:05:58', '2022-01-01 00:05:58'),
(382, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:06:06', '2022-01-01 00:06:06'),
(383, 1, 'admin/auth/menu/11', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"icon\":\"fa-beer\",\"uri\":\"\\/foods\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2022-01-01 00:06:15', '2022-01-01 00:06:15'),
(384, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:06:16', '2022-01-01 00:06:16'),
(385, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:06:38', '2022-01-01 00:06:38'),
(386, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:06:47', '2022-01-01 00:06:47'),
(387, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:08:54', '2022-01-01 00:08:54'),
(388, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:10', '2022-01-01 00:09:10'),
(389, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:09:23', '2022-01-01 00:09:23'),
(390, 1, 'admin/auth/menu/8/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:09:28', '2022-01-01 00:09:28'),
(391, 1, 'admin/auth/menu/8', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/food-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2022-01-01 00:09:40', '2022-01-01 00:09:40'),
(392, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:41', '2022-01-01 00:09:41'),
(393, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:51', '2022-01-01 00:09:51'),
(394, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:09:52', '2022-01-01 00:09:52'),
(395, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:11:25', '2022-01-01 00:11:25'),
(396, 1, 'admin', 'GET', '180.152.243.50', '[]', '2022-01-01 00:14:55', '2022-01-01 00:14:55'),
(397, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:11', '2022-01-01 00:15:11'),
(398, 1, 'admin/auth/menu/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:14', '2022-01-01 00:15:14'),
(399, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:52', '2022-01-01 00:15:52'),
(400, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:15:56', '2022-01-01 00:15:56'),
(401, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:16:33', '2022-01-01 00:16:33'),
(402, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '[]', '2022-01-01 00:16:33', '2022-01-01 00:16:33'),
(403, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:16:42', '2022-01-01 00:16:42'),
(404, 1, 'admin/auth/menu/8/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:16:47', '2022-01-01 00:16:47'),
(405, 1, 'admin/auth/menu/8', 'PUT', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/food-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/auth\\/menu\"}', '2022-01-01 00:16:59', '2022-01-01 00:16:59'),
(406, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:16:59', '2022-01-01 00:16:59'),
(407, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:18:26', '2022-01-01 00:18:26'),
(408, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:18:28', '2022-01-01 00:18:28'),
(409, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:18:28', '2022-01-01 00:18:28'),
(410, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:20:10', '2022-01-01 00:20:10'),
(411, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:20:12', '2022-01-01 00:20:12'),
(412, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:20:13', '2022-01-01 00:20:13'),
(413, 1, 'admin/auth/menu', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:00', '2022-01-01 00:22:00'),
(414, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:22:03', '2022-01-01 00:22:03'),
(415, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:22:06', '2022-01-01 00:22:06'),
(416, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":null,\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/food-types\"}', '2022-01-01 00:22:15', '2022-01-01 00:22:15'),
(417, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:15', '2022-01-01 00:22:15'),
(418, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":\"all about food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2022-01-01 00:22:27', '2022-01-01 00:22:27'),
(419, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:27', '2022-01-01 00:22:27'),
(420, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"0\",\"title\":\"Food\",\"description\":\"all about food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\"}', '2022-01-01 00:22:55', '2022-01-01 00:22:55'),
(421, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:22:55', '2022-01-01 00:22:55'),
(422, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:22:58', '2022-01-01 00:22:58'),
(423, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"1\",\"title\":\"Popular food\",\"description\":\"popular food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/food-types\"}', '2022-01-01 00:23:10', '2022-01-01 00:23:10'),
(424, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:23:11', '2022-01-01 00:23:11'),
(425, 1, 'admin/food-types/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:23:13', '2022-01-01 00:23:13'),
(426, 1, 'admin/food-types', 'POST', '180.152.243.50', '{\"parent_id\":\"1\",\"title\":\"Recommended food\",\"description\":\"Recommended food\",\"order\":\"1\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/food-types\"}', '2022-01-01 00:23:25', '2022-01-01 00:23:25'),
(427, 1, 'admin/food-types', 'GET', '180.152.243.50', '[]', '2022-01-01 00:23:26', '2022-01-01 00:23:26'),
(428, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:06', '2022-01-01 00:25:06'),
(429, 1, 'admin/foods/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:08', '2022-01-01 00:25:08'),
(430, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:25:09', '2022-01-01 00:25:09'),
(431, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:25:36', '2022-01-01 00:25:36'),
(432, 1, 'admin/foods/create', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:38', '2022-01-01 00:25:38'),
(433, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:46', '2022-01-01 00:25:46'),
(434, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:25:48', '2022-01-01 00:25:48'),
(435, 1, 'admin/foods/1', 'PUT', '180.152.243.50', '{\"name\":\"Nutritious fruit meal in china\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:25:57', '2022-01-01 00:25:57'),
(436, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '[]', '2022-01-01 00:25:58', '2022-01-01 00:25:58'),
(437, 1, 'admin/foods/1', 'PUT', '180.152.243.50', '{\"name\":\"Nutritious fruit meal in china\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\"}', '2022-01-01 00:27:22', '2022-01-01 00:27:22'),
(438, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:27:22', '2022-01-01 00:27:22'),
(439, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:27:29', '2022-01-01 00:27:29'),
(440, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:30:52', '2022-01-01 00:30:52'),
(441, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:33:03', '2022-01-01 00:33:03'),
(442, 1, 'admin/foods/1/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:33:15', '2022-01-01 00:33:15'),
(443, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:33:20', '2022-01-01 00:33:20'),
(444, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:33:22', '2022-01-01 00:33:22'),
(445, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:34:06', '2022-01-01 00:34:06'),
(446, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:34:08', '2022-01-01 00:34:08'),
(447, 1, 'admin/food-types', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:34:11', '2022-01-01 00:34:11'),
(448, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:34:15', '2022-01-01 00:34:15'),
(449, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:35:55', '2022-01-01 00:35:55'),
(450, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:42:38', '2022-01-01 00:42:38'),
(451, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:42:40', '2022-01-01 00:42:40'),
(452, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:44:43', '2022-01-01 00:44:43'),
(453, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:44:45', '2022-01-01 00:44:45'),
(454, 1, 'admin/foods/2/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:54:34', '2022-01-01 00:54:34'),
(455, 1, 'admin/foods/2', 'PUT', '180.152.243.50', '{\"name\":\"Sweet Dessert\",\"type_id\":\"2\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p>The best sweet dessert<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:54:42', '2022-01-01 00:54:42'),
(456, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:54:42', '2022-01-01 00:54:42'),
(457, 1, 'admin/foods/3/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:54:48', '2022-01-01 00:54:48'),
(458, 1, 'admin/foods/3', 'PUT', '180.152.243.50', '{\"name\":\"Chinese Side\",\"type_id\":\"3\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Enjoy these flavors any time of day.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:54:53', '2022-01-01 00:54:53'),
(459, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:54:54', '2022-01-01 00:54:54'),
(460, 1, 'admin/foods/4/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:54:58', '2022-01-01 00:54:58'),
(461, 1, 'admin/foods/4', 'PUT', '180.152.243.50', '{\"name\":\"Bitter Orange Marinade\",\"type_id\":\"3\",\"price\":\"33\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p id=\\\"mntl-sc-block_1-0\\\" class=\\\"comp mntl-sc-block mntl-sc-block-html\\\" style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\\\">Bitter oranges are often used in Caribbean&nbsp;<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:55:05', '2022-01-01 00:55:05'),
(462, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:55:06', '2022-01-01 00:55:06'),
(463, 1, 'admin/foods/5/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:55:10', '2022-01-01 00:55:10'),
(464, 1, 'admin/foods/5', 'PUT', '180.152.243.50', '{\"name\":\"Creamed Yuca (Cassava)\",\"type_id\":\"3\",\"price\":\"10\",\"location\":\"China\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\\\">Commonly used in soups, eaten boiled&nbsp;<\\/span><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:55:44', '2022-01-01 00:55:44'),
(465, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:55:45', '2022-01-01 00:55:45'),
(466, 1, 'admin/foods/6/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:55:53', '2022-01-01 00:55:53'),
(467, 1, 'admin/foods/6', 'PUT', '180.152.243.50', '{\"name\":\"Creole Rice Side Dish Recipe\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:02', '2022-01-01 00:56:02'),
(468, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:03', '2022-01-01 00:56:03'),
(469, 1, 'admin/foods/11/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:12', '2022-01-01 00:56:12'),
(470, 1, 'admin/foods/11', 'PUT', '180.152.243.50', '{\"name\":\"Hilsha fish\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"5\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/p><p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.<\\/span><\\/span><\\/span><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:22', '2022-01-01 00:56:22'),
(471, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:22', '2022-01-01 00:56:22'),
(472, 1, 'admin/foods/10/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:27', '2022-01-01 00:56:27'),
(473, 1, 'admin/foods/10', 'PUT', '180.152.243.50', '{\"name\":\"Chicken biriani\",\"type_id\":\"2\",\"price\":\"12\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;\\u30d2\\u30e9\\u30ae\\u30ce\\u89d2\\u30b4 Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, \\u30e1\\u30a4\\u30ea\\u30aa, Meiryo, &quot;\\uff2d\\uff33 \\uff30\\u30b4\\u30b7\\u30c3\\u30af&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Chicken Biryani Served in a Bowl Close Up Photo. Indian Food, Indian Style Rice and Chicken. #Biryani #ChickenBiryani #IndianFood #StockPhoto<\\/span><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:33', '2022-01-01 00:56:33'),
(474, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:34', '2022-01-01 00:56:34'),
(475, 1, 'admin/foods/7/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:38', '2022-01-01 00:56:38');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(476, 1, 'admin/foods/7', 'PUT', '180.152.243.50', '{\"name\":\"Cuban Fufu\",\"type_id\":\"2\",\"price\":\"10\",\"location\":\"Cuba\",\"stars\":\"5\",\"people\":\"0\",\"selected_people\":\"0\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\\\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull \\u2013 equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\\\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\\\">Genesis<\\/em>, goes straight for the jugular of unceded sovereignty.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:56:45', '2022-01-01 00:56:45'),
(477, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:56:45', '2022-01-01 00:56:45'),
(478, 1, 'admin/foods/8/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:56:51', '2022-01-01 00:56:51'),
(479, 1, 'admin/foods/8', 'PUT', '180.152.243.50', '{\"name\":\"Dessert\",\"type_id\":\"3\",\"price\":\"5\",\"location\":\"china\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"2\",\"description\":\"<p>Amazing food to eat with.<\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:57:01', '2022-01-01 00:57:01'),
(480, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:57:01', '2022-01-01 00:57:01'),
(481, 1, 'admin/foods/9/edit', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-01 00:57:07', '2022-01-01 00:57:07'),
(482, 1, 'admin/foods/9', 'PUT', '180.152.243.50', '{\"name\":\"Biriani\",\"type_id\":\"3\",\"price\":\"8\",\"location\":\"BD\",\"stars\":\"4\",\"people\":\"3\",\"selected_people\":\"3\",\"description\":\"<p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander\\/cilantro, then par boiled lightly spiced rice.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The crowning glory is to finish it off with a drizzle of saffron infused water to give it the signature patches of bright yellow rice, as well as ghee (or melted butter) for buttery richness.<\\/p><p style=\\\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\\\">The pot is then covered and cooked over a low heat for about 25 minutes during which time the rice absorbs the aromas and flavours of the curry underneath, whilst still being beautifully fluffy.<\\/p><p><br\\/><\\/p>\",\"_token\":\"RhrQGjMJOWd16hG4DatOkRZyu2QwiMqsrNxMU8kC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dbf.bslmeiyu.com\\/admin\\/foods\"}', '2022-01-01 00:57:16', '2022-01-01 00:57:16'),
(483, 1, 'admin/foods', 'GET', '180.152.243.50', '[]', '2022-01-01 00:57:17', '2022-01-01 00:57:17'),
(484, 1, 'admin', 'GET', '180.152.243.50', '[]', '2022-01-09 17:05:12', '2022-01-09 17:05:12'),
(485, 1, 'admin/foods', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 17:05:28', '2022-01-09 17:05:28'),
(486, 1, 'admin/users', 'GET', '180.152.243.50', '{\"_pjax\":\"#pjax-container\"}', '2022-01-09 17:05:31', '2022-01-09 17:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-11-08 03:39:48', '2021-11-08 03:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$8yUtwbsb.WZjJc/U/s3HOuoEboydAxwR7mXDxMjVYvVrH1aoUvvVm', 'Administrator', NULL, 'isC2i6h3iyaSE64FCyJ8iowPPUieRkKGG2UtFqqyLx6GczJ896aOl2VY5OvT', '2021-11-08 03:39:48', '2021-12-17 22:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) NOT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `contact_person_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `user_id`, `contact_person_name`, `created_at`, `updated_at`) VALUES
(24, NULL, '8403005729', 'Pratapgunj, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.324635919639693', '73.18174179643393', 24, 'test', '2023-03-23 12:03:09', '2023-03-23 12:03:09'),
(25, NULL, '8403005729', '26, Mandir Rd, Fatehgunj, Vadodara, Gujarat 390002, India', '22.336963988515922', '73.19378290325403', 24, 'test', '2023-03-23 12:26:01', '2023-03-23 12:26:01'),
(26, NULL, '8403005729', '10, Vrundavan Nagar Society, Raghuvir Nagar, Anandvan Society, New Sama, Vadodara, Gujarat 390008, India', '22.338790575044857', '73.19547738879919', 24, 'test', '2023-03-23 12:29:15', '2023-03-23 12:29:15'),
(27, NULL, '8403005729', 'A-24, Sama Rd, Near Sama Bus Stand, Laxmikunj Society Part 1, Anandvan Society, New Sama, Vadodara, Gujarat 390008, India', '22.33858217792686', '73.19765869528055', 24, 'test', '2023-03-23 12:39:41', '2023-03-23 12:39:41'),
(28, NULL, '8403005729', '63, Vrundavan Nagar Society, Raghuvir Nagar, Anandvan Society, New Sama, Vadodara, Gujarat 390008, India', '22.340029477076786', '73.19608557969332', 24, 'test', '2023-03-23 12:40:49', '2023-03-23 12:40:49'),
(29, NULL, '8403005729', '63, Vrundavan Nagar Society, Raghuvir Nagar, Anandvan Society, New Sama, Vadodara, Gujarat 390008, India', '22.340029477076786', '73.19608557969332', 24, 'Somendra Sarkar', '2023-03-23 12:42:30', '2023-03-23 12:42:30'),
(30, NULL, '8403005729', '85GJ+7PR, Nizampura Rd, Near Pantjali Apartment, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.32519666247973', '73.18149603903294', 24, 'test', '2023-03-24 01:43:03', '2023-03-24 01:43:03'),
(31, NULL, '9365042121', 'Pratapgunj, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.324574208692447', '73.18175349760536', 23, 'Somendra', '2023-03-24 02:25:15', '2023-03-24 02:25:15'),
(32, NULL, '9365042121', 'MSU BBA, 85FM+W28, Nizampura Rd, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.324831931773588', '73.18245559930801', 23, 'Somendra', '2023-03-24 02:28:26', '2023-03-24 02:28:26'),
(33, NULL, '8403005729', 'Pratapgunj, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.324574208692447', '73.18175349760536', 24, 'test', '2023-03-25 07:14:20', '2023-03-25 07:14:20'),
(34, NULL, '8403005729', '85GM+G85, Dhanush Marg, Fatehgunj, Vadodara, Gujarat 390002, India', '22.32627410119123', '73.18320728838444', 24, 'test', '2023-03-25 08:17:04', '2023-03-25 08:17:04'),
(35, NULL, '8403005729', '8,kumbharwada,behin food and drugs laboulatry, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.32648871953782', '73.18002685904503', 24, 'test', '2023-03-25 08:40:15', '2023-03-25 08:40:15'),
(36, NULL, '8403005729', '4B, Pension Pura, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.328526336814733', '73.18016733974218', 24, 'test', '2023-03-25 08:41:11', '2023-03-25 08:41:11'),
(37, NULL, '8403005729', '227, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.328526336814733', '73.18016733974218', 24, 'test', '2023-03-25 09:08:23', '2023-03-25 09:08:23'),
(38, NULL, '8403005729', '85HM+24X, Nizampura, Vadodara, Gujarat 390002, India', '22.327836589640796', '73.18289078772068', 24, 'test', '2023-03-25 10:15:09', '2023-03-25 10:15:09'),
(39, NULL, '9365042121', '85GJ+F5M, University Rd, Sardar Nagar, Nizampura, Vadodara, Gujarat 390002, India', '22.326251460797256', '73.18058844655752', 23, 'Somendra', '2023-03-25 23:17:59', '2023-03-25 23:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  `selected_people` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` tinyint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`, `price`, `stars`, `people`, `selected_people`, `img`, `location`, `created_at`, `updated_at`, `type_id`) VALUES
(1, 'Nutritious fruit meal in china', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">This&nbsp;five red bases, two are dedicated to salami (fennel and regular), and there&#39;s a classic capricciosa or beef carpaccio. Blanco options include a mushroom, and a four-cheese extravaganza featuring great lobes of a tangy fior di latte they make in house every day (more on this later). Classic, precise, good.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">I think it&#39;s still better to think of this venue not as a pizzeria, but as Pizza, by Di Stasio.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">Rinaldo Di Stasio and Mallory Wall&#39;s empire, including the original restaurant and bar in St Kilda, Citta and now Carlton, is a designer label for dining.</p><p><br/></p>', 12, 4, 5, 5, 'images/ea9367e8a16f1d3e41d4a3ae9af2baff.png', 'Canada, British Columbia', '2021-11-17 02:09:08', '2022-01-01 00:27:22', 2),
(2, 'Sweet Dessert', '<p>The best sweet dessert</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p>', 21, 5, 5, 3, 'images/27567f904a64ba79ae95672e4ddf10c8.png', 'Icefields, Alberta', '2021-11-17 02:10:43', '2022-01-01 00:54:42', 2),
(3, 'Chinese Side', '<p style=\"border: 0px; margin-top: 0px; margin-bottom: 1.3em; padding: 0px; line-height: 1.8; color: rgb(58, 58, 58); font-family: Montserrat, sans-serif; font-size: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">Enjoy these flavors any time of day.</p><p><br/></p>', 34, 3, 5, 4, 'images/fe978d4b2a6e311efc53370bad41c302.jpg', 'Moraine Lake, Alberta', '2021-11-17 02:16:31', '2022-01-01 00:54:54', 3),
(4, 'Bitter Orange Marinade', '<p id=\"mntl-sc-block_1-0\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; letter-spacing: -0.1px; counter-reset: section 0; font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; white-space: normal; background-color: rgb(255, 255, 255);\">Bitter oranges are often used in Caribbean&nbsp;</p><p><br/></p>', 33, 4, 5, 3, 'images/f38f470cc1972c270320c222c3aca9fb.jpg', 'Killarney Provincial Park', '2021-11-17 02:18:46', '2022-01-01 00:55:05', 3),
(5, 'Creamed Yuca (Cassava)', '<p><span style=\"font-family: &quot;Work Sans&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: -0.1px; background-color: rgb(255, 255, 255);\">Commonly used in soups, eaten boiled&nbsp;</span></p>', 10, 5, 5, 4, 'images/acaa4cdee4b8aa7bf33f2140ce36860c.jpg', 'China', '2021-12-08 04:29:53', '2022-01-01 00:55:44', 3),
(6, 'Creole Rice Side Dish Recipe', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p>', 13, 4, 3, 3, 'images/d6648f1f920d6bbc89988d75b3bed5b3.jpg', 'china', '2021-12-23 07:03:24', '2022-01-01 00:56:03', 2),
(7, 'Cuban Fufu', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">The quality and craftsmanship is on full show. The waiters&#39; signature white tunics are of loosely rumpled linen here versus the crisp whites of the city. The thick galleria walls of the restaurant&#39;s three distinct areas are cast in gentle neon so that even your worst&nbsp;wine-fuelled photos turn into atmospheric still lifes. The art, typically, lands a gut punch.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: Karla, Helvetica, Arial, Verdana, sans-serif; vertical-align: baseline; color: rgb(38, 38, 38); white-space: normal; background-color: rgb(255, 255, 255);\">From the Bill Henson portraits at the St Kilda restaurant to Shaun Gladwell&#39;s beautiful video artworks at Citta, Di Stasio doesn&#39;t use pieces to decorate but to provoke. On entry, a bronze cast of Di Stasio&#39;s hands jutt out of the wall, immortalised in the sign of the bull – equal parts a rock star welcome and a warning. A trio of powerful works by Kamilaroi artist Reko Rennie, titled&nbsp;<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Genesis</em>, goes straight for the jugular of unceded sovereignty.</p><p><br/></p>', 10, 5, 0, 0, 'images/f937dbd76381d1c10fdfcfd90688cb96.png', 'Cuba', '2021-12-23 07:04:49', '2022-01-01 00:56:45', 2),
(8, 'Dessert', '<p>Amazing food to eat with.</p>', 5, 4, 3, 2, 'images/34b0eaad01e8a95a02df1d934517591c.png', 'china', '2021-12-25 17:36:29', '2022-01-01 00:57:01', 3),
(9, 'Biriyani', '<p style=\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\">Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below!), fresh coriander/cilantro, then par boiled lightly spiced rice.</p><p style=\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\">The crowning glory is to finish it off with a drizzle of saffron infused water to give it the signature patches of bright yellow rice, as well as ghee (or melted butter) for buttery richness.</p><p style=\"box-sizing: inherit; padding: 0px; margin-top: 16px; margin-bottom: 16px; color: rgb(61, 61, 61); font-family: Raleway, sans-serif; font-size: 18px; white-space: normal;\">The pot is then covered and cooked over a low heat for about 25 minutes during which time the rice absorbs the aromas and flavours of the curry underneath, whilst still being beautifully fluffy.</p><p><br/></p>', 8, 4, 3, 3, 'images/0f61cb5dd19d38a11e5a9133333eca07.jpeg', 'BD', '2021-12-26 22:27:38', '2022-01-01 00:57:16', 3),
(10, 'Chicken Biriyani', '<p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Chicken Biryani Served in a Bowl Close Up Photo. Indian Food, Indian Style Rice and Chicken. #Biryani #ChickenBiryani #IndianFood #StockPhoto</span></p>', 15, 4, 3, 3, 'images/9447a79793a4b7f832d981f975c0abc4.jpeg', 'china', '2021-12-26 22:29:47', '2022-01-01 00:56:33', 2),
(11, 'Hilsha Fish', '<p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.</span></p><p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.</span></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">Ilish Mach aka Hilsa fish is in the season and needless to say, I cooked it a few times this year as well. This year, however, I have used Ilish mach to make simple delicacies mostly. Ilish Beguner Jhol is probably the simplest of the lot, well, after Ilish Mach Bhaja.</span></span></span></p>', 12, 5, 3, 3, 'images/1343ce6cf6792383dfc071727afd5c46.jpeg', 'India', '2021-12-26 22:35:34', '2022-01-01 00:56:22', 2);

-- --------------------------------------------------------

--
-- Table structure for table `food_types`
--

CREATE TABLE `food_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_types`
--

INSERT INTO `food_types` (`id`, `title`, `parent_id`, `created_at`, `updated_at`, `order`, `description`) VALUES
(1, 'Food', 0, '2022-01-01 00:22:55', '2022-01-01 00:22:55', 1, 'all about food'),
(2, 'Popular food', 1, '2022-01-01 00:23:10', '2022-01-01 00:23:10', 1, 'popular food'),
(3, 'Recommended food', 1, '2022-01-01 00:23:25', '2022-01-01 00:23:25', 1, 'Recommended food');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2021_11_08_125401_create_article_types_table', 3),
(7, '2021_11_08_125420_create_articles_table', 3),
(8, '2021_11_17_092846_create_place_table', 4),
(9, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(10, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(11, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(12, '2016_06_01_000004_create_oauth_clients_table', 5),
(13, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(14, '2022_01_01_075013_create_food_type_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0f52287c0e7604afcd06fd45a1cfd07f24809713138c0b0fabd09047e309b2b786a56c1fb03d53ab', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 06:01:13', '2023-03-13 06:01:13', '2024-03-13 11:31:13'),
('16b21b545aab31b381f01e731913bdb5ec0743e11b0eed55abb19307991db3d7fe5f76d2e2dff00d', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 09:04:39', '2023-03-13 09:04:39', '2024-03-13 14:34:39'),
('188619a41032eb87b1c1c2864e86c75a79d177f435152a04fe5bfe6740c951c2c5539ea86d7d356a', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 04:33:50', '2023-03-12 04:33:50', '2024-03-12 10:03:50'),
('1e5401e68d6eef7be605b06868dea584d9cf4ec149c82a9aa6fc7b636c118a939ae892efdede5440', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-23 10:27:52', '2023-03-23 10:27:52', '2024-03-23 15:57:52'),
('22f37a7951ac5c20578d69a5e6a84f3b9e155e897e5132e6ad828f6dcaea2f496bb4964149e8606e', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-23 09:44:15', '2023-03-23 09:44:15', '2024-03-23 15:14:15'),
('253f4874ce6ec82fc4648c66b3b6b3b06508a90d114d7f3665e75f014294d326ba1b9810e2a1a8df', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 08:19:01', '2023-03-13 08:19:01', '2024-03-13 13:49:01'),
('2c0cc5bb3feafc296c32f63350ad09701c8256f36a7a53e5addc6b80faac7d8125b8a8bebebca4a9', 27, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-25 13:47:04', '2023-03-25 13:47:04', '2024-03-25 19:17:04'),
('2c6e42cc9548bf6a3ec0f799011f6ce8708825dc24a699d6b08da798258d860a3a0103003947adbe', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-23 10:28:01', '2023-03-23 10:28:01', '2024-03-23 15:58:01'),
('2d6587ff330911ff53360826e9560f3733be300438a8c69e3fca0b502fa2e1869c76278db27367dc', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 11:42:56', '2023-03-18 11:42:56', '2024-03-18 17:12:56'),
('47c5f126b13ee4250e2029e583e4e594a3eb8575a84e06797d200c96d1737e361b95ea11e3e41c45', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 02:10:09', '2023-03-12 02:10:09', '2024-03-12 07:40:09'),
('4fec9d1218586cfaaf0e0ad59dd31486bfb9037c1ea8c63450844101c505ee1d29d901f485494487', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-19 02:11:43', '2023-03-19 02:11:43', '2024-03-19 07:41:43'),
('5b03a06faf61c49ebb3437f2e25dac9411bf820fef8ff0359ec83d39f563768b8aea41178fe5de83', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 07:48:13', '2023-03-13 07:48:13', '2024-03-13 13:18:13'),
('721e3851844fff07aedcb810fe4741a067870f85a08711224c3967e06092f10b5912110d467a61cd', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 04:34:03', '2023-03-12 04:34:03', '2024-03-12 10:04:03'),
('7475b387a42e521312c6745509e65e8230bcf41c341fc53ed6177e3a111774cc866dc0d0a6e27df8', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 03:48:03', '2023-03-12 03:48:03', '2024-03-12 09:18:03'),
('773225c4f44d3df2cb58f87be1dcfb0b689d878c74bcd4f305dce4aed0d965b1d908fd3e9f5c11be', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-25 12:02:05', '2023-03-25 12:02:05', '2024-03-25 17:32:05'),
('77824bf1e9d418f02178ec99092d2e00ad3dba83063ed96c984f6dae50d713e3dc3b74185ed2ab27', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 02:28:31', '2023-03-12 02:28:31', '2024-03-12 07:58:31'),
('7d2bcc021aa341543055df348e2a7c0b674d0479356a049909b3932799e13e1d0711f0844e442561', 23, 1, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 00:35:33', '2023-03-12 00:35:33', '2024-03-12 06:05:33'),
('81afcb724559d6057edfb5d1c71088dda1767bccd58eafff0f44df044d3f4c1ea30bae3c836bd972', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 07:30:06', '2023-03-13 07:30:06', '2024-03-13 13:00:06'),
('8fcfe89ea1ba2f7aaeb677d14d120718eceedec2a9baf0c05356ee9007bb40cb09b7a6cb56bafd67', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-21 07:31:31', '2023-03-21 07:31:31', '2024-03-21 13:01:31'),
('91eff6baf4f6b1441c787f70f46347ffdea9259995e968655ff0fc8dd3a64dc62c0109758d15edff', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 04:17:45', '2023-03-12 04:17:45', '2024-03-12 09:47:45'),
('9328978558c296998509af8a8b388012cf6f29a9b7117d04cd699366c4e2966c1ca8675fa38f8336', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 07:33:12', '2023-03-13 07:33:12', '2024-03-13 13:03:12'),
('992bddc3dc5c041cd102b6c57ad610ac4129d066daec26d3e0637481330d2378e69fb0719af1256e', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-24 05:17:41', '2023-03-24 05:17:41', '2024-03-24 10:47:41'),
('998562a84a0c3914474d78d8c5257905fb8ce4cca5711c5e1187dc66c6c4c4c2be053b6ffef5f6f9', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 04:31:30', '2023-03-12 04:31:30', '2024-03-12 10:01:30'),
('9c557e66c590c71fc4f2d9e3cd2a0bd706324c9391fadc6a7e2a3103927cc718929fa9d814a33e83', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 01:09:10', '2023-03-12 01:09:10', '2024-03-12 06:39:10'),
('a02b559b6947139ab7c3c16de76ab04eabc0864dc7df378748c987fbbeab0c92976e98a5af73d920', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 07:32:42', '2023-03-13 07:32:42', '2024-03-13 13:02:42'),
('a25142fc41e540a00b866e63067a38116f618819c65f797287abb3103362d21ce809b4b638738596', 26, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-24 09:00:16', '2023-03-24 09:00:16', '2024-03-24 14:30:16'),
('a4ecae661f82ce72c34857d69615dc04c459f589da0b16c9437006073e5dc268f0caa5e80fd3b53f', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 02:50:16', '2023-03-12 02:50:16', '2024-03-12 08:20:16'),
('a79b62408a448347c85a11ff211a6719392d1fe159129cc38481e74cb468b58811cbef302c93a808', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 02:21:38', '2023-03-12 02:21:38', '2024-03-12 07:51:38'),
('aa395505e756a5c1d1423958310a875f0f0a888b1a1f52db655b00ca6bb6af47bc8e795b17c48f94', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-25 07:12:49', '2023-03-25 07:12:49', '2024-03-25 12:42:49'),
('ad417ba48a8bc38c6d756fe73dfce99199c349abfca34154ac467a3c3a2f6742445e7f11bddcac73', 25, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 09:10:58', '2023-03-13 09:10:58', '2024-03-13 14:40:58'),
('aed1e35a24fb689591261c1175e61578661f4f5b9806e08c6674721957fdf2c7c90d6d141536622a', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-23 10:28:10', '2023-03-23 10:28:10', '2024-03-23 15:58:10'),
('b5e434a948d436d2e669cf80f27f4beed4c2521b6a1f4010236c438782acd4b158f864b74e9afc01', 25, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 07:34:42', '2023-03-13 07:34:42', '2024-03-13 13:04:42'),
('c2b0ee5cec15adb9708ae2b0f84db62fe3a8ce12b15c56c183ea39089fe75f5e0fb7678a5f30e898', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-12 04:20:10', '2023-03-12 04:20:10', '2024-03-12 09:50:10'),
('c8ad8bd5500992b4bb5bb02da3c05b549d379c0930c482e98f788773d9f267d3521ef106977bf669', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 08:56:03', '2023-03-18 08:56:03', '2024-03-18 14:26:03'),
('d3fe0a1bbc15dddba828b8c7ab82d5839ce6b53684c656a4734104e2b46b2c752434f4593a735d6e', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-24 01:49:09', '2023-03-24 01:49:09', '2024-03-24 07:19:09'),
('e7a5a5ee3e1ae3be088c3505f1ee836d1a7f36f46a98a8707ef48459958420b6b18006add669ff51', 25, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-21 07:46:06', '2023-03-21 07:46:06', '2024-03-21 13:16:06'),
('e95822ce4a2007881b7ecb03cd4c4695ea3f1b50fb6fa038ce50c39f5da12cfe386bc0fb6557cda0', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-24 06:12:30', '2023-03-24 06:12:30', '2024-03-24 11:42:30'),
('f0b720b2cb9ff3f7eb3eac64655fcc7b6201e3126118045a500e4a72c6f9e889b688b6a97445f1e2', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-24 08:55:04', '2023-03-24 08:55:04', '2024-03-24 14:25:04'),
('f3fa0d78ca3708f20f062f97b0713281b7f47539d221f482ce76e05375e93f73554a42cb38b178e0', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 07:22:20', '2023-03-13 07:22:20', '2024-03-13 12:52:20'),
('f4282d4290d558f1de29383c567e692315a61ee8366860adca444deaef09f1a234631f6a683209be', 24, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-13 07:09:51', '2023-03-13 07:09:51', '2024-03-13 12:39:51'),
('fd235965a0ae20a9a4006e51eeb341bfb0b9024628dfdbc4fc34667fb6493f0763bb33de88659b97', 23, 2, 'RestaurantCustomerAuth', '[]', 0, '2023-03-18 11:05:03', '2023-03-18 11:05:03', '2024-03-18 16:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ahmed', 'YTU2JKogY8Mo8n14mxL5yLaO5Tc7tjKCWdVtrXDN', NULL, 'http://localhost', 1, 0, 0, '2021-12-28 08:14:11', '2021-12-28 08:14:11'),
(2, NULL, 'Laravel Personal Access Client', 'Z3OaUkiJwsLLtLHVRWbwNM3Df0cKCrqRzS1OLTuZ', NULL, 'http://localhost', 1, 0, 0, '2023-03-12 00:47:29', '2023-03-12 00:47:29'),
(3, NULL, 'Laravel Password Grant Client', '4X6HmvLCk3SigICjskuFoP9SjtSVejgwKMFDVHTk', 'users', 'http://localhost', 0, 1, 0, '2023-03-12 00:47:29', '2023-03-12 00:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-28 08:14:11', '2021-12-28 08:14:11'),
(2, 2, '2023-03-12 00:47:29', '2023-03-12 00:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_amount` decimal(8,2) NOT NULL,
  `payment_status` varchar(191) DEFAULT 'pending',
  `order_status` varchar(191) NOT NULL DEFAULT 'pending',
  `confirmed` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `scheduled` tinyint(1) NOT NULL DEFAULT 0,
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `failed` timestamp NULL DEFAULT NULL,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `order_note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivery_charge` decimal(6,2) DEFAULT NULL,
  `delivery_address` text NOT NULL,
  `otp` varchar(191) NOT NULL,
  `pending` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `food_details` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax_amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `test` int(11) NOT NULL DEFAULT 7
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `phone`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `order_count`) VALUES
(23, 'Somendra', '9365042121', 'sonugoalpara@gmail.com', 1, NULL, '$2y$10$JC.jM9S1fBlKdnLJmDJxLeTEzOEeIvGT9u5z1oAsEstSs8DjGrpzi', NULL, '2023-03-12 00:35:33', '2023-03-12 00:35:33', 0),
(24, 'test', '8403005729', 'a@a.com', 1, NULL, '$2y$10$VPEZUMoLxIX.s8uF1YHEEOhcHRwerc2wICaQwiAMRG/o5kJp8.QQu', NULL, '2023-03-12 01:09:10', '2023-03-12 01:09:10', 0),
(25, 'Rudra', '9854741255', 'b@b.com', 1, NULL, '$2y$10$3BFA3w2WVx8jv0r3.AXVuOQ3707gW/36cUs6.dvZkH55kdVjr8d26', NULL, '2023-03-13 07:34:42', '2023-03-13 07:34:42', 0),
(26, 'Layla', '7896535650', 'c@c.com', 1, NULL, '$2y$10$kURTXSZQJmAulpOVc18Fk..F.FnZe2jdVBtcDkg.jpVDAPFoCzwxS', NULL, '2023-03-24 09:00:15', '2023-03-24 09:00:15', 0),
(27, 'Majnu', '8403001775', 'd@d.com', 1, NULL, '$2y$10$dGkaeb32aAZ64u654R8kyO3Y1AW0bryeuKHz4rt0rLTb3RQnMPQxS', NULL, '2023-03-25 13:47:04', '2023-03-25 13:47:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `coordinates` polygon NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_wise_topic` varchar(191) DEFAULT NULL,
  `customer_wise_topic` varchar(191) DEFAULT NULL,
  `deliveryman_wise_topic` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `coordinates`, `status`, `created_at`, `updated_at`, `restaurant_wise_topic`, `customer_wise_topic`, `deliveryman_wise_topic`) VALUES
(1, 'zoneone', 0x, 1, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100023;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
