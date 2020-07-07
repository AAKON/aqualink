-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2020 at 11:04 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqualink`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add services', 7, 'add_services'),
(26, 'Can change services', 7, 'change_services'),
(27, 'Can delete services', 7, 'delete_services'),
(28, 'Can view services', 7, 'view_services'),
(29, 'Can add clients', 8, 'add_clients'),
(30, 'Can change clients', 8, 'change_clients'),
(31, 'Can delete clients', 8, 'delete_clients'),
(32, 'Can view clients', 8, 'view_clients'),
(33, 'Can add about_us', 9, 'add_about_us'),
(34, 'Can change about_us', 9, 'change_about_us'),
(35, 'Can delete about_us', 9, 'delete_about_us'),
(36, 'Can view about_us', 9, 'view_about_us'),
(37, 'Can add services_div', 10, 'add_services_div'),
(38, 'Can change services_div', 10, 'change_services_div'),
(39, 'Can delete services_div', 10, 'delete_services_div'),
(40, 'Can view services_div', 10, 'view_services_div');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$85Li1cX5ZqPS$NCQbY2fwck62ewn7LQW1gsrA2MXuiCQ1FxNknKYyLWU=', '2020-07-05 19:22:31.523193', 1, 'faisal', '', '', 'faisal@gmail.com', 1, 1, '2020-07-05 18:54:13.694213');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-05 19:26:00.207236', '1', 'IOT & EMBEDDED SYSTEMS', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-07-05 19:30:04.346183', '1', 'IOT & EMBEDDED SYSTEMS', 2, '[]', 7, 1),
(3, '2020-07-05 19:31:26.794993', '2', 'AI & MACHINE LEARNING', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-07-05 19:32:26.430548', '3', 'WEB & APP DEVELOPMENT', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-07-05 19:33:12.158750', '4', 'ROBOTICS & INDUSTRIAL AUTOMATION', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-07-06 11:54:26.527533', '1', 'WASA', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-07-06 11:55:22.701241', '2', 'Safe & Fresh', 1, '[{\"added\": {}}]', 8, 1),
(8, '2020-07-06 11:56:07.921720', '3', 'Remedia', 1, '[{\"added\": {}}]', 8, 1),
(9, '2020-07-06 11:56:34.374937', '4', 'GLT', 1, '[{\"added\": {}}]', 8, 1),
(10, '2020-07-06 11:57:08.461590', '5', 'Scotex', 1, '[{\"added\": {}}]', 8, 1),
(11, '2020-07-07 20:52:26.287502', '4', 'https://www.youtube.com/watch?v=7bxHJ9cwoUo&list=RD7bxHJ9cwoUo&start_radio=1', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Descriptison\"]}}]', 7, 1),
(12, '2020-07-07 20:53:55.278316', '4', 'ROBOTICS & INDUSTRIAL AUTOMATION', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Descriptison\"]}}]', 7, 1),
(13, '2020-07-07 21:23:31.608829', '1', 'don\'t add, just edit', 1, '[{\"added\": {}}]', 9, 1),
(14, '2020-07-07 21:27:43.039372', '1', 'don\'t add, just edit', 2, '[{\"changed\": {\"fields\": [\"About link\"]}}]', 9, 1),
(15, '2020-07-07 22:35:40.850142', '1', 'AI & MACHINE LEARNING', 1, '[{\"added\": {}}]', 10, 1),
(16, '2020-07-07 22:37:00.128501', '2', 'WEB & APP DEVELOPMENT', 1, '[{\"added\": {}}]', 10, 1),
(17, '2020-07-07 22:37:56.770965', '3', 'ROBOTICS & INDUSTRIAL AUTOMATION', 1, '[{\"added\": {}}]', 10, 1),
(18, '2020-07-07 22:40:45.391169', '4', 'IOT & EMBEDDED SYSTEMS', 1, '[{\"added\": {}}]', 10, 1),
(19, '2020-07-07 22:42:49.354318', '2', 'WEB & APP DEVELOPMENT', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'home', 'about_us'),
(8, 'home', 'clients'),
(7, 'home', 'services'),
(10, 'home', 'services_div'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-05 18:47:51.866597'),
(2, 'auth', '0001_initial', '2020-07-05 18:47:53.153141'),
(3, 'admin', '0001_initial', '2020-07-05 18:47:59.376391'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-05 18:48:01.222069'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-05 18:48:01.291883'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-05 18:48:02.927883'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-05 18:48:03.182677'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-05 18:48:03.265110'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-05 18:48:03.306419'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-05 18:48:03.672766'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-05 18:48:03.690678'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-05 18:48:03.723629'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-05 18:48:03.801737'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-05 18:48:03.885984'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-05 18:48:04.076659'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-05 18:48:04.114983'),
(17, 'sessions', '0001_initial', '2020-07-05 18:48:04.444077'),
(18, 'home', '0001_initial', '2020-07-05 19:12:00.038311'),
(19, 'home', '0002_clients', '2020-07-06 11:52:44.119484'),
(20, 'home', '0003_auto_20200706_1806', '2020-07-07 21:01:17.619628'),
(21, 'home', '0004_about_us', '2020-07-07 21:01:19.063108'),
(22, 'home', '0005_services_div', '2020-07-07 22:28:44.208763');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7qzxsmghu5o9huvqja71pvb39rkyj7pk', 'NTgwZWNiN2JmMmJmOTYxMzNhNzA1ZGM1N2MxNTFjYTBmNTBhOTEwODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZTY5OGM5NTk2MDViNDUzYTM3YzAzNGYwOWQ4YmI1NzZlMGUxZjEzIn0=', '2020-07-19 19:22:31.617963');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us`
--

CREATE TABLE `home_about_us` (
  `id` int(11) NOT NULL,
  `info` varchar(100) NOT NULL,
  `decription` longtext NOT NULL,
  `img_about` varchar(100) NOT NULL,
  `about_link` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_about_us`
--

INSERT INTO `home_about_us` (`id`, `info`, `decription`, `img_about`, `about_link`) VALUES
(1, 'don\'t add, just edit', 'GET BEST SOLUTIONS BY OUR SERVICES', 'home/about/services-circle-2-1.png', 'https://www.youtube.com/watch?v=4rJ9z6IXnb8&list=RDEMVOzRQTMI_ZrcuvlDNKc2dg&start_radio=1');

-- --------------------------------------------------------

--
-- Table structure for table `home_clients`
--

CREATE TABLE `home_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img_services` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_clients`
--

INSERT INTO `home_clients` (`id`, `name`, `img_services`) VALUES
(1, 'WASA', 'home/clients/rsz_wasa.png'),
(2, 'Safe & Fresh', 'home/clients/rsz_safeand_frsh.jpg'),
(3, 'Remedia', 'home/clients/rsz_bipsot.png'),
(4, 'GLT', 'home/clients/global.png'),
(5, 'Scotex', 'home/clients/rsz_hydrqou.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_services`
--

CREATE TABLE `home_services` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `descriptison` longtext NOT NULL,
  `img_services` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_services`
--

INSERT INTO `home_services` (`id`, `title`, `descriptison`, `img_services`) VALUES
(1, 'IOT & EMBEDDED SYSTEMS', 'Aqualink\'s IoT software and embedded system building blocks to accelerate the development and time-to-market of secure, connected products and services that are powering smart cities, enterprises, factories, homes and vehicles.', 'home/services/vulnerability-management-iot-embedded-systems.jpg'),
(2, 'AI & MACHINE LEARNING', 'For future business AI and machine learning is the most important technology for a better representation of your unstructured data. AI-driven software is helping companies to increase manufacturing and logistics efficiency, improve customer relationships, reducing human errors and boost sales. We can serve you with extensive analysis and actionable predictions that will help you to grow your business.', 'home/services/guide-to-machine-learning-and-ai-1024x576.jpg'),
(3, 'WEB & APP DEVELOPMENT', 'As a means to safely and securely access all the data provided by our products, our team has built beautiful and intuitive web panels. The control dials and report feature in the web panels is key to know more about your business and optimise work efficiency where necessary.', 'home/services/web-and-app-design.jpg'),
(4, 'ROBOTICS & INDUSTRIAL AUTOMATION', 'Robotics industrial automation is changing the face of production. Manufacturers around the globe are implementing some form of automation to become more efficient, safe and ultimately to increase revenues. While some advantages are obvious, there may be more than you think.', 'home/services/db_shenker_industrial_automation_magento_blog.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_services_div`
--

CREATE TABLE `home_services_div` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_services_div`
--

INSERT INTO `home_services_div` (`id`, `title`, `description`, `icon`) VALUES
(1, 'AI & MACHINE LEARNING', 'For future business AI and machine learning is the most important technology for a better representation of your unstructured data. AI-driven software is helping companies to increase manufacturing and logistics efficiency, improve customer relationships, reducing human errors and boost sales. We can serve you with extensive analysis and actionable predictions that will help you to grow your business.', 'icofont-robot-face'),
(2, 'WEB & APP DEVELOPMENT', 'As a means to safely and securely access all the data provided by our products, our team has built beautiful and intuitive web panels. The control dials and report feature in the web panels is key to know more about your business and optimise work efficiency where necessary.', 'icofont-responsive'),
(3, 'ROBOTICS & INDUSTRIAL AUTOMATION', 'Robotics industrial automation is changing the face of production. Manufacturers around the globe are implementing some form of automation to become more efficient, safe and ultimately to increase revenues. While some advantages are obvious, there may be more than you think.', 'icofont-help-robot'),
(4, 'IOT & EMBEDDED SYSTEMS', 'Aqualink\'s IoT software and embedded system building blocks to accelerate the development and time-to-market of secure, connected products and services that are powering smart cities, enterprises, factories, homes and vehicles.', 'icofont-micro-chip');

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `home_about_us`
--
ALTER TABLE `home_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_clients`
--
ALTER TABLE `home_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_services`
--
ALTER TABLE `home_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_services_div`
--
ALTER TABLE `home_services_div`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `home_about_us`
--
ALTER TABLE `home_about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_clients`
--
ALTER TABLE `home_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_services_div`
--
ALTER TABLE `home_services_div`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
