-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 26 2022 г., 13:55
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shoprc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Supper Admin', 'artwebmoldova@gmail.com', 'admin', NULL, '61eee394f32c01643045780.jpg', '$2y$10$mNXFMxAiB8TLQfq.2KAqiOgPGmVyo8mSpOuzxDsRyAjnJa0WvRb8q', NULL, '2022-01-24 15:36:21');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `applied_coupons`
--

CREATE TABLE `applied_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `assign_product_attributes`
--

CREATE TABLE `assign_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'narghilea', '61ec777dd35431642887037.png', 0, 'narghilea', 'narghilea', NULL, '2022-01-22 19:30:38', '2022-01-22 19:41:26', '2022-01-22 19:41:26'),
(2, 'Narghilea', '61ed31cd79e661642934733.jpg', 0, 'narghilea', 'Top', NULL, '2022-01-23 08:32:11', '2022-01-23 08:45:33', NULL),
(3, 'Seturi Cadou', '61ed5d5c20f0e1642945884.jpg', 0, 'Seturi Cadou„„', 'top', NULL, '2022-01-23 11:51:24', '2022-01-24 14:20:55', NULL),
(4, 'Tabac', '61ed5e3c034e71642946108.png', 0, 'Tabac', 'tabac top', '[\"tabac\"]', '2022-01-23 11:55:08', '2022-01-24 13:11:11', NULL),
(5, 'test', '61eecf1a5733c1643040538.jpg', 0, 'test', NULL, NULL, '2022-01-24 14:08:58', '2022-01-24 15:18:14', '2022-01-24 15:18:14'),
(6, 'Carbune', '61f008bc7867a1643120828.png', 0, 'carbune', NULL, NULL, '2022-01-25 12:27:08', '2022-01-25 12:27:08', NULL),
(7, 'Accesori', '61f009ced7c361643121102.jpg', 0, 'accesori', NULL, NULL, '2022-01-25 12:31:42', '2022-01-25 12:31:42', NULL),
(8, 'Corpuri de Sticlă', '61f00b4023cbe1643121472.jpg', 0, 'corpuri cadou', NULL, NULL, '2022-01-25 12:37:52', '2022-01-25 12:37:52', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `session_id`, `product_id`, `attributes`, `quantity`, `created_at`, `updated_at`) VALUES
(2, NULL, '61ed98c5434e4', 1, NULL, 1, '2022-01-23 16:04:53', '2022-01-23 16:04:53'),
(3, NULL, '61ed98c5434e4', 3, NULL, 2, '2022-01-23 16:05:24', '2022-01-23 16:05:24'),
(11, NULL, '61efdd8a38156', 2, NULL, 1, '2022-01-25 09:22:50', '2022-01-25 09:22:50'),
(12, 2, '61efdd8a38156', 2, NULL, 2, '2022-01-25 09:39:40', '2022-01-25 12:05:30'),
(13, NULL, '61f03896ede49', 2, NULL, 1, '2022-01-25 15:51:18', '2022-01-25 15:51:18'),
(14, 3, '61f03896ede49', 1, NULL, 5, '2022-01-25 16:22:24', '2022-01-25 16:22:25'),
(15, 4, '61f0410511eec', 2, NULL, 3, '2022-01-25 16:27:17', '2022-01-25 16:27:17'),
(16, NULL, '61f11934d084e', 1, NULL, 8, '2022-01-26 07:52:25', '2022-01-26 08:05:26'),
(17, NULL, '61f11934d084e', 2, NULL, 9, '2022-01-26 08:05:48', '2022-01-26 08:49:07'),
(18, NULL, '61f13871b4817', 2, NULL, 3, '2022-01-26 10:03:02', '2022-01-26 10:03:10'),
(19, NULL, '61f13cdc83797', 2, NULL, 78, '2022-01-26 10:22:13', '2022-01-26 10:34:50'),
(22, NULL, '61f140183bcb5', 2, NULL, 2, '2022-01-26 10:48:41', '2022-01-26 10:50:30');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_top` tinyint(1) NOT NULL DEFAULT 0,
  `is_special` tinyint(1) NOT NULL DEFAULT 0,
  `in_filter_menu` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `icon`, `meta_title`, `meta_description`, `meta_keywords`, `image`, `is_top`, `is_special`, `in_filter_menu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Test', '<i class=\"far fa-heart\"></i>', 'Test', 'test', NULL, '61ead087e1a661642778759.png', 1, 0, 0, '2022-01-21 13:25:59', '2022-01-22 13:31:05', '2022-01-22 13:31:05'),
(2, NULL, 'hocan', '<i class=\"far fa-heart\"></i>', 'narghilea', NULL, NULL, '61ec09b7e34cf1642858935.jpg', 1, 0, 0, '2022-01-22 11:42:16', '2022-01-22 13:31:15', '2022-01-22 13:31:15'),
(3, NULL, 'Narghilea', '<i class=\"far fa-heart\"></i>', 'Narghilea', 'aici va fi narghileaua ta preferata', NULL, '61ec236d0ac721642865517.jpg', 0, 0, 0, '2022-01-22 13:31:57', '2022-01-24 13:14:31', NULL),
(4, NULL, 'Seturi Cadou', '<i class=\"far fa-heart\"></i>', 'Seturi Cadou', NULL, NULL, '61ec239bcc1711642865563.jpg', 0, 0, 0, '2022-01-22 13:32:43', '2022-01-24 15:35:25', NULL),
(5, NULL, 'Accesorii', '<i class=\"far fa-heart\"></i>', 'Accesori', NULL, NULL, '61ec23cf779b21642865615.jpg', 0, 0, 0, '2022-01-22 13:33:35', '2022-01-25 16:56:51', NULL),
(6, NULL, 'Tabac', '<i class=\"far fa-heart\"></i>', 'Tabac', NULL, NULL, '61ec2407078241642865671.png', 0, 0, 0, '2022-01-22 13:34:31', '2022-01-22 13:34:31', NULL),
(7, NULL, 'Cărbune', '<i class=\"far fa-heart\"></i>', 'carbune', NULL, NULL, '61ec2435b4f2d1642865717.png', 0, 0, 0, '2022-01-22 13:35:17', '2022-01-22 13:35:17', NULL),
(8, NULL, 'Corpuri de Sticlă', '<i class=\"far fa-heart\"></i>', 'colbe', NULL, NULL, '61ec246781c0b1642865767.jpg', 0, 0, 0, '2022-01-22 13:36:07', '2022-01-22 13:36:07', NULL),
(9, 3, 'cv interesant', '<i class=\"far fa-heart\"></i>', 'cv', NULL, NULL, '61ec76515bc961642886737.jpg', 0, 0, 0, '2022-01-22 19:25:37', '2022-01-22 19:29:57', '2022-01-22 19:29:57'),
(10, NULL, 'test', '1', NULL, NULL, NULL, '61eececddf7f61643040461.jpg', 1, 0, 0, '2022-01-24 14:07:42', '2022-01-24 14:15:03', '2022-01-24 14:15:03'),
(11, NULL, '215123 5r123', '<i class=\"fab fa-hire-a-helper\"></i>', NULL, NULL, NULL, '61eed099cca5a1643040921.jpg', 0, 0, 0, '2022-01-24 14:15:22', '2022-01-24 15:18:03', '2022-01-24 15:18:03');

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` tinyint(4) NOT NULL COMMENT '1=fixed, 2=percent',
  `coupon_amount` double NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` double(8,2) DEFAULT NULL,
  `maximum_spend` double(8,2) DEFAULT NULL,
  `usage_limit_per_coupon` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=disabled, 1=enabled',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `coupons_categories`
--

CREATE TABLE `coupons_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `coupons_products`
--

CREATE TABLE `coupons_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `method_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `final_amo` decimal(18,8) DEFAULT 0.00000000,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `admin_feedback` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `order_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `try`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 0, '5050.00000000', 'MDL', '0.00000000', '0.00000000', '5050.00000000', NULL, '0', '', 'MHBDNUPUA9YQ', 0, 2, NULL, '2022-01-24 17:47:23', '2022-01-24 17:47:23'),
(2, 1, 4, 0, '8050.00000000', 'MDL', '0.00000000', '0.00000000', '8050.00000000', NULL, '0', '', 'KV7FYHRUJ3G2', 0, 2, NULL, '2022-01-24 17:49:15', '2022-01-24 17:49:15'),
(3, 1, 5, 0, '4050.00000000', 'MDL', '0.00000000', '0.00000000', '4050.00000000', NULL, '0', '', '661U6C9ATDQM', 0, 2, NULL, '2022-01-24 17:50:55', '2022-01-24 17:50:55'),
(4, 1, 6, 0, '24050.00000000', 'MDL', '0.00000000', '0.00000000', '24050.00000000', NULL, '0', '', 'U7EBHQ77996Z', 0, 2, NULL, '2022-01-24 17:56:42', '2022-01-24 17:56:42');

-- --------------------------------------------------------

--
-- Структура таблицы `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(4) NOT NULL DEFAULT 1,
  `sms_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 17:04:05', '2020-07-06 23:44:08'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 17:04:05', '2020-03-07 04:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address. <br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 17:04:05', '2020-03-07 04:26:22'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 17:04:05', '2020-03-07 19:28:52'),
(5, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 12:00:00', '2020-05-03 20:24:40'),
(6, 'ORDER_ON_PROCESSING_CONFIRMATION', 'Send Order On Processing Alert', 'Order On Processing Alert', 'Greetings from {{site_name}}\r\nYour Order is on processing now get ready to to receive your products.\r\n\r\nYour Order ID: {{order_id}} ', 'Greetings from {{site_name}}\r\nYour Order is on processing now get ready to to receive your products.\r\n\r\nYour Order ID: {{order_id}} ', '{\"site_name\":\"Company Name\", \"order_id\":\"Order ID\"}', 1, 1, '2020-01-07 18:52:55', '2020-01-07 18:52:55'),
(7, 'ORDER_DISPATCHED_CONFIRMATION', 'Send Order Dispatched Alert', 'Order Dispatched Alert', 'Greetings from {{site_name}}\r\nYour Order has been dispatched please receive your products.\r\n\r\nYour Order ID: {{order_id}} ', 'Greetings from {{site_name}}\r\nYour Order has been dispatched please receive your products.\r\n\r\nYour Order ID: {{order_id}} ', '{\"site_name\":\"Company Name\", \"order_id\":\"Order ID\"}', 1, 1, '2020-01-07 19:07:31', '2020-01-07 19:07:31'),
(8, 'ORDER_CANCELLATION_CONFIRMATION', 'Send Cancellation Alert', 'Cancellation Alert', 'Greetings from {{site_name}}. We are sorry say that we couldn\'<span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">t accept your order now.&nbsp; <br>Your order has been canceled.<br><br>Your Order ID: {{order_id}}</span>', 'Greetings from {{site_name}}. \r\n\r\nYour order will be canceled............\r\n\r\nYour Order ID: {{order_id}}', '{\"site_name\":\"Company Name\", \"order_id\":\"Order ID\"}', 1, 0, '2019-11-27 07:04:05', '2020-08-19 14:57:21'),
(9, 'ORDER_RETAKE_CONFIRMATION', 'Send Order Retake Confirmation', 'Order Retake Confirmation', 'Greetings from {{site_name}}\r\nYour Order has been retaken.\r\n<div><span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\">Order ID <b>{{order_id}}&nbsp;</b></span><br></div>', 'Greetings from {{site_name}}\r\nYour Order has been retaken.\r\nOrder ID {{order_id}}  ', '{\"site_name\":\"Company Name\", \"order_id\":\"Order ID\"}', 1, 0, '2019-11-27 07:52:01', '2019-11-27 04:53:32'),
(10, 'ORDER_DELIVERY_CONFIRMATION', 'Send Order Delivery Confirmation', 'Order Delivery Confirmation', 'Greetings from {{site_name}}\r\nYour order for has been delivered. Thanks for your purchase form us.\r\nOrder Id :{{order_id}}', 'Greetings from {{site_name}}\r\nYour order for has been delivered. Thanks for your purchase form us.\r\nOrder Id :{{order_id}}', '{\"site_name\":\"Company Name\",\"trx\":\"Transaction Number\", \"order_id\":\"Order Track Number\",\"charge\":\"Charge Amount\"}', 1, 0, '2019-11-27 07:24:27', '2019-11-27 07:24:27'),
(11, 'DEPOSIT_COMPLETE', 'Order Confirmation With Automatic Payment', 'Order Completed Successfully', '<div>Your order of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of Your Order :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><span style=\"color: rgb(33, 37, 41);\">Order Id: {{order_id}}</span></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\", \"order_id\":\"Order ID\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-06-24 06:00:00', '2020-08-19 14:54:27'),
(12, 'DEPOSIT_REQUEST', 'Manual Payment - User Requested', 'Order Request Submitted Successfully', '<div>Your order request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of Your Order:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><span style=\"color: rgb(33, 37, 41);\">Order Id: {{order_id}}</span><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\", \"order_id\":\"Order ID\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 06:00:00', '2020-08-19 14:52:50'),
(13, 'DEPOSIT_APPROVE', 'Manual Payment - Admin Approved', 'Your Order is Approved', '<div>Your order request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of Your Order:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div>Order Id: {{order_id}}</div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"order_id\":\"Order ID\", \"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-06-16 06:00:00', '2020-08-19 14:51:43'),
(14, 'DEPOSIT_REJECT', 'Manual Payment - Admin Rejected', 'Your Order Request is Rejected', '<div>Your order request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><span style=\"color: rgb(33, 37, 41);\">Order Id Was: {{order_id}}</span><br></div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"order_id\":\"order_id\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 06:00:00', '2020-08-19 14:53:41'),
(15, 'WELCOME_MESSAGE', 'Welcome Message To A Customer After Create An Account', 'Welcome Message', 'Hello {{user_name}} Welcome to {{site_name}}!', 'Hello {{user_name}} Welcome to {{site_name}}!', '{\"site_name\":\"Site Name\", \"user_name\":\"user_name\", \"user_email\":\"user_email\", \"user_mobile\":\"User Mobile Number\"}', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `frontends`
--

CREATE TABLE `frontends` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"Visermart\",\"eComerce\",\"shopping\",\"brand\",\"product\",\"dress\",\"shoe\",\"laptop\",\"payment\",\"pen\",\"gateway\",\"glass\",\"cloth\",\"tshirt\",\"pant\",\"bed\",\"kitchen\",\"rack\",\"house\",\"order\",\"support\",\"call\"],\"description\":\"Visermart offers tons of products in over 20 different categories, including men\'s fashion, women\'s fashion, baby fashion, and more.\",\"social_title\":\"ViserMart\",\"social_description\":\"Visermart offers tons of products in over 20 different categories, including men\'s fashion, women\'s fashion, baby fashion, and more.\",\"image\":\"logo_no_phone.png\"}', '2020-07-02 23:42:52', '2022-01-21 14:16:44'),
(2, 'footer.content', '{\"has_image\":\"1\",\"cell_number\":\"+373 69192172\",\"email\":\"test@site.com\",\"contact_address\":\"Ghisinau\",\"footer_note\":\"Narghilea - actuala \\u0219i foarte popular\\u0103. Sunteti cu prieteni, sarbatoriti sau doriti sa petreceti timpul cit mai placut si sunteti in Chi\\u0219in\\u0103u atunci nu ezitati, comandati chiar acum.\",\"copyright_text\":\"Elaborat de ArtWeb 2022. Toate Drepturile Rezervate\",\"payment_methods\":\"logo_no_phone.png\"}', '2020-10-26 00:59:19', '2022-01-25 07:19:13'),
(3, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"fab fa-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/rentcalian.md\\/\"}', '2020-11-10 04:07:30', '2022-01-26 08:46:01'),
(8, 'banners_top.element', '{\"has_image\":[\"1\"],\"title\":\"Narghilea\",\"label\":\"Narghilea\",\"label_background\":\"Red\",\"size\":\"340x518\",\"link\":\"category\\/3\\/narghilea\",\"image\":\"hocan.jpg\"}', '2020-12-13 03:02:04', '2022-01-24 16:27:51'),
(9, 'banners_top.element', '{\"has_image\":[\"1\"],\"title\":\"Accesorii\",\"label\":\"Accesorii\",\"label_background\":\"Red\",\"size\":\"340x275\",\"link\":\"category/5/accesori\",\"image\":\"accesori01.jpg\"}', '2020-12-13 03:41:41', '2022-01-22 12:32:23'),
(10, 'banners_top.element', '{\"has_image\":[\"1\"],\"title\":\"corpuri de sticl\\u0103\",\"label\":\"Corpuri de sticl\\u0103\",\"label_background\":\"Red\",\"size\":\"340x275\",\"link\":\"category/8/corpuri-de-sticla\",\"image\":\"colbe.jpg\"}', '2020-12-13 04:15:54', '2022-01-22 13:01:20'),
(11, 'banners_top.element', '{\"has_image\":[\"1\"],\"title\":\"Tabac\",\"label\":\"Tabac\",\"label_background\":\"Red\",\"size\":\"340x518\",\"link\":\"category\\/6\\/tabac\",\"image\":\"tabac.png\"}', '2020-12-13 04:16:41', '2022-01-24 16:28:52'),
(12, 'banners_top.element', '{\"has_image\":[\"1\"],\"title\":\"Seturi cadou\",\"label\":\"Seturi cadou Full\",\"label_background\":\"Red\",\"size\":\"340x275\",\"link\":\"category\\/4\\/clothing\",\"image\":\"cadou.jpg\"}', '2020-12-13 04:17:57', '2022-01-22 12:12:28'),
(13, 'subscribe.content', '{\"text\":\"Abona\\u021bi-v\\u0103 la buletinul nostru informativ pentru a primi cele mai recente \\u0219tiri, actualiz\\u0103ri \\u0219i oferte speciale\"}', '2020-12-13 06:17:27', '2022-01-23 08:51:45'),
(14, 'banners_top.element', '{\"has_image\":[\"1\"],\"title\":\"\\u0423\\u0433\\u043e\\u043b\\u044c\",\"label\":\"C\\u0103rbune\",\"label_background\":\"Red\",\"size\":\"340x518\",\"link\":\"category\\/7\\/carbune\",\"image\":\"carbune.png\"}', '2020-12-13 06:40:08', '2022-01-25 16:19:08'),
(15, 'banners_two.element', '{\"has_image\":\"1\",\"link\":\"\\/\",\"img\":\"5fe095b019e191608553904.jpg\"}', '2020-12-19 06:31:44', '2020-12-19 06:31:44'),
(23, 'contact_page.content', '{\"has_image\":\"1\",\"title\":\"Contacta\\u021bi cu noi\",\"description\":\"Apreciem feedback-ul \\u0219i interac\\u021biunea de orice fel, a\\u0219a c\\u0103 nu ezita\\u021bi s\\u0103 ne contacta\\u021bi.\",\"image\":\"contact.png\"}', '2020-12-21 10:27:21', '2022-01-23 10:40:45'),
(24, 'social_icon.element', '{\"title\":\"Youtube\",\"social_icon\":\"<i class=\\\"fab fa-youtube\\\"><\\/i>\",\"url\":\"https:\\/\\/www.youtube.com\\/channel\\/UCv2pzcL0Yh0dv-O0kbcLlPA\"}', '2020-12-24 08:35:58', '2022-01-26 08:45:53'),
(25, 'social_icon.element', '{\"title\":\"Instagram\",\"social_icon\":\"<i class=\\\"fab fa-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/rentcalian.md\\/\"}', '2020-12-24 08:36:56', '2022-01-26 08:45:36'),
(28, 'faq_page.content', '{\"page_title\":\"Frequently Asked Questions\",\"description\":\"<h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">HOW CAN I CHANGE MY SHIPPING ADDRESS?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">By default, the last used shipping address will be saved into to your Sample Store account. When you are checking out your order, the default shipping address will be displayed and you have the option to amend it if you need to.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">HOW DO I ACTIVATE MY ACCOUNT?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">The instructions to activate your account will be sent to your email once you have submitted the registration form. If you did not receive this email, your email service provider\\u2019s mailing software may be blocking it. You can try checking your junk \\/ spam folder or contact us at help@samplestore.com<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">WHAT DO YOU MEAN BY POINTS? HOW DO I EARN IT?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">Because you are important to us, we want to know what you think about the products. As an added value, every time you rate the products you earn points which go straight to your account. 1 point are added to your account for every review that you give. You will need those points in order to redeem the sample products. So keep rating the products to keep earning points!<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">WHY IS THERE A CHECKOUT LIMIT? \\/ WHAT ARE ALL THE CHECKOUT LIMITS?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">Sample Store is a popular spot and gets lots of shoppers at a time. These limits are in place to make sure everyone has a good time trying and purchasing their products. So...<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">- Each member is entitled to only one (1) sample order every day.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">- Each member is entitled to one (1) bundle of sample for each product.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">- Your account must have sufficient points before you can checkout the sample products.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">- Kindly clear all pending payments before another checkout.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">HOW CAN I TRACK MY ORDERS &amp; PAYMENT?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">After logging into your account, the status of your checkout history can be found under Order History. For orders via registered postage, a tracking number (article tracking number) will be given to you after the receipt given from\\u00a0<a href=\\\"http:\\/\\/www.singpost.com.sg\\/\\\" style=\\\"color:rgb(0,0,0);border:0px;font-size:16px;margin:0px;padding:0px;vertical-align:baseline;\\\">Singapore Post Limited (SingPost)<\\/a>.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">HOW DO I CANCEL MY ORDERS BEFORE I MAKE A PAYMENT?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">After logging into your account, go to your Shopping Cart. Here, you will be able to make payment or cancel your order. Note: We cannot give refunds once payment is verified.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">HOW LONG WILL IT TAKE FOR MY ORDER TO ARRIVE AFTER I MAKE PAYMENT?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">Members who ship their orders within Singapore should expect to receive their orders within five (5) to ten (10) working days upon payment verification depending on the volume of orders received.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">If you experience delays in receiving your order, contact us immediately and we will help to confirm the status of your order.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">WHAT IS THE ACCUMULATED DELIVERY FEE FOR? HOW MUCH IS THE HANDLING FEE?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">The flat-rate handling fee is\\u00a0<span style=\\\"border:0px;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;vertical-align:baseline;\\\">S$5.99<\\/span>\\u00a0and it is only applicable to normal samples. For free samples, they are fully paid for and there are no additional charges to deliver the free samples.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">Handling fee covers the delivery, material, labour and logistics cost to support the sampling service. You can redeem up to 4 different samples in each checkout and it is likely that you will find samples bundle with larger supply (up to 1-week supply) on Samplestore.com.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">HOW DO YOU SHIP MY ORDERS?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">All your orders are sent via\\u00a0<a href=\\\"http:\\/\\/www.singpost.com.sg\\/\\\" style=\\\"color:rgb(0,0,0);border:0px;font-size:16px;margin:0px;padding:0px;vertical-align:baseline;\\\">Singapore Post Limited (SingPost)<\\/a>.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">HOW DO I MAKE PAYMENTS USING PAYPAL? HOW DOES IT WORK?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">Paypal is the easiest way to make payments online. While checking out your order, you will be redirected to the Paypal website. Be sure to fill in correct details for fast &amp; hassle-free payment processing. After a successful Paypal payment, a payment advice will be automatically generated to Samplestore.com system for your order.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">It\'s fast, easy &amp; secure.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">WHAT ARE THE PAYMENT METHODS AVAILABLE?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">At the moment, we only accept Credit\\/Debit cards and Paypal payments.<\\/p><h5 style=\\\"font-family:latoregular, sans-serif;font-weight:600;line-height:1.1;color:rgb(0,0,0);margin-bottom:15px;font-size:16px;border:0px;padding:0px;vertical-align:baseline;text-transform:uppercase;letter-spacing:0.05rem;\\\">CAN I PAY USING PAYPAL WITHOUT A PAYPAL ACCOUNT?<\\/h5><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">Yes! It is commonly misunderstood that a Paypal account is needed in order to make payments through Paypal. The truth is you DO NOT need one, although we strongly recommend you sign up to enjoy the added ease of use.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">Without a Paypal account, all you need is any Debit\\/Credit card stated below that is supported by Paypal.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">By using Paypal, we can process &amp; deliver your orders to you in a shorter time. Paypal is the easiest &amp; most secure way to make payment online. No account needed.<\\/p><p style=\\\"margin-right:0px;margin-bottom:20px;margin-left:0px;border:0px;font-size:16px;padding:0px;vertical-align:baseline;line-height:1.4;color:rgb(136,136,136);font-family:Lato;\\\">For more details,\\u00a0<a href=\\\"https:\\/\\/www.paypal.com\\/sg\\/webapps\\/mpp\\/how-paypal-works\\\" style=\\\"color:rgb(0,0,0);border:0px;font-size:16px;margin:0px;padding:0px;vertical-align:baseline;\\\">click here<\\/a>\\u00a0to see how Paypal works for you.<\\/p>\"}', '2020-12-24 10:34:36', '2020-12-24 10:34:36'),
(29, 'login_page.content', '{\"has_image\":\"1\",\"title\":\"Bine ai revenit\",\"description\":\"Salut! Bine ai revenit\",\"image\":\"loghin.png\"}', '2020-12-28 22:03:17', '2022-01-23 11:00:47'),
(30, 'register_page.content', '{\"has_image\":\"1\",\"title\":\"Bun Venit\",\"description\":\"Bun Venit la  Nargilea.md\",\"image\":\"loghin.png\"}', '2020-12-28 22:04:19', '2022-01-23 11:13:21'),
(31, 'authorize_email_page.content', '{\"has_image\":\"1\",\"title\":\"Verifica\\u021bi-v\\u0103 acredit\\u0103rile \\/  \\u041f\\u0440\\u043e\\u0432\\u0435\\u0440\\u044c\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0438 \\u0443\\u0447\\u0435\\u0442\\u043d\\u044b\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0435\",\"description\":\"Un cod de verificare a fost trimis pe adresa ta de e-mail. V\\u0103 rug\\u0103m s\\u0103 vizita\\u021bi adresa dvs. de e-mail \\u0219i s\\u0103 introduce\\u021bi codul \\u00een c\\u00e2mpul de introducere de mai jos.  \\/\\r\\n\\u041a\\u043e\\u0434 \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0435\\u043d\\u0438\\u044f \\u0431\\u044b\\u043b \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d \\u043d\\u0430 \\u0432\\u0430\\u0448 \\u0430\\u0434\\u0440\\u0435\\u0441 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u043e\\u0439 \\u043f\\u043e\\u0447\\u0442\\u044b. \\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u043f\\u043e\\u0441\\u0435\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u043e\\u0439 \\u043f\\u043e\\u0447\\u0442\\u044b \\u0438 \\u0432\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043a\\u043e\\u0434 \\u0432 \\u043f\\u043e\\u043b\\u0435 \\u0432\\u0432\\u043e\\u0434\\u0430 \\u043d\\u0438\\u0436\\u0435.\",\"image\":\"mail.png\"}', '2020-12-29 01:04:19', '2022-01-23 12:05:20'),
(32, 'authorize_sms_page.content', '{\"has_image\":\"1\",\"title\":\"\\u00cenc\\u0103 un pas \\/  \\u0415\\u0449\\u0435 \\u043e\\u0434\\u0438\\u043d \\u0448\\u0430\\u0433\",\"description\":\"V\\u0103 rug\\u0103m s\\u0103 v\\u0103 verifica\\u021bi num\\u0103rul de telefon mobil. \\/ \\r\\n\\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u044c\\u0442\\u0435 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430.\",\"image\":\"sms.jpg\"}', '2020-12-29 01:35:37', '2022-01-23 12:05:56'),
(33, 'forgot_password_page.content', '{\"has_image\":\"1\",\"title\":\"Nu-\\u021bi face griji\",\"description\":\"Trimite\\u021bi e-mailul pentru a v\\u0103 reseta parola.\",\"image\":\"mail.png\"}', '2021-01-04 14:05:58', '2022-01-23 10:43:37'),
(34, 'code_verify_page.content', '{\"has_image\":\"1\",\"title\":\"RO: Verifica\\u021bi codul dvs  \\/ RU: \\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u044c\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0439 \\u043a\\u043e\\u0434\",\"description\":\"RO:  V-am trimis un cod de verificare. V\\u0103 rug\\u0103m s\\u0103 acorda\\u021bi c\\u00e2teva minute pentru ca acest cod s\\u0103 ajung\\u0103. Acest cod va fi valabil timp de 15 minute dup\\u0103 ce \\u00eel solicita\\u021bi.  \\r\\nRU: \\u042f \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u043b \\u0432\\u0430\\u043c \\u043a\\u043e\\u0434 \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0435\\u043d\\u0438\\u044f. \\u041f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u043f\\u043e\\u0434\\u043e\\u0436\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043c\\u0438\\u043d\\u0443\\u0442, \\u043f\\u043e\\u043a\\u0430 \\u044d\\u0442\\u043e\\u0442 \\u043a\\u043e\\u0434 \\u043f\\u0440\\u0438\\u0434\\u0435\\u0442. \\u042d\\u0442\\u043e\\u0442 \\u043a\\u043e\\u0434 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u043d \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 15 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u0430\\u043a \\u0432\\u044b \\u0435\\u0433\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0438\\u0442\\u0435.\",\"image\":\"mail.png\"}', '2021-01-04 14:20:39', '2022-01-23 12:07:44'),
(35, 'reset_password_page.content', '{\"has_image\":\"1\",\"title\":\"Fi con\\u0219tient!\",\"description\":\"Trimite\\u021bi e-mailul cu care v-a\\u021bi \\u00eenscris pentru a v\\u0103 reseta parola.\",\"image\":\"loghin.png\"}', '2021-01-04 14:33:59', '2022-01-23 11:06:10'),
(37, 'pages.element', '{\"page_title\":\"Livrarea\",\"description\":\"<p style=\\\"margin:0in 0in 20pt;\\\"><span style=\\\"background-color:rgb(248,249,250);color:rgb(32,33,36);font-family:arial, sans-serif;white-space:pre-wrap;\\\"><font size=\\\"3\\\">Livrarea este o parte important\\u0103 a conducerii afacerii dvs. \\u00cenainte de a prelua prima comand\\u0103, trebuie s\\u0103 decide\\u021bi ce metode de livrare dori\\u021bi s\\u0103 utiliza\\u021bi \\u0219i apoi s\\u0103 configura\\u021bi livrarea magazinului dvs., astfel \\u00eenc\\u00e2t clien\\u021bii s\\u0103 poat\\u0103 alege o metod\\u0103 de livrare la finalizarea comenzii.<\\/font><\\/span><br \\/><\\/p><p><\\/p>\"}', '2021-01-30 06:35:37', '2022-01-23 11:04:24'),
(38, 'pages.element', '{\"page_title\":\"Terms and Conditions\",\"description\":\"<p style=\\\"margin:0in 0in 0.0001pt;\\\"><b>Welcome\\r\\nto ViserMart!\\u00a0<\\/b><\\/p><p><\\/p><p style=\\\"margin:0in 0in 0.0001pt;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">These terms and\\r\\nconditions outline the rules and regulations for the use of ViserMart\'s\\r\\nWebsite, located at ViserMart.com. By accessing this website, we assume you\\r\\naccept these terms and conditions. Do not continue to use ViserMart if you do\\r\\nnot agree to take all of the terms and conditions stated on this page. Our\\r\\nTerms and Conditions were created with the help of the Terms and Conditions\\r\\nGenerator and the Free Terms &amp; Conditions Generator. The following\\r\\nterminology applies to these Terms and Conditions, Privacy Statement and\\r\\nDisclaimer Notice and all Agreements: \\\"Client\\\", \\\"You\\\" and\\r\\n\\\"Your\\\" refers to you, the person who logs on to this website and compliant with\\r\\nthe Company\\u2019s terms and conditions. \\\"The Company\\\",\\r\\n\\\"Ourselves\\\", \\\"We\\\", \\\"Our\\\" and \\\"Us\\\",\\r\\nrefers to our Company. \\\"Party\\\", \\\"Parties\\\", or\\r\\n\\\"Us\\\", refers to both the Client and ourselves. All terms refer to the\\r\\noffer, acceptance, and consideration of payment necessary to undertake the\\r\\nprocess of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\\u2019s needs in respect of the provision of the\\r\\nCompany\\u2019s stated services, in accordance with and subject to, prevailing law of The Netherlands. Any use of the above terminology or other words in the singular,\\r\\nplural, capitalization and\\/or he\\/she or they, are taken as interchangeable and\\r\\ntherefore as referring to same.\\u00a0<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>Cookies<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">We employ the use of\\r\\ncookies. By accessing ViserMart, you agreed to use cookies in agreement with ViserMart\'s Privacy Policy. Most interactive websites use cookies to let us\\r\\nretrieve the user\\u2019s details for each visit. Cookies are used by our website to\\r\\nenable the functionality of certain areas to make it easier for people visiting\\r\\nour website. Some of our affiliate\\/advertising partners may also use cookies.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>License<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">Unless otherwise\\r\\nstated, ViserMart and\\/or its licensors own the intellectual property rights for\\r\\nall material on ViserMart. All intellectual property rights are reserved. You\\r\\nmay access this from ViserMart for your own personal use subjected to\\r\\nrestrictions set in these terms and conditions. You must not: Republish\\r\\nmaterial from ViserMart Sell, rent or sub-license material from ViserMart\\r\\nReproduce, duplicate or copy material from ViserMart Redistribute content from ViserMart\\r\\nThis Agreement shall begin on the date hereof. Parts of this website offer an\\r\\nopportunity for users to post and exchange opinions and information in certain\\r\\nareas of the website. ViserMart does not filter, edit, publish or review\\r\\nComments prior to their presence on the website. Comments do not reflect the\\r\\nviews and opinions of ViserMart, Its agents, and\\/or affiliates. Comments reflect\\r\\nthe views and opinions of the person who posts their views and opinions. To the\\r\\nextent permitted by applicable laws, ViserMart shall not be liable for the\\r\\nComments or for any liability, damages, or expenses caused and\\/or suffered as a\\r\\nresult of any use of and\\/or posting of and\\/or appearance of the Comments on\\r\\nthis website. ViserMart reserves the right to monitor all Comments and to\\r\\nremove any Comments which can be considered inappropriate, offensive, or causes\\r\\nbreach of these Terms and Conditions. You warrant and represent that: You are\\r\\nentitled to post the Comments on our website and have all necessary licenses\\r\\nand consents to do so; The Comments do not invade any intellectual property\\r\\nright, including without limitation copyright, patent, or trademark of any third\\r\\nparty; The Comments do not contain any defamatory, libelous, offensive,\\r\\nindecent or otherwise unlawful material which is an invasion of privacy The\\r\\nComments will not be used to solicit or promote business or custom or present\\r\\ncommercial activities or unlawful activity. You hereby grant ViserMart a\\r\\nnon-exclusive license to use, reproduce, edit and authorize others to use,\\r\\nreproduce and edit any of your Comments in any and all forms, formats, or media.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>Hyperlinking to our\\r\\nContent<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">The following\\r\\norganizations may link to our Website without prior written approval:\\r\\nGovernment agencies; Search engines; News organizations; Online directory distributors\\r\\nmay link to our Website in the same manner as they hyperlink to the Websites of\\r\\nother listed businesses; and System-Wide Accredited Businesses except\\r\\nsoliciting non-profit organizations, charity shopping malls, and charity\\r\\nfundraising groups that may not hyperlink to our Web site. These organizations\\r\\nmay link to our home page, to publications or to other Website information so\\r\\nlong as the link: (a) is not in any way deceptive; (b) does not falsely imply\\r\\nsponsorship, endorsement or approval of the linking party and its products\\r\\nand\\/or services; and (c) fits within the context of the linking party\\u2019s site.\\r\\nWe may consider and approve other link requests from the following types of\\r\\norganizations: commonly-known consumer and\\/or business information sources;\\r\\ndot.com community sites; associations or other groups representing charities;\\r\\nonline directory distributors; internet portals; accounting, law, and consulting\\r\\nfirms; and educational institutions and trade associations. We will approve\\r\\nlink requests from these organizations if we decide that: (a) the link would\\r\\nnot make us look unfavorably to ourselves or to our accredited businesses; (b)\\r\\nthe organization does not have any negative records with us; (c) the benefit to\\r\\nus from the visibility of the hyperlink compensates the absence of ViserMart;\\r\\nand (d) the link is in the context of general resource information. These\\r\\norganizations may link to our home page so long as the link: (a) is not in any\\r\\nway deceptive; (b) does not falsely imply sponsorship, endorsement, or approval\\r\\nof the linking party and its products or services; and (c) fits within the\\r\\ncontext of the linking party\\u2019s site. If you are one of the organizations listed\\r\\nin paragraph 2 above and are interested in linking to our website, you must\\r\\ninform us by sending an e-mail to ViserMart. Please include your name, your\\r\\norganization name, contact information as well as the URL of your site, a list\\r\\nof any URLs from which you intend to link to our Website and a list of the\\r\\nURLs on our site to which you would like to link. Wait 2-3 weeks for a\\r\\nresponse. Approved organizations may hyperlink to our Website as follows: By\\r\\nuse of our corporate name; or By use of the uniform resource locator being\\r\\nlinked to; or By use of any other description of our Website being linked to\\r\\nthat makes sense within the context and format of content on the linking\\r\\nparty\\u2019s site. No use of ViserMart\'s logo or other artwork will be allowed for\\r\\nlinking absent a trademark license agreement.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>iFrames<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">Without prior approval\\r\\nand written permission, you may not create frames around our Webpages that\\r\\nalter in any way the visual presentation or appearance of our Website.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>Content Liability<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>\\u00a0<\\/b><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">We shall not be held responsible for any content that appears on your Website. You agree to protect\\r\\nand defend us against all claims that is rising on your Website. No link(s)\\r\\nshould appear on any Website that may be interpreted as libelous, obscene, or criminal,\\r\\nor which infringes, otherwise violates, or advocates the infringement or other\\r\\nviolation of, any third-party rights.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>Your Privacy<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">Please read Privacy\\r\\nPolicy<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><br \\/><b><br \\/><\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>Reservation of Rights<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">We reserve the right\\r\\nto request that you remove all links or any particular link to our Website. You\\r\\napprove to immediately remove all links to our Website upon request. We also\\r\\nreserve the right to amend these terms and conditions and its linking policy at\\r\\nany time. By continuously linking to our Website, you agree to be bound to and\\r\\nfollow these linking terms and conditions.\\u00a0<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><br \\/><br \\/><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>Removal of links from\\r\\nour website<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">\\u00a0<\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">If you find any link\\r\\non our Website that is offensive for any reason, you are free to contact and\\r\\ninform us at any moment. We will consider requests to remove links but we are not\\r\\nobligated to or so or to respond to you directly. We do not ensure that the\\r\\ninformation on this website is correct, we do not warrant its completeness or\\r\\naccuracy; nor do we promise to ensure that the website remains available or\\r\\nthat the material on the website is kept up to date.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><br \\/><br \\/><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>Disclaimer<\\/b><\\/p><p><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\"><b>\\u00a0<\\/b><\\/p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom:0.0001pt;line-height:normal;\\\">To the maximum extent\\r\\npermitted by applicable law, we exclude all representations, warranties and\\r\\nconditions relating to our website and the use of this website. Nothing in this\\r\\ndisclaimer will: limit or exclude our or your liability for death or personal\\r\\ninjury; limit or exclude our or your liability for fraud or fraudulent\\r\\nmisrepresentation; limit any of our or your liabilities in any way that is not\\r\\npermitted under applicable law; or exclude any of our or your liabilities that\\r\\nmay not be excluded under applicable law. The limitations and prohibitions of\\r\\nliability set in this Section and elsewhere in this disclaimer: (a) is subject\\r\\nto the preceding paragraph; and (b) govern all liabilities arising under the\\r\\ndisclaimer, including liabilities arising in contract, in tort, and for breach\\r\\nof statutory duty. As long as the website and the information and services on\\r\\nthe website is provided free of charge, we will not be liable for any loss or\\r\\ndamage of any nature.<\\/p><p><\\/p><p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p>\"}', '2021-01-30 06:36:31', '2021-04-03 06:14:14'),
(41, 'banners_middle.element', '{\"has_image\":\"1\",\"link\":\"hj\",\"image\":\"61ed2f6bd0fd11642934123.png\"}', '2022-01-23 08:35:23', '2022-01-23 08:35:24');

-- --------------------------------------------------------

--
-- Структура таблицы `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(11) DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `alias`, `image`, `name`, `status`, `parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'paypal', '5f6f1bd8678601601117144.jpg', 'Paypal', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"paypal@user.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-24 17:58:27'),
(2, 102, 'perfect_money', '5f6f1d2a742211601117482.jpg', 'Perfect Money', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"6451561651551\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:46'),
(3, 103, 'stripe', '5f6f1d4bc69e71601117515.jpg', 'Stripe Hosted', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:49'),
(4, 104, 'skrill', '5f6f1d41257181601117505.jpg', 'Skrill', 1, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:52'),
(5, 105, 'paytm', '5f6f1d1d3ec731601117469.jpg', 'PayTM', 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:54'),
(6, 106, 'payeer', '5f6f1bc61518b1601117126.jpg', 'Payeer', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 107, 'paystack', '5f7096563dfb71601214038.jpg', 'PayStack', 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:25:38'),
(8, 108, 'voguepay', '5f6f1d5951a111601117529.jpg', 'VoguePay', 1, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:52:09'),
(9, 109, 'flutterwave', '5f6f1b9e4bb961601117086.jpg', 'Flutterwave', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"FLWPUBK_TEST-5d9bb05bba2c13aa6c7a1ec7d7526ba2-X\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"FLWSECK_TEST-2ac7b05b6b9fa8a423eb58241fd7bbb6-X\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"FLWSECK_TEST32e13665a95a\"}}', '{\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:44:46'),
(10, 110, 'razorpay', '5f6f1d3672dd61601117494.jpg', 'RazorPay', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:51:34'),
(11, 111, 'stripe_js', '5f7096a31ed9a1601214115.jpg', 'Stripe Storefront', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-12-05 03:56:20'),
(12, 112, 'instamojo', '5f6f1babbdbb31601117099.jpg', 'Instamojo', 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:44:59'),
(13, 501, 'blockchain', '5f6f1b2b20c6f1601116971.jpg', 'Blockchain', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"8df2e5a0-3798-4b74-871d-973615b57e7b\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CXLqfWXj1xgXe79nEQb3pv2E7TGD13pZgHceZKrQAxqXdrC2FaKuQhm5CYVGyNcHLhSdWau4eQvq3EDCyayvbKJvXa11MX9i2cHPugpt3G\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:42:51'),
(14, 502, 'blockio', '5f6f19432bedf1601116483.jpg', 'Block.io', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"covidvai2020\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:34:43'),
(15, 503, 'coinpayments', '5f6f1b6c02ecd1601117036.jpg', 'CoinPayments', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:56'),
(16, 504, 'coinpayments_fiat', '5f6f1b94e9b2b1601117076.jpg', 'CoinPayments Fiat', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-10-22 03:17:29'),
(17, 505, 'coingate', '5f6f1b5fe18ee1601117023.jpg', 'Coingate', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:44'),
(18, 506, 'coinbase_commerce', '5f6f1b4c774af1601117004.jpg', 'Coinbase Commerce', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.coinbase_commerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:43:24'),
(24, 113, 'paypal_sdk', '5f6f1bec255c61601117164.jpg', 'Paypal Express', 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-10-31 23:50:27'),
(25, 114, 'stripe_v3', '5f709684736321601214084.jpg', 'Stripe Checkout', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"w5555\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.stripe_v3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-05 03:56:14'),
(27, 115, 'mollie', '5f6f1bb765ab11601117111.jpg', 'Mollie', 1, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"ronniearea@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2020-09-26 04:45:11'),
(30, 116, 'cashmaal', '5f9a8b62bb4dd1603963746.png', 'Cashmaal', 1, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.cashmaal\"}}', NULL, NULL, NULL, '2020-10-29 03:29:06');

-- --------------------------------------------------------

--
-- Структура таблицы `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_code` int(11) DEFAULT NULL,
  `gateway_alias` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_title` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `cod` tinyint(1) NOT NULL DEFAULT 1,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `social_login` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'social login',
  `social_credential` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `preloader_title`, `cur_text`, `cur_sym`, `cod`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `ev`, `en`, `sv`, `sn`, `registration`, `social_login`, `social_credential`, `active_template`, `sys_version`, `created_at`, `updated_at`) VALUES
(1, 'RentCalian', 'RentCalian', 'MDL', 'MDL', 1, 'no-reply@viserlab.com', '<table style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 23, 54); text-decoration-style: initial; text-decoration-color: initial;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#001736\"><tbody><tr><td valign=\"top\" align=\"center\"><table class=\"mobile-shell\" width=\"650\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"td container\" style=\"width: 650px; min-width: 650px; font-size: 0pt; line-height: 0pt; margin: 0px; font-weight: normal; padding: 55px 0px;\"><div style=\"text-align: center;\"><img width=\"400\" height=\"100\" src=\"https://i.imgur.com/8EDB0US.png\"><br></div><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"padding-bottom: 10px;\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"tbrr p30-15\" style=\"padding: 60px 30px; border-radius: 26px 26px 0px 0px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"color: rgb(255, 255, 255); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 46px; padding-bottom: 25px; font-weight: bold;\">Hi {{name}} ,</td></tr><tr><td style=\"color: rgb(193, 205, 220); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 30px; padding-bottom: 25px;\">{{message}}</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15 bbrr\" style=\"padding: 50px 30px; border-radius: 0px 0px 26px 26px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"text-footer1 pb10\" style=\"color: rgb(0, 153, 255); font-family: Muli, Arial, sans-serif; font-size: 18px; line-height: 30px; text-align: center; padding-bottom: 10px;\">© 2020 ViserMart. All Rights Reserved.</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', '***************', '0e0e0e', '0e0e0e', '{\"name\":\"php\"}', 0, 1, 0, 0, 1, 0, '{\"google_client_id\":\"53929591142-l40gafo7efd9onfe6tj545sf9g7tv15t.apps.googleusercontent.com\",\"google_client_secret\":\"BRdB3np2IgYLiy4-bwMcmOwN\",\"fb_client_id\":\"277229062999748\",\"fb_client_secret\":\"1acfc850f73d1955d14b282938585122\"}', 'basic', NULL, NULL, '2022-01-25 07:17:43');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `is_default`, `created_at`, `updated_at`) VALUES
(8, 'Română', 'ro', '61ed34ab9b3e01642935467.png', 1, '2022-01-23 08:57:47', '2022-01-23 08:57:47'),
(9, 'Русский', 'ru', '61ed354f1c89a1642935631.png', 0, '2022-01-23 09:00:31', '2022-01-23 09:46:24');

-- --------------------------------------------------------

--
-- Структура таблицы `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` tinyint(4) NOT NULL COMMENT '1=fixed, 2=percent',
  `amount` double NOT NULL DEFAULT 0,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=disabled, 1=enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `offers_products`
--

CREATE TABLE `offers_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method_id` int(10) UNSIGNED NOT NULL,
  `shipping_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `total_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_type` tinyint(4) NOT NULL COMMENT '1 = Order for self, 2 = order for a guest',
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Paid ,1 = Paid, 2= Cash On Delivery',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = processing, 2=dispatched, 3=delivered, 4= canceled_by_admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `shipping_address`, `shipping_method_id`, `shipping_charge`, `coupon_code`, `coupon_amount`, `total_amount`, `order_type`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(7, 'OGW51K8G1TNM', 2, '{\"firstname\":\"wegegwEfwgweg\",\"lastname\":\"GWEQegWGEWWEQGweg\",\"mobile\":\"938945616515615\",\"country\":\"Afghanistan\",\"city\":\"rfwevg\",\"state\":\"weqf\",\"zip\":\"wef\",\"address\":\"wfe\"}', 1, '50.00', '', 0, '4050.00', 1, 0, 0, '2022-01-25 10:19:41', '2022-01-25 10:19:41'),
(8, 'H8TVKQU8WB8A', 3, '{\"firstname\":\"EWFGGE\",\"lastname\":\"WGWGEW\",\"mobile\":\"37395135742968\",\"country\":\"Moldova\",\"city\":\"asd\",\"state\":\"asd\",\"zip\":\"sad\",\"address\":\"asd\"}', 1, '50.00', '', 0, '7050.00', 1, 0, 0, '2022-01-25 16:24:55', '2022-01-25 16:24:55');

-- --------------------------------------------------------

--
-- Структура таблицы `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `base_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `base_price`, `total_price`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '1000.00', '3000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:40:57', '2022-01-24 17:40:57'),
(2, 1, 2, 1, '2000.00', '2000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:40:57', '2022-01-24 17:40:57'),
(3, 2, 1, 3, '1000.00', '3000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:41:08', '2022-01-24 17:41:08'),
(4, 2, 2, 1, '2000.00', '2000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:41:08', '2022-01-24 17:41:08'),
(5, 3, 1, 3, '1000.00', '3000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:47:23', '2022-01-24 17:47:23'),
(6, 3, 2, 1, '2000.00', '2000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:47:23', '2022-01-24 17:47:23'),
(7, 4, 2, 4, '2000.00', '8000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:49:15', '2022-01-24 17:49:15'),
(8, 5, 1, 4, '1000.00', '4000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:50:55', '2022-01-24 17:50:55'),
(9, 6, 2, 12, '2000.00', '24000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-24 17:56:42', '2022-01-24 17:56:42'),
(10, 7, 2, 1, '2000.00', '2000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-25 10:19:41', '2022-01-25 10:19:41'),
(11, 7, 2, 1, '2000.00', '2000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-25 10:19:41', '2022-01-25 10:19:41'),
(12, 8, 2, 1, '2000.00', '2000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-25 16:24:55', '2022-01-25 16:24:55'),
(13, 8, 1, 5, '1000.00', '5000.00', '{\"variants\":null,\"offer_amount\":0}', '2022-01-25 16:24:55', '2022-01-25 16:24:55');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plugins`
--

CREATE TABLE `plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plugins`
--

INSERT INTO `plugins` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, NULL, '2019-10-18 17:16:05', '2022-01-24 11:49:39');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_variants` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `track_inventory` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `show_in_frontend` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `main_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`specification`)),
  `extra_descriptions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra_descriptions`)),
  `base_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_special` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `brand_id`, `sku`, `name`, `model`, `has_variants`, `track_inventory`, `show_in_frontend`, `main_image`, `video_link`, `description`, `summary`, `specification`, `extra_descriptions`, `base_price`, `is_featured`, `is_special`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '1000', 'Narghilea', 'Narghilea', 0, 1, 1, '61ed5eec415a71642946284.jpg', NULL, 'top', 'top', NULL, NULL, '1000.00', 0, 0, 'hocan', 'top', NULL, '2022-01-23 08:33:14', '2022-01-24 10:04:44', NULL),
(2, 3, '2000', 'Narghilea', 'calian', 0, 1, 1, '61ed5dcad23601642945994.jpg', NULL, 'top', '123', NULL, NULL, '2000.00', 0, 0, 'Seturi Cadou', 'top', NULL, '2022-01-23 11:53:15', '2022-01-23 11:57:32', NULL),
(3, 4, '65', 'Tabac', 'Tabac', 0, 1, 1, '61ed5e81769be1642946177.png', NULL, NULL, 'serbeti', NULL, NULL, '65.00', 0, 0, 'Tabac', 'serbeti', '[\"tabac\"]', '2022-01-23 11:56:17', '2022-01-23 11:56:17', NULL),
(4, 5, '0', 'test', 'test', 0, 1, 1, '61eecf51408171643040593.jpg', NULL, NULL, NULL, NULL, NULL, '10.00', 0, 0, 'Test', NULL, '[\"test\"]', '2022-01-24 14:09:53', '2022-01-24 14:09:53', NULL),
(5, 2, '2352', 'gerg', 'gergerg', 0, 1, 1, '61eed2240a8b81643041316.jpg', NULL, NULL, NULL, NULL, NULL, '0.00', 0, 0, NULL, NULL, NULL, '2022-01-24 14:21:58', '2022-01-24 14:21:58', NULL),
(6, 6, '20', 'Cărbune', 'carbune', 0, 1, 1, '61f008fcd14ef1643120892.png', NULL, NULL, NULL, NULL, NULL, '120.00', 0, 0, 'carbune', NULL, NULL, '2022-01-25 12:28:13', '2022-01-25 12:28:13', NULL),
(7, 7, '5448989489', 'accesori', 'accesori', 0, 1, 1, '61f00a7f63fb01643121279.jpg', NULL, 'top', 'top', NULL, NULL, '200.00', 0, 0, 'accesori', 'top', NULL, '2022-01-25 12:34:39', '2022-01-25 12:34:39', NULL),
(8, 8, '6524', 'Corp de Sticlă', 'Kolba', 0, 1, 1, '61f00b9b181911643121563.jpg', NULL, NULL, NULL, NULL, NULL, '50.00', 0, 0, 'corp de sticlă', NULL, NULL, '2022-01-25 12:39:23', '2022-01-25 12:39:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `products_categories`
--

CREATE TABLE `products_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products_categories`
--

INSERT INTO `products_categories` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 3),
(2, 2, 4),
(3, 3, 6),
(4, 4, 10),
(5, 5, 11),
(6, 6, 7),
(7, 7, 5),
(8, 8, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_for_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 = text, 2 = color, 3= image',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `name_for_user`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tester', 'tester', 2, 1, '2022-01-22 19:33:20', '2022-01-22 19:33:20');

-- --------------------------------------------------------

--
-- Структура таблицы `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `assign_product_attribute_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `assign_product_attribute_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 1, 0, '61ed323313e671642934835.jpg', '2022-01-23 08:47:15', '2022-01-23 08:47:15'),
(4, 2, 0, '61ed5dcb06b471642945995.jpg', '2022-01-23 11:53:15', '2022-01-23 11:53:15'),
(5, 3, 0, '61ed5e81a76941642946177.png', '2022-01-23 11:56:17', '2022-01-23 11:56:17'),
(6, 4, 0, '61eecf515b19d1643040593.jpg', '2022-01-24 14:09:53', '2022-01-24 14:09:53'),
(7, 6, 0, '61f008fd08af21643120893.png', '2022-01-25 12:28:13', '2022-01-25 12:28:13'),
(8, 7, 0, '61f00a7f8ae7e1643121279.jpg', '2022-01-25 12:34:39', '2022-01-25 12:34:39'),
(9, 8, 0, '61f00b9b3f0e91643121563.jpg', '2022-01-25 12:39:23', '2022-01-25 12:39:23');

-- --------------------------------------------------------

--
-- Структура таблицы `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attributes`)),
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `attributes`, `sku`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '1000', 982, '2022-01-23 08:34:18', '2022-01-25 16:24:55'),
(2, 2, NULL, '2000', 78, '2022-01-23 11:53:38', '2022-01-25 16:24:55'),
(3, 3, NULL, '65', 150, '2022-01-23 11:56:53', '2022-01-23 11:56:53');

-- --------------------------------------------------------

--
-- Структура таблицы `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `shipping_time` tinyint(4) NOT NULL COMMENT 'in days',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `name`, `description`, `charge`, `shipping_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Livrare in raza orasului Chisinau', 'Livrare in decurs de 1 zi', '50.00', 1, 1, '2022-01-24 17:37:43', '2022-01-24 17:37:43');

-- --------------------------------------------------------

--
-- Структура таблицы `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1= Updated by admin, 2= Sell',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `stock_id`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1000, 1, '2022-01-23 08:34:18', '2022-01-23 08:34:18'),
(2, 2, 100, 1, '2022-01-23 11:53:38', '2022-01-23 11:53:38'),
(3, 3, 150, 1, '2022-01-23 11:56:53', '2022-01-23 11:56:53'),
(4, 1, 3, 2, '2022-01-24 17:40:57', '2022-01-24 17:40:57'),
(5, 2, 1, 2, '2022-01-24 17:40:57', '2022-01-24 17:40:57'),
(6, 1, 3, 2, '2022-01-24 17:41:08', '2022-01-24 17:41:08'),
(7, 2, 1, 2, '2022-01-24 17:41:08', '2022-01-24 17:41:08'),
(8, 1, 3, 2, '2022-01-24 17:47:23', '2022-01-24 17:47:23'),
(9, 2, 1, 2, '2022-01-24 17:47:23', '2022-01-24 17:47:23'),
(10, 2, 4, 2, '2022-01-24 17:49:15', '2022-01-24 17:49:15'),
(11, 1, 4, 2, '2022-01-24 17:50:55', '2022-01-24 17:50:55'),
(12, 2, 12, 2, '2022-01-24 17:56:42', '2022-01-24 17:56:42'),
(13, 2, 1, 2, '2022-01-25 10:19:41', '2022-01-25 10:19:41'),
(14, 2, 1, 2, '2022-01-25 10:19:41', '2022-01-25 10:19:41'),
(15, 2, 1, 2, '2022-01-25 16:24:55', '2022-01-25 16:24:55'),
(16, 1, 5, 2, '2022-01-25 16:24:55', '2022-01-25 16:24:55');

-- --------------------------------------------------------

--
-- Структура таблицы `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'vasvsa@mail.ru', '2022-01-23 10:35:32', '2022-01-23 10:35:32'),
(2, 'sstas3514@gmail.com', '2022-01-24 16:52:11', '2022-01-24 16:52:11');

-- --------------------------------------------------------

--
-- Структура таблицы `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `mobile`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'first', 'last', 'lucyfer', 'sstas3514@gmail.com', '134060976662', '$2y$10$4tSv4O2dnU0piJb4OxLo9OJShHr/4RynqUulRe/5WeWXhRQqwyyXe', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Virgin Islands, U.S.\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, '2022-01-24 17:34:51', '2022-01-24 17:34:51'),
(2, 'wegegwEfwgweg', 'GWEQegWGEWWEQGweg', 'SSERwggWEGEwwegFEGw', 'slavicu10@mail.ru', '938945616515615', '$2y$10$MBdgxMi6FXmr0jFg.9xhE.l0nJgmVPxz.TtYDiopJbb1tiUMsj5c.', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, '2022-01-25 09:39:24', '2022-01-25 09:39:24'),
(3, 'EWFGGE', 'WGWGEW', 'rgeragergreg', 'ergwwertgrgwe!@mail.ru', '37395135742968', '$2y$10$6Hu/VW2V0ndu28QM2mGsSedVmdpb.ZsKKx0/yjPPOiofvjBhz0P0i', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Moldova\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, '2022-01-25 15:57:09', '2022-01-25 15:57:09'),
(4, 'firstasd', 'lastasd', 'adasdads', 'ageg@gmail.com', '373609766662', '$2y$10$I1nh6T2wskrnOMjIiSamIu6kPbgKkTuTf93IxPXzjHDc2qXNlrw/i', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Moldova\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, '2022-01-25 16:27:04', '2022-01-25 16:27:04'),
(5, 'ddffffdfd', 'dfdfdfdfd', 'ergrgergegregredfdfd', 'fdsdfsdgsfgdfs@mail.ru', '373963258', '$2y$10$zTNw8xm3yenxqL7RBB0l6u1.lG7roKuY6XM3cweWAPnXEZwcpf8Sy', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Moldova\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, NULL, '2022-01-25 17:19:34', '2022-01-25 17:19:34');

-- --------------------------------------------------------

--
-- Структура таблицы `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `location`, `browser`, `os`, `longitude`, `latitude`, `country`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2022-01-24 17:34:53', '2022-01-24 17:34:53'),
(2, 2, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2022-01-25 09:39:26', '2022-01-25 09:39:26'),
(3, 3, '::1', ' - -  -  ', 'Handheld Browser', 'Android', '', '', '', '', '2022-01-25 15:57:11', '2022-01-25 15:57:11'),
(4, 4, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2022-01-25 16:27:06', '2022-01-25 16:27:06'),
(5, 5, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2022-01-25 17:19:36', '2022-01-25 17:19:36');

-- --------------------------------------------------------

--
-- Структура таблицы `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `session_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, NULL, '61ed98c5434e4', 1, '2022-01-23 16:05:39', '2022-01-23 16:05:39'),
(3, NULL, '61ee96a2702e3', 1, '2022-01-24 16:47:58', '2022-01-24 16:47:58'),
(4, NULL, '61f11934d084e', 1, '2022-01-26 07:49:40', '2022-01-26 07:49:40'),
(5, NULL, '61f11934d084e', 2, '2022-01-26 08:05:51', '2022-01-26 08:05:51'),
(6, NULL, '61f11934d084e', 3, '2022-01-26 09:15:46', '2022-01-26 09:15:46'),
(7, NULL, '61f12ebf5a4e4', 3, '2022-01-26 09:21:35', '2022-01-26 09:21:35'),
(8, NULL, '61f12ed7905c2', 3, '2022-01-26 09:21:59', '2022-01-26 09:21:59'),
(9, NULL, '61f12f2a7c63f', 3, '2022-01-26 09:23:22', '2022-01-26 09:23:22'),
(10, NULL, '61f12f7900094', 3, '2022-01-26 09:24:41', '2022-01-26 09:24:41'),
(11, NULL, '61f12fc6563db', 3, '2022-01-26 09:25:58', '2022-01-26 09:25:58'),
(12, NULL, '61f12fed8f2c2', 3, '2022-01-26 09:26:37', '2022-01-26 09:26:37'),
(13, NULL, '61f13033b9d75', 2, '2022-01-26 09:27:47', '2022-01-26 09:27:47'),
(14, NULL, '61f130924b79b', 2, '2022-01-26 09:29:22', '2022-01-26 09:29:22'),
(15, NULL, '61f13106d44fa', 2, '2022-01-26 09:31:18', '2022-01-26 09:31:18'),
(16, NULL, '61f13154219d6', 2, '2022-01-26 09:32:36', '2022-01-26 09:32:36'),
(17, NULL, '61f131620dbb2', 2, '2022-01-26 09:32:50', '2022-01-26 09:32:50'),
(18, NULL, '61f1317155481', 2, '2022-01-26 09:33:05', '2022-01-26 09:33:05'),
(19, NULL, '61f1325404eeb', 2, '2022-01-26 09:36:52', '2022-01-26 09:36:52'),
(20, NULL, '61f133370279a', 2, '2022-01-26 09:40:39', '2022-01-26 09:40:39'),
(21, NULL, '61f134bf6ae23', 2, '2022-01-26 09:47:11', '2022-01-26 09:47:11'),
(22, NULL, '61f1368a6ab25', 2, '2022-01-26 09:54:50', '2022-01-26 09:54:50'),
(23, NULL, '61f137c29aa62', 2, '2022-01-26 10:00:02', '2022-01-26 10:00:02'),
(24, NULL, '61f13871b4817', 2, '2022-01-26 10:02:57', '2022-01-26 10:02:57'),
(25, NULL, '61f13892948e8', 2, '2022-01-26 10:03:30', '2022-01-26 10:03:30'),
(29, NULL, '61f138e793d57', 2, '2022-01-26 10:06:33', '2022-01-26 10:06:33'),
(30, NULL, '61f13c9a13e44', 2, '2022-01-26 10:20:42', '2022-01-26 10:20:42'),
(31, NULL, '61f13cdc83797', 2, '2022-01-26 10:21:48', '2022-01-26 10:21:48'),
(39, NULL, '61f140183bcb5', 2, '2022-01-26 10:53:14', '2022-01-26 10:53:14');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `applied_coupons`
--
ALTER TABLE `applied_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `assign_product_attributes`
--
ALTER TABLE `assign_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_product_attributes_product_id_index` (`product_id`),
  ADD KEY `assign_product_attributes_product_attribute_id_index` (`product_attribute_id`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coupons_categories`
--
ALTER TABLE `coupons_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_categories_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupons_categories_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `coupons_products`
--
ALTER TABLE `coupons_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_products_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupons_products_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offers_products`
--
ALTER TABLE `offers_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_products_offer_id_foreign` (`offer_id`),
  ADD KEY `offers_products_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`);

--
-- Индексы таблицы `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_index` (`brand_id`);

--
-- Индексы таблицы `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_product_id_foreign` (`product_id`),
  ADD KEY `products_categories_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_index` (`product_id`),
  ADD KEY `product_images_assign_product_attribute_id_index` (`assign_product_attribute_id`);

--
-- Индексы таблицы `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `applied_coupons`
--
ALTER TABLE `applied_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `assign_product_attributes`
--
ALTER TABLE `assign_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `coupons_categories`
--
ALTER TABLE `coupons_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `coupons_products`
--
ALTER TABLE `coupons_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT для таблицы `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `offers_products`
--
ALTER TABLE `offers_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `coupons_categories`
--
ALTER TABLE `coupons_categories`
  ADD CONSTRAINT `coupons_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupons_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `coupons_products`
--
ALTER TABLE `coupons_products`
  ADD CONSTRAINT `coupons_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupons_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `offers_products`
--
ALTER TABLE `offers_products`
  ADD CONSTRAINT `offers_products_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products_categories`
--
ALTER TABLE `products_categories`
  ADD CONSTRAINT `products_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
