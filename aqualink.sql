-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2020 at 10:26 PM
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
-- Database: `aqualink3`
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
(25, 'Can add about_div', 7, 'add_about_div'),
(26, 'Can change about_div', 7, 'change_about_div'),
(27, 'Can delete about_div', 7, 'delete_about_div'),
(28, 'Can view about_div', 7, 'view_about_div'),
(29, 'Can add clients_div', 8, 'add_clients_div'),
(30, 'Can change clients_div', 8, 'change_clients_div'),
(31, 'Can delete clients_div', 8, 'delete_clients_div'),
(32, 'Can view clients_div', 8, 'view_clients_div'),
(33, 'Can add home_top_div', 9, 'add_home_top_div'),
(34, 'Can change home_top_div', 9, 'change_home_top_div'),
(35, 'Can delete home_top_div', 9, 'delete_home_top_div'),
(36, 'Can view home_top_div', 9, 'view_home_top_div'),
(37, 'Can add services_div', 10, 'add_services_div'),
(38, 'Can change services_div', 10, 'change_services_div'),
(39, 'Can delete services_div', 10, 'delete_services_div'),
(40, 'Can view services_div', 10, 'view_services_div'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product'),
(45, 'Can add faq', 12, 'add_faq'),
(46, 'Can change faq', 12, 'change_faq'),
(47, 'Can delete faq', 12, 'delete_faq'),
(48, 'Can view faq', 12, 'view_faq');

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
(1, 'pbkdf2_sha256$180000$A5mZU4ldgEh7$VZZwCTBHmdNLi47aoQYST1/NYJCufJsD1YSy7+kiirc=', '2020-07-12 01:10:08.919457', 1, 'faisal', '', '', 'faisalakon444@gmail.com', 1, 1, '2020-07-09 20:49:39.394128');

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
(1, '2020-07-09 22:01:13.317358', '1', 'don\'t add, just edit', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-07-09 22:02:02.585593', '1', 'WASA', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-07-09 22:02:27.926450', '2', 'Safe & Fresh', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-07-09 22:02:51.480477', '3', 'GLT', 1, '[{\"added\": {}}]', 8, 1),
(5, '2020-07-09 22:03:21.922020', '4', 'Remedia', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-07-09 22:03:41.355630', '5', 'Scotex', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-07-09 22:04:59.963343', '1', 'AI & MACHINE LEARNING', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-07-09 22:05:41.146759', '2', 'WEB & APP DEVELOPMENT', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-07-09 22:06:20.803270', '3', 'ROBOTICS & INDUSTRIAL AUTOMATION', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-07-09 22:06:55.244772', '4', 'IOT & EMBEDDED SYSTEMS', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-07-09 22:12:19.265957', '1', 'IOT & EMBEDDED SYSTEMS', 1, '[{\"added\": {}}]', 10, 1),
(12, '2020-07-09 22:13:04.483573', '2', 'AI & MACHINE LEARNING', 1, '[{\"added\": {}}]', 10, 1),
(13, '2020-07-09 22:13:39.901714', '3', 'WEB & APP DEVELOPMENT', 1, '[{\"added\": {}}]', 10, 1),
(14, '2020-07-09 22:14:15.456330', '4', 'ROBOTICS & INDUSTRIAL AUTOMATION', 1, '[{\"added\": {}}]', 10, 1),
(15, '2020-07-12 01:15:07.917472', '1', 'Sensometer', 1, '[{\"added\": {}}]', 11, 1),
(16, '2020-07-12 01:17:16.946094', '2', 'Smart Attendance System', 1, '[{\"added\": {}}]', 11, 1),
(17, '2020-07-12 01:19:44.039462', '3', 'UVC', 1, '[{\"added\": {}}]', 11, 1),
(18, '2020-07-12 01:21:16.237179', '4', 'Disinfectant Tunnel', 1, '[{\"added\": {}}]', 11, 1),
(19, '2020-07-12 18:25:33.414083', '3', 'Sensometer ---> Can I use the device in any type of warehouse?', 1, '[{\"added\": {}}]', 12, 1),
(20, '2020-07-12 18:26:14.528721', '4', 'Sensometer ---> Do you have any service charges?', 1, '[{\"added\": {}}]', 12, 1),
(21, '2020-07-12 18:26:57.834436', '5', 'Sensometer ---> Warranty period?', 1, '[{\"added\": {}}]', 12, 1),
(22, '2020-07-12 18:27:37.492535', '6', 'Sensometer ---> Do you provide any after sales service?', 1, '[{\"added\": {}}]', 12, 1),
(23, '2020-07-12 18:28:07.148001', '7', 'Sensometer ---> What is the temperature range?', 1, '[{\"added\": {}}]', 12, 1),
(24, '2020-07-12 18:28:49.206635', '8', 'Sensometer ---> What kind of solution do you have for a large warehouse?', 1, '[{\"added\": {}}]', 12, 1),
(25, '2020-07-12 18:29:19.655580', '9', 'Sensometer ---> How to setup this device?', 1, '[{\"added\": {}}]', 12, 1),
(26, '2020-07-12 18:29:49.454788', '10', 'Sensometer ---> Can I send data to my own server?', 1, '[{\"added\": {}}]', 12, 1),
(27, '2020-07-12 18:30:19.448552', '11', 'Sensometer ---> Does the device has a battery backup?', 1, '[{\"added\": {}}]', 12, 1),
(28, '2020-07-12 18:30:49.781318', '12', 'Sensometer ---> How can the device help me reduce electricity bills?', 1, '[{\"added\": {}}]', 12, 1);

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
(7, 'home', 'about_div'),
(8, 'home', 'clients_div'),
(12, 'home', 'faq'),
(9, 'home', 'home_top_div'),
(11, 'home', 'product'),
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
(1, 'contenttypes', '0001_initial', '2020-07-09 20:48:39.194968'),
(2, 'auth', '0001_initial', '2020-07-09 20:48:40.446964'),
(3, 'admin', '0001_initial', '2020-07-09 20:48:44.818570'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-09 20:48:45.940239'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-09 20:48:45.968391'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-09 20:48:46.863760'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-09 20:48:46.920291'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-09 20:48:46.982521'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-09 20:48:47.005661'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-09 20:48:47.506861'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-09 20:48:47.522643'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-09 20:48:47.547121'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-09 20:48:47.715198'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-09 20:48:47.802390'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-09 20:48:48.194001'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-09 20:48:48.216895'),
(17, 'sessions', '0001_initial', '2020-07-09 20:48:48.416327'),
(18, 'home', '0001_initial', '2020-07-09 21:57:17.559329'),
(19, 'home', '0002_product', '2020-07-12 01:04:26.649980'),
(20, 'home', '0003_faq', '2020-07-12 18:19:23.876078'),
(21, 'home', '0004_auto_20200713_0024', '2020-07-12 18:24:45.753827');

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
('iinm791b2d5d4texvgi7u8rxi7gxsu5t', 'Njk0ZGEwMWUyZTM5MjFjMjM2ODlmYjM0YmIxY2ZmZjAxYjUxZDJiNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MDdlOWQ5ZmY5MDJhMWI2OWU5YzA1ZDFkN2IyYzFhZmRkYWU2MWEzIn0=', '2020-07-23 21:58:17.233627'),
('jdogs9wf8k3g2z8eslcb9lr8eseznmgm', 'Njk0ZGEwMWUyZTM5MjFjMjM2ODlmYjM0YmIxY2ZmZjAxYjUxZDJiNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MDdlOWQ5ZmY5MDJhMWI2OWU5YzA1ZDFkN2IyYzFhZmRkYWU2MWEzIn0=', '2020-07-26 01:10:09.102373');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_div`
--

CREATE TABLE `home_about_div` (
  `id` int(11) NOT NULL,
  `info` varchar(100) NOT NULL,
  `decription` longtext NOT NULL,
  `img_about` varchar(100) NOT NULL,
  `about_link` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_about_div`
--

INSERT INTO `home_about_div` (`id`, `info`, `decription`, `img_about`, `about_link`) VALUES
(1, 'don\'t add, just edit', 'GET BEST\r\nSOLUTIONS BY\r\nOUR SERVICES', 'home/about/services-circle-2-1_uZtjmeo.png', 'https://www.youtube.com/watch?v=Aix0aaX2Fx8');

-- --------------------------------------------------------

--
-- Table structure for table `home_clients_div`
--

CREATE TABLE `home_clients_div` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img_clients` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_clients_div`
--

INSERT INTO `home_clients_div` (`id`, `name`, `img_clients`) VALUES
(1, 'WASA', 'home/clients/rsz_wasa_0LVSsLm.png'),
(2, 'Safe & Fresh', 'home/clients/rsz_safeand_frsh_loo6wdN.jpg'),
(3, 'GLT', 'home/clients/global_MhmAZxL.png'),
(4, 'Remedia', 'home/clients/rsz_bipsot_jqSSM6N.png'),
(5, 'Scotex', 'home/clients/rsz_hydrqou_BBM07nW.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_faq`
--

CREATE TABLE `home_faq` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_faq`
--

INSERT INTO `home_faq` (`id`, `question`, `answer`, `product_id`) VALUES
(3, 'Can I use the device in any type of warehouse?', 'Yes you can. If the products of your warehouse has any dependencies on the inside environment you can use our device.', 1),
(4, 'Do you have any service charges?', 'We have a data charge that is based on the package chosen', 1),
(5, 'Warranty period?', 'We are providing 1 year replacement warranty.', 1),
(6, 'Do you provide any after sales service?', 'Yes we do. You will have 3 years service warranty from the date of installation.', 1),
(7, 'What is the temperature range?', 'Our sensor can read temperatures from –-40ºC to 80ºC', 1),
(8, 'What kind of solution do you have for a large warehouse?', 'Our device can be integrated from 1 upto 4 sensors that will cover the whole warehouse', 1),
(9, 'How to setup this device?', 'Please contact us to set a setup plan', 1),
(10, 'Can I send data to my own server?', 'Yes. Our support team can integrate the software in your server', 1),
(11, 'Does the device has a battery backup?', 'Currently not available.', 1),
(12, 'How can the device help me reduce electricity bills?', 'From our device you can real time monitor the warehouse condition. And you can also remotely control the compressor. It will ensure the proper usage of your resources. Which in turn will help you to reduce your bills.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_home_top_div`
--

CREATE TABLE `home_home_top_div` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `descriptison` longtext NOT NULL,
  `img_top_div` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_home_top_div`
--

INSERT INTO `home_home_top_div` (`id`, `title`, `descriptison`, `img_top_div`) VALUES
(1, 'AI & MACHINE LEARNING', 'For future business AI and machine learning is the most important technology for a better representation of your unstructured data. AI-driven software is helping companies to increase manufacturing and logistics efficiency, improve customer relationships, reducing human errors and boost sales. We can serve you with extensive analysis and actionable predictions that will help you to grow your business.', 'home/services/guide-to-machine-learning-and-ai-1024x576_DyKjDYX.jpg'),
(2, 'WEB & APP DEVELOPMENT', 'As a means to safely and securely access all the data provided by our products, our team has built beautiful and intuitive web panels. The control dials and report feature in the web panels is key to know more about your business and optimise work efficiency where necessary.', 'home/services/web-and-app-design_sXFVH0E.jpg'),
(3, 'ROBOTICS & INDUSTRIAL AUTOMATION', 'Robotics industrial automation is changing the face of production. Manufacturers around the globe are implementing some form of automation to become more efficient, safe and ultimately to increase revenues. While some advantages are obvious, there may be more than you think.', 'home/services/db_shenker_industrial_automation_magento_blog_Q21x0UY.jpg'),
(4, 'IOT & EMBEDDED SYSTEMS', 'Aqualink\'s IoT software and embedded system building blocks to accelerate the development and time-to-market of secure, connected products and services that are powering smart cities, enterprises, factories, homes and vehicles.', 'home/services/vulnerability-management-iot-embedded-systems_nkIqkti.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_product`
--

CREATE TABLE `home_product` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `img_product` varchar(100) NOT NULL,
  `img_cover` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `brochure` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_product`
--

INSERT INTO `home_product` (`id`, `name`, `img_product`, `img_cover`, `description`, `brochure`) VALUES
(1, 'Sensometer', 'home/product/rsz_cold_storage_card.png', 'home/product/blog16.jpg', 'Sensometer provides remote access to detailed real-time monitoring with a warning system to safe guard your production and storage facilities.', 'csm_brochure_june.pdf'),
(2, 'Smart Attendance System', 'home/product/rsz_attendance_card.png', 'home/product/p04.jpg', 'Smart Attendance is a bio-metric fingerprint and RFID card reader based stand alone system used for access control and it can be installed independently.', 'attendance-brochure.pdf'),
(3, 'UVC', 'home/product/UVJ.jpg', 'home/product/blog05.jpg', 'Sensometer provides remote access to detailed real-time monitoring with a warning system to safeguard your production and storage facilities.', 'csm_brochure_june_P2TqJAU.pdf'),
(4, 'Disinfectant Tunnel', 'home/product/images-02.jpg', 'home/product/blog09.jpg', '6 Seconds Testing Temperature and Disinfecting Obtain Safe Work and Home Living.', 'disinfection_chamber_model.pdf');

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
(1, 'IOT & EMBEDDED SYSTEMS', 'Aqualink\'s IoT software and embedded system building blocks to accelerate the development and time-to-market of secure, connected products and services that are powering smart cities, enterprises, factories, homes and vehicles.', 'icofont-micro-chip'),
(2, 'AI & MACHINE LEARNING', 'For future business AI and machine learning is the most important technology for a better representation of your unstructured data. AI-driven software is helping companies to increase manufacturing and logistics efficiency, improve customer relationships, reducing human errors and boost sales. We can serve you with extensive analysis and actionable predictions that will help you to grow your business.', 'icofont-robot-face'),
(3, 'WEB & APP DEVELOPMENT', 'As a means to safely and securely access all the data provided by our products, our team has built beautiful and intuitive web panels. The control dials and report feature in the web panels is key to know more about your business and optimise work efficiency where necessary.', 'icofont-responsive'),
(4, 'ROBOTICS & INDUSTRIAL AUTOMATION', 'Robotics industrial automation is changing the face of production. Manufacturers around the globe are implementing some form of automation to become more efficient, safe and ultimately to increase revenues. While some advantages are obvious, there may be more than you think.', 'icofont-help-robot');

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
-- Indexes for table `home_about_div`
--
ALTER TABLE `home_about_div`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_clients_div`
--
ALTER TABLE `home_clients_div`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_faq`
--
ALTER TABLE `home_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_faq_product_id_9170b7f6_fk_home_product_id` (`product_id`);

--
-- Indexes for table `home_home_top_div`
--
ALTER TABLE `home_home_top_div`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_product`
--
ALTER TABLE `home_product`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `home_about_div`
--
ALTER TABLE `home_about_div`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_clients_div`
--
ALTER TABLE `home_clients_div`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_faq`
--
ALTER TABLE `home_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `home_home_top_div`
--
ALTER TABLE `home_home_top_div`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_product`
--
ALTER TABLE `home_product`
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

--
-- Constraints for table `home_faq`
--
ALTER TABLE `home_faq`
  ADD CONSTRAINT `home_faq_product_id_9170b7f6_fk_home_product_id` FOREIGN KEY (`product_id`) REFERENCES `home_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
