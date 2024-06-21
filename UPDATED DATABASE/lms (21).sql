-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 02, 2023 at 11:37 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `admin_image` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `admin_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `confirm_password`, `admin_image`, `admin_type`, `status`, `admin_added`) VALUES
(1, 'Vin', 'D.', 'Testers', 'admin', 'admin1', 'admin1', 'archie.jpg', 'Admin', 'Active', '2015-09-05 11:40:50'),
(2, 'Johnan', 'J.', 'Doe', 'encoder', 'admin', 'admin', '', 'Admin', 'Active', '2015-09-29 11:40:50'),
(3, 'Vin', '', 'Diesel', 'anonymous', '32cacb2f994f6b42183a1300d9a3e8d6', '32cacb2f994f6b42183a1300d9a3e8d6', 'vin.jpeg', 'Admin', 'Active', '2015-11-25 15:21:01'),
(4, 'Ivankov', '', 'Sama', 'ivan', '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'doja.jpeg', 'Admin', 'Deactivate', '2023-06-18 17:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `allowed_book`
--

DROP TABLE IF EXISTS `allowed_book`;
CREATE TABLE IF NOT EXISTS `allowed_book` (
  `allowed_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `qntty_books` int(11) NOT NULL,
  PRIMARY KEY (`allowed_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_book`
--

INSERT INTO `allowed_book` (`allowed_book_id`, `qntty_books`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `allowed_days`
--

DROP TABLE IF EXISTS `allowed_days`;
CREATE TABLE IF NOT EXISTS `allowed_days` (
  `allowed_days_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_days` int(11) NOT NULL,
  PRIMARY KEY (`allowed_days_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_days`
--

INSERT INTO `allowed_days` (`allowed_days_id`, `no_of_days`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `allowed_duration`
--

DROP TABLE IF EXISTS `allowed_duration`;
CREATE TABLE IF NOT EXISTS `allowed_duration` (
  `duration_id` int(255) NOT NULL AUTO_INCREMENT,
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`duration_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_duration`
--

INSERT INTO `allowed_duration` (`duration_id`, `duration`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

DROP TABLE IF EXISTS `barcode`;
CREATE TABLE IF NOT EXISTS `barcode` (
  `barcode_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_barcode` varchar(100) NOT NULL,
  `mid_barcode` int(100) NOT NULL,
  `suf_barcode` varchar(100) NOT NULL,
  PRIMARY KEY (`barcode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barcode`
--

INSERT INTO `barcode` (`barcode_id`, `pre_barcode`, `mid_barcode`, `suf_barcode`) VALUES
(1, 'VNHS', 1, 'LMS'),
(2, 'VNHS', 2, 'LMS'),
(3, 'VNHS', 3, 'LMS'),
(4, 'VNHS', 4, 'LMS'),
(5, 'VNHS', 5, 'LMS'),
(6, 'VNHS', 6, 'LMS'),
(7, 'VNHS', 7, 'LMS'),
(8, 'VNHS', 8, 'LMS'),
(9, 'VNHS', 8, 'LMS'),
(10, 'VNHS', 8, 'LMS'),
(11, 'VNHS', 9, 'LMS'),
(12, 'VNHS', 10, 'LMS'),
(13, 'VNHS', 11, 'LMS'),
(14, 'HRS', 12, 'LMS'),
(15, 'HRS', 13, 'LMS'),
(16, 'HRS', 14, 'LMS'),
(17, 'HRS', 15, 'LMS'),
(18, 'HRS', 16, 'LMS'),
(19, 'HRS', 17, 'LMS'),
(20, 'HRS', 18, 'LMS'),
(21, 'HRS', 19, 'LMS'),
(22, 'HRS', 20, 'LMS'),
(23, 'HRS', 21, 'LMS');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_number` varchar(255) NOT NULL,
  `call_number` varchar(255) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `category_id` int(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `author_2` varchar(100) NOT NULL,
  `author_3` varchar(100) NOT NULL,
  `author_4` varchar(100) NOT NULL,
  `author_5` varchar(100) NOT NULL,
  `book_copies` int(11) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `stat` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`,`call_number`),
  KEY `call_number` (`call_number`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `acc_number`, `call_number`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`, `stat`) VALUES
(1, '820-BERMUDEZ-2020', '820-BERNECRUSAN', 'English Expressways : Second Year', 2, 'Virginia F. Bermudez', 'Remedios F. Nery', 'Josephine M. Cruz', 'Milagrosa A. San Juan', '', 11, '2010', 'SD Publications, INC.', '978-971-0315-72-7', 2010, 'Old', 'VNHS1LMS', 'IMG_0019.JPG', '2015-12-14 01:06:46', 'Available', 'Active'),
(3, '510-ROBINS-2020', '510-ROB', 'Getting to Know-Puerto Rico', 1, 'Frances Robins', '', '', '', '', 10, 'Coward-McCann', 'TNC', '12323492-3432', 2020, 'Old', 'VNHS3LMS', '', '2015-12-14 01:21:47', 'Available', 'Active'),
(4, '813-LINDGREN-2021', '813-LIND', 'Lotta on Troublemaker Street', 7, 'Astrid Lindgren', '', '', '', '', 10, 'Aladdin Paperbacks', '2001', '0-689-84673-8', 1962, 'Old', 'VNHS4LMS', '', '2015-12-14 01:43:06', 'Available', 'Active'),
(5, '373-HOUGH-2020', '373-HOU', 'Great Days of Whailing', 1, 'Henry Beetle Hough', '', '', '', '', 10, '', '', '789452-123452', 0, 'Old', 'VNHS5LMS', '', '2015-12-14 02:05:16', 'Available', 'Active'),
(6, '370-KARRAS-2020', '370-KRA', 'Even Big Guys Cry', 1, 'Alex Karras', '', '', '', '', 10, '', '', '9879234-12442', 0, 'Old', 'VNHS6LMS', '', '2015-12-14 02:05:47', 'Available', 'Active'),
(7, '898-NAKPIL-2022', '898-NADO', 'Gintong Pamana Wika at Panitikan - Ikalawang Taon', 10, 'Lolita R. Nakpil', 'Leticia F. Dominguez', '', '', '', 10, '2000', 'SD Publications, INC.', '971-07-1885-1', 2000, 'Old', 'VNHS7LMS', 'IMG_0029 - Copy.JPG', '2015-12-14 02:20:36', 'Available', 'Active'),
(14, '900-ALDAVE-2023', '900-ALD', 'Araling Panlipunan', 6, 'Ace Aldave', '', '', '', '', 10, '1991', 'Blacklist International', '1999-22020', 2023, 'New', 'HRS12LMS', '', '2023-05-12 21:34:37', 'Available', 'Active'),
(15, '600-ALDAVE-2023', '600-ALESDAP', 'Introduction to Javascript', 12, 'Ace Aldave', 'Archie Espiritu', 'Tennee Dadap', '', '', 10, '2020', 'Blacklist International', '78909-998', 2023, 'New', 'HRS13LMS', '', '2023-05-14 14:56:04', 'Available', 'Active'),
(16, '510-PARKS-2023', '510-PARK', 'Pre-Calculus', 3, 'Bobby Parks', '', '', '', '', 10, '', '', '25652398-12452', 2023, 'New', 'HRS14LMS', '', '2023-06-13 00:42:41', 'Available', 'Active'),
(17, '030-ENCYC-2022', '030-ENCHIS', 'The World Encyclopedia of History', 5, 'Jimmy Baron', '', '', '', '', 10, '', '', '56423343-23442', 2020, 'New', 'HRS15LMS', '', '2023-06-13 00:45:37', 'Available', 'Active'),
(18, '371-WILLIAMS-2023', '371-PE', 'Fundamentals of Basketball', 11, 'Carter Williams', '', '', '', '', 10, '', '', '23321133-223213', 2021, 'New', 'HRS16LMS', '', '2023-06-13 00:48:34', 'Available', 'Active'),
(19, '800-FLYN-2020', '800-FLY', 'Alchemy', 8, 'Phineas Flyn', '', '', '', '', 8, '2018', 'DOOF INC', '7802482', 2019, 'New', 'HRS17LMS', '', '2023-06-13 00:56:04', 'Available', 'Active'),
(21, '902-ARCHIE-2023', '902-ARCH', 'History of Cavite', 6, 'Archie Espiritu', '', '', '', '', 10, '2020', 'BREN', '211203-223311', 2020, 'New', 'HRS19LMS', '', '2023-06-19 03:28:16', 'Available', 'Active'),
(22, '1111', '1111', 'Alamat ko', 10, 'Ako', '', '', '', '', 0, '2020', 'DOOF INC', '23231355343', 2023, 'New', 'HRS20LMS', '', '2023-06-30 17:15:11', 'Not Available', 'Delete'),
(23, '1111', '1111', 'Alamat ko', 11, 'Ako', '', '', '', '', 0, '2020', 'DOOF INC', '23231355343', 2023, 'New', 'HRS21LMS', '', '2023-06-30 17:21:22', 'Not Available', 'Delete');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

DROP TABLE IF EXISTS `borrow_book`;
CREATE TABLE IF NOT EXISTS `borrow_book` (
  `borrow_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime DEFAULT NULL,
  `borrowed_status` varchar(100) NOT NULL,
  `book_penalty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`borrow_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrow_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `borrowed_status`, `book_penalty`) VALUES
(22, 81, 1, '2023-06-30 17:25:21', '2023-07-01 17:25:21', '2023-07-01 16:01:17', 'returned', 'No Penalty'),
(23, 66, 19, '2023-07-01 18:27:17', '2023-07-02 18:27:17', NULL, 'borrowed', NULL),
(24, 67, 19, '2023-07-01 18:28:04', '2023-07-02 18:28:04', NULL, 'borrowed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`),
  KEY `classid` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=801 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `classname`) VALUES
(1, 'Textbook'),
(2, 'English'),
(3, 'Math'),
(4, 'Science'),
(5, 'Encyclopedia'),
(6, 'History'),
(7, 'Novel'),
(8, 'General'),
(9, 'References'),
(10, 'Filipino'),
(11, 'M.A.P.E.H'),
(12, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `sub_lec` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `image`, `fullName`, `designation`, `sub_lec`) VALUES
(1, 'doja.jpeg', 'Claire B. Chua', 'Librarian/Faculty', 'Bachelor of Science in Secondary Education'),
(2, 'pri.jpeg', 'Filomena V. Fernandez C.Ed.D., M.A.Ed', 'School Principal', 'Doctor of Christian Education - Honoris Causa'),
(4, 'Niall Horan in 2020_.jpeg', 'Alejandro B. Fernandez C.Ed.D.', 'Corporate President', 'Doctor of Christian Education - Honoris Causa'),
(5, 'liam.png', 'Angelito H. Cagurangan', 'Faculty', 'MAPEH Subject Teacher'),
(6, 'miyu.jpeg', 'Ma. Corazon C. Gabrino', 'Faculty', 'Math Subject Teacher'),
(7, 'jap.jpeg', 'Fe F. Santos', 'Faculty', 'T.L.E Subject Teacher'),
(8, 'scarlet.jpeg', 'Charmaigne B. Subol', 'Faculty', 'English Subject Teacher'),
(9, 'louis.jpeg', 'Urbel Pielago', 'Faculty', 'Science Subject Teacher'),
(11, 'harry.jpeg', 'Kakashi Hatake', 'Faculty', 'Math Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `post_mes` varchar(255) NOT NULL,
  `date_post` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `message` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `date_time`) VALUES
(19, 55, 'Request rejected to borrow book: 1', '2023-05-28 02:11:08'),
(18, 56, 'Request accepted to borrow book: 2', '2023-05-28 01:57:41'),
(17, 55, 'Request accepted to borrow book: 2', '2023-05-28 01:56:55'),
(16, 55, 'Request rejected to borrow book: 1', '2023-05-28 01:52:52'),
(15, 55, 'Request rejected to borrow book: 2', '2023-05-28 01:52:17'),
(14, 56, 'Successfully borrowed: Araling Panlipunan', '2023-05-28 01:50:09'),
(13, 55, 'Successfully borrowed: Araling Panlipunan', '2023-05-28 01:47:02'),
(12, 55, 'Successfully borrowed: Araling Panlipunan', '2023-05-28 01:46:32'),
(20, 55, 'Request accepted to borrow book: 2', '2023-05-28 21:42:45'),
(21, 56, 'Request accepted to borrow book: 2', '2023-05-30 10:31:02'),
(22, 56, 'Request accepted to borrow book: 6', '2023-06-11 19:30:25'),
(23, 56, 'Request accepted to borrow book: 6', '2023-06-11 19:32:21'),
(24, 56, 'Request accepted to borrow book: 3', '2023-06-11 19:34:39'),
(25, 56, 'Request accepted to borrow book: 6', '2023-06-11 19:35:45'),
(26, 56, 'Request accepted to borrow book: ', '2023-06-11 19:41:13'),
(27, 56, 'Request accepted to borrow book: 6', '2023-06-11 19:42:27'),
(28, 56, 'Request accepted to borrow book: 2', '2023-06-11 19:45:18'),
(29, 56, 'Request accepted to borrow book: 1', '2023-06-12 19:14:47'),
(30, 56, 'Request accepted to borrow book: 1', '2023-06-12 22:17:54'),
(31, 56, 'Request accepted to borrow book: 1', '2023-06-12 22:22:07'),
(32, 56, 'Request accepted to borrow book: 1', '2023-06-12 22:25:15'),
(33, 56, 'Request accepted to borrow book: 1', '2023-06-12 22:27:58'),
(34, 56, 'Request accepted to borrow book: 1', '2023-06-12 22:32:07'),
(35, 56, 'Request accepted to borrow book: 2', '2023-06-12 22:35:27'),
(36, 56, 'Request accepted to borrow book: 2', '2023-06-12 22:45:15'),
(37, 56, 'Request accepted to borrow book: 2', '2023-06-12 23:50:16'),
(38, 56, 'Request accepted to borrow book: 2', '2023-06-12 23:51:21'),
(39, 56, 'Request rejected to borrow book: 2', '2023-06-12 23:55:05'),
(40, 59, 'Request accepted to borrow book: 19', '2023-06-13 01:41:58'),
(41, 56, 'Request accepted to borrow book: 19', '2023-06-14 11:44:51'),
(42, 64, 'Request accepted to borrow book: 20', '2023-06-16 22:13:58'),
(43, 66, 'Request accepted to borrow book: 2', '2023-06-17 01:46:48'),
(44, 67, 'Request accepted to borrow book: 1', '2023-06-18 18:20:48'),
(45, 67, 'Request accepted to borrow book: ', '2023-06-18 18:28:43'),
(46, 67, 'Request accepted to borrow book: 1', '2023-06-18 19:04:32'),
(47, 66, 'Request accepted to borrow book: 18', '2023-06-19 03:42:24'),
(48, 67, 'Request accepted to borrow book: 1', '2023-06-19 03:48:17'),
(49, 67, 'Request accepted to borrow book: 14', '2023-06-19 10:52:32'),
(50, 67, 'Request accepted to borrow book: 1', '2023-06-23 11:02:53'),
(51, 56, 'Request rejected to borrow book: 20', '2023-06-19 12:28:02'),
(52, 84, 'Request accepted to borrow book: 14', '2023-06-19 15:36:53'),
(53, 55, 'Request rejected to borrow book: 19', '2023-06-19 15:39:15'),
(54, 84, 'Request accepted to borrow book: 1', '2023-06-19 15:46:10'),
(55, 84, 'Request accepted to borrow book: 2', '2023-06-19 15:46:12'),
(56, 84, 'Request accepted to borrow book: 14', '2023-06-19 15:46:14'),
(57, 85, 'Request rejected to borrow book: 18', '2023-06-19 16:19:27'),
(58, 85, 'Request accepted to borrow book: 18', '2023-06-19 16:36:17'),
(59, 55, 'Request rejected to borrow book: 14', '2023-06-19 20:28:51'),
(60, 66, 'Request accepted to borrow book: 14', '2023-06-19 21:21:57'),
(61, 66, 'Request accepted to borrow book: 20', '2023-06-19 21:22:36'),
(62, 66, 'Request accepted to borrow book: 1', '2023-06-19 21:22:57'),
(63, 85, 'Request accepted to borrow book: 7', '2023-06-20 07:37:14'),
(64, 86, 'Request accepted to borrow book: 14', '2023-06-20 10:43:53'),
(65, 66, 'Request accepted to borrow book: 14', '2023-06-20 10:45:17'),
(66, 66, 'Request accepted to borrow book: 14', '2023-06-20 10:53:49'),
(67, 86, 'Request rejected to borrow book: 14', '2023-06-20 10:54:12'),
(68, 66, 'Request accepted to borrow book: 2', '2023-06-21 02:18:07'),
(69, 85, 'Request rejected to borrow book: ', '2023-06-30 17:22:12'),
(70, 85, 'Request rejected to borrow book: ', '2023-06-30 17:22:15'),
(71, 85, 'Request rejected to borrow book: ', '2023-06-30 17:22:25'),
(72, 85, 'Request rejected to borrow book: ', '2023-06-30 17:22:37'),
(73, 66, 'Request rejected to borrow book: 1', '2023-06-30 17:29:48'),
(74, 66, 'Request accepted to borrow book: 19', '2023-07-01 18:27:17'),
(75, 67, 'Request accepted to borrow book: 19', '2023-07-01 18:28:04'),
(76, 86, 'Request void to borrow book: 19', '2023-07-01 20:09:15'),
(77, 66, 'Request void to borrow book: 14', '2023-07-01 21:39:08'),
(78, 66, 'Request void to borrow book: 14', '2023-07-01 21:45:02'),
(79, 67, 'Request void to borrow book: 1', '2023-07-01 22:58:36'),
(80, 66, 'Request void to borrow book: 14', '2023-07-01 23:01:08'),
(81, 67, 'Request void to borrow book: 14', '2023-07-01 23:03:06'),
(82, 66, 'Request void to borrow book: 1', '2023-07-01 23:03:09'),
(83, 66, 'Request void to borrow book: 3', '2023-07-02 00:54:00'),
(84, 67, 'Request void to borrow book: 6', '2023-07-02 00:54:01'),
(85, 67, 'Request void to borrow book: 1', '2023-07-02 00:54:04'),
(86, 66, 'Request void to borrow book: 14', '2023-07-02 00:54:05'),
(87, 66, 'Request void to borrow book: 1', '2023-07-02 00:54:06'),
(88, 67, 'Request void to borrow book: 3', '2023-07-02 02:21:16'),
(89, 66, 'Request void to borrow book: 3', '2023-07-02 02:22:56'),
(90, 67, 'Request void to borrow book: 3', '2023-07-02 02:26:06'),
(91, 67, 'Request void to borrow book: 3', '2023-07-02 02:27:36'),
(92, 67, 'Request void to borrow book: 3', '2023-07-02 02:39:09'),
(93, 67, 'Request void to borrow book: 3', '2023-07-02 02:45:15'),
(94, 67, 'Request void to borrow book: 3', '2023-07-02 02:56:34'),
(95, 67, 'Request void to borrow book: 16', '2023-07-02 02:57:27'),
(96, 67, 'Request void to borrow book: 3', '2023-07-02 03:02:12'),
(97, 67, 'Request void to borrow book: 17', '2023-07-02 03:12:29'),
(98, 67, 'Request void to borrow book: 3', '2023-07-02 03:12:30'),
(99, 67, 'Request void to borrow book: 17', '2023-07-02 03:23:31'),
(100, 67, 'Request void to borrow book: 15', '2023-07-02 03:24:57'),
(101, 67, 'Request void to borrow book: 15', '2023-07-02 03:26:23'),
(102, 67, 'Request void to borrow book: 21', '2023-07-02 03:29:37'),
(103, 67, 'Request void to borrow book: 3', '2023-07-02 03:29:39'),
(104, 67, 'Request void to borrow book: 18', '2023-07-02 03:29:41'),
(105, 67, 'Request void to borrow book: 5', '2023-07-02 03:29:45'),
(106, 67, 'Request void to borrow book: 21', '2023-07-02 03:31:13'),
(107, 67, 'Request void to borrow book: 4', '2023-07-02 03:31:15'),
(108, 67, 'Request void to borrow book: 17', '2023-07-02 03:51:22'),
(109, 67, 'Request void to borrow book: 18', '2023-07-02 03:51:24'),
(110, 67, 'Request void to borrow book: 21', '2023-07-02 03:51:25'),
(111, 67, 'Request void to borrow book: 6', '2023-07-02 03:51:28'),
(112, 67, 'Request void to borrow book: 16', '2023-07-02 03:51:30'),
(113, 67, 'Request void to borrow book: 1', '2023-07-02 03:51:31'),
(114, 67, 'Request void to borrow book: 6', '2023-07-02 04:25:32'),
(115, 67, 'Request void to borrow book: 18', '2023-07-02 04:25:35'),
(116, 67, 'Request void to borrow book: 21', '2023-07-02 04:25:37'),
(117, 67, 'Request void to borrow book: 17', '2023-07-02 04:25:39'),
(118, 67, 'Request void to borrow book: 7', '2023-07-02 04:32:44'),
(119, 67, 'Request void to borrow book: 1', '2023-07-02 04:48:55'),
(120, 67, 'Request void to borrow book: 21', '2023-07-02 04:48:56'),
(121, 67, 'Request void to borrow book: 16', '2023-07-02 04:48:58'),
(122, 66, 'Request void to borrow book: 16', '2023-07-02 13:00:51'),
(123, 67, 'Request void to borrow book: 5', '2023-07-02 13:04:35'),
(124, 66, 'Request void to borrow book: 14', '2023-07-02 13:06:25'),
(125, 66, 'Request void to borrow book: 14', '2023-07-02 13:16:17'),
(126, 66, 'Request void to borrow book: 16', '2023-07-02 13:46:30'),
(127, 66, 'Request void to borrow book: 14', '2023-07-02 19:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

DROP TABLE IF EXISTS `penalty`;
CREATE TABLE IF NOT EXISTS `penalty` (
  `penalty_id` int(11) NOT NULL AUTO_INCREMENT,
  `penalty_amount` int(11) NOT NULL,
  PRIMARY KEY (`penalty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penalty_id`, `penalty_amount`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pending_book`
--

DROP TABLE IF EXISTS `pending_book`;
CREATE TABLE IF NOT EXISTS `pending_book` (
  `pending_id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  `date_issued` datetime(6) NOT NULL,
  PRIMARY KEY (`pending_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_book`
--

INSERT INTO `pending_book` (`pending_id`, `user_id`, `book_id`, `date_issued`) VALUES
(20, 66, 7, '2023-07-02 01:07:28.000000'),
(56, 67, 17, '2023-07-02 04:26:21.000000'),
(22, 66, 1, '2023-07-02 01:07:35.000000'),
(63, 67, 3, '2023-07-02 05:02:58.000000'),
(64, 67, 6, '2023-07-02 05:04:00.000000'),
(62, 67, 21, '2023-07-02 04:59:16.000000'),
(57, 67, 15, '2023-07-02 04:32:58.000000'),
(61, 67, 18, '2023-07-02 04:55:05.000000'),
(65, 67, 15, '2023-07-02 05:26:15.000000'),
(71, 66, 4, '2023-07-02 13:09:05.000000'),
(67, 66, 17, '2023-07-02 06:15:02.000000'),
(78, 66, 14, '2023-07-02 19:34:40.000000'),
(72, 66, 18, '2023-07-02 13:13:30.000000'),
(74, 66, 7, '2023-07-02 13:16:58.000000'),
(75, 66, 1, '2023-07-02 13:18:01.000000'),
(77, 66, 15, '2023-07-02 14:10:25.000000');

-- --------------------------------------------------------

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
CREATE TABLE IF NOT EXISTS `recommend` (
  `book_id` int(50) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `author_2` varchar(50) NOT NULL,
  `author_3` varchar(50) NOT NULL,
  `author_4` varchar(50) NOT NULL,
  `author_5` varchar(50) NOT NULL,
  `book_pub` varchar(50) NOT NULL,
  `publisher_name` varchar(50) NOT NULL,
  `copyright_year` int(50) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommend`
--

INSERT INTO `recommend` (`book_id`, `book_title`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_pub`, `publisher_name`, `copyright_year`) VALUES
(1, 'English Modern World', 'Ace Aldave', '', '', '', '', '1990', 'Blacklist International', 2023),
(2, 'Filipino At Wika', 'Ace Aldave', '', '', '', '', '1990', 'Blacklist International', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `user_id`, `admin_name`, `detail_action`, `date_transaction`) VALUES
(43, 1, 81, 'Vin  Diesel', 'Borrowed Book', '2023-06-30 17:25:23'),
(44, 1, 66, 'Vin  Diesel', 'Rejected Request', '2023-06-30 17:29:48'),
(45, 1, 81, 'Vin  Diesel', 'Returned Book', '2023-07-01 16:01:17'),
(46, 19, 66, 'Vin  Diesel', 'Borrowed Book', '2023-07-01 18:27:17'),
(47, 19, 67, 'Vin  Diesel', 'Borrowed Book', '2023-07-01 18:28:04'),
(48, 19, 86, 'Vin  Diesel', 'Void Borrow', '2023-07-01 20:09:15'),
(49, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 21:39:08'),
(50, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 21:45:02'),
(51, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-01 22:58:36'),
(52, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 23:01:08'),
(53, 14, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-01 23:03:06'),
(54, 1, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 23:03:09'),
(55, 3, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:00'),
(56, 6, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:01'),
(57, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:04'),
(58, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:05'),
(59, 1, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:06'),
(60, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:21:16'),
(61, 3, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:22:56'),
(62, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:26:06'),
(63, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:27:36'),
(64, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:39:09'),
(65, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:45:15'),
(66, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:56:34'),
(67, 16, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:57:26'),
(68, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:02:12'),
(69, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:12:29'),
(70, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:12:30'),
(71, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:23:31'),
(72, 15, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:24:57'),
(73, 15, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:26:23'),
(74, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:37'),
(75, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:39'),
(76, 18, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:41'),
(77, 5, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:45'),
(78, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:31:13'),
(79, 4, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:31:15'),
(80, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:22'),
(81, 18, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:24'),
(82, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:25'),
(83, 6, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:28'),
(84, 16, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:30'),
(85, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:31'),
(86, 6, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:32'),
(87, 18, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:35'),
(88, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:37'),
(89, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:39'),
(90, 7, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:32:44'),
(91, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:48:55'),
(92, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:48:56'),
(93, 16, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:48:58'),
(94, 16, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:00:51'),
(95, 5, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:04:35'),
(96, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:06:25'),
(97, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:16:17'),
(98, 16, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:46:30'),
(99, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 19:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `request_borrow`
--

DROP TABLE IF EXISTS `request_borrow`;
CREATE TABLE IF NOT EXISTS `request_borrow` (
  `request_borrow_id` int(50) NOT NULL AUTO_INCREMENT,
  `book_id` int(50) NOT NULL,
  `date_issued` datetime DEFAULT NULL,
  `date_request_borrow` datetime NOT NULL,
  `due_date` datetime DEFAULT NULL,
  PRIMARY KEY (`request_borrow_id`,`book_id`),
  KEY `book_id` (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_return`
--

DROP TABLE IF EXISTS `request_return`;
CREATE TABLE IF NOT EXISTS `request_return` (
  `return_request_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  `date_borrowed` datetime(6) DEFAULT NULL,
  `due_date` datetime(6) DEFAULT NULL,
  `penalty` varchar(255) DEFAULT NULL,
  `date_returned` datetime(6) DEFAULT NULL,
  `date_request` datetime(6) NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`return_request_id`,`book_id`),
  KEY `book_id` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

DROP TABLE IF EXISTS `return_book`;
CREATE TABLE IF NOT EXISTS `return_book` (
  `return_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`return_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `book_penalty`, `payment`) VALUES
(1, 81, 1, '2023-06-30 17:25:21', '2023-07-01 17:25:21', '2023-07-01 16:01:17', 'No Penalty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_number` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_image` varchar(50) DEFAULT NULL,
  `user_added` datetime NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `userconfirmpassword` varchar(100) NOT NULL,
  `approval` varchar(255) NOT NULL DEFAULT 'Reject',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `gender`, `address`, `type`, `level`, `section`, `status`, `user_image`, `user_added`, `userpassword`, `userconfirmpassword`, `approval`) VALUES
(55, '3000', 'Archie', '', 'Espiritu', '09999999999', 'archie@facebook.com', 'Male', 'bitas street', 'Student', 'Grade 12', 'Grade 7', 'Active', '', '2023-04-19 23:41:37', '1234', '1234', 'Reject'),
(56, '4000', 'Aceeee', '', 'Aldave', '09679080765', 'ace@login.com', 'Male', 'Cavite', 'Student', 'Grade 12', 'ICT-3', 'Active', 'prof.jpg', '2023-05-23 02:07:03', '123456789', '123456789', 'Reject'),
(58, '5000', 'Mariella', 'S.', 'Aldave', '09679080055', 'mariel@gmail.com', 'Male', 'Cavite Carmona', 'Student', 'Grade 5', 'Kepler', 'Active', NULL, '2023-06-04 20:20:04', '12345', '12345', 'Reject'),
(59, '2500', 'Pein', 'D.', 'Akatsuki', '09987612333', 'pein@email.com', 'Male', 'Konoha', 'Student', 'Grade 12', 'Rain', 'Active', NULL, '2023-06-05 17:04:39', '12345', '12345', 'Reject'),
(66, '8000', 'Zayn', '', 'Malik', '09987342932', 'zayn@email.com', 'Male', 'Bradford', 'Student', 'Grade 8', 'STEM', 'Active', 'zayn.jpeg', '2023-06-17 01:40:54', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(67, '550', 'Sanford', '', 'Bene', '09679081568', 'sanford@email.com', 'Male', 'Pampanga', 'Student', 'Grade 10', 'Echo', 'Active', NULL, '2023-06-18 17:28:11', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(81, '515', 'Try', 'Me', 'Lang', '09876998211', 'tryme@email.com', 'Prefer Not to Say', 'Bulacan', 'Student', 'Grade 8', 'Apple', 'Active', NULL, '2023-06-19 03:25:29', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(82, '650', 'Glenda', 'P.', 'Reed', '09678905422', 'glenda@email.com', 'Female', 'Cubao', 'Student', 'Grade 10', 'Apple', 'Active', NULL, '2023-06-19 12:22:43', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(84, '200', 'Sugar', 'D.', 'Sugary', '09678908744', 'sugar@email.com', 'Female', 'Viva Homes', 'Student', 'Grade 10', 'ICT', 'Active', NULL, '2023-06-19 15:32:41', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(85, '853', 'Walang', '', 'Internet', '09675432211', 'wala@email.com', 'Prefer Not to Say', 'Tagaytay', 'Student', 'Grade 8', 'Rain', 'Active', NULL, '2023-06-19 15:55:36', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(86, '107879070217', 'Asher', 'De Luna', 'Dadap', '09152345597', 'ahser@email.com', 'Female', 'Bacoor', 'Student', 'Grade 4', 'Orange', 'Active', NULL, '2023-06-20 10:37:01', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(87, '123456789123', 'Reca', '', 'Flame', '09897675432', 'recaf@email.com', 'Male', 'Cavite', 'Student', 'Grade 12', 'Apple', 'Active', NULL, '2023-06-24 23:46:55', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `date_log` datetime NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `user_id`, `user_name`, `date_log`) VALUES
(6, 82, 'Glenda P. Reed', '2023-06-19 12:24:33'),
(7, 82, 'Glenda P. Reed', '2023-06-19 12:26:00'),
(8, 84, 'Sugar D. Sugary', '2023-06-19 15:34:13'),
(9, 84, 'Sugar D. Sugary', '2023-06-19 15:35:16'),
(10, 84, 'Sugar D. Sugary', '2023-06-19 15:37:12'),
(11, 84, 'Sugar D. Sugary', '2023-06-19 15:43:52'),
(12, 84, 'Sugar D. Sugary', '2023-06-19 15:46:29'),
(13, 85, 'Walang  Internet', '2023-06-19 16:18:34'),
(14, 85, 'Walang  Internet', '2023-06-19 16:21:30'),
(15, 85, 'Walang  Internet', '2023-06-19 16:30:18'),
(16, 85, 'Walang  Internet', '2023-06-19 16:36:31'),
(17, 85, 'Walang  Internet', '2023-06-19 16:38:32'),
(18, 85, 'Walang  Internet', '2023-06-19 16:40:51'),
(19, 85, 'Walang  Internet', '2023-06-19 16:41:26'),
(20, 85, 'Walang  Internet', '2023-06-19 16:42:09'),
(21, 66, 'Zayn  Malik', '2023-06-19 19:56:03'),
(22, 66, 'Zayn  Malik', '2023-06-19 20:08:11'),
(23, 67, 'Sanford  Bene', '2023-06-19 21:14:59'),
(24, 66, 'Zayn  Malik', '2023-06-19 21:15:17'),
(25, 66, 'Zayn  Malik', '2023-06-19 21:21:50'),
(26, 85, 'Walang  Internet', '2023-06-20 06:43:47'),
(27, 85, 'Walang  Internet', '2023-06-20 07:03:38'),
(28, 66, 'Zayn  Malik', '2023-06-20 07:16:31'),
(29, 85, 'Walang  Internet', '2023-06-20 07:17:27'),
(30, 85, 'Walang  Internet', '2023-06-20 07:37:32'),
(31, 86, 'Asher De Luna Dadap', '2023-06-20 10:42:14'),
(32, 66, 'Zayn  Malik', '2023-06-20 10:43:20'),
(33, 86, 'Asher De Luna Dadap', '2023-06-20 10:44:32'),
(34, 66, 'Zayn  Malik', '2023-06-20 10:46:04'),
(35, 66, 'Zayn  Malik', '2023-06-20 10:52:59'),
(36, 86, 'Asher De Luna Dadap', '2023-06-20 10:53:22'),
(37, 66, 'Zayn  Malik', '2023-06-20 11:04:54'),
(38, 66, 'Zayn  Malik', '2023-06-21 02:16:56'),
(39, 85, 'Walang  Internet', '2023-06-21 02:17:47'),
(40, 66, 'Zayn  Malik', '2023-06-21 02:18:27'),
(41, 66, 'Zayn  Malik', '2023-06-24 19:26:09'),
(42, 66, 'Zayn  Malik', '2023-06-24 20:03:26'),
(43, 66, 'Zayn  Malik', '2023-06-24 21:03:21'),
(44, 66, 'Zayn  Malik', '2023-06-24 21:49:05'),
(45, 66, 'Zayn  Malik', '2023-06-24 22:04:29'),
(46, 66, 'Zayn  Malik', '2023-06-24 22:04:56'),
(47, 66, 'Zayn  Malik', '2023-06-24 22:32:29'),
(48, 66, 'Zayn  Malik', '2023-06-24 22:38:34'),
(49, 66, 'Zayn  Malik', '2023-06-24 22:39:58'),
(50, 66, 'Zayn  Malik', '2023-06-24 22:41:42'),
(51, 66, 'Zayn  Malik', '2023-06-24 22:44:49'),
(52, 66, 'Zayn  Malik', '2023-06-24 22:48:01'),
(53, 85, 'Walang  Internet', '2023-06-24 22:48:53'),
(54, 85, 'Walang  Internet', '2023-06-24 22:49:03'),
(55, 66, 'Zayn  Malik', '2023-06-24 22:53:58'),
(56, 66, 'Zayn  Malik', '2023-06-24 22:54:58'),
(57, 85, 'Walang  Internet', '2023-06-24 23:03:24'),
(58, 85, 'Walang  Internet', '2023-06-24 23:03:42'),
(59, 66, 'Zayn  Malik', '2023-06-24 23:12:19'),
(60, 66, 'Zayn  Malik', '2023-06-24 23:20:21'),
(61, 85, 'Walang  Internet', '2023-06-24 23:30:42'),
(62, 86, 'Asher De Luna Dadap', '2023-06-25 00:25:26'),
(63, 66, 'Zayn  Malik', '2023-06-25 00:51:27'),
(64, 66, 'Zayn  Malik', '2023-06-27 09:28:36'),
(65, 66, 'Zayn  Malik', '2023-06-27 14:36:14'),
(66, 66, 'Zayn  Malik', '2023-06-27 14:36:46'),
(67, 66, 'Zayn  Malik', '2023-06-27 14:38:17'),
(68, 66, 'Zayn  Malik', '2023-06-27 14:38:38'),
(69, 66, 'Zayn  Malik', '2023-06-27 14:43:00'),
(70, 66, 'Zayn  Malik', '2023-06-27 14:45:45'),
(71, 66, 'Zayn  Malik', '2023-06-27 14:46:46'),
(72, 66, 'Zayn  Malik', '2023-06-27 14:50:11'),
(73, 66, 'Zayn  Malik', '2023-06-27 14:51:43'),
(74, 66, 'Zayn  Malik', '2023-06-27 14:52:33'),
(75, 66, 'Zayn  Malik', '2023-06-27 14:56:25'),
(76, 66, 'Zayn  Malik', '2023-06-27 14:58:03'),
(77, 66, 'Zayn  Malik', '2023-06-27 14:58:52'),
(78, 66, 'Zayn  Malik', '2023-06-30 17:29:06'),
(79, 66, 'Zayn  Malik', '2023-07-01 16:09:08'),
(80, 67, 'Sanford  Bene', '2023-07-01 18:27:50'),
(81, 86, 'Asher De Luna Dadap', '2023-07-01 18:28:37'),
(82, 86, 'Asher De Luna Dadap', '2023-07-01 19:32:14'),
(83, 86, 'Asher De Luna Dadap', '2023-07-01 19:36:10'),
(84, 86, 'Asher De Luna Dadap', '2023-07-01 20:10:08'),
(85, 66, 'Zayn  Malik', '2023-07-01 20:26:55'),
(86, 66, 'Zayn  Malik', '2023-07-01 21:28:23'),
(87, 66, 'Zayn  Malik', '2023-07-01 21:39:17'),
(88, 66, 'Zayn  Malik', '2023-07-01 21:42:39'),
(89, 66, 'Zayn  Malik', '2023-07-01 21:46:11'),
(90, 66, 'Zayn  Malik', '2023-07-01 21:53:19'),
(91, 66, 'Zayn  Malik', '2023-07-01 21:57:54'),
(92, 67, 'Sanford  Bene', '2023-07-01 22:49:43'),
(93, 67, 'Sanford  Bene', '2023-07-01 22:58:59'),
(94, 67, 'Sanford  Bene', '2023-07-01 23:00:30'),
(95, 66, 'Zayn  Malik', '2023-07-01 23:01:26'),
(96, 67, 'Sanford  Bene', '2023-07-01 23:01:40'),
(97, 66, 'Zayn  Malik', '2023-07-01 23:03:55'),
(98, 67, 'Sanford  Bene', '2023-07-01 23:04:33'),
(99, 67, 'Sanford  Bene', '2023-07-01 23:04:44'),
(100, 66, 'Zayn  Malik', '2023-07-02 00:37:56'),
(101, 66, 'Zayn  Malik', '2023-07-02 00:54:25'),
(102, 67, 'Sanford  Bene', '2023-07-02 01:05:28'),
(103, 66, 'Zayn  Malik', '2023-07-02 01:06:06'),
(104, 67, 'Sanford  Bene', '2023-07-02 01:06:22'),
(105, 67, 'Sanford  Bene', '2023-07-02 01:31:11'),
(106, 67, 'Sanford  Bene', '2023-07-02 01:53:18'),
(107, 67, 'Sanford  Bene', '2023-07-02 02:03:48'),
(108, 66, 'Zayn  Malik', '2023-07-02 02:05:06'),
(109, 67, 'Sanford  Bene', '2023-07-02 02:16:33'),
(110, 66, 'Zayn  Malik', '2023-07-02 02:22:24'),
(111, 67, 'Sanford  Bene', '2023-07-02 02:23:13'),
(112, 67, 'Sanford  Bene', '2023-07-02 02:26:21'),
(113, 67, 'Sanford  Bene', '2023-07-02 02:27:54'),
(114, 67, 'Sanford  Bene', '2023-07-02 02:30:20'),
(115, 67, 'Sanford  Bene', '2023-07-02 02:39:19'),
(116, 67, 'Sanford  Bene', '2023-07-02 02:44:11'),
(117, 67, 'Sanford  Bene', '2023-07-02 02:47:24'),
(118, 67, 'Sanford  Bene', '2023-07-02 02:56:52'),
(119, 67, 'Sanford  Bene', '2023-07-02 03:02:25'),
(120, 67, 'Sanford  Bene', '2023-07-02 03:12:40'),
(121, 67, 'Sanford  Bene', '2023-07-02 03:24:34'),
(122, 67, 'Sanford  Bene', '2023-07-02 03:29:56'),
(123, 67, 'Sanford  Bene', '2023-07-02 03:31:34'),
(124, 67, 'Sanford  Bene', '2023-07-02 03:51:46'),
(125, 67, 'Sanford  Bene', '2023-07-02 04:25:50'),
(126, 67, 'Sanford  Bene', '2023-07-02 04:49:10'),
(127, 67, 'Sanford  Bene', '2023-07-02 05:58:26'),
(128, 66, 'Zayn  Malik', '2023-07-02 06:14:44'),
(129, 66, 'Zayn  Malik', '2023-07-02 06:22:33'),
(130, 66, 'Zayn  Malik', '2023-07-02 13:01:01'),
(131, 66, 'Zayn  Malik', '2023-07-02 13:04:53'),
(132, 66, 'Zayn  Malik', '2023-07-02 13:08:11'),
(133, 66, 'Zayn  Malik', '2023-07-02 13:08:33'),
(134, 66, 'Zayn  Malik', '2023-07-02 13:16:32'),
(135, 66, 'Zayn  Malik', '2023-07-02 14:10:00'),
(136, 66, 'Zayn  Malik', '2023-07-02 19:34:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
