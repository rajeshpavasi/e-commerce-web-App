-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 08:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibuild_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2023-01-03 11:50:03'),
(5, 1, 2, 'Products', 'fa-amazon', '/products', '*', NULL, '2023-01-03 12:24:22'),
(9, 1, 3, 'Users Management', 'fa-user', '/users', '*', NULL, '2023-01-03 12:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-02 12:37:50', '2023-01-02 12:37:50'),
(2, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:37:56', '2023-01-02 12:37:56'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-02 12:40:20', '2023-01-02 12:40:20'),
(4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:40:24', '2023-01-02 12:40:24'),
(5, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:40:28', '2023-01-02 12:40:28'),
(6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:42:34', '2023-01-02 12:42:34'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:43:34', '2023-01-02 12:43:34'),
(8, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:43:47', '2023-01-02 12:43:47'),
(9, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:43:55', '2023-01-02 12:43:55'),
(10, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:44:04', '2023-01-02 12:44:04'),
(11, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-02 12:51:30', '2023-01-02 12:51:30'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-02 23:59:33', '2023-01-02 23:59:33'),
(13, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:10:57', '2023-01-03 00:10:57'),
(14, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:11:34', '2023-01-03 00:11:34'),
(15, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:12:02', '2023-01-03 00:12:02'),
(16, 1, 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"slug\":\"*\",\"name\":\"All permission\",\"http_method\":[null],\"http_path\":\"*\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2023-01-03 00:12:05', '2023-01-03 00:12:05'),
(17, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 00:12:05', '2023-01-03 00:12:05'),
(18, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:12:27', '2023-01-03 00:12:27'),
(19, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:12:36', '2023-01-03 00:12:36'),
(20, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:22:11', '2023-01-03 00:22:11'),
(21, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:22:39', '2023-01-03 00:22:39'),
(22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:22:48', '2023-01-03 00:22:48'),
(23, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:25:10', '2023-01-03 00:25:10'),
(24, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2023-01-03 00:25:23', '2023-01-03 00:25:23'),
(25, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:25:24', '2023-01-03 00:25:24'),
(26, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:29:44', '2023-01-03 00:29:44'),
(27, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2023-01-03 00:29:56', '2023-01-03 00:29:56'),
(28, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:29:56', '2023-01-03 00:29:56'),
(29, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:32:08', '2023-01-03 00:32:08'),
(30, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:32:16', '2023-01-03 00:32:16'),
(31, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:32:19', '2023-01-03 00:32:19'),
(32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 00:34:20', '2023-01-03 00:34:20'),
(33, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:34:25', '2023-01-03 00:34:25'),
(34, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2023-01-03 00:34:33', '2023-01-03 00:34:33'),
(35, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:34:33', '2023-01-03 00:34:33'),
(36, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:34:47', '2023-01-03 00:34:47'),
(37, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:34:49', '2023-01-03 00:34:49'),
(38, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:34:51', '2023-01-03 00:34:51'),
(39, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:34:51', '2023-01-03 00:34:51'),
(40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:34:52', '2023-01-03 00:34:52'),
(41, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:34:55', '2023-01-03 00:34:55'),
(42, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:35:16', '2023-01-03 00:35:16'),
(43, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\"}', '2023-01-03 00:36:29', '2023-01-03 00:36:29'),
(44, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:36:29', '2023-01-03 00:36:29'),
(45, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\"}', '2023-01-03 00:38:32', '2023-01-03 00:38:32'),
(46, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:38:32', '2023-01-03 00:38:32'),
(47, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:38:56', '2023-01-03 00:38:56'),
(48, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:43:28', '2023-01-03 00:43:28'),
(49, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2023-01-03 00:51:29', '2023-01-03 00:51:29'),
(50, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 00:51:30', '2023-01-03 00:51:30'),
(51, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 00:59:21', '2023-01-03 00:59:21'),
(52, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 01:13:27', '2023-01-03 01:13:27'),
(53, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:00:46', '2023-01-03 02:00:46'),
(54, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2023-01-03 02:01:05', '2023-01-03 02:01:05'),
(55, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 02:01:05', '2023-01-03 02:01:05'),
(56, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:01:19', '2023-01-03 02:01:19'),
(57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 02:18:12', '2023-01-03 02:18:12'),
(58, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:18:21', '2023-01-03 02:18:21'),
(59, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:18:29', '2023-01-03 02:18:29'),
(60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 02:18:40', '2023-01-03 02:18:40'),
(61, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:18:52', '2023-01-03 02:18:52'),
(62, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\"}', '2023-01-03 02:19:01', '2023-01-03 02:19:01'),
(63, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 02:19:01', '2023-01-03 02:19:01'),
(64, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:20:45', '2023-01-03 02:20:45'),
(65, 1, 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:21:12', '2023-01-03 02:21:12'),
(66, 1, 'admin/auth/permissions/2', 'PUT', '127.0.0.1', '{\"slug\":\"dashboard\",\"name\":\"Dashboard\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/auth\\/permissions\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2023-01-03 02:21:21', '2023-01-03 02:21:21'),
(67, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 02:21:21', '2023-01-03 02:21:21'),
(68, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:21:24', '2023-01-03 02:21:24'),
(69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 02:21:27', '2023-01-03 02:21:27'),
(70, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:21:32', '2023-01-03 02:21:32'),
(71, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:21:34', '2023-01-03 02:21:34'),
(72, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:21:36', '2023-01-03 02:21:36'),
(73, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:21:40', '2023-01-03 02:21:40'),
(74, 1, 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:21:46', '2023-01-03 02:21:46'),
(75, 1, 'admin/auth/permissions/2', 'PUT', '127.0.0.1', '{\"slug\":\"dashboard\",\"name\":\"Dashboard\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/\",\"_token\":\"VmwLKRqyPd5B7BPFG5U7p73kWDhXhqapWAvclYjU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2023-01-03 02:21:51', '2023-01-03 02:21:51'),
(76, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 02:21:51', '2023-01-03 02:21:51'),
(77, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 02:23:02', '2023-01-03 02:23:02'),
(78, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:23:06', '2023-01-03 02:23:06'),
(79, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:23:29', '2023-01-03 02:23:29'),
(80, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 02:23:37', '2023-01-03 02:23:37'),
(81, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:23:46', '2023-01-03 02:23:46'),
(82, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:24:15', '2023-01-03 02:24:15'),
(83, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 02:24:23', '2023-01-03 02:24:23'),
(84, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 02:25:26', '2023-01-03 02:25:26'),
(85, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:25:36', '2023-01-03 02:25:36'),
(86, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:25:48', '2023-01-03 02:25:48'),
(87, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 02:53:15', '2023-01-03 02:53:15'),
(88, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 02:53:30', '2023-01-03 02:53:30'),
(89, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 03:50:08', '2023-01-03 03:50:08'),
(90, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 03:52:00', '2023-01-03 03:52:00'),
(91, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 03:52:07', '2023-01-03 03:52:07'),
(92, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 03:52:10', '2023-01-03 03:52:10'),
(93, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 03:52:13', '2023-01-03 03:52:13'),
(94, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"2Q1WQ5ukRrScmWbiKI7PHUpXg58KOlTf6nKq4onA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/login\"}', '2023-01-03 03:52:17', '2023-01-03 03:52:17'),
(95, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-03 03:52:17', '2023-01-03 03:52:17'),
(96, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 03:52:25', '2023-01-03 03:52:25'),
(97, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 03:52:32', '2023-01-03 03:52:32'),
(98, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 03:54:03', '2023-01-03 03:54:03'),
(99, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 03:54:07', '2023-01-03 03:54:07'),
(100, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 03:57:32', '2023-01-03 03:57:32'),
(101, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 03:58:21', '2023-01-03 03:58:21'),
(102, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 03:58:44', '2023-01-03 03:58:44'),
(103, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 04:02:19', '2023-01-03 04:02:19'),
(104, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 04:06:38', '2023-01-03 04:06:38'),
(105, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 04:09:35', '2023-01-03 04:09:35'),
(106, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 04:09:57', '2023-01-03 04:09:57'),
(107, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 04:17:16', '2023-01-03 04:17:16'),
(108, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 04:17:28', '2023-01-03 04:17:28'),
(109, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 04:17:35', '2023-01-03 04:17:35'),
(110, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 04:17:48', '2023-01-03 04:17:48'),
(111, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 04:26:24', '2023-01-03 04:26:24'),
(112, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 04:42:54', '2023-01-03 04:42:54'),
(113, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 04:43:07', '2023-01-03 04:43:07'),
(114, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 04:45:48', '2023-01-03 04:45:48'),
(115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 04:46:16', '2023-01-03 04:46:16'),
(116, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 04:46:31', '2023-01-03 04:46:31'),
(117, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 04:47:25', '2023-01-03 04:47:25'),
(118, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:03:41', '2023-01-03 05:03:41'),
(119, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:04:22', '2023-01-03 05:04:22'),
(120, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:05:10', '2023-01-03 05:05:10'),
(121, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:05:31', '2023-01-03 05:05:31'),
(122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:05:44', '2023-01-03 05:05:44'),
(123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:14:08', '2023-01-03 05:14:08'),
(124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:14:42', '2023-01-03 05:14:42'),
(125, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:17:21', '2023-01-03 05:17:21'),
(126, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:18:46', '2023-01-03 05:18:46'),
(127, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:46:00', '2023-01-03 05:46:00'),
(128, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:46:39', '2023-01-03 05:46:39'),
(129, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:47:31', '2023-01-03 05:47:31'),
(130, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:47:49', '2023-01-03 05:47:49'),
(131, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:48:04', '2023-01-03 05:48:04'),
(132, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:49:37', '2023-01-03 05:49:37'),
(133, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:49:48', '2023-01-03 05:49:48'),
(134, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:55:18', '2023-01-03 05:55:18'),
(135, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:55:20', '2023-01-03 05:55:20'),
(136, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 05:55:43', '2023-01-03 05:55:43'),
(137, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 06:15:20', '2023-01-03 06:15:20'),
(138, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 06:23:09', '2023-01-03 06:23:09'),
(139, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 06:23:13', '2023-01-03 06:23:13'),
(140, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 06:27:50', '2023-01-03 06:27:50'),
(141, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 06:29:54', '2023-01-03 06:29:54'),
(142, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 06:49:10', '2023-01-03 06:49:10'),
(143, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 06:50:30', '2023-01-03 06:50:30'),
(144, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 06:50:32', '2023-01-03 06:50:32'),
(145, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2023-01-03 06:51:40', '2023-01-03 06:51:40'),
(146, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2023-01-03 06:54:04', '2023-01-03 06:54:04'),
(147, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2023-01-03 06:55:08', '2023-01-03 06:55:08'),
(148, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:01:40', '2023-01-03 07:01:40'),
(149, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:02:40', '2023-01-03 07:02:40'),
(150, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:02:43', '2023-01-03 07:02:43'),
(151, 1, 'admin/create/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:02:45', '2023-01-03 07:02:45'),
(152, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:02:56', '2023-01-03 07:02:56'),
(153, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:03:00', '2023-01-03 07:03:00'),
(154, 1, 'admin/create/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:03:21', '2023-01-03 07:03:21'),
(155, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:03:42', '2023-01-03 07:03:42'),
(156, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:03:44', '2023-01-03 07:03:44'),
(157, 1, 'admin/create/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:03:46', '2023-01-03 07:03:46'),
(158, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:04:01', '2023-01-03 07:04:01'),
(159, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:04:29', '2023-01-03 07:04:29'),
(160, 1, 'admin/create/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:04:35', '2023-01-03 07:04:35'),
(161, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:04:48', '2023-01-03 07:04:48'),
(162, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:05:28', '2023-01-03 07:05:28'),
(163, 1, 'admin/create/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:05:31', '2023-01-03 07:05:31'),
(164, 1, 'admin/create', 'POST', '127.0.0.1', '{\"slug\":\"9\",\"name\":\"tets\",\"http_method\":[\"POST\",null],\"http_path\":\"test\",\"_token\":\"2Q1WQ5ukRrScmWbiKI7PHUpXg58KOlTf6nKq4onA\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/create\"}', '2023-01-03 07:05:45', '2023-01-03 07:05:45'),
(165, 1, 'admin/create', 'GET', '127.0.0.1', '[]', '2023-01-03 07:05:46', '2023-01-03 07:05:46'),
(166, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"2Q1WQ5ukRrScmWbiKI7PHUpXg58KOlTf6nKq4onA\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-03 07:06:30', '2023-01-03 07:06:30'),
(167, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:06:30', '2023-01-03 07:06:30'),
(168, 1, 'admin/create/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:06:42', '2023-01-03 07:06:42'),
(169, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:06:52', '2023-01-03 07:06:52'),
(170, 1, 'admin/create/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:06:54', '2023-01-03 07:06:54'),
(171, 1, 'admin/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:06:58', '2023-01-03 07:06:58'),
(172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 07:08:10', '2023-01-03 07:08:10'),
(173, 1, 'admin', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2023-01-03 07:08:18', '2023-01-03 07:08:18'),
(174, 1, 'admin', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,id,name,slug,updated_at\",\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:08:52', '2023-01-03 07:08:52'),
(175, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:09:00', '2023-01-03 07:09:00'),
(176, 1, 'admin', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,http_path,id,name,updated_at\",\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:09:10', '2023-01-03 07:09:10'),
(177, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 07:09:46', '2023-01-03 07:09:46'),
(178, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 07:09:53', '2023-01-03 07:09:53'),
(179, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 08:56:17', '2023-01-03 08:56:17'),
(180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 10:42:45', '2023-01-03 10:42:45'),
(181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:00:21', '2023-01-03 11:00:21'),
(182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:02:42', '2023-01-03 11:02:42'),
(183, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:03:45', '2023-01-03 11:03:45'),
(184, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:03:58', '2023-01-03 11:03:58'),
(185, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:04:33', '2023-01-03 11:04:33'),
(186, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:05:05', '2023-01-03 11:05:05'),
(187, 1, 'admin', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2023-01-03 11:05:52', '2023-01-03 11:05:52'),
(188, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:08:43', '2023-01-03 11:08:43'),
(189, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:10:47', '2023-01-03 11:10:47'),
(190, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:11:02', '2023-01-03 11:11:02'),
(191, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:13:16', '2023-01-03 11:13:16'),
(192, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:17:32', '2023-01-03 11:17:32'),
(193, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:17:41', '2023-01-03 11:17:41'),
(194, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 11:19:52', '2023-01-03 11:19:52'),
(195, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 11:28:41', '2023-01-03 11:28:41'),
(196, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:28:52', '2023-01-03 11:28:52'),
(197, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:28:59', '2023-01-03 11:28:59'),
(198, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:29:09', '2023-01-03 11:29:09'),
(199, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:30:03', '2023-01-03 11:30:03'),
(200, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:30:11', '2023-01-03 11:30:11'),
(201, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:30:41', '2023-01-03 11:30:41'),
(202, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:31:14', '2023-01-03 11:31:14'),
(203, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:31:25', '2023-01-03 11:31:25'),
(204, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:31:42', '2023-01-03 11:31:42'),
(205, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Permission\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:32:14', '2023-01-03 11:32:14'),
(206, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:32:15', '2023-01-03 11:32:15'),
(207, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:32:22', '2023-01-03 11:32:22'),
(208, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:32:31', '2023-01-03 11:32:31'),
(209, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:32:42', '2023-01-03 11:32:42'),
(210, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:33:19', '2023-01-03 11:33:19'),
(211, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:33:26', '2023-01-03 11:33:26'),
(212, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:34:40', '2023-01-03 11:34:40'),
(213, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:34:41', '2023-01-03 11:34:41'),
(214, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:34:45', '2023-01-03 11:34:45'),
(215, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:34:50', '2023-01-03 11:34:50'),
(216, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:35:00', '2023-01-03 11:35:00'),
(217, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:35:15', '2023-01-03 11:35:15'),
(218, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:35:26', '2023-01-03 11:35:26'),
(219, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:35:29', '2023-01-03 11:35:29'),
(220, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"auth\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:35:44', '2023-01-03 11:35:44'),
(221, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:35:45', '2023-01-03 11:35:45'),
(222, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:35:48', '2023-01-03 11:35:48'),
(223, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:35:59', '2023-01-03 11:35:59'),
(224, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:36:01', '2023-01-03 11:36:01'),
(225, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:36:08', '2023-01-03 11:36:08'),
(226, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:36:09', '2023-01-03 11:36:09'),
(227, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:36:17', '2023-01-03 11:36:17'),
(228, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:36:39', '2023-01-03 11:36:39'),
(229, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:36:43', '2023-01-03 11:36:43'),
(230, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:37:06', '2023-01-03 11:37:06'),
(231, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:37:52', '2023-01-03 11:37:52'),
(232, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:37:58', '2023-01-03 11:37:58'),
(233, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:38:19', '2023-01-03 11:38:19'),
(234, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:38:27', '2023-01-03 11:38:27'),
(235, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:38:42', '2023-01-03 11:38:42'),
(236, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:39:19', '2023-01-03 11:39:19'),
(237, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:39:32', '2023-01-03 11:39:32'),
(238, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:39:52', '2023-01-03 11:39:52'),
(239, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:39:52', '2023-01-03 11:39:52'),
(240, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:39:55', '2023-01-03 11:39:55'),
(241, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:39:59', '2023-01-03 11:39:59'),
(242, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:40:11', '2023-01-03 11:40:11'),
(243, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:40:15', '2023-01-03 11:40:15'),
(244, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:40:47', '2023-01-03 11:40:47'),
(245, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:40:53', '2023-01-03 11:40:53'),
(246, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:41:11', '2023-01-03 11:41:11'),
(247, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:41:19', '2023-01-03 11:41:19'),
(248, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:41:27', '2023-01-03 11:41:27'),
(249, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:42:42', '2023-01-03 11:42:42'),
(250, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:42:54', '2023-01-03 11:42:54'),
(251, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":5}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-01-03 11:43:07', '2023-01-03 11:43:07'),
(252, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:43:07', '2023-01-03 11:43:07'),
(253, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:43:22', '2023-01-03 11:43:22'),
(254, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:43:27', '2023-01-03 11:43:27'),
(255, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:43:57', '2023-01-03 11:43:57'),
(256, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:44:31', '2023-01-03 11:44:31'),
(257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:44:36', '2023-01-03 11:44:36'),
(258, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:45:27', '2023-01-03 11:45:27'),
(259, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:45:42', '2023-01-03 11:45:42'),
(260, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:45:51', '2023-01-03 11:45:51'),
(261, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:46:09', '2023-01-03 11:46:09'),
(262, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:46:44', '2023-01-03 11:46:44'),
(263, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_order\":\"[{\\\"id\\\":5},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-01-03 11:47:20', '2023-01-03 11:47:20'),
(264, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:47:20', '2023-01-03 11:47:20'),
(265, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:47:24', '2023-01-03 11:47:24'),
(266, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:47:27', '2023-01-03 11:47:27'),
(267, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:47:30', '2023-01-03 11:47:30'),
(268, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:47:34', '2023-01-03 11:47:34'),
(269, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:47:44', '2023-01-03 11:47:44'),
(270, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:47:48', '2023-01-03 11:47:48'),
(271, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:47:58', '2023-01-03 11:47:58'),
(272, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:47:59', '2023-01-03 11:47:59'),
(273, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:48:07', '2023-01-03 11:48:07'),
(274, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:48:09', '2023-01-03 11:48:09'),
(275, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:48:15', '2023-01-03 11:48:15'),
(276, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:48:19', '2023-01-03 11:48:19'),
(277, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dashboard\",\"icon\":\"fa-bar-chart\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:48:27', '2023-01-03 11:48:27'),
(278, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:48:28', '2023-01-03 11:48:28'),
(279, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:48:31', '2023-01-03 11:48:31'),
(280, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:48:34', '2023-01-03 11:48:34'),
(281, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:48:37', '2023-01-03 11:48:37'),
(282, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:48:40', '2023-01-03 11:48:40'),
(283, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:48:43', '2023-01-03 11:48:43'),
(284, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:48:46', '2023-01-03 11:48:46'),
(285, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:48:56', '2023-01-03 11:48:56'),
(286, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:48:59', '2023-01-03 11:48:59'),
(287, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:49:02', '2023-01-03 11:49:02'),
(288, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:49:15', '2023-01-03 11:49:15'),
(289, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:49:15', '2023-01-03 11:49:15'),
(290, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:49:28', '2023-01-03 11:49:28'),
(291, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:49:33', '2023-01-03 11:49:33'),
(292, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:49:37', '2023-01-03 11:49:37'),
(293, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:49:40', '2023-01-03 11:49:40'),
(294, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dashboard\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 11:49:46', '2023-01-03 11:49:46'),
(295, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 11:49:47', '2023-01-03 11:49:47'),
(296, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":5}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-01-03 11:50:03', '2023-01-03 11:50:03'),
(297, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:50:04', '2023-01-03 11:50:04'),
(298, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:50:16', '2023-01-03 11:50:16'),
(299, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:50:20', '2023-01-03 11:50:20'),
(300, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:50:50', '2023-01-03 11:50:50'),
(301, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:50:54', '2023-01-03 11:50:54'),
(302, 1, 'admin/auth/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:51:40', '2023-01-03 11:51:40'),
(303, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2023-01-03 11:51:41', '2023-01-03 11:51:41'),
(304, 1, 'admin/auth/menu/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:51:53', '2023-01-03 11:51:53'),
(305, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2023-01-03 11:51:54', '2023-01-03 11:51:54'),
(306, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:52:04', '2023-01-03 11:52:04'),
(307, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:52:31', '2023-01-03 11:52:31'),
(308, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:52:46', '2023-01-03 11:52:46'),
(309, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:53:14', '2023-01-03 11:53:14'),
(310, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:53:48', '2023-01-03 11:53:48'),
(311, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:54:26', '2023-01-03 11:54:26'),
(312, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:57:09', '2023-01-03 11:57:09'),
(313, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 11:57:11', '2023-01-03 11:57:11'),
(314, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:59:15', '2023-01-03 11:59:15'),
(315, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 11:59:42', '2023-01-03 11:59:42'),
(316, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:00:03', '2023-01-03 12:00:03'),
(317, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:00:19', '2023-01-03 12:00:19'),
(318, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:00:35', '2023-01-03 12:00:35'),
(319, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:01:47', '2023-01-03 12:01:47'),
(320, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:02:01', '2023-01-03 12:02:01'),
(321, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"Permissions\",\"icon\":\"fa-adjust\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 12:02:24', '2023-01-03 12:02:24'),
(322, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:02:25', '2023-01-03 12:02:25'),
(323, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":5}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":8},{\\\"id\\\":4},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-01-03 12:02:34', '2023-01-03 12:02:34'),
(324, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:02:35', '2023-01-03 12:02:35'),
(325, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:02:43', '2023-01-03 12:02:43'),
(326, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:02:48', '2023-01-03 12:02:48'),
(327, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:02:56', '2023-01-03 12:02:56'),
(328, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:03:00', '2023-01-03 12:03:00'),
(329, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:03:06', '2023-01-03 12:03:06'),
(330, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:03:16', '2023-01-03 12:03:16'),
(331, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:03:19', '2023-01-03 12:03:19'),
(332, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-03 12:08:40', '2023-01-03 12:08:40'),
(333, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:08:47', '2023-01-03 12:08:47'),
(334, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:08:51', '2023-01-03 12:08:51'),
(335, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"auth\\/products\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 12:09:01', '2023-01-03 12:09:01'),
(336, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:09:01', '2023-01-03 12:09:01'),
(337, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:10:38', '2023-01-03 12:10:38'),
(338, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:10:56', '2023-01-03 12:10:56'),
(339, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"auth\\/products\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 12:11:09', '2023-01-03 12:11:09'),
(340, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:11:09', '2023-01-03 12:11:09'),
(341, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 12:23:35', '2023-01-03 12:23:35'),
(342, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 12:23:36', '2023-01-03 12:23:36'),
(343, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:23:42', '2023-01-03 12:23:42'),
(344, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:24:11', '2023-01-03 12:24:11'),
(345, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:24:14', '2023-01-03 12:24:14'),
(346, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"Products\",\"icon\":\"fa-amazon\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 12:24:22', '2023-01-03 12:24:22'),
(347, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:24:22', '2023-01-03 12:24:22'),
(348, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 12:25:21', '2023-01-03 12:25:21'),
(349, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:25:25', '2023-01-03 12:25:25'),
(350, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:25:33', '2023-01-03 12:25:33'),
(351, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test\",\"email\":\"0\",\"description\":\"sdasdas\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"3\",\"status\":\"2\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-03 12:26:05', '2023-01-03 12:26:05'),
(352, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-01-03 12:26:06', '2023-01-03 12:26:06'),
(353, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test\",\"email\":\"0\",\"description\":\"sdasdas\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"3\",\"status\":\"2\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\"}', '2023-01-03 12:26:37', '2023-01-03 12:26:37'),
(354, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-01-03 12:26:37', '2023-01-03 12:26:37'),
(355, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:26:43', '2023-01-03 12:26:43'),
(356, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:27:34', '2023-01-03 12:27:34'),
(357, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:27:37', '2023-01-03 12:27:37'),
(358, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:30:52', '2023-01-03 12:30:52'),
(359, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:30:57', '2023-01-03 12:30:57');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(360, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test\",\"email\":\"rajesh@tabsquare.com\",\"description\":\"test\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"3\",\"status\":\"1\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-03 12:31:24', '2023-01-03 12:31:24'),
(361, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-01-03 12:31:25', '2023-01-03 12:31:25'),
(362, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:34:31', '2023-01-03 12:34:31'),
(363, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:34:37', '2023-01-03 12:34:37'),
(364, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"rajesh\",\"email\":\"rajeshb@tabsquare.com\",\"description\":\"test\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-03 12:35:03', '2023-01-03 12:35:03'),
(365, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:35:03', '2023-01-03 12:35:03'),
(366, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:35:25', '2023-01-03 12:35:25'),
(367, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"name\":\"rajesh\",\"email\":\"rajeshb@tabsquare.com\",\"description\":\"test1234\",\"no_of_bedrooms\":\"5\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-03 12:35:47', '2023-01-03 12:35:47'),
(368, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:35:48', '2023-01-03 12:35:48'),
(369, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:37:58', '2023-01-03 12:37:58'),
(370, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:38:03', '2023-01-03 12:38:03'),
(371, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"rajesh\",\"price\":\"10\",\"description\":\"test\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"3\",\"status\":\"1\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-03 12:38:24', '2023-01-03 12:38:24'),
(372, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:38:25', '2023-01-03 12:38:25'),
(373, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:38:30', '2023-01-03 12:38:30'),
(374, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"test2\",\"price\":\"5\",\"description\":\"test\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-03 12:38:50', '2023-01-03 12:38:50'),
(375, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-03 12:38:50', '2023-01-03 12:38:50'),
(376, 1, 'admin/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:38:54', '2023-01-03 12:38:54'),
(377, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:38:58', '2023-01-03 12:38:58'),
(378, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Product\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-03 12:39:03', '2023-01-03 12:39:03'),
(379, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:39:03', '2023-01-03 12:39:03'),
(380, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:39:11', '2023-01-03 12:39:11'),
(381, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2023-01-03 12:39:22', '2023-01-03 12:39:22'),
(382, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_columns_\":\"description,id,name,no_of_bathrooms,no_of_bedrooms,price,status\",\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:39:43', '2023-01-03 12:39:43'),
(383, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:43:15', '2023-01-03 12:43:15'),
(384, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:43:26', '2023-01-03 12:43:26'),
(385, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:43:32', '2023-01-03 12:43:32'),
(386, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:43:58', '2023-01-03 12:43:58'),
(387, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-03 12:47:31', '2023-01-03 12:47:31'),
(388, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 12:47:33', '2023-01-03 12:47:33'),
(389, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:47:38', '2023-01-03 12:47:38'),
(390, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-01-03 12:48:13', '2023-01-03 12:48:13'),
(391, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-01-03 12:49:21', '2023-01-03 12:49:21'),
(392, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:49:26', '2023-01-03 12:49:26'),
(393, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:49:36', '2023-01-03 12:49:36'),
(394, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:49:39', '2023-01-03 12:49:39'),
(395, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"users\",\"icon\":\"fa-amazon\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 12:49:46', '2023-01-03 12:49:46'),
(396, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:49:46', '2023-01-03 12:49:46'),
(397, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:49:51', '2023-01-03 12:49:51'),
(398, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"Users Management\",\"icon\":\"fa-amazon\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 12:50:09', '2023-01-03 12:50:09'),
(399, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:50:10', '2023-01-03 12:50:10'),
(400, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:50:15', '2023-01-03 12:50:15'),
(401, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:50:18', '2023-01-03 12:50:18'),
(402, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:50:24', '2023-01-03 12:50:24'),
(403, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"rajesh\",\"email\":\"rajeshpavasi@gmail.com\",\"email_verified_at\":\"2023-01-03 18:20:24\",\"password\":\"Test@123\",\"remember_token\":\"test\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2023-01-03 12:50:57', '2023-01-03 12:50:57'),
(404, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-01-03 12:50:57', '2023-01-03 12:50:57'),
(405, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-01-03 12:54:18', '2023-01-03 12:54:18'),
(406, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:54:48', '2023-01-03 12:54:48'),
(407, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:54:51', '2023-01-03 12:54:51'),
(408, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"Users Management\",\"icon\":\"fa-user\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"nTA811VUctJfN75DXBIkIPJj517CR6vIfV03WlqD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-01-03 12:55:17', '2023-01-03 12:55:17'),
(409, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:55:18', '2023-01-03 12:55:18'),
(410, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-01-03 12:55:23', '2023-01-03 12:55:23'),
(411, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:55:37', '2023-01-03 12:55:37'),
(412, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 12:55:40', '2023-01-03 12:55:40'),
(413, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:55:44', '2023-01-03 12:55:44'),
(414, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:55:48', '2023-01-03 12:55:48'),
(415, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-03 12:57:34', '2023-01-03 12:57:34'),
(416, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:57:38', '2023-01-03 12:57:38'),
(417, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:57:41', '2023-01-03 12:57:41'),
(418, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:57:44', '2023-01-03 12:57:44'),
(419, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-03 12:58:06', '2023-01-03 12:58:06'),
(420, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 00:37:50', '2023-01-04 00:37:50'),
(421, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:37:56', '2023-01-04 00:37:56'),
(422, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:41:51', '2023-01-04 00:41:51'),
(423, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:41:58', '2023-01-04 00:41:58'),
(424, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"2BHK\",\"price\":\"5000\",\"description\":\"better  for seaside\",\"no_of_bedrooms\":\"3\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"7ubikRlsgFcNf8aqdjkyFRrcquzOIfcbeoQcZGOr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 00:43:40', '2023-01-04 00:43:40'),
(425, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 00:43:41', '2023-01-04 00:43:41'),
(426, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Product\",\"_token\":\"7ubikRlsgFcNf8aqdjkyFRrcquzOIfcbeoQcZGOr\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 00:43:47', '2023-01-04 00:43:47'),
(427, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:43:47', '2023-01-04 00:43:47'),
(428, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:43:53', '2023-01-04 00:43:53'),
(429, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"3BHK\",\"price\":\"7000\",\"description\":\"GOOD FOR FAMILY\",\"no_of_bedrooms\":\"4\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"7ubikRlsgFcNf8aqdjkyFRrcquzOIfcbeoQcZGOr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 00:44:24', '2023-01-04 00:44:24'),
(430, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 00:44:24', '2023-01-04 00:44:24'),
(431, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:44:27', '2023-01-04 00:44:27'),
(432, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"4BHK\",\"price\":\"80000\",\"description\":\"NICE ENVIRONMENTAL\",\"no_of_bedrooms\":\"5\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"7ubikRlsgFcNf8aqdjkyFRrcquzOIfcbeoQcZGOr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 00:45:02', '2023-01-04 00:45:02'),
(433, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 00:45:02', '2023-01-04 00:45:02'),
(434, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:45:06', '2023-01-04 00:45:06'),
(435, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"1RK\",\"price\":\"3000\",\"description\":\"GOOD FOR SINGLE\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"1\",\"status\":\"1\",\"_token\":\"7ubikRlsgFcNf8aqdjkyFRrcquzOIfcbeoQcZGOr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 00:45:31', '2023-01-04 00:45:31'),
(436, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 00:45:31', '2023-01-04 00:45:31'),
(437, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:45:48', '2023-01-04 00:45:48'),
(438, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"VILLA\",\"price\":\"10000\",\"description\":\"PEACEFULL PLACE\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"7ubikRlsgFcNf8aqdjkyFRrcquzOIfcbeoQcZGOr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 00:46:27', '2023-01-04 00:46:27'),
(439, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 00:46:27', '2023-01-04 00:46:27'),
(440, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:47:00', '2023-01-04 00:47:00'),
(441, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 00:47:35', '2023-01-04 00:47:35'),
(442, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 12:04:56', '2023-01-04 12:04:56'),
(443, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:05:01', '2023-01-04 12:05:01'),
(444, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:05:20', '2023-01-04 12:05:20'),
(445, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"1BHK\",\"price\":\"3000\",\"description\":\"this is limited only available\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"1\",\"status\":\"1\",\"_token\":\"9LaXEDEhVdd1omVj2EcWSfvpg4uN0EVbJwkej6UL\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:06:19', '2023-01-04 12:06:19'),
(446, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:06:19', '2023-01-04 12:06:19'),
(447, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:06:41', '2023-01-04 12:06:41'),
(448, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 12:22:44', '2023-01-04 12:22:44'),
(449, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:22:52', '2023-01-04 12:22:52'),
(450, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:25:24', '2023-01-04 12:25:24'),
(451, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:25:24', '2023-01-04 12:25:24'),
(452, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:26:09', '2023-01-04 12:26:09'),
(453, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Small\",\"price\":\"2000\",\"description\":\"this is very small villa\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"1\",\"status\":\"1\",\"_token\":\"SU7qN1YRgXRw86aKr7f2lhYWi34hJL85KamvnljG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:26:43', '2023-01-04 12:26:43'),
(454, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:26:44', '2023-01-04 12:26:44'),
(455, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:26:51', '2023-01-04 12:26:51'),
(456, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 12:31:37', '2023-01-04 12:31:37'),
(457, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:31:41', '2023-01-04 12:31:41'),
(458, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:31:45', '2023-01-04 12:31:45'),
(459, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"hut\",\"price\":\"1000\",\"description\":\"this is hut\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"1\",\"status\":\"1\",\"_token\":\"wNFn64Jq41IvPqSb23B5KnxWfz76BQMM7oGyclU3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:32:12', '2023-01-04 12:32:12'),
(460, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:32:13', '2023-01-04 12:32:13'),
(461, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:33:56', '2023-01-04 12:33:56'),
(462, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 12:34:54', '2023-01-04 12:34:54'),
(463, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:34:58', '2023-01-04 12:34:58'),
(464, 1, 'admin/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:35:05', '2023-01-04 12:35:05'),
(465, 1, 'admin/products/3', 'PUT', '127.0.0.1', '{\"name\":\"2BHK\",\"price\":\"5000\",\"description\":\"better  for seaside\",\"no_of_bedrooms\":\"3\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:35:19', '2023-01-04 12:35:19'),
(466, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:35:19', '2023-01-04 12:35:19'),
(467, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:36:06', '2023-01-04 12:36:06'),
(468, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"tets\",\"price\":\"12\",\"description\":\"res\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"1\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:36:28', '2023-01-04 12:36:28'),
(469, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:36:29', '2023-01-04 12:36:29'),
(470, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"3\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:36:44', '2023-01-04 12:36:44'),
(471, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:36:44', '2023-01-04 12:36:44'),
(472, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"4\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:36:51', '2023-01-04 12:36:51'),
(473, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:36:52', '2023-01-04 12:36:52'),
(474, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"5\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:36:58', '2023-01-04 12:36:58'),
(475, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:36:58', '2023-01-04 12:36:58'),
(476, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:37:04', '2023-01-04 12:37:04'),
(477, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:37:04', '2023-01-04 12:37:04'),
(478, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:37:10', '2023-01-04 12:37:10'),
(479, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:37:11', '2023-01-04 12:37:11'),
(480, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:37:17', '2023-01-04 12:37:17'),
(481, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:37:17', '2023-01-04 12:37:17'),
(482, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:37:23', '2023-01-04 12:37:23'),
(483, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:37:23', '2023-01-04 12:37:23'),
(484, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"10\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:37:28', '2023-01-04 12:37:28'),
(485, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:37:29', '2023-01-04 12:37:29'),
(486, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"11\",\"_model\":\"App_Product\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-04 12:37:34', '2023-01-04 12:37:34'),
(487, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:37:34', '2023-01-04 12:37:34'),
(488, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:38:11', '2023-01-04 12:38:11'),
(489, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:38:14', '2023-01-04 12:38:14'),
(490, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"IBHK\",\"price\":\"1000\",\"description\":\"There\'s so much you can do with a 1 BHK home although it seems hard to believe. The key is to smartly fill whatever little floor and wall space you have with multi-functional and eye-catchy elements without overcrowding it\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"1\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:39:55', '2023-01-04 12:39:55'),
(491, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:39:56', '2023-01-04 12:39:56'),
(492, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:39:59', '2023-01-04 12:39:59'),
(493, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"2BHK\",\"price\":\"2000\",\"description\":\"A house plan is a drawing or layout that shows the physical features from a top view. A 2bhk house plan is the floor plan that elaborates on the design of 2 bhk flats\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:40:48', '2023-01-04 12:40:48'),
(494, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:40:48', '2023-01-04 12:40:48'),
(495, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:40:50', '2023-01-04 12:40:50'),
(496, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"3BHK\",\"price\":\"3000\",\"description\":\"Think three bedrooms in a city apartment\\u2014or a 3BHK as is the commonly used crisp shorthand\\u2014and you\\u2019re immediately imagining the greater space at hand to install the very many interior design ideas for 3BHKs that crowd your mind.\",\"no_of_bedrooms\":\"3\",\"no_of_bathrooms\":\"3\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:42:44', '2023-01-04 12:42:44'),
(497, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:42:45', '2023-01-04 12:42:45'),
(498, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:43:54', '2023-01-04 12:43:54'),
(499, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"4BHK\",\"price\":\"4000\",\"description\":\"4 bhk flats offer this intimacy as everyone has their personal space. Privacy and space are something that youth look forward to before finalizing an apartment. Be it a young couple or a family with elderly and children, everybody would want some \\u2018me-time\\u2019.\",\"no_of_bedrooms\":\"4\",\"no_of_bathrooms\":\"4\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:44:56', '2023-01-04 12:44:56'),
(500, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-01-04 12:44:57', '2023-01-04 12:44:57'),
(501, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"4BHK\",\"price\":\"4000\",\"description\":\"4 bhk flats offer this intimacy as everyone has their personal space. Privacy and space are something that youth look forward to before finalizing an apartment.\",\"no_of_bedrooms\":\"4\",\"no_of_bathrooms\":\"4\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\"}', '2023-01-04 12:45:22', '2023-01-04 12:45:22'),
(502, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-01-04 12:45:23', '2023-01-04 12:45:23'),
(503, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"4BHK\",\"price\":\"4000\",\"description\":\"4 bhk flats offer this intimacy as everyone has their personal space. Privacy and space are something that youth look forward to before finalizing an apartment.\",\"no_of_bedrooms\":\"4\",\"no_of_bathrooms\":\"4\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\"}', '2023-01-04 12:45:39', '2023-01-04 12:45:39'),
(504, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:45:39', '2023-01-04 12:45:39'),
(505, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:45:55', '2023-01-04 12:45:55'),
(506, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"VILLA\",\"price\":\"5000\",\"description\":\"he word \\u201cluxury\\u201d is perhaps one that gets thrown around and used a bit too often in the world of travel and hospitality.\",\"no_of_bedrooms\":\"1\",\"no_of_bathrooms\":\"1\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:46:42', '2023-01-04 12:46:42'),
(507, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:46:43', '2023-01-04 12:46:43'),
(508, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:48:39', '2023-01-04 12:48:39'),
(509, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Duplex\",\"price\":\"5000\",\"description\":\"A duplex house is a residential building constructed on two floors. It has a single dining room and a single kitchen\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:49:50', '2023-01-04 12:49:50'),
(510, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:49:51', '2023-01-04 12:49:51'),
(511, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:50:11', '2023-01-04 12:50:11'),
(512, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"password_confirmation\":\"$2y$10$A5GDtCu4\\/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe\",\"_token\":\"15QEBJJQ68LkIxfarzuQuC6YOBXVFtkTVVjrndQm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:50:30', '2023-01-04 12:50:30'),
(513, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-04 12:50:30', '2023-01-04 12:50:30'),
(514, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:50:37', '2023-01-04 12:50:37'),
(515, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 12:54:40', '2023-01-04 12:54:40'),
(516, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:55:10', '2023-01-04 12:55:10'),
(517, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:55:31', '2023-01-04 12:55:31'),
(518, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:55:54', '2023-01-04 12:55:54'),
(519, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:58:33', '2023-01-04 12:58:33'),
(520, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:58:36', '2023-01-04 12:58:36'),
(521, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:58:39', '2023-01-04 12:58:39'),
(522, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:58:42', '2023-01-04 12:58:42'),
(523, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:58:46', '2023-01-04 12:58:46'),
(524, 1, 'admin/products/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:58:53', '2023-01-04 12:58:53'),
(525, 1, 'admin/products/17', 'PUT', '127.0.0.1', '{\"name\":\"Duplex\",\"price\":\"5000\",\"description\":\"A duplex house is a residential building constructed on two floors. It has a single dining room and a single kitchen\",\"no_of_bedrooms\":\"2\",\"no_of_bathrooms\":\"2\",\"status\":\"1\",\"_token\":\"IqCTh8HDb7dOk568oallDZDRg7gHThrbg3D0BdG0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-01-04 12:58:59', '2023-01-04 12:58:59'),
(526, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-01-04 12:59:00', '2023-01-04 12:59:00'),
(527, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 12:59:04', '2023-01-04 12:59:04'),
(528, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 12:59:17', '2023-01-04 12:59:17'),
(529, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:17:46', '2023-01-04 13:17:46'),
(530, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:18:11', '2023-01-04 13:18:11'),
(531, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:20:49', '2023-01-04 13:20:49'),
(532, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:20:54', '2023-01-04 13:20:54'),
(533, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:20:57', '2023-01-04 13:20:57'),
(534, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:21:36', '2023-01-04 13:21:36'),
(535, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:23:02', '2023-01-04 13:23:02'),
(536, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:24:15', '2023-01-04 13:24:15'),
(537, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:26:27', '2023-01-04 13:26:27'),
(538, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:26:44', '2023-01-04 13:26:44'),
(539, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:27:45', '2023-01-04 13:27:45'),
(540, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:28:08', '2023-01-04 13:28:08'),
(541, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:28:25', '2023-01-04 13:28:25'),
(542, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:29:07', '2023-01-04 13:29:07'),
(543, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:29:16', '2023-01-04 13:29:16'),
(544, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:29:33', '2023-01-04 13:29:33'),
(545, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:29:40', '2023-01-04 13:29:40'),
(546, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:29:43', '2023-01-04 13:29:43'),
(547, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:30:25', '2023-01-04 13:30:25'),
(548, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-04 13:46:23', '2023-01-04 13:46:23'),
(549, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:46:37', '2023-01-04 13:46:37'),
(550, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2023-01-04 13:46:52', '2023-01-04 13:46:52'),
(551, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:47:31', '2023-01-04 13:47:31'),
(552, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:47:37', '2023-01-04 13:47:37'),
(553, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-04 13:48:14', '2023-01-04 13:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, '2023-01-03 02:21:51'),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\n/auth/permissions\n/auth/menu\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-01-02 12:37:03', '2023-01-02 12:37:03');

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
(1, 2, NULL, NULL);

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
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$A5GDtCu4/Zer.29ZplMpvu.fU.Vre1s4lykNrGQ4Bhqbuk71Z0BPe', 'Administrator', 'images/ibuild.png', 'vWcWddwM0nY0hngUPWppUjjJNVEvlteRImMmai3aXNnDEwA6SyJbFvMncXDM', '2023-01-02 12:37:02', '2023-01-04 12:50:30');

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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_01_04_173148_create_admin_tables', 2),
(5, '2023_01_02_000000_create_products_table', 3),
(6, '2023_01_03_000000_create_products_table', 4),
(7, '2023_01_03_230000_create_products_table', 5),
(8, '2023_01_03_231000_create_products_table', 6);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `no_of_bedrooms` int(11) NOT NULL,
  `no_of_bathrooms` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `img`, `no_of_bedrooms`, `no_of_bathrooms`, `status`, `created_at`, `updated_at`) VALUES
(12, 'IBHK', 1000, 'There\'s so much you can do with a 1 BHK home although it seems hard to believe. The key is to smartly fill whatever little floor and wall space you have with multi-functional and eye-catchy elements without overcrowding it', 'images/VILLA.jfif', 1, 1, 1, '2023-01-04 12:39:55', '2023-01-04 12:39:55'),
(13, '2BHK', 2000, 'A house plan is a drawing or layout that shows the physical features from a top view. A 2bhk house plan is the floor plan that elaborates on the design of 2 bhk flats', 'images/2BHK.jfif', 2, 2, 1, '2023-01-04 12:40:48', '2023-01-04 12:40:48'),
(14, '3BHK', 3000, 'Think three bedrooms in a city apartment—or a 3BHK as is the commonly used crisp shorthand—and you’re immediately imagining the greater space at hand to install the very many interior design ideas for 3BHKs that crowd your mind.', 'images/3BHK.jfif', 3, 3, 1, '2023-01-04 12:42:45', '2023-01-04 12:42:45'),
(15, '4BHK', 4000, '4 bhk flats offer this intimacy as everyone has their personal space. Privacy and space are something that youth look forward to before finalizing an apartment.', 'images/419c5b0c23a6410bf3fdc83d8dbc327d.png', 4, 4, 1, '2023-01-04 12:45:39', '2023-01-04 12:45:39'),
(16, 'VILLA', 5000, 'he word “luxury” is perhaps one that gets thrown around and used a bit too often in the world of travel and hospitality.', 'images/2f5aa2f5674c7ff5ce4082d158af6bac.jfif', 1, 1, 1, '2023-01-04 12:46:42', '2023-01-04 12:46:42'),
(17, 'Duplex', 5000, 'A duplex house is a residential building constructed on two floors. It has a single dining room and a single kitchen', 'images/DUBLEX.jfif', 2, 2, 1, '2023-01-04 12:49:51', '2023-01-04 12:49:51');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rajesh', 'rajeshpavasi@gmail.com', '2023-01-03 19:24:22', '$2y$10$ZK6xk8iZ71muPT8MwqsZPOqwPnws7/kg7sj9sNPgGmTj84CDSBbFy', 'Test@123', '2023-01-02 19:24:22', '2023-01-02 19:24:22');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
