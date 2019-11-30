-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2019 at 06:16 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `time`, `date`, `email`) VALUES
(32, '04:53:11', '2019-09-09', 'raju@gmail.com'),
(33, '06:18:00', '2019-11-17', 'raju@gmail.com'),
(34, '06:28:00', '2019-11-17', 'raju1@gmail.com'),
(35, '06:47:00', '2019-11-17', 'raju@gmail.com'),
(36, '12:44:00', '2019-11-18', 'raju@gmail.com'),
(37, '05:01:00', '2019-11-18', 'raju11@gmail.com'),
(38, '05:19:00', '2019-11-18', 'raju11@gmail.com'),
(39, '05:50:00', '2019-11-18', 'raju@gmail.com'),
(40, '12:03:00', '2019-11-20', 'raju@gmail.com'),
(41, '01:11:00', '2019-11-20', 'raju@gmail.com'),
(42, '01:14:00', '2019-11-20', 'raju@gmail.com'),
(43, '01:23:00', '2019-11-20', 'raju1@gmail.com'),
(44, '02:05:00', '2019-11-20', 'raju1@gmail.com'),
(45, '02:30:00', '2019-11-20', 'raju1@gmail.com'),
(46, '02:06:00', '2019-11-24', 'raju1@gmail.com'),
(47, '04:22:00', '2019-11-24', 'kazi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '6', NULL),
('author', '6', 1574339479),
('editor', '6', 1574588682),
('guest', '7', 1574588771),
('guest', '8', 1574588779),
('guest', '9', 1574588786),
('super admin', '6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_bin,
  `rule_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `data` text COLLATE utf8_bin,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/admin/*', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1574587700, 1574587700),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1574587672, 1574587672),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1574587666, 1574587666),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1574587698, 1574587698),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1574587670, 1574587670),
('/admin/default/*', 2, NULL, NULL, NULL, 1574587705, 1574587705),
('/admin/default/index', 2, NULL, NULL, NULL, 1574587702, 1574587702),
('/admin/menu/*', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/menu/create', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/menu/index', 2, NULL, NULL, NULL, 1574587706, 1574587706),
('/admin/menu/update', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/menu/view', 2, NULL, NULL, NULL, 1574587708, 1574587708),
('/admin/permission/*', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/permission/create', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/permission/index', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/permission/update', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/permission/view', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/role/*', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/role/assign', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/role/create', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/role/delete', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/role/index', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/role/remove', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/role/update', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/role/view', 2, NULL, NULL, NULL, 1574587725, 1574587725),
('/admin/route/*', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/route/assign', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/route/create', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/route/index', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/route/remove', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/rule/*', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/rule/create', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/rule/index', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/rule/update', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/rule/view', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/user/*', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/user/activate', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/user/delete', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/user/index', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/user/login', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/admin/user/logout', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/user/signup', 2, NULL, NULL, NULL, 1574587743, 1574587743),
('/admin/user/view', 2, NULL, NULL, NULL, 1574587736, 1574587736),
('/attendance/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/attendance/create', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/attendance/delete', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/attendance/history', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/attendance/index', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/attendance/update', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/attendance/view', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/authassignment/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/authassignment/create', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/authassignment/delete', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/authassignment/index', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/authassignment/update', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/authassignment/view', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/default/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/default/index', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/default/view', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/user/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/gii/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/gii/default/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/gii/default/action', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/gii/default/diff', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/gii/default/index', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/gii/default/preview', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/gii/default/view', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/about', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/attendance', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/captcha', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/contact', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/dashboard', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/error', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/index', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/login', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/logout', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/site/signup', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/user/*', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/user/create', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/user/delete', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/user/index', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/user/update', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('/user/view', 2, NULL, NULL, NULL, 1574588376, 1574588376),
('admin', 1, 'admin can do CRUD function', NULL, NULL, NULL, NULL),
('author', 1, NULL, NULL, NULL, 1574337470, 1574337506),
('editor', 2, NULL, NULL, NULL, 1574587563, 1574587563),
('guest', 2, NULL, NULL, NULL, 1574588713, 1574589018),
('super admin', 2, 'super admin activity', NULL, NULL, NULL, 1574583573);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_bin NOT NULL,
  `child` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', 'author'),
('admin', 'super admin'),
('author', 'super admin'),
('guest', '/attendance/*'),
('guest', '/site/*'),
('super admin', '/*'),
('super admin', '/admin/*'),
('super admin', '/admin/assignment/*'),
('super admin', '/admin/assignment/assign'),
('super admin', '/admin/assignment/index'),
('super admin', '/admin/assignment/revoke'),
('super admin', '/admin/assignment/view'),
('super admin', '/admin/default/*'),
('super admin', '/admin/default/index'),
('super admin', '/admin/menu/*'),
('super admin', '/admin/menu/create'),
('super admin', '/admin/menu/delete'),
('super admin', '/admin/menu/index'),
('super admin', '/admin/menu/update'),
('super admin', '/admin/menu/view'),
('super admin', '/admin/permission/*'),
('super admin', '/admin/permission/assign'),
('super admin', '/admin/permission/create'),
('super admin', '/admin/permission/delete'),
('super admin', '/admin/permission/index'),
('super admin', '/admin/permission/remove'),
('super admin', '/admin/permission/update'),
('super admin', '/admin/permission/view'),
('super admin', '/admin/role/*'),
('super admin', '/admin/role/assign'),
('super admin', '/admin/role/create'),
('super admin', '/admin/role/delete'),
('super admin', '/admin/role/index'),
('super admin', '/admin/role/remove'),
('super admin', '/admin/role/update'),
('super admin', '/admin/role/view'),
('super admin', '/admin/route/*'),
('super admin', '/admin/route/assign'),
('super admin', '/admin/route/create'),
('super admin', '/admin/route/index'),
('super admin', '/admin/route/refresh'),
('super admin', '/admin/route/remove'),
('super admin', '/admin/rule/*'),
('super admin', '/admin/rule/create'),
('super admin', '/admin/rule/delete'),
('super admin', '/admin/rule/index'),
('super admin', '/admin/rule/update'),
('super admin', '/admin/rule/view'),
('super admin', '/admin/user/*'),
('super admin', '/admin/user/activate'),
('super admin', '/admin/user/change-password'),
('super admin', '/admin/user/delete'),
('super admin', '/admin/user/index'),
('super admin', '/admin/user/login'),
('super admin', '/admin/user/logout'),
('super admin', '/admin/user/request-password-reset'),
('super admin', '/admin/user/reset-password'),
('super admin', '/admin/user/signup'),
('super admin', '/admin/user/view'),
('super admin', '/attendance/*'),
('super admin', '/attendance/create'),
('super admin', '/attendance/delete'),
('super admin', '/attendance/history'),
('super admin', '/attendance/index'),
('super admin', '/attendance/update'),
('super admin', '/attendance/view'),
('super admin', '/authassignment/*'),
('super admin', '/authassignment/create'),
('super admin', '/authassignment/delete'),
('super admin', '/authassignment/index'),
('super admin', '/authassignment/update'),
('super admin', '/authassignment/view'),
('super admin', '/debug/*'),
('super admin', '/debug/default/*'),
('super admin', '/debug/default/db-explain'),
('super admin', '/debug/default/download-mail'),
('super admin', '/debug/default/index'),
('super admin', '/debug/default/toolbar'),
('super admin', '/debug/default/view'),
('super admin', '/debug/user/*'),
('super admin', '/debug/user/reset-identity'),
('super admin', '/debug/user/set-identity'),
('super admin', '/gii/*'),
('super admin', '/gii/default/*'),
('super admin', '/gii/default/action'),
('super admin', '/gii/default/diff'),
('super admin', '/gii/default/index'),
('super admin', '/gii/default/preview'),
('super admin', '/gii/default/view'),
('super admin', '/site/*'),
('super admin', '/site/about'),
('super admin', '/site/attendance'),
('super admin', '/site/captcha'),
('super admin', '/site/contact'),
('super admin', '/site/dashboard'),
('super admin', '/site/error'),
('super admin', '/site/index'),
('super admin', '/site/login'),
('super admin', '/site/logout'),
('super admin', '/site/signup'),
('super admin', '/user/*'),
('super admin', '/user/create'),
('super admin', '/user/delete'),
('super admin', '/user/index'),
('super admin', '/user/update'),
('super admin', '/user/view'),
('super admin', 'editor');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `data` text COLLATE utf8_bin,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(2, 'admin', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_bin NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1573964340),
('m130524_201442_init', 1573964343),
('m140602_111327_create_menu_table', 1574325570),
('m160312_050000_create_user', 1574325570),
('m190124_110200_add_verification_token_column_to_user_table', 1573964344);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(6, 'raju ahmed', 'raju', 'KBlmP8TjU34rJA36n67-sFa-EkursSt8', '$2y$13$RWmfgZZG3NbVzuIXZKUNm.YQOqTweXiqG2SNdvoscYyV5dHZjDouG', NULL, 'raju@gmail.com', 10, 1573971126, 1573971126, 'wxT9yARLNkRi0cLztE21EIvk26Z4g8VQ_1573971126'),
(7, 'raju ahmed', 'raju1', '7pXozZ99MWc01i37OC1CUSGcy1pwtFli', '$2y$13$pPfkGZB1SRxI/Iv2152A/.u3ZrVVg2z7cJx56oMCu7Ad77yrbnScO', NULL, 'raju1@gmail.com', 10, 1573993508, 1574317174, 'rTQJLtxfnQ5yJowOlTGNIrUVBeD8AOMu_1573993508'),
(8, 'raju ahmed', 'raju11', '_gl6OoPdunbLzYOg_gjzcifnVe_HO_HO', '$2y$13$Nekn9j831RNXYEU6Dd5PI.IA0HQRKhMxhCTzkruF0OVoxPPLAlD/K', NULL, 'raju11@gmail.com', 10, 1574051908, 1574051908, 'lfDl9i-6YoiYCcL6QsC6ucrOgu5evnQ-_1574051908'),
(9, '', 'raju111', 'tGCEJlwXwHUAuYzm-BTVIWFhfPnthxHa', '$2y$13$LQHr48CWOtG3FpVV51T9tuNoJ57e03SOrnpLgX3ZmHHunulXRlFMC', NULL, 'raju111@gmail.com', 10, 1574570574, 1574570574, NULL),
(10, 'kazi nazrul islam', 'kazi', 'fnSwEIFtCd2GhIZkxM-W3e3GZcIBypEw', '$2y$13$tDyTY7xG8.HeszwxXIVtbuizqY5b0wlP3mog4yC2j66Ea.cW58Wpu', NULL, 'kazi@gmail.com', 10, 1574590916, 1574590916, 'pQtP-rFKqIYfQUJvZIN0-t7Txqa2fnKJ_1574590916');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
