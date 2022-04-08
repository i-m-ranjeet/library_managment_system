-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 11:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins_user`
--

CREATE TABLE `admins_user` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` int(10) UNSIGNED NOT NULL CHECK (`mobile` >= 0),
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins_user`
--

INSERT INTO `admins_user` (`id`, `fname`, `lname`, `email`, `mobile`, `password`) VALUES
(1, 'Ranjeet', 'Meena', 'mrranjeet11115@gmail.com', 1234567889, 'ranjeet@123');

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
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add book subject', 8, 'add_booksubject'),
(30, 'Can change book subject', 8, 'change_booksubject'),
(31, 'Can delete book subject', 8, 'delete_booksubject'),
(32, 'Can view book subject', 8, 'view_booksubject'),
(33, 'Can add book category', 9, 'add_bookcategory'),
(34, 'Can change book category', 9, 'change_bookcategory'),
(35, 'Can delete book category', 9, 'delete_bookcategory'),
(36, 'Can view book category', 9, 'view_bookcategory'),
(37, 'Can add book', 10, 'add_book'),
(38, 'Can change book', 10, 'change_book'),
(39, 'Can delete book', 10, 'delete_book'),
(40, 'Can view book', 10, 'view_book');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(7, 'admins', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'library', 'book'),
(9, 'library', 'bookcategory'),
(8, 'library', 'booksubject'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2022-04-06 13:32:56.604076'),
(2, 'auth', '0001_initial', '2022-04-06 13:32:57.010440'),
(3, 'admin', '0001_initial', '2022-04-06 13:32:57.106959'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-06 13:32:57.120950'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-06 13:32:57.136945'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-06 13:32:57.196468'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-06 13:32:57.251504'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-06 13:32:57.283484'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-06 13:32:57.299475'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-06 13:32:57.355440'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-06 13:32:57.361436'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-06 13:32:57.376426'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-06 13:32:57.399414'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-06 13:32:57.430393'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-06 13:32:57.454378'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-06 13:32:57.474368'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-06 13:32:57.503348'),
(18, 'sessions', '0001_initial', '2022-04-06 13:32:57.532330'),
(19, 'admins', '0001_initial', '2022-04-06 17:10:06.668534'),
(20, 'library', '0001_initial', '2022-04-07 06:06:28.352393'),
(21, 'library', '0002_alter_book_author_alter_book_edition_and_more', '2022-04-07 06:27:36.816033'),
(22, 'library', '0003_alter_book_edition', '2022-04-07 07:39:44.828087'),
(23, 'library', '0004_alter_bookcategory_category_name_and_more', '2022-04-08 08:32:04.437270');

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
('0siy4ortelesfe3a17lj90nkbpa0gtzs', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncJhQ:8HFT_gLfTe81dGCiPBckHB110-8uqEOVBr5xzSWzKVc', '2022-04-21 04:24:48.398791'),
('14rbruj0qylf3bt6j770mtjpu4qa38nn', 'eyJ1c2VyaWQiOjF9:1ncjzH:2FD8YtWTARD53UAMF7x7IJJ4euMwYU0HCQCADL_fUx4', '2022-04-22 08:28:59.534560'),
('2n8dam25w6zxjf6whsrtjwkct5tfa4tt', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncitv:u-8U2V2DG-OTyrsbaqpNAx4kjUUwgRSOiF0AUN3vGtg', '2022-04-22 07:19:23.219710'),
('9mhzjduptjgnr90dbcyydmcs9ndztw14', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncitc:pvyXynm1xe4qA823cbr-zcL32u2L4MzlFrTkVUbFJfE', '2022-04-22 07:19:04.548226'),
('9qg0zs502s99qjk5nrg9pdem6x6xz44h', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjg4:Wcr6CWgkJXNj90hr_jEme0580wjSmy3rQcezPJ0Gk08', '2022-04-22 08:09:08.192631'),
('asuqv9a1zdif946xf3pmoqucx4m9n1t7', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncK5L:HTksLq6nYrmpHWiC3CNxlXEQNvE4VFZ5xEH0vUBl3gE', '2022-04-21 04:49:31.920123'),
('cjahau02281wq7etuukxqgviosjb5we6', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncj2F:KowIqY9eGR2XEbEQUugi8N-FJ49-deCsG4WmkejvLXc', '2022-04-22 07:27:59.941586'),
('d0by195xyfpjxa4y73d0jr78madgvltm', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncj0C:o6zbkDA7dpm3wSneoV_-TA2Le4Cu5dL5svHflC6xGjs', '2022-04-22 07:25:52.106953'),
('dkhsqfb6dh8fd7gy4co09x4v3s00wqs6', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncita:ivMPZP8TNRQ7JFyC6vtud6_T6uS4cYItfjn1vEV8O7g', '2022-04-22 07:19:02.465975'),
('e35tpluylu5fc3mit8ahfw9d7gd9s6rt', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjgr:m3ZPn3804OHCk_NpB-cfDG5ABvVryspI23tI_IHLqpM', '2022-04-22 08:09:57.056315'),
('eeu39uhe8a8awqghnl0lzuhzrgh3j3dl', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjQv:-ocOKABPygBC2g5koimC3aob-YKB26zEZ73nV_4JehM', '2022-04-22 07:53:29.393254'),
('er2au7xjmpfqwdc8djctepq5dqx7tnbh', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncj8s:jbYPaLMsY98vRPPXC27r2bx1Ewu3Ly10bHHqJ1cFSKQ', '2022-04-22 07:34:50.378296'),
('j95i3jf3r857rmi51q6jv8j01d6fiewk', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjLT:HDrwpXCm-9dAu1CORVTp6wu54PBvF5bYVQzOW1etI0w', '2022-04-22 07:47:51.670654'),
('jqokznt4tjnfx87edzlgrewfifzkt2qg', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1nciwG:4Y10eYrL7OhFDqlZeKgfRPouSfCTeD1Cu3D7r_P6nfo', '2022-04-22 07:21:48.042059'),
('jrup71jur9ecpnwjt3dzzpjli8vw7jug', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjf1:02s22mgm-oLPX-Z74oHNYerKUdYP7AUCzIWmfZ0EPjI', '2022-04-22 08:08:03.630904'),
('klbuixse2kugeuf3u31yoftptr7vw09q', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncj3d:BU04LGBQ08mz9BZ1zmYjzxKR8kvzNe64ujxoZZY3cW0', '2022-04-22 07:29:25.137445'),
('kor54oj7y9vp2l1ogikp4uv4t5m18bt3', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjS3:jF5YdAUWMIBEZKQQ2BAJmRsmyauW_KYoY-Ep_2upYKE', '2022-04-22 07:54:39.723034'),
('ktvj26ylx6cbawf7pyv65pac9z14om3l', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjbJ:mj2MvoJHfW9Fgq6r50eP0z-FzIRERuj8ibuczk4icJM', '2022-04-22 08:04:13.015336'),
('m4c0ote3tbo5lfhctrhnr9nmufrd8ese', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjVE:-kJ2u-4U1RCFtpQMzLKOUS4-nX2pF0OdIgS4AvFys-0', '2022-04-22 07:57:56.358423'),
('mnd0xlnjb1gthmw33n8wpgdps6ih26ag', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncj1i:qEEGTkeoiEusfV47v4sjQI_M8LeQCpfQF0F150dzc-8', '2022-04-22 07:27:26.461486'),
('mooo6iijjkml0eenc3zacvln13hwky39', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncite:4LFx_nk0DBmHXSu6PCF2Xn2nHb8Nf49pWQFjbOEc0zA', '2022-04-22 07:19:06.665737'),
('n1vem28yu8prffmsdecivzrtek2xacic', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1nciyV:WrQucpJdQ3ngFtpgdR0jkkjumaCbhUFsBejs7ZunYFQ', '2022-04-22 07:24:07.786906'),
('nca8byzmorxpgqw9v19yjso1dj1pisni', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjky:Meis2yzOEoKAB9g3jbBmBEIX14TwtMJni3qyUSsY2M8', '2022-04-22 08:14:12.791561'),
('o8pasxr5xwhh89f1rn6d6894d9pdjlou', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjRT:YfM5H5G-geAZWpPT3OTFr31ZVTjnBdC08FkXDrsjlts', '2022-04-22 07:54:03.643388'),
('p0mw2pc88g74e3xb4137ryqeyn17j5bu', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncivS:aySbgMQYo2yTCMg_KmV4aoxKTZgdQ0bZBnMviJR2Y-E', '2022-04-22 07:20:58.644402'),
('q7y6zxwfsalh8u8cw30oqnzifjcfe7m8', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjad:Z8yOBHtMnI8touNXdAGF2ia0zEhLQ83Y9ckGW79xvPM', '2022-04-22 08:03:31.965191'),
('qfis1xv6yxtfsvg713lar84jz6w4w9xy', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjLw:Q3xU8jpoHVbCEaQPCOO73p-y2yb9mgaJLFrMLAnl4bA', '2022-04-22 07:48:20.248100'),
('qhnpwsb0v3opmaur9sww51gs9v85mm63', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjTM:duynNleCYBcfDlHckYxSZ5hY-c5DJfZmUwjjKwkmHhQ', '2022-04-22 07:56:00.070665'),
('t75pa4xjtv4vd0jiukh62crvtfrdj434', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjXI:jvVuD2CMD5BjxcM2QvVMScMgoadsY6LCiEM-4jHx5GE', '2022-04-22 08:00:04.718590'),
('thn22fvq0k37eynszvgssutohn8r8w4s', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncj7v:6S_Eo4D1YVl_KpoHf1xW2kYG_zClmE4SIq7JwBBZk8w', '2022-04-22 07:33:51.595823'),
('tt7vwfde4x2lniix8q9rcd2hqtfstezn', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjSg:-68n0222ZREM7rEYyMDlfmjcoyr08_6FbHwHkYj1q_M', '2022-04-22 07:55:18.016202'),
('ud5nr9dzul2xhtwhtjohepf7gmmjr3be', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncivl:9Aw417T5rcAX8_axV0-zg-ODs1LuOg2HamUCzkvENZk', '2022-04-22 07:21:17.291360'),
('uhooe8k62wwo7nene7xvl04qbkyz34fo', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1nciu4:9brMQ0x81WBhYF2DemkwCDFzVcvji2w-GzVGnEwih6s', '2022-04-22 07:19:32.588843'),
('v7k9y0p41hz7062yqxj53i6o3ajxbxfd', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1nciyw:e_7nuw_HmaxB4g0x3mO0Pw-Oav1KNQ1m561SH0S4Gqg', '2022-04-22 07:24:34.217387'),
('vsqkyfni21csof75kosbp46czzk4m9is', 'eyJ1c2VyaWQiOjF9:1nckox:6BylFyIpA7MuZuW_sK8YHwb4q9JaFOrJzMf9oZ-TJi0', '2022-04-22 09:22:23.092518'),
('wmtaz2kux05rr9x71nkw85tnnlsemraw', 'eyJ1c2VyIjoyLCJ1c2VyaWQiOjJ9:1ncAlU:Q_1En0XmZjSdKdxcr459hDrBe9lwxVCGN8CJod_Ht-8', '2022-04-20 18:52:24.267306'),
('x73bskahcawjgf8htinjdmyiuc240mkc', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1nciuh:roS4CLdgtEq7rlY75cJDDg2iUHGCS_ZPp7WKPul1TJE', '2022-04-22 07:20:11.571781'),
('xkzrtwe4iacszd2ja4nstk5knx1cq2s0', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncjXg:CSPe9g1EPmZqbMoRBspEyYHOeQZH-X5RKM3K8OPRwQg', '2022-04-22 08:00:28.538407'),
('ynlspaj1moi6cvfegsl4unmzq0a48zo3', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1nciv5:LGXiwzJUA1OPuh4HijcNACVwSOvqXb-s0kJmmsR--x4', '2022-04-22 07:20:35.944251'),
('ztu3fi98mf0btz037n05ucklkuzcsrei', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncj6d:bDxfIczIJ7uz_GX_mnPLmRpsjXhlL1deI3eEGeHO8Lo', '2022-04-22 07:32:31.597889');

-- --------------------------------------------------------

--
-- Table structure for table `library_book`
--

CREATE TABLE `library_book` (
  `id` bigint(20) NOT NULL,
  `title` varchar(120) NOT NULL,
  `author` varchar(120) NOT NULL,
  `edition` varchar(120) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_book`
--

INSERT INTO `library_book` (`id`, `title`, `author`, `edition`, `category_id`, `subject_id`) VALUES
(2, 'Rich Dad Poor Dad', '‎Kiyosaki, Robert T.', '20th anniversary', 1, 1),
(3, 'As You Like It', 'William Shakespeare', 'First', 2, 2),
(4, 'Bad Science', '‎Ben Goldacre', 'Kindle Edition', 3, 3),
(5, 'Wings of Fire', '‎APJ Abdul Kalam', NULL, 5, 4),
(20, 'No Spin', 'Shane Warne', NULL, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `library_bookcategory`
--

CREATE TABLE `library_bookcategory` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_bookcategory`
--

INSERT INTO `library_bookcategory` (`id`, `category_name`) VALUES
(5, 'Biography'),
(7, 'Educational'),
(4, 'Horror'),
(1, 'Motivational'),
(2, 'Novel'),
(3, 'Science'),
(8, 'Sports'),
(9, 'Technical'),
(6, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `library_booksubject`
--

CREATE TABLE `library_booksubject` (
  `id` bigint(20) NOT NULL,
  `subject_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_booksubject`
--

INSERT INTO `library_booksubject` (`id`, `subject_name`) VALUES
(4, 'biography'),
(1, 'Business Studies'),
(2, 'English'),
(5, 'Mathematics'),
(3, 'Science'),
(10, 'Social Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_user`
--
ALTER TABLE `admins_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `library_book`
--
ALTER TABLE `library_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_book_category_id_c90a2d6d_fk_library_bookcategory_id` (`category_id`),
  ADD KEY `library_book_subject_id_b0c03460_fk_library_booksubject_id` (`subject_id`);

--
-- Indexes for table `library_bookcategory`
--
ALTER TABLE `library_bookcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_bookcategory_category_name_17934e15_uniq` (`category_name`);

--
-- Indexes for table `library_booksubject`
--
ALTER TABLE `library_booksubject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_booksubject_subject_name_452f0c99_uniq` (`subject_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_user`
--
ALTER TABLE `admins_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `library_book`
--
ALTER TABLE `library_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `library_bookcategory`
--
ALTER TABLE `library_bookcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `library_booksubject`
--
ALTER TABLE `library_booksubject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- Constraints for table `library_book`
--
ALTER TABLE `library_book`
  ADD CONSTRAINT `library_book_category_id_c90a2d6d_fk_library_bookcategory_id` FOREIGN KEY (`category_id`) REFERENCES `library_bookcategory` (`id`),
  ADD CONSTRAINT `library_book_subject_id_b0c03460_fk_library_booksubject_id` FOREIGN KEY (`subject_id`) REFERENCES `library_booksubject` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
