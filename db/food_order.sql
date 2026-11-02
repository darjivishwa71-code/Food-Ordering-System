-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2026 at 11:20 AM
-- Server version: 10.5.0-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add menu_item', 6, 'add_menu_item'),
(22, 'Can change menu_item', 6, 'change_menu_item'),
(23, 'Can delete menu_item', 6, 'delete_menu_item'),
(24, 'Can view menu_item', 6, 'view_menu_item'),
(25, 'Can add order', 7, 'add_order'),
(26, 'Can change order', 7, 'change_order'),
(27, 'Can delete order', 7, 'delete_order'),
(28, 'Can view order', 7, 'view_order'),
(29, 'Can add rating', 8, 'add_rating'),
(30, 'Can change rating', 8, 'change_rating'),
(31, 'Can delete rating', 8, 'delete_rating'),
(32, 'Can view rating', 8, 'view_rating'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add bill', 10, 'add_bill'),
(38, 'Can change bill', 10, 'change_bill'),
(39, 'Can delete bill', 10, 'delete_bill'),
(40, 'Can view bill', 10, 'view_bill'),
(41, 'Can add payment', 11, 'add_payment'),
(42, 'Can change payment', 11, 'change_payment'),
(43, 'Can delete payment', 11, 'delete_payment'),
(44, 'Can view payment', 11, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `cafe_bill`
--

CREATE TABLE `cafe_bill` (
  `id` bigint(20) NOT NULL,
  `order_items` varchar(5000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bill_total` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `bill_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe_bill`
--

INSERT INTO `cafe_bill` (`id`, `order_items`, `name`, `bill_total`, `phone`, `bill_time`) VALUES
(5, '{\"French fries\": [1, 150]}', 'srushti patel', 150, '9696969696', '2026-01-21 21:18:39.979550'),
(6, '{\"Cheese Burger\": [1, 120]}', 'srushti patel', 120, '9696969696', '2026-01-21 21:25:26.765418');

-- --------------------------------------------------------

--
-- Table structure for table `cafe_menu_item`
--

CREATE TABLE `cafe_menu_item` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `desc` varchar(250) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `price` varchar(4) NOT NULL,
  `list_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe_menu_item`
--

INSERT INTO `cafe_menu_item` (`id`, `name`, `category`, `desc`, `pic`, `price`, `list_order`) VALUES
(1, 'French fries', 'Snacks', 'French fries', 'fimage/download.jpg', '150', 20),
(2, 'Cheese Burger', 'Food', 'Cheese Burger', 'fimage/bur.jfif', '120', 60),
(3, 'Cheddar Cheese Millet Fingers', 'Snacks', 'Cheddar Cheese Millet Fingers', 'fimage/newtag_6.webp', '45', 20),
(4, 'Sandwich', 'Food', 'Sandwich', 'fimage/download.jfif', '220', 50);

-- --------------------------------------------------------

--
-- Table structure for table `cafe_order`
--

CREATE TABLE `cafe_order` (
  `order_id` int(11) NOT NULL,
  `items_json` varchar(5000) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `table` varchar(15) NOT NULL,
  `order_time` datetime(6) NOT NULL,
  `price` varchar(5) NOT NULL,
  `bill_clear` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe_order`
--

INSERT INTO `cafe_order` (`order_id`, `items_json`, `name`, `phone`, `table`, `order_time`, `price`, `bill_clear`) VALUES
(10, '{\"pr1\":[1,\"French fries\",150]}', 'srushti patel', '9696969696', 'Take Away', '2026-01-21 21:18:13.479327', '150', 1),
(11, '{\"pr2\":[1,\"Cheese Burger\",120]}', 'srushti patel', '9696969696', 'Take Away', '2026-01-21 21:24:58.347931', '120', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cafe_payment`
--

CREATE TABLE `cafe_payment` (
  `id` bigint(20) NOT NULL,
  `razorpay_order_id` varchar(100) NOT NULL,
  `razorpay_payment_id` varchar(100) DEFAULT NULL,
  `razorpay_signature` varchar(200) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe_payment`
--

INSERT INTO `cafe_payment` (`id`, `razorpay_order_id`, `razorpay_payment_id`, `razorpay_signature`, `amount`, `status`, `created_at`, `order_id`, `user_id`) VALUES
(8, 'order_S6UcQC4YBYNPdw', 'pay_S6UcaGdUMRJbMx', '9b0d5ba9038c8ef288b767f2a49bdc242dbae2c0ae7ff467166a4812cfb095e8', 150, 'SUCCESS', '2026-01-21 10:18:15.698559', 10, 3),
(9, 'order_S6UjbYgg8rrAD2', 'pay_S6Ujk9l1LG3zr3', 'df22358a0d3944664eb1e5092153a31d9d6787661d8a49780410a057b5676209', 120, 'SUCCESS', '2026-01-21 10:25:03.701140', 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cafe_rating`
--

CREATE TABLE `cafe_rating` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `r_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe_rating`
--

INSERT INTO `cafe_rating` (`id`, `name`, `comment`, `r_date`) VALUES
(1, 'srushti patel', 'very nice service', '2025-06-06'),
(2, 'srushti patel', 'nice', '2026-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `cafe_user`
--

CREATE TABLE `cafe_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `phone_verified` tinyint(1) NOT NULL,
  `cafe_manager` tinyint(1) NOT NULL,
  `order_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe_user`
--

INSERT INTO `cafe_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `phone`, `phone_verified`, `cafe_manager`, `order_count`) VALUES
(1, 'pbkdf2_sha256$600000$i0PSnK2pvpReSYGs9neOpP$4Ik7reG85tUg9dMHlUbDmetYZkcubpUd3UqVT+GgI3Q=', '2026-01-21 10:32:12.967946', 1, '', '', 1, 1, '2025-06-06 09:47:27.138080', '9898989898', 0, 0, 0),
(2, 'pbkdf2_sha256$600000$x7PKc2Z8NYowixbkk23d5a$SBSErQWptxxmDtclv4ZPZyWFkqTgySiniGLDBAjNis4=', '2025-06-06 09:50:59.671256', 0, 'srushti', 'patel', 0, 1, '2025-06-06 09:50:12.320646', '9898954758', 0, 0, 1),
(3, 'pbkdf2_sha256$600000$5qCjNL2WFAvCIRRFjHjLwb$oZiFQom9uX0U/B/ZCayTzIoIZM3vLaPAlMPsdy44XLg=', '2026-01-21 10:12:55.719155', 0, 'srushti', 'patel', 0, 1, '2026-01-21 07:05:21.944515', '9696969696', 0, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `cafe_user_groups`
--

CREATE TABLE `cafe_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cafe_user_user_permissions`
--

CREATE TABLE `cafe_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-06-06 09:49:13.417820', '1', 'French fries', 1, '[{\"added\": {}}]', 6, 1),
(2, '2026-01-21 09:27:00.368073', '2', 'Cheese Burger', 1, '[{\"added\": {}}]', 6, 1),
(3, '2026-01-21 10:29:26.939965', '3', 'Cheddar Cheese Millet Fingers', 1, '[{\"added\": {}}]', 6, 1),
(4, '2026-01-21 10:31:34.735765', '4', 'Sandwich', 1, '[{\"added\": {}}]', 6, 1),
(5, '2026-01-21 10:31:43.791023', '2', 'Cheese Burger', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 6, 1),
(6, '2026-01-21 10:32:26.084436', '1', 'French fries', 2, '[{\"changed\": {\"fields\": [\"Desc\"]}}]', 6, 1),
(7, '2026-01-21 10:32:32.842034', '1', 'French fries', 2, '[{\"changed\": {\"fields\": [\"List order\"]}}]', 6, 1),
(8, '2026-01-21 10:32:45.185801', '2', 'Cheese Burger', 2, '[{\"changed\": {\"fields\": [\"List order\"]}}]', 6, 1),
(9, '2026-01-21 10:32:49.030040', '3', 'Cheddar Cheese Millet Fingers', 2, '[]', 6, 1),
(10, '2026-01-21 10:32:54.845224', '4', 'Sandwich', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(10, 'cafe', 'bill'),
(6, 'cafe', 'menu_item'),
(7, 'cafe', 'order'),
(11, 'cafe', 'payment'),
(8, 'cafe', 'rating'),
(9, 'cafe', 'user'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-06-06 09:43:17.971029'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-06-06 09:43:18.452522'),
(3, 'auth', '0001_initial', '2025-06-06 09:43:21.301739'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-06-06 09:43:22.054756'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-06-06 09:43:22.080657'),
(6, 'auth', '0004_alter_user_username_opts', '2025-06-06 09:43:22.132639'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-06-06 09:43:22.163448'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-06-06 09:43:22.186789'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-06-06 09:43:22.212350'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-06-06 09:43:22.239987'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-06-06 09:43:22.270559'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-06-06 09:43:22.350036'),
(13, 'auth', '0011_update_proxy_permissions', '2025-06-06 09:43:22.372591'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-06-06 09:43:22.488590'),
(15, 'cafe', '0001_initial', '2025-06-06 09:43:29.713399'),
(16, 'admin', '0001_initial', '2025-06-06 09:43:31.906428'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-06-06 09:43:32.079993'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-06-06 09:43:32.121151'),
(19, 'cafe', '0002_alter_order_table', '2025-06-06 09:43:32.600180'),
(20, 'cafe', '0003_order_price', '2025-06-06 09:43:33.542693'),
(21, 'cafe', '0004_menu_item_list_order', '2025-06-06 09:43:34.111560'),
(22, 'cafe', '0005_order_bill_clear', '2025-06-06 09:43:34.711477'),
(23, 'cafe', '0006_user_order_count', '2025-06-06 09:43:35.341059'),
(24, 'cafe', '0007_bill', '2025-06-06 09:43:36.156602'),
(25, 'cafe', '0008_bill_bill_time', '2025-06-06 09:43:36.633381'),
(26, 'sessions', '0001_initial', '2025-06-06 09:43:37.584414'),
(27, 'auth', '0013_alter_user_email', '2026-01-21 09:10:40.258664'),
(28, 'auth', '0014_alter_user_email', '2026-01-21 09:10:40.320901'),
(29, 'cafe', '0009_payment', '2026-01-21 09:10:42.340737');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ze9vvbyty2lwi2g3dbtqkhco60msbgj', '.eJxVjDEOwjAMRe-SGUVNnLoqIztniGzHJQWUSE07Ie4OlTrA-t97_2UibWuOW9MlzsmcDZjT78YkDy07SHcqt2qllnWZ2e6KPWiz15r0eTncv4NMLX9rAUrqPYME7HR0Qz85hICBewjkxQ3JdUrMMjoO6KfgUBEJkImFwbw_4TE4DQ:1viUV5:chsQhMAn8zsLFoH2QZf9HEcLH767JGgvIFjfUP7VKWw', '2026-02-04 09:27:43.279240'),
('fbccbaneft3ftlioww6esdn1q27gfv4c', '.eJxVjDEOwjAMRe-SGUXYpK7DyN4zVEns0AJKpKadEHdHlTrA-t97_23GsK3TuDVdxlnM1aA5_W4xpKeWHcgjlHu1qZZ1maPdFXvQZocq-rod7t_BFNq01yiJeyFB9MRMgILA5CizJqDIwo7QnbP0PYhq9h2hdpkEMvhLZz5f0g43bA:1uNTj1:5Y7ICFKPOQn86_0ZN1t31tOp22eFeI9DCBEbRHcirYA', '2025-06-20 09:50:59.695866');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `cafe_bill`
--
ALTER TABLE `cafe_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafe_menu_item`
--
ALTER TABLE `cafe_menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafe_order`
--
ALTER TABLE `cafe_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `cafe_payment`
--
ALTER TABLE `cafe_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cafe_payment_order_id_bbbc8541_fk_cafe_order_order_id` (`order_id`),
  ADD KEY `cafe_payment_user_id_facb48bb_fk_cafe_user_id` (`user_id`);

--
-- Indexes for table `cafe_rating`
--
ALTER TABLE `cafe_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafe_user`
--
ALTER TABLE `cafe_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `cafe_user_groups`
--
ALTER TABLE `cafe_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cafe_user_groups_user_id_group_id_579d8707_uniq` (`user_id`,`group_id`),
  ADD KEY `cafe_user_groups_group_id_573efd86_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `cafe_user_user_permissions`
--
ALTER TABLE `cafe_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cafe_user_user_permissions_user_id_permission_id_e295b4f7_uniq` (`user_id`,`permission_id`),
  ADD KEY `cafe_user_user_permi_permission_id_9c52e851_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_cafe_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cafe_bill`
--
ALTER TABLE `cafe_bill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cafe_menu_item`
--
ALTER TABLE `cafe_menu_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cafe_order`
--
ALTER TABLE `cafe_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cafe_payment`
--
ALTER TABLE `cafe_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cafe_rating`
--
ALTER TABLE `cafe_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cafe_user`
--
ALTER TABLE `cafe_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cafe_user_groups`
--
ALTER TABLE `cafe_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cafe_user_user_permissions`
--
ALTER TABLE `cafe_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `cafe_payment`
--
ALTER TABLE `cafe_payment`
  ADD CONSTRAINT `cafe_payment_order_id_bbbc8541_fk_cafe_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `cafe_order` (`order_id`),
  ADD CONSTRAINT `cafe_payment_user_id_facb48bb_fk_cafe_user_id` FOREIGN KEY (`user_id`) REFERENCES `cafe_user` (`id`);

--
-- Constraints for table `cafe_user_groups`
--
ALTER TABLE `cafe_user_groups`
  ADD CONSTRAINT `cafe_user_groups_group_id_573efd86_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `cafe_user_groups_user_id_e757bc43_fk_cafe_user_id` FOREIGN KEY (`user_id`) REFERENCES `cafe_user` (`id`);

--
-- Constraints for table `cafe_user_user_permissions`
--
ALTER TABLE `cafe_user_user_permissions`
  ADD CONSTRAINT `cafe_user_user_permi_permission_id_9c52e851_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `cafe_user_user_permissions_user_id_67169e5f_fk_cafe_user_id` FOREIGN KEY (`user_id`) REFERENCES `cafe_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_cafe_user_id` FOREIGN KEY (`user_id`) REFERENCES `cafe_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
