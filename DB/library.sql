-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 06:40 AM
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
(1, 'Ranjeet', 'Meena', 'mrranjeet11115@gmail.com', 1234567889, 'aaa'),
(2, 'rahul', 'Shekhawat', 'rahul1234@gmail.com', 1234567890, 'qwerty'),
(3, 'rahul', 'Shekhawat', 'rahul111234@gmail.com', 1234567890, 'qwerty'),
(4, 'Ranjeet', 'Meena', 'mrranjeet122221115@gmail.com', 2222222222, '1111'),
(5, 'rahul', 'Shekhawat', 'rahul1ee234@gmail.com', 1234567890, 'qwerty');

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
(22, 'library', '0003_alter_book_edition', '2022-04-07 07:39:44.828087');

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
('asuqv9a1zdif946xf3pmoqucx4m9n1t7', '.eJyrViotTi3KTFGyMtRRSstLzE1VslIKSszLSk0tUdJRyoGK-Kam5iUC-am5iZk5QH5uURFEjSEQmDqkg4T1kvNzgUpy85Myc4B6DI2MTUzNzC0sLGsBb-ofeA:1ncK5L:HTksLq6nYrmpHWiC3CNxlXEQNvE4VFZ5xEH0vUBl3gE', '2022-04-21 04:49:31.920123'),
('wmtaz2kux05rr9x71nkw85tnnlsemraw', 'eyJ1c2VyIjoyLCJ1c2VyaWQiOjJ9:1ncAlU:Q_1En0XmZjSdKdxcr459hDrBe9lwxVCGN8CJod_Ht-8', '2022-04-20 18:52:24.267306');

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
(16, 'aaa', 'aaa', 'sss', 2, 3),
(17, 'aaa', 'aaa', 'sss', 3, 1),
(18, 'aaaqqqq123qqqq', 'aaa123', 'sss123', 5, 4),
(19, 'As You Like It', 'William Shakespeare', 'First', 2, 2);

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
(1, 'Motivational'),
(2, 'Novel'),
(3, 'Science'),
(4, 'Horror'),
(5, 'Biography');

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
(1, 'Business Studies'),
(2, 'English'),
(3, 'Science'),
(4, 'biography');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_booksubject`
--
ALTER TABLE `library_booksubject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_user`
--
ALTER TABLE `admins_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `library_book`
--
ALTER TABLE `library_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `library_bookcategory`
--
ALTER TABLE `library_bookcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_booksubject`
--
ALTER TABLE `library_booksubject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
