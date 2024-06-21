-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2023 at 02:45 AM
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
(4, 'Ivankov', '', 'Sama', 'ivan', '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'doja.jpeg', 'Admin', 'Active', '2023-06-18 17:25:48');

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
(1, 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
(21, 'HRS', 19, 'LMS');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `acc_number`, `call_number`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`, `stat`) VALUES
(1, '820-BERMUDEZ-2020', '820-BERNECRUSAN', 'English Expressways : Second Year', 2, 'Virginia F. Bermudez', 'Remedios F. Nery', 'Josephine M. Cruz', 'Milagrosa A. San Juan', '', 1, '2010', 'SD Publications, INC.', '978-971-0315-72-7', 2010, 'Old', 'VNHS1LMS', 'IMG_0019.JPG', '2015-12-14 01:06:46', 'Available', 'Active'),
(2, '800-CLAREVI-2023', '800-CLREVI', 'DAYBOOK of Critical Reading and Writing', 2, 'Fran Claggett', 'Louann Reid', 'Ruth Vinz', '', '', 0, '1978', 'Doubleday Canada Limited', '0-669-46432-5', 1978, 'Old', 'VNHS2LMS', 'IMG_0006 - Copy.JPG', '2015-12-14 01:11:06', 'Not Available', 'Active'),
(3, '510-ROBINS-2020', '510-ROB', 'Getting to Know-Puerto Rico', 1, 'Frances Robins', '', '', '', '', 0, 'Coward-McCann', 'TNC', '12323492-3432', 2020, 'Old', 'VNHS3LMS', '', '2015-12-14 01:21:47', 'Not Available', 'Active'),
(4, '813-LINDGREN-2021', '813-LIND', 'Lotta on Troublemaker Street', 7, 'Astrid Lindgren', '', '', '', '', 1, 'Aladdin Paperbacks', '2001', '0-689-84673-8', 1962, 'Old', 'VNHS4LMS', '', '2015-12-14 01:43:06', 'Available', 'Active'),
(5, '373-HOUGH-2020', '373-HOU', 'Great Days of Whailing', 1, 'Henry Beetle Hough', '', '', '', '', 1, '', '', '789452-123452', 0, 'Old', 'VNHS5LMS', '', '2015-12-14 02:05:16', 'Available', 'Active'),
(6, '370-KARRAS-2020', '370-KRA', 'Even Big Guys Cry', 1, 'Alex Karras', '', '', '', '', 0, '', '', '9879234-12442', 0, 'Old', 'VNHS6LMS', '', '2015-12-14 02:05:47', 'Not Available', 'Active'),
(7, '898-NAKPIL-2022', '898-NADO', 'Gintong Pamana Wika at Panitikan - Ikalawang Taon', 10, 'Lolita R. Nakpil', 'Leticia F. Dominguez', '', '', '', 1, '2000', 'SD Publications, INC.', '971-07-1885-1', 2000, 'Old', 'VNHS7LMS', 'IMG_0029 - Copy.JPG', '2015-12-14 02:20:36', 'Available', 'Active'),
(14, '900-ALDAVE-2023', '900-ALD', 'Araling Panlipunan', 6, 'Ace Aldave', '', '', '', '', 0, '1991', 'Blacklist International', '1999-22020', 2023, 'New', 'HRS12LMS', '', '2023-05-12 21:34:37', 'Not Available', 'Active'),
(15, '600-ALDAVE-2023', '600-ALESDAP', 'Introduction to Javascript', 12, 'Ace Aldave', 'Archie Espiritu', 'Tennee Dadap', '', '', 1, '2020', 'Blacklist International', '78909-998', 2023, 'New', 'HRS13LMS', '', '2023-05-14 14:56:04', 'Available', 'Active'),
(16, '510-PARKS-2023', '510-PARK', 'Pre-Calculus', 3, 'Bobby Parks', '', '', '', '', 1, '', '', '25652398-12452', 2023, 'New', 'HRS14LMS', '', '2023-06-13 00:42:41', 'Available', 'Active'),
(17, '030-ENCYC-2022', '030-ENCHIS', 'The World Encyclopedia of History', 5, 'Jimmy Baron', '', '', '', '', 1, '', '', '56423343-23442', 2020, 'New', 'HRS15LMS', '', '2023-06-13 00:45:37', 'Available', 'Active'),
(18, '371-WILLIAMS-2023', '371-PE', 'Fundamentals of Basketball', 11, 'Carter Williams', '', '', '', '', 1, '', '', '23321133-223213', 2021, 'New', 'HRS16LMS', '', '2023-06-13 00:48:34', 'Available', 'Active'),
(19, '800-FLYN-2020', '800-FLY', 'Alchemy', 8, 'Phineas Flyn', '', '', '', '', 0, '2018', 'DOOF INC', '7802482', 2019, 'New', 'HRS17LMS', '', '2023-06-13 00:56:04', 'Not Available', 'Deactivate'),
(20, '901-DADAP-2023', '901-DAP', 'Araling Panlipunan', 6, 'Tennee Dadap', '', '', '', '', 0, '', '', '223320-2312342', 2020, 'New', 'HRS18LMS', '', '2023-06-13 21:55:25', 'Not Available', 'Active'),
(21, '902-ARCHIE-2023', '902-ARCH', 'History of Cavite', 6, 'Archie Espiritu', '', '', '', '', 1, '2020', 'BREN', '211203-223311', 2020, 'New', 'HRS19LMS', '', '2023-06-19 03:28:16', 'Available', 'Active');

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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrow_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `borrowed_status`, `book_penalty`) VALUES
(1, 2, 7, '2015-11-14 02:50:27', '2015-11-17 02:50:27', '2015-12-14 02:57:34', 'returned', '27'),
(2, 1, 7, '2015-11-14 02:50:58', '2015-11-17 02:50:58', '2015-12-14 02:57:37', 'returned', '27'),
(3, 4, 7, '2015-12-14 02:51:59', '2015-12-17 02:51:59', '2015-12-14 02:57:45', 'returned', 'No Penalty'),
(4, 4, 3, '2015-12-14 02:53:15', '2015-12-17 02:53:15', '2015-12-14 02:57:48', 'returned', 'No Penalty'),
(5, 17, 7, '2015-12-14 03:08:49', '2015-12-17 03:08:49', '0000-00-00 00:00:00', 'borrowed', ''),
(6, 4, 7, '2015-12-14 03:08:59', '2015-12-17 03:08:59', '0000-00-00 00:00:00', 'borrowed', ''),
(7, 20, 7, '2015-12-14 03:09:07', '2015-12-17 03:09:07', '0000-00-00 00:00:00', 'borrowed', ''),
(8, 14, 4, '2015-12-14 08:32:14', '2015-12-17 08:32:14', '0000-00-00 00:00:00', 'borrowed', ''),
(9, 14, 1, '2023-04-05 00:13:15', '2023-04-08 00:13:15', '2023-05-13 00:34:03', 'returned', '175'),
(10, 2, 2, '2023-04-06 18:35:14', '2023-04-09 18:35:14', '2023-05-13 20:11:45', 'returned', '170'),
(11, 1, 2, '2023-04-06 19:09:01', '2023-04-09 19:09:01', '0000-00-00 00:00:00', 'borrowed', ''),
(12, 47, 7, '2023-04-06 19:47:22', '2023-04-09 19:47:22', '0000-00-00 00:00:00', 'borrowed', ''),
(13, 3, 14, '2023-05-13 01:06:34', '2023-05-16 01:06:34', NULL, 'borrowed', NULL),
(14, 55, 14, '2023-05-13 01:06:53', '2023-05-16 01:06:53', '2023-05-13 20:15:07', 'returned', 'No Penalty'),
(15, 4, 14, '2023-05-13 20:08:53', '2023-05-16 20:08:53', '2023-05-13 20:25:25', 'returned', 'No Penalty'),
(16, 2, 14, '2023-05-13 20:13:06', '2023-05-16 20:13:06', NULL, 'borrowed', NULL),
(17, 55, 2, '2023-05-13 20:14:58', '2023-05-16 20:14:58', '2023-06-12 23:47:44', 'returned', '60'),
(18, 55, 1, '2023-05-13 20:22:22', '2023-05-16 20:22:22', '2023-05-13 20:54:40', 'returned', 'No Penalty'),
(19, 5, 1, '2023-05-13 20:25:39', '2023-05-16 20:25:39', NULL, 'borrowed', NULL),
(20, 55, 3, '2023-05-13 20:55:27', '2023-05-16 20:55:27', '2023-05-13 23:21:49', 'returned', 'No Penalty'),
(21, 55, 7, '2023-05-13 23:22:56', '2023-05-16 23:22:56', '2023-05-14 12:05:35', 'returned', 'No Penalty'),
(22, 55, 2, '2023-05-14 03:09:24', '2023-05-17 03:09:24', '2023-06-12 23:47:44', 'returned', '60'),
(23, 55, 1, '2023-05-14 04:35:06', '2023-05-17 04:35:06', '2023-05-14 15:35:59', 'returned', 'No Penalty'),
(24, 55, 2, '2023-05-14 04:46:04', '2023-05-17 04:46:04', '2023-06-12 23:47:44', 'returned', '60'),
(25, 55, 14, '2023-05-14 11:51:39', '2023-05-17 11:51:39', '2023-05-14 12:03:55', 'returned', 'No Penalty'),
(26, 55, 14, '2023-05-14 12:05:21', '2023-05-17 12:05:21', '2023-05-14 13:30:22', 'returned', 'No Penalty'),
(27, 55, 13, '2023-05-14 13:27:55', '2023-05-17 13:27:55', '2023-05-14 13:28:31', 'returned', 'No Penalty'),
(28, 55, 13, '2023-05-14 13:28:33', '2023-05-17 13:28:33', '2023-05-14 13:28:40', 'returned', 'No Penalty'),
(29, 55, 13, '2023-05-14 13:30:09', '2023-05-17 13:30:09', '2023-05-14 13:48:22', 'returned', 'No Penalty'),
(30, 55, 13, '2023-05-14 13:48:23', '2023-05-17 13:48:23', '2023-05-14 13:55:09', 'returned', 'No Penalty'),
(31, 55, 13, '2023-05-14 13:55:11', '2023-05-17 13:55:11', '2023-05-14 14:39:47', 'returned', 'No Penalty'),
(32, 55, 12, '2023-05-14 14:42:46', '2023-05-17 14:42:46', '2023-05-14 15:17:54', 'returned', 'No Penalty'),
(33, 55, 6, '2023-05-14 14:57:31', '2023-05-17 14:57:31', '2023-05-14 14:57:48', 'returned', 'No Penalty'),
(34, 55, 12, '2023-05-14 15:17:37', '2023-05-17 15:17:37', '2023-05-14 15:29:28', 'returned', 'No Penalty'),
(35, 55, 4, '2023-05-14 15:30:13', '2023-05-17 15:30:13', NULL, 'borrowed', NULL),
(36, 55, 4, '2023-05-14 15:30:22', '2023-05-17 15:30:22', '2023-05-14 15:30:42', 'returned', 'No Penalty'),
(37, 55, 4, '2023-05-14 15:33:04', '2023-05-17 15:33:04', '2023-05-14 15:33:16', 'returned', 'No Penalty'),
(38, 55, 4, '2023-05-14 15:33:18', '2023-05-17 15:33:18', '2023-05-14 15:34:06', 'returned', 'No Penalty'),
(39, 55, 4, '2023-05-14 15:34:55', '2023-05-17 15:34:55', '2023-05-27 22:53:01', 'returned', '52'),
(40, 55, 4, '2023-05-14 15:36:01', '2023-05-17 15:36:01', '2023-05-14 15:36:43', 'returned', 'No Penalty'),
(41, 55, 4, '2023-05-14 15:36:45', '2023-05-17 15:36:45', '2023-05-22 21:26:45', 'returned', '26'),
(42, 55, 4, '2023-05-22 21:29:57', '2023-05-25 21:29:57', '2023-05-22 22:33:01', 'returned', 'No Penalty'),
(43, 55, 4, '2023-05-22 22:36:33', '2023-05-25 22:36:33', '2023-05-22 22:36:38', 'returned', 'No Penalty'),
(44, 55, 4, '2023-05-23 00:56:51', '2023-05-26 00:56:51', '2023-05-23 00:57:02', 'returned', 'No Penalty'),
(45, 55, 4, '2023-05-23 00:58:39', '2023-05-26 00:58:39', '2023-05-23 00:58:45', 'returned', 'No Penalty'),
(46, 55, 2, '2023-05-24 21:39:42', '2023-05-27 21:39:42', '2023-06-12 23:47:44', 'returned', '60'),
(47, 56, 14, '2023-05-27 22:48:39', '2023-05-30 22:48:39', '2023-05-28 01:42:37', 'returned', 'No Penalty'),
(48, 55, 2, '2023-05-27 22:55:39', '2023-05-30 22:55:39', '2023-06-12 23:47:44', 'returned', '60'),
(49, 55, 14, '2023-05-28 00:47:48', '2023-05-31 00:47:48', '2023-05-28 00:48:01', 'returned', 'No Penalty'),
(50, 55, 14, '2023-05-28 00:48:19', '2023-05-31 00:48:19', '2023-05-28 00:51:23', 'returned', 'No Penalty'),
(51, 56, 6, '2023-05-28 00:49:57', '2023-05-31 00:49:57', '2023-06-11 19:27:29', 'returned', '59'),
(52, 56, 1, '2023-05-28 00:50:00', '2023-05-31 00:50:00', '2023-06-12 22:32:32', 'returned', ''),
(53, 55, 14, '2023-05-28 00:58:38', '2023-05-31 00:58:38', '2023-05-28 00:59:03', 'returned', 'No Penalty'),
(54, 55, 14, '2023-05-28 00:59:44', '2023-05-31 00:59:44', '2023-05-28 01:00:01', 'returned', 'No Penalty'),
(55, 55, 14, '2023-05-28 01:00:49', '2023-05-31 01:00:49', '2023-05-28 01:01:13', 'returned', 'No Penalty'),
(56, 55, 14, '2023-05-28 01:01:52', '2023-05-31 01:01:52', '2023-05-28 01:02:18', 'returned', 'No Penalty'),
(57, 55, 14, '2023-05-28 01:02:31', '2023-05-31 01:02:31', '2023-05-28 01:03:13', 'returned', 'No Penalty'),
(58, 55, 14, '2023-05-28 01:03:28', '2023-05-31 01:03:28', '2023-05-28 01:04:30', 'returned', 'No Penalty'),
(59, 55, 1, '2023-05-28 01:04:44', '2023-05-31 01:04:44', '2023-05-28 01:05:29', 'returned', 'No Penalty'),
(60, 55, 14, '2023-05-28 01:05:44', '2023-05-31 01:05:44', '2023-05-28 01:06:20', 'returned', 'No Penalty'),
(61, 55, 14, '2023-05-28 01:06:38', '2023-05-31 01:06:38', '2023-05-28 01:07:12', 'returned', 'No Penalty'),
(62, 55, 1, '2023-05-28 01:07:33', '2023-05-31 01:07:33', '2023-05-28 01:07:49', 'returned', 'No Penalty'),
(63, 55, 14, '2023-05-28 01:12:18', '2023-05-31 01:12:18', '2023-05-28 01:15:32', 'returned', 'No Penalty'),
(64, 55, 1, '2023-05-28 01:15:45', '2023-05-31 01:15:45', '2023-05-28 01:15:58', 'returned', 'No Penalty'),
(65, 55, 14, '2023-05-28 01:23:26', '2023-05-31 01:23:26', '2023-05-28 01:24:26', 'returned', 'No Penalty'),
(66, 55, 14, '2023-05-28 01:25:10', '2023-05-31 01:25:10', '2023-05-28 01:25:27', 'returned', 'No Penalty'),
(67, 55, 14, '2023-05-28 01:28:56', '2023-05-31 01:28:56', '2023-05-28 01:29:19', 'returned', 'No Penalty'),
(68, 55, 1, '2023-05-28 01:29:53', '2023-05-31 01:29:53', '2023-05-28 01:30:04', 'returned', 'No Penalty'),
(69, 55, 14, '2023-05-28 01:30:20', '2023-05-31 01:30:20', '2023-05-28 01:30:38', 'returned', 'No Penalty'),
(70, 55, 1, '2023-05-28 01:30:58', '2023-05-31 01:30:58', '2023-05-28 01:31:19', 'returned', 'No Penalty'),
(71, 55, 14, '2023-05-28 01:31:32', '2023-05-31 01:31:32', '2023-05-28 01:31:45', 'returned', 'No Penalty'),
(72, 55, 6, '2023-05-28 01:31:58', '2023-05-31 01:31:58', '2023-05-28 01:32:13', 'returned', 'No Penalty'),
(73, 56, 1, '2023-05-28 01:32:52', '2023-05-31 01:32:52', '2023-06-12 22:32:32', 'returned', ''),
(74, 56, 3, '2023-05-28 01:33:30', '2023-05-31 01:33:30', '2023-05-28 01:33:55', 'returned', 'No Penalty'),
(75, 56, 2, '2023-05-28 01:40:02', '2023-05-31 01:40:02', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(76, 56, 15, '2023-05-28 01:40:56', '2023-05-31 01:40:56', '2023-05-28 01:41:14', 'returned', 'No Penalty'),
(77, 56, 15, '2023-05-28 01:42:04', '2023-05-31 01:42:04', '2023-05-28 01:42:35', 'returned', 'No Penalty'),
(78, 55, 14, '2023-05-28 01:46:32', '2023-05-31 01:46:32', '2023-05-28 01:46:50', 'returned', 'No Penalty'),
(79, 55, 14, '2023-05-28 01:47:02', '2023-05-31 01:47:02', '2023-05-30 11:03:34', 'returned', 'No Penalty'),
(80, 55, 1, '2023-05-28 01:47:40', '2023-05-31 01:47:40', '2023-05-28 01:47:52', 'returned', 'No Penalty'),
(81, 55, 2, '2023-05-28 01:48:11', '2023-05-31 01:48:11', '2023-06-12 23:47:44', 'returned', '60'),
(82, 56, 14, '2023-05-28 01:50:09', '2023-05-31 01:50:09', NULL, 'borrowed', NULL),
(83, 55, 2, '2023-05-28 01:56:55', '2023-05-31 01:56:55', '2023-06-12 23:47:44', 'returned', '60'),
(84, 56, 2, '2023-05-28 01:57:41', '2023-05-31 01:57:41', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(85, 55, 2, '2023-05-28 21:42:45', '2023-05-31 21:42:45', '2023-06-12 23:47:44', 'returned', '60'),
(86, 36, 14, '2023-05-28 21:47:33', '2023-05-31 21:47:33', NULL, 'borrowed', NULL),
(87, 56, 2, '2023-05-30 10:31:02', '2023-06-02 10:31:02', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(88, 56, 6, '2023-06-11 19:30:25', '2023-06-14 19:30:25', '2023-06-11 19:31:48', 'returned', 'No Penalty'),
(89, 56, 6, '2023-06-11 19:32:21', '2023-06-14 19:32:21', '2023-06-11 19:33:23', 'returned', 'No Penalty'),
(90, 56, 3, '2023-06-11 19:34:39', '2023-06-14 19:34:39', '2023-06-11 19:35:00', 'returned', 'No Penalty'),
(91, 56, 6, '2023-06-11 19:35:45', '2023-06-14 19:35:45', '2023-06-11 19:36:02', 'returned', 'No Penalty'),
(94, 56, 2, '2023-06-11 19:45:18', '2023-06-14 19:45:18', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(95, 56, 1, '2023-06-12 19:14:47', '2023-06-15 19:14:47', '2023-06-12 22:32:32', 'returned', ''),
(96, 56, 1, '2023-06-12 22:17:54', '2023-06-15 22:17:54', '2023-06-12 22:32:32', 'returned', ''),
(97, 56, 1, '2023-06-12 22:22:07', '2023-06-15 22:22:07', '2023-06-12 22:32:32', 'returned', ''),
(98, 56, 1, '2023-06-12 22:25:15', '2023-06-15 22:25:15', '2023-06-12 22:32:32', 'returned', ''),
(99, 56, 1, '2023-06-12 22:27:58', '2023-06-15 22:27:58', '2023-06-12 22:32:32', 'returned', ''),
(100, 56, 1, '2023-06-12 22:32:07', '2023-06-15 22:32:07', '2023-06-12 22:32:32', 'returned', ''),
(101, 56, 2, '2023-06-12 22:35:27', '2023-06-15 22:35:27', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(102, 56, 2, '2023-06-12 22:45:15', '2023-06-15 22:45:15', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(103, 56, 2, '2023-06-12 23:50:16', '2023-06-15 23:50:16', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(104, 56, 2, '2023-06-12 23:51:21', '2023-06-15 23:51:21', '2023-06-14 11:43:27', 'returned', 'No Penalty'),
(105, 59, 19, '2023-06-13 01:41:58', '2023-06-16 01:41:58', '2023-06-13 01:42:33', 'returned', 'No Penalty'),
(106, 56, 19, '2023-06-14 11:44:51', '2023-06-17 11:44:51', '2023-06-14 11:45:58', 'returned', 'No Penalty'),
(107, 64, 20, '2023-06-16 22:13:58', '2023-06-19 22:13:58', NULL, 'borrowed', NULL),
(108, 66, 2, '2023-06-17 01:46:48', '2023-06-20 01:46:48', NULL, 'borrowed', NULL),
(109, 67, 1, '2023-06-18 18:20:48', '2023-06-21 18:20:48', '2023-06-19 03:48:52', 'returned', 'No Penalty'),
(110, 67, 15, '2023-06-18 18:28:43', '2023-06-21 18:28:43', '2023-06-18 18:29:41', 'returned', 'No Penalty'),
(111, 67, 1, '2023-06-18 18:44:43', '2023-06-21 18:44:43', '2023-06-19 03:48:52', 'returned', 'No Penalty'),
(112, 67, 5, '2023-06-18 18:47:47', '2023-06-21 18:47:47', '2023-06-18 18:48:30', 'returned', 'No Penalty'),
(113, 67, 1, '2023-06-18 19:04:32', '2023-06-21 19:04:32', '2023-06-19 03:48:52', 'returned', 'No Penalty'),
(114, 66, 18, '2023-06-19 03:42:24', '2023-06-22 03:42:24', '2023-06-19 03:43:13', 'returned', 'No Penalty'),
(115, 67, 1, '2023-06-19 03:48:17', '2023-06-22 03:48:17', '2023-06-19 03:48:52', 'returned', 'No Penalty');

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

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
(48, 67, 'Request accepted to borrow book: 1', '2023-06-19 03:48:17');

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
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `user_id`, `admin_name`, `detail_action`, `date_transaction`) VALUES
(1, 7, 2, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 02:50:30'),
(2, 7, 44, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:51:00'),
(3, 7, 4, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 02:52:01'),
(4, 3, 4, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 02:53:16'),
(5, 7, 2, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:57:34'),
(7, 7, 4, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:57:45'),
(8, 3, 4, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:57:48'),
(9, 7, 17, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 03:08:51'),
(10, 7, 4, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 03:09:01'),
(11, 7, 20, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 03:09:08'),
(12, 4, 14, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 08:32:16'),
(13, 1, 14, 'Test  Tester', 'Borrowed Book', '2023-04-05 00:13:21'),
(14, 2, 2, 'Test  Tester', 'Borrowed Book', '2023-04-06 18:37:03'),
(15, 2, 57, 'Test  Tester', 'Rejected Request', '2023-04-06 19:09:03'),
(16, 7, 47, 'Test  Tester', 'Borrowed Book', '2023-04-06 19:47:24'),
(17, 1, 14, 'Green  Testerw', 'Returned Book', '2023-05-13 00:34:03'),
(18, 14, 3, 'Green  Testerw', 'Borrowed Book', '2023-05-13 01:06:35'),
(19, 14, 55, 'Green  Testerw', 'Borrowed Book', '2023-05-13 01:06:54'),
(20, 14, 4, 'Green  Testerw', 'Borrowed Book', '2023-05-13 20:08:56'),
(21, 2, 2, 'Green  Testerw', 'Returned Book', '2023-05-13 20:11:45'),
(22, 14, 2, 'Green  Testerw', 'Borrowed Book', '2023-05-13 20:13:07'),
(23, 2, 55, 'Green  Testerw', 'Borrowed Book', '2023-05-13 20:15:00'),
(24, 14, 55, 'Green  Testerw', 'Returned Book', '2023-05-13 20:15:07'),
(25, 2, 55, '  ', 'Returned Book', '2023-05-13 20:20:38'),
(26, 1, 55, 'Green  Testerw', 'Borrowed Book', '2023-05-13 20:22:24'),
(27, 14, 4, 'Green  Testerw', 'Returned Book', '2023-05-13 20:25:25'),
(28, 1, 5, 'Green  Testerw', 'Borrowed Book', '2023-05-13 20:25:40'),
(29, 1, 55, '  ', 'Returned Book', '2023-05-13 20:54:40'),
(30, 3, 55, 'Green  Testerw', 'Borrowed Book', '2023-05-13 20:55:28'),
(31, 3, 55, '  ', 'Returned Book', '2023-05-13 23:21:49'),
(32, 7, 55, 'Green  Testerw', 'Borrowed Book', '2023-05-13 23:22:58'),
(33, 2, 55, '  ', 'Borrowed Book', '2023-05-14 03:09:34'),
(34, 2, 55, '  ', 'Returned Book', '2023-05-14 03:13:53'),
(35, 1, 55, '  ', 'Borrowed Book', '2023-05-14 04:35:09'),
(36, 2, 55, 'Green  Testerw', 'Borrowed Book', '2023-05-14 04:46:05'),
(37, 2, 55, '  ', 'Returned Book', '2023-05-14 04:51:01'),
(38, 14, 55, '  ', 'Borrowed Book', '2023-05-14 11:51:41'),
(39, 14, 55, '  ', 'Returned Book', '2023-05-14 12:03:55'),
(40, 14, 55, '  ', 'Borrowed Book', '2023-05-14 12:05:23'),
(41, 7, 55, '  ', 'Returned Book', '2023-05-14 12:05:35'),
(42, 13, 55, '  ', 'Borrowed Book', '2023-05-14 13:28:07'),
(43, 13, 55, '  ', 'Returned Book', '2023-05-14 13:28:31'),
(44, 13, 55, '  ', 'Borrowed Book', '2023-05-14 13:28:35'),
(45, 13, 55, '  ', 'Returned Book', '2023-05-14 13:28:40'),
(46, 13, 55, '  ', 'Borrowed Book', '2023-05-14 13:30:11'),
(47, 14, 55, '  ', 'Returned Book', '2023-05-14 13:30:22'),
(48, 13, 55, '  ', 'Returned Book', '2023-05-14 13:48:22'),
(49, 13, 55, '  ', 'Borrowed Book', '2023-05-14 13:48:25'),
(50, 13, 55, '  ', 'Returned Book', '2023-05-14 13:55:09'),
(51, 13, 55, '  ', 'Borrowed Book', '2023-05-14 13:55:12'),
(52, 13, 55, '  ', 'Returned Book', '2023-05-14 14:39:47'),
(53, 12, 55, '  ', 'Borrowed Book', '2023-05-14 14:42:54'),
(54, 6, 55, 'Green  Testerw', 'Borrowed Book', '2023-05-14 14:57:35'),
(55, 6, 55, 'Green  Testerw', 'Returned Book', '2023-05-14 14:57:48'),
(56, 12, 55, '  ', 'Borrowed Book', '2023-05-14 15:17:38'),
(57, 12, 55, '  ', 'Returned Book', '2023-05-14 15:17:54'),
(58, 12, 55, '  ', 'Returned Book', '2023-05-14 15:29:28'),
(59, 4, 55, '  ', 'Borrowed Book', '2023-05-14 15:30:16'),
(60, 4, 55, '  ', 'Borrowed Book', '2023-05-14 15:30:25'),
(61, 4, 55, '  ', 'Returned Book', '2023-05-14 15:30:42'),
(62, 4, 55, '  ', 'Borrowed Book', '2023-05-14 15:33:05'),
(63, 4, 55, '  ', 'Returned Book', '2023-05-14 15:33:16'),
(64, 4, 55, '  ', 'Borrowed Book', '2023-05-14 15:34:03'),
(65, 4, 55, '  ', 'Returned Book', '2023-05-14 15:34:06'),
(66, 4, 55, '  ', 'Borrowed Book', '2023-05-14 15:34:57'),
(67, 1, 55, '  ', 'Returned Book', '2023-05-14 15:35:59'),
(68, 4, 55, '  ', 'Borrowed Book', '2023-05-14 15:36:02'),
(69, 4, 55, '  ', 'Returned Book', '2023-05-14 15:36:43'),
(70, 4, 55, '  ', 'Borrowed Book', '2023-05-14 15:36:46'),
(71, 4, 55, '  ', 'Returned Book', '2023-05-22 21:26:45'),
(72, 4, 55, '  ', 'Borrowed Book', '2023-05-22 21:29:59'),
(73, 4, 55, '  ', 'Returned Book', '2023-05-22 22:33:01'),
(74, 4, 55, '  ', 'Borrowed Book', '2023-05-22 22:36:34'),
(75, 4, 55, '  ', 'Returned Book', '2023-05-22 22:36:38'),
(76, 4, 55, '  ', 'Borrowed Book', '2023-05-23 00:56:54'),
(77, 4, 55, '  ', 'Returned Book', '2023-05-23 00:57:02'),
(78, 4, 55, '  ', 'Borrowed Book', '2023-05-23 00:58:40'),
(79, 4, 55, '  ', 'Returned Book', '2023-05-23 00:58:45'),
(80, 2, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-24 21:39:42'),
(81, 2, 55, '  ', 'Returned Book', '2023-05-27 22:47:28'),
(82, 14, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-27 22:48:39'),
(83, 4, 55, '  ', 'Returned Book', '2023-05-27 22:53:01'),
(84, 2, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-27 22:55:39'),
(85, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 00:47:48'),
(86, 14, 55, '  ', 'Returned Book', '2023-05-28 00:48:01'),
(87, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 00:48:19'),
(88, 6, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 00:49:57'),
(89, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 00:50:00'),
(90, 14, 55, '  ', 'Returned Book', '2023-05-28 00:51:23'),
(91, 1, 56, '  ', 'Returned Book', '2023-05-28 00:55:37'),
(92, 2, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 00:55:52'),
(93, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 00:58:38'),
(94, 14, 55, '  ', 'Returned Book', '2023-05-28 00:59:03'),
(95, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 00:59:44'),
(96, 14, 55, '  ', 'Returned Book', '2023-05-28 01:00:01'),
(97, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:00:49'),
(98, 14, 55, '  ', 'Returned Book', '2023-05-28 01:01:13'),
(99, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:01:52'),
(100, 14, 55, '  ', 'Returned Book', '2023-05-28 01:02:18'),
(101, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:02:31'),
(102, 14, 55, '  ', 'Returned Book', '2023-05-28 01:03:13'),
(103, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:03:28'),
(104, 14, 55, '  ', 'Returned Book', '2023-05-28 01:04:30'),
(105, 1, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:04:44'),
(106, 1, 55, '  ', 'Returned Book', '2023-05-28 01:05:29'),
(107, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:05:44'),
(108, 14, 55, '  ', 'Returned Book', '2023-05-28 01:06:20'),
(109, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:06:38'),
(110, 14, 55, '  ', 'Returned Book', '2023-05-28 01:07:12'),
(111, 1, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:07:33'),
(112, 1, 55, '  ', 'Returned Book', '2023-05-28 01:07:49'),
(113, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:12:18'),
(114, 14, 55, '  ', 'Returned Book', '2023-05-28 01:15:32'),
(115, 1, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:15:45'),
(116, 1, 55, '  ', 'Returned Book', '2023-05-28 01:15:58'),
(117, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:23:26'),
(118, 14, 55, '  ', 'Returned Book', '2023-05-28 01:24:26'),
(119, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:25:10'),
(120, 14, 55, '  ', 'Returned Book', '2023-05-28 01:25:27'),
(121, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:28:56'),
(122, 14, 55, '  ', 'Returned Book', '2023-05-28 01:29:19'),
(123, 1, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:29:53'),
(124, 1, 55, '  ', 'Returned Book', '2023-05-28 01:30:04'),
(125, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:30:20'),
(126, 14, 55, '  ', 'Returned Book', '2023-05-28 01:30:38'),
(127, 1, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:30:58'),
(128, 1, 55, '  ', 'Returned Book', '2023-05-28 01:31:19'),
(129, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:31:32'),
(130, 14, 55, '  ', 'Returned Book', '2023-05-28 01:31:45'),
(131, 6, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:31:58'),
(132, 6, 55, '  ', 'Returned Book', '2023-05-28 01:32:13'),
(133, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:32:52'),
(134, 1, 56, '  ', 'Returned Book', '2023-05-28 01:33:06'),
(135, 3, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:33:30'),
(136, 3, 56, '  ', 'Returned Book', '2023-05-28 01:33:55'),
(137, 7, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:35:14'),
(138, 7, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:36:47'),
(139, 2, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:37:26'),
(140, 2, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:39:22'),
(141, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:40:02'),
(142, 2, 56, '  ', 'Returned Book', '2023-05-28 01:40:37'),
(143, 15, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:40:56'),
(144, 15, 56, '  ', 'Returned Book', '2023-05-28 01:41:14'),
(145, 15, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:41:30'),
(146, 15, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:42:04'),
(147, 15, 56, '  ', 'Returned Book', '2023-05-28 01:42:35'),
(148, 14, 56, '  ', 'Returned Book', '2023-05-28 01:42:37'),
(149, 14, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:42:49'),
(150, 1, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:44:27'),
(151, 14, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:44:33'),
(152, 15, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:45:26'),
(153, 3, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:45:30'),
(154, 5, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:45:34'),
(155, 6, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:45:38'),
(156, 1, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:45:44'),
(157, 14, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:45:48'),
(158, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:46:32'),
(159, 14, 55, '  ', 'Returned Book', '2023-05-28 01:46:50'),
(160, 14, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:47:02'),
(161, 2, 55, '  ', 'Returned Book', '2023-05-28 01:47:26'),
(162, 1, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:47:40'),
(163, 1, 55, '  ', 'Returned Book', '2023-05-28 01:47:52'),
(164, 2, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:48:11'),
(165, 2, 55, '  ', 'Returned Book', '2023-05-28 01:48:47'),
(166, 3, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:49:00'),
(167, 14, 56, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:49:40'),
(168, 14, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:50:09'),
(169, 15, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:50:42'),
(170, 2, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:52:17'),
(171, 1, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:52:52'),
(172, 2, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:53:32'),
(173, 2, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 01:54:36'),
(174, 2, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:56:55'),
(175, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 01:57:41'),
(176, 2, 55, '  ', 'Returned Book', '2023-05-28 01:58:14'),
(177, 1, 55, 'YUGI  Testerw', 'Rejected Request', '2023-05-28 02:11:08'),
(178, 2, 55, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 21:42:45'),
(179, 14, 36, 'YUGI  Testerw', 'Borrowed Book', '2023-05-28 21:47:37'),
(180, 2, 56, '  ', 'Returned Book', '2023-05-30 10:30:32'),
(181, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-05-30 10:31:02'),
(182, 14, 55, '  ', 'Returned Book', '2023-05-30 11:03:34'),
(183, 2, 56, '  ', 'Returned Book', '2023-06-06 16:09:06'),
(184, 6, 56, '  ', 'Returned Book', '2023-06-11 19:27:29'),
(185, 6, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-11 19:30:25'),
(186, 6, 56, '  ', 'Returned Book', '2023-06-11 19:31:48'),
(187, 6, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-11 19:32:21'),
(188, 6, 56, '  ', 'Returned Book', '2023-06-11 19:33:23'),
(189, 3, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-11 19:34:39'),
(190, 3, 56, '  ', 'Returned Book', '2023-06-11 19:35:00'),
(191, 6, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-11 19:35:45'),
(192, 6, 56, '  ', 'Returned Book', '2023-06-11 19:36:02'),
(193, 3, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-11 19:41:13'),
(194, 6, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-11 19:42:27'),
(195, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-11 19:45:18'),
(196, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 19:14:47'),
(197, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:29:55'),
(198, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:29:55'),
(199, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:29:55'),
(200, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:31:44'),
(201, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:31:44'),
(202, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:31:44'),
(203, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:37:51'),
(204, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:37:51'),
(205, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:37:51'),
(206, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:42:51'),
(207, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:42:51'),
(208, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:42:51'),
(209, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:52:07'),
(210, 2, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:52:07'),
(211, 14, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:52:07'),
(212, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:56:02'),
(213, 2, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:56:02'),
(214, 14, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 21:56:02'),
(215, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:11:19'),
(216, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:15:41'),
(217, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 22:17:54'),
(218, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:20:39'),
(219, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 22:22:07'),
(220, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:24:13'),
(221, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 22:25:15'),
(222, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:26:41'),
(223, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 22:27:58'),
(224, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:29:37'),
(225, 1, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 22:32:07'),
(226, 1, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:32:32'),
(227, 2, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:34:50'),
(228, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 22:35:27'),
(229, 2, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:39:22'),
(230, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 22:45:15'),
(231, 2, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 22:46:45'),
(232, 2, 55, 'YUGI  Testerw', 'Returned Book', '2023-06-12 23:47:44'),
(233, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 23:50:16'),
(234, 2, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-12 23:50:45'),
(235, 2, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-12 23:51:21'),
(236, 2, 56, 'YUGI  Testerw', 'Rejected Request', '2023-06-12 23:55:05'),
(237, 19, 59, 'YUGI  Testerw', 'Borrowed Book', '2023-06-13 01:41:58'),
(238, 19, 59, 'YUGI  Testerw', 'Returned Book', '2023-06-13 01:42:33'),
(241, 3, 56, 'YUGI', 'Rejected Request', '2023-06-13 00:00:00'),
(243, 4, 56, 'YUGI  Testerw', 'Rejected Request', '2023-06-13 20:19:00'),
(244, 2, 56, 'YUGI  Testerw', 'Returned Book', '2023-06-14 11:43:27'),
(245, 19, 56, 'YUGI  Testerw', 'Borrowed Book', '2023-06-14 11:44:51'),
(246, 19, 56, 'YUGI  Testerw', 'Lost', '2023-06-14 11:45:58'),
(247, 20, 64, 'Yugi  Testers', 'Borrowed Book', '2023-06-16 22:13:58'),
(248, 2, 66, 'Vin  Diesel', 'Borrowed Book', '2023-06-17 01:46:48'),
(249, 1, 67, 'Vin  Diesel', 'Borrowed Book', '2023-06-18 18:20:48'),
(250, 15, 67, 'Vin  Diesel', 'Borrowed Book', '2023-06-18 18:28:43'),
(251, 1, 67, 'Vin  Diesel', 'Returned Book', '2023-06-18 18:29:38'),
(252, 15, 67, 'Vin  Diesel', 'Returned Book', '2023-06-18 18:29:41'),
(253, 1, 67, 'Vin  Diesel', 'Borrowed Book', '2023-06-18 18:44:43'),
(254, 1, 67, 'Vin  Diesel', 'Returned Book', '2023-06-18 18:46:01'),
(255, 5, 67, 'Vin  Diesel', 'Borrowed Book', '2023-06-18 18:47:47'),
(256, 5, 67, 'Vin  Diesel', 'Returned Book', '2023-06-18 18:48:30'),
(257, 1, 67, 'Vin  Diesel', 'Borrowed Book', '2023-06-18 19:04:32'),
(258, 18, 66, 'Vin  Diesel', 'Borrowed Book', '2023-06-19 03:42:24'),
(259, 18, 66, 'Vin  Diesel', 'Returned Book', '2023-06-19 03:43:13'),
(260, 1, 67, 'Vin  Diesel', 'Returned Book', '2023-06-19 03:46:09'),
(261, 1, 67, 'Vin  Diesel', 'Borrowed Book', '2023-06-19 03:48:17'),
(262, 1, 67, 'Vin  Diesel', 'Returned Book', '2023-06-19 03:48:52');

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
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_borrow`
--

INSERT INTO `request_borrow` (`request_borrow_id`, `book_id`, `date_issued`, `date_request_borrow`, `due_date`) VALUES
(55, 14, NULL, '2023-05-30 11:03:37', NULL),
(55, 1, NULL, '2023-05-30 16:54:20', NULL),
(56, 20, NULL, '2023-06-14 11:45:17', NULL),
(55, 19, NULL, '2023-06-14 15:00:02', NULL);

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

--
-- Dumping data for table `request_return`
--

INSERT INTO `request_return` (`return_request_id`, `book_id`, `date_borrowed`, `due_date`, `penalty`, `date_returned`, `date_request`, `payment`) VALUES
(55, 4, '2023-05-14 15:30:13.000000', '2023-05-17 15:30:13.000000', '140', NULL, '2023-06-14 15:00:54.000000', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `book_penalty`, `payment`) VALUES
(1, 2, 7, '2015-11-14 02:50:27', '2015-11-17 02:50:27', '2015-12-14 02:57:31', '27', ''),
(2, 1, 7, '2015-11-14 02:50:58', '2015-11-17 02:50:58', '2015-12-14 02:57:30', '27', ''),
(3, 4, 7, '2015-12-14 02:51:59', '2015-12-17 02:51:59', '2015-12-13 02:57:29', 'No Penalty', ''),
(4, 4, 3, '2015-12-14 02:53:15', '2015-12-17 02:53:15', '2015-12-14 02:57:45', 'No Penalty', ''),
(5, 14, 1, '2023-04-05 00:13:15', '2023-04-08 00:13:15', '2023-05-13 00:33:59', '175', ''),
(6, 2, 2, '2023-04-06 18:35:14', '2023-04-09 18:35:14', '2023-05-13 20:11:45', '170', ''),
(7, 55, 14, '2023-05-13 01:06:53', '2023-05-16 01:06:53', '2023-05-13 20:15:07', 'No Penalty', ''),
(8, 55, 2, '2023-05-13 20:14:58', '2023-05-16 20:14:58', '2023-05-13 20:20:38', 'No Penalty', ''),
(9, 4, 14, '2023-05-13 20:08:53', '2023-05-16 20:08:53', '2023-05-13 20:25:25', 'No Penalty', ''),
(10, 55, 1, '2023-05-13 20:22:22', '2023-05-16 20:22:22', '2023-05-13 20:54:40', 'No Penalty', ''),
(11, 55, 3, '2023-05-13 20:55:27', '2023-05-16 20:55:27', '2023-05-13 23:21:49', 'No Penalty', ''),
(12, 55, 2, '2023-05-14 03:09:24', '2023-05-17 03:09:24', '2023-05-14 03:13:53', 'No Penalty', ''),
(13, 55, 2, '2023-05-14 04:46:04', '2023-05-17 04:46:04', '2023-05-14 04:51:01', 'No Penalty', ''),
(14, 55, 14, '2023-05-14 11:51:39', '2023-05-17 11:51:39', '2023-05-14 12:03:55', 'No Penalty', ''),
(15, 55, 7, '2023-05-13 23:22:56', '2023-05-16 23:22:56', '2023-05-14 12:05:35', 'No Penalty', ''),
(16, 55, 13, '2023-05-14 13:27:55', '2023-05-17 13:27:55', '2023-05-14 13:28:31', 'No Penalty', ''),
(17, 55, 13, '2023-05-14 13:28:33', '2023-05-17 13:28:33', '2023-05-14 13:28:40', 'No Penalty', ''),
(18, 55, 14, '2023-05-14 12:05:21', '2023-05-17 12:05:21', '2023-05-14 13:30:22', 'No Penalty', ''),
(19, 55, 13, '2023-05-14 13:30:09', '2023-05-17 13:30:09', '2023-05-14 13:48:22', 'No Penalty', ''),
(20, 55, 13, '2023-05-14 13:48:23', '2023-05-17 13:48:23', '2023-05-14 13:55:09', 'No Penalty', ''),
(21, 55, 13, '2023-05-14 13:55:11', '2023-05-17 13:55:11', '2023-05-14 14:39:47', 'No Penalty', ''),
(22, 55, 6, '2023-05-14 14:57:31', '2023-05-17 14:57:31', '2023-05-14 14:57:48', 'No Penalty', ''),
(23, 55, 12, '2023-05-14 14:42:46', '2023-05-17 14:42:46', '2023-05-14 15:17:54', 'No Penalty', ''),
(24, 55, 12, '2023-05-14 15:17:37', '2023-05-17 15:17:37', '2023-05-14 15:29:28', 'No Penalty', ''),
(25, 55, 4, '2023-05-14 15:30:22', '2023-05-17 15:30:22', '2023-05-14 15:30:42', 'No Penalty', ''),
(26, 55, 4, '2023-05-14 15:33:04', '2023-05-17 15:33:04', '2023-05-14 15:33:16', 'No Penalty', ''),
(27, 55, 4, '2023-05-14 15:33:18', '2023-05-17 15:33:18', '2023-05-14 15:34:06', 'No Penalty', ''),
(28, 55, 1, '2023-05-14 04:35:06', '2023-05-17 04:35:06', '2023-05-14 15:35:59', 'No Penalty', ''),
(29, 55, 4, '2023-05-14 15:36:01', '2023-05-17 15:36:01', '2023-05-14 15:36:43', 'No Penalty', ''),
(30, 55, 4, '2023-05-14 15:36:45', '2023-05-17 15:36:45', '2023-05-22 21:26:45', '26', ''),
(31, 55, 4, '2023-05-22 21:29:57', '2023-05-25 21:29:57', '2023-05-22 22:33:01', 'No Penalty', ''),
(32, 55, 4, '2023-05-22 22:36:33', '2023-05-25 22:36:33', '2023-05-22 22:36:38', 'No Penalty', ''),
(33, 55, 4, '2023-05-23 00:56:51', '2023-05-26 00:56:51', '2023-05-23 00:57:02', 'No Penalty', ''),
(34, 55, 4, '2023-05-23 00:58:39', '2023-05-26 00:58:39', '2023-05-23 00:58:45', 'No Penalty', ''),
(35, 55, 2, '2023-05-24 21:39:42', '2023-05-27 21:39:42', '2023-05-27 22:47:28', '0', ''),
(36, 55, 4, '2023-05-14 15:34:55', '2023-05-17 15:34:55', '2023-05-27 22:53:01', '52', ''),
(37, 55, 14, '2023-05-28 00:47:48', '2023-05-31 00:47:48', '2023-05-28 00:48:01', 'No Penalty', ''),
(38, 55, 14, '2023-05-28 00:48:19', '2023-05-31 00:48:19', '2023-05-28 00:51:23', 'No Penalty', ''),
(39, 56, 1, '2023-05-28 00:50:00', '2023-05-31 00:50:00', '2023-05-28 00:55:37', 'No Penalty', ''),
(40, 55, 14, '2023-05-28 00:58:38', '2023-05-31 00:58:38', '2023-05-28 00:59:03', 'No Penalty', ''),
(41, 55, 14, '2023-05-28 00:59:44', '2023-05-31 00:59:44', '2023-05-28 01:00:01', 'No Penalty', ''),
(42, 55, 14, '2023-05-28 01:00:49', '2023-05-31 01:00:49', '2023-05-28 01:01:13', 'No Penalty', ''),
(43, 55, 14, '2023-05-28 01:01:52', '2023-05-31 01:01:52', '2023-05-28 01:02:18', 'No Penalty', ''),
(44, 55, 14, '2023-05-28 01:02:31', '2023-05-31 01:02:31', '2023-05-28 01:03:13', 'No Penalty', ''),
(45, 55, 14, '2023-05-28 01:03:28', '2023-05-31 01:03:28', '2023-05-28 01:04:30', 'No Penalty', ''),
(46, 55, 1, '2023-05-28 01:04:44', '2023-05-31 01:04:44', '2023-05-28 01:05:29', 'No Penalty', ''),
(47, 55, 14, '2023-05-28 01:05:44', '2023-05-31 01:05:44', '2023-05-28 01:06:20', 'No Penalty', ''),
(48, 55, 14, '2023-05-28 01:06:38', '2023-05-31 01:06:38', '2023-05-28 01:07:12', 'No Penalty', ''),
(49, 55, 1, '2023-05-28 01:07:33', '2023-05-31 01:07:33', '2023-05-28 01:07:49', 'No Penalty', ''),
(50, 55, 14, '2023-05-28 01:12:18', '2023-05-31 01:12:18', '2023-05-28 01:15:32', 'No Penalty', ''),
(51, 55, 1, '2023-05-28 01:15:45', '2023-05-31 01:15:45', '2023-05-28 01:15:58', 'No Penalty', ''),
(52, 55, 14, '2023-05-28 01:23:26', '2023-05-31 01:23:26', '2023-05-28 01:24:26', 'No Penalty', ''),
(53, 55, 14, '2023-05-28 01:25:10', '2023-05-31 01:25:10', '2023-05-28 01:25:27', 'No Penalty', ''),
(54, 55, 14, '2023-05-28 01:28:56', '2023-05-31 01:28:56', '2023-05-28 01:29:19', 'No Penalty', ''),
(55, 55, 1, '2023-05-28 01:29:53', '2023-05-31 01:29:53', '2023-05-28 01:30:04', 'No Penalty', ''),
(56, 55, 14, '2023-05-28 01:30:20', '2023-05-31 01:30:20', '2023-05-28 01:30:38', 'No Penalty', ''),
(57, 55, 1, '2023-05-28 01:30:58', '2023-05-31 01:30:58', '2023-05-28 01:31:19', 'No Penalty', ''),
(58, 55, 14, '2023-05-28 01:31:32', '2023-05-31 01:31:32', '2023-05-28 01:31:45', 'No Penalty', ''),
(59, 55, 6, '2023-05-28 01:31:58', '2023-05-31 01:31:58', '2023-05-28 01:32:13', 'No Penalty', ''),
(60, 56, 1, '2023-05-28 01:32:52', '2023-05-31 01:32:52', '2023-05-28 01:33:06', 'No Penalty', ''),
(61, 56, 3, '2023-05-28 01:33:30', '2023-05-31 01:33:30', '2023-05-28 01:33:55', 'No Penalty', ''),
(62, 56, 2, '2023-05-28 01:40:02', '2023-05-31 01:40:02', '2023-05-28 01:40:37', 'No Penalty', ''),
(63, 56, 15, '2023-05-28 01:40:56', '2023-05-31 01:40:56', '2023-05-28 01:41:14', 'No Penalty', ''),
(64, 56, 15, '2023-05-28 01:42:04', '2023-05-31 01:42:04', '2023-05-28 01:42:35', 'No Penalty', ''),
(65, 56, 14, '2023-05-27 22:48:39', '2023-05-30 22:48:39', '2023-05-28 01:42:37', 'No Penalty', ''),
(66, 55, 14, '2023-05-28 01:46:32', '2023-05-31 01:46:32', '2023-05-28 01:46:50', 'No Penalty', ''),
(67, 55, 2, '2023-05-27 22:55:39', '2023-05-30 22:55:39', '2023-05-28 01:47:26', 'No Penalty', ''),
(68, 55, 1, '2023-05-28 01:47:40', '2023-05-31 01:47:40', '2023-05-28 01:47:52', 'No Penalty', ''),
(69, 55, 2, '2023-05-28 01:48:11', '2023-05-31 01:48:11', '2023-05-28 01:48:47', 'No Penalty', ''),
(70, 55, 2, '2023-05-28 01:56:55', '2023-05-31 01:56:55', '2023-05-28 01:58:14', 'No Penalty', ''),
(71, 56, 2, '2023-05-28 01:57:41', '2023-05-31 01:57:41', '2023-05-30 10:30:32', 'No Penalty', ''),
(72, 55, 14, '2023-05-28 01:47:02', '2023-05-31 01:47:02', '2023-05-30 11:03:34', 'No Penalty', ''),
(73, 56, 2, '2023-05-30 10:31:02', '2023-06-02 10:31:02', '2023-06-06 16:09:06', '21', ''),
(74, 56, 6, '2023-05-28 00:49:57', '2023-05-31 00:49:57', '2023-06-11 19:27:29', '59', ''),
(75, 56, 6, '2023-06-11 19:30:25', '2023-06-14 19:30:25', '2023-06-11 19:31:48', 'No Penalty', ''),
(76, 56, 6, '2023-06-11 19:32:21', '2023-06-14 19:32:21', '2023-06-11 19:33:23', 'No Penalty', ''),
(77, 56, 3, '2023-06-11 19:34:39', '2023-06-14 19:34:39', '2023-06-11 19:35:00', 'No Penalty', ''),
(78, 56, 6, '2023-06-11 19:35:45', '2023-06-14 19:35:45', '2023-06-11 19:36:02', 'No Penalty', ''),
(85, 56, 1, '2023-06-12 22:17:54', '2023-06-15 22:17:54', '2023-06-12 22:20:39', '', ''),
(86, 56, 1, '2023-06-12 22:22:07', '2023-06-15 22:22:07', '2023-06-12 22:24:13', '', ''),
(87, 56, 1, '2023-06-12 22:25:15', '2023-06-15 22:25:15', '2023-06-12 22:26:41', '', ''),
(88, 56, 1, '2023-06-12 22:27:58', '2023-06-15 22:27:58', '2023-06-12 22:29:37', 'No Penalty', 'No Penalty'),
(89, 56, 1, '2023-06-12 22:32:07', '2023-06-15 22:32:07', '2023-06-12 22:32:32', 'No Penalty', 'No Penalty'),
(90, 56, 2, '2023-06-11 19:45:18', '2023-06-14 19:45:18', '2023-06-12 22:34:50', 'No Penalty', 'No Penalty'),
(91, 56, 2, '2023-06-12 22:35:27', '2023-06-15 22:35:27', '2023-06-12 22:39:22', 'No Penalty', 'No Penalty'),
(92, 56, 2, '2023-06-12 22:45:15', '2023-06-15 22:45:15', '2023-06-12 22:46:45', '', ''),
(93, 55, 2, '2023-05-28 21:42:45', '2023-05-31 21:42:45', '2023-06-12 23:47:44', '60', ''),
(94, 56, 2, '2023-06-12 23:50:16', '2023-06-15 23:50:16', '2023-06-12 23:50:45', 'No Penalty', ''),
(95, 59, 19, '2023-06-13 01:41:58', '2023-06-16 01:41:58', '2023-06-13 01:42:33', 'No Penalty', ''),
(96, 56, 2, '2023-06-12 23:51:21', '2023-06-15 23:51:21', '2023-06-14 11:43:27', 'No Penalty', ''),
(97, 56, 19, '2023-06-14 11:44:51', '2023-06-17 11:44:51', '2023-06-14 11:45:58', 'No Penalty', ''),
(98, 67, 1, '2023-06-18 18:20:48', '2023-06-21 18:20:48', '2023-06-18 18:29:38', 'No Penalty', ''),
(99, 67, 15, '2023-06-18 18:28:43', '2023-06-21 18:28:43', '2023-06-18 18:29:41', 'No Penalty', ''),
(100, 67, 1, '2023-06-18 18:44:43', '2023-06-21 18:44:43', '2023-06-18 18:46:01', 'No Penalty', ''),
(101, 67, 5, '2023-06-18 18:47:47', '2023-06-21 18:47:47', '2023-06-18 18:48:30', 'No Penalty', ''),
(102, 66, 18, '2023-06-19 03:42:24', '2023-06-22 03:42:24', '2023-06-19 03:43:13', 'No Penalty', ''),
(103, 67, 1, '2023-06-18 19:04:32', '2023-06-21 19:04:32', '2023-06-19 03:46:09', 'No Penalty', ''),
(104, 67, 1, '2023-06-19 03:48:17', '2023-06-22 03:48:17', '2023-06-19 03:48:52', 'No Penalty', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `gender`, `address`, `type`, `level`, `section`, `status`, `user_image`, `user_added`, `userpassword`, `userconfirmpassword`, `approval`) VALUES
(2, '117429060061', 'RONALD', 'PANIERGO', 'FLORES', '', '', 'Male', 'PALOMA, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:56', '', '', 'Reject'),
(3, '117427060036', 'GERALD', 'MANOSO', 'PELINGON', '', '', 'Male', 'PACOL, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:56', '', '', 'Reject'),
(4, '117429060130', 'RAM CHRISTIAN', 'DAYOT', 'PENUELA', '', '', 'Male', 'POBLACION, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:56', '', '', 'Reject'),
(5, '117429060132', 'JAN MICHAEL', 'ALABE', 'PORCEL', '', '', 'Male', 'POBLACION, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:56', '', '', 'Reject'),
(6, '117425060048', 'ROSIE', 'DE LA CRUZ', 'PELINGON', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(7, '117425060051', 'ANDRIA', 'CASIANO', 'PIT', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(8, '302694140043', 'ANGELA', 'CASTILLO', 'REJAS', '', '', 'Female', 'MABINI, PULUPANDAN', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(9, '117422060063', 'ROWELA', 'UNTAL', 'ROGERO', '', '', 'Female', 'DOLDOL, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(10, '117425060056', 'REGINE', 'DOMINGUEZ', 'SALANATIN', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 9', 'Antimony', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(11, '115856050005', 'JOHN MARK', 'PAMPLIEGA', 'CASTEN', '', '', 'Male', 'PALAKA SUR, PULUPANDAN', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(12, '117425050023', 'SUNDAY', 'HECHANOVA', 'FELIPE', '', '', 'Male', 'MABINI, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(13, '117425050025', 'JOEMAR', 'MENDOZA', 'FRANCISCO', '', '', 'Male', 'MABINI, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:57', '', '', 'Reject'),
(14, '117429050043', 'CHRISTOPHER', 'ARGUELLES', 'FRIAS', '', '', 'Male', 'TANDANG SORA, QUEZON CITY', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:58', '', '', 'Reject'),
(15, '117429050044', 'REYNAN', 'DATULAYTA', 'GABALES', '', '', 'Male', 'PALAKA, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:58', '', '', 'Reject'),
(16, '117422050037', 'RATCHEL', 'YANOS', 'GALVAN', '', '', 'Female', 'BAYABAS, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:58', '', '', 'Reject'),
(17, '302694140009', 'CRISTY GAYLE', 'CADAYDAY', 'GOSIAOCO', '', '', 'Female', 'SAGUA BANUA, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:58', '', '', 'Reject'),
(18, '117324050063', 'ROZEL CHILES', 'PALMA', 'JANDOG', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:58', '', '', 'Reject'),
(19, '117429050063', 'MARY BERYL', 'TULMO', 'LUMAPAN', '', '', 'Female', 'POBLACION, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:58', '', '', 'Reject'),
(20, '117429050066', 'REGINA MARIE', 'DELAPER', 'MACHAN', '', '', 'Female', 'POBLACION, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', 'Active', '', '2015-12-14 02:47:58', '', '', 'Reject'),
(21, '117427080005', 'MARLON', 'GAJO', 'BALANGAO', '', '', 'Male', 'PACOL, VALLADOLID', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:58', '', '', 'Reject'),
(22, '117321080006', 'KENNETH', 'JUANEZA', 'BENIT', '', '', 'Male', 'PALAKA SUR, PULUPANDAN', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:58', '', '', 'Reject'),
(23, '117429080037', 'MARK ANGELO', 'BOJOS', 'CAMACHO', '', '', 'Male', 'POBLACION, VALLADOLID', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:58', '', '', 'Reject'),
(24, '117321080009', 'RGEE LOUIZE', 'ESTARES', 'DELIMA', '', '', 'Male', 'PALAKA SUR, PULUPANDAN', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:58', '', '', 'Reject'),
(25, '117321080014', 'JOEZER COLENE', 'LEGIRO', 'GALIMBA', '', '', 'Male', 'PALAKA SUR, PULUPANDAN', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:58', '', '', 'Reject'),
(26, '117427080001', 'JULIAH', 'ARANGOTE', 'ABEDONG', '', '', 'Female', 'PACOL, VALLADOLID', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:59', '', '', 'Reject'),
(27, '117321080002', 'CHRISTINE MAE', 'SALAZAR', 'ABETO', '09999999999', '', 'Female', 'PALAKA SUR, PULUPANDAN', '', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:59', '', '', 'Reject'),
(28, '117427080002', 'NICOLE ANN', 'PAGSUBERON', 'ABILGOS', '', '', 'Female', 'PACOL, VALLADOLID', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:59', '', '', 'Reject'),
(29, '117425080013', 'JANESSA', 'DOROTEO', 'ARGUELLES', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:35:59', '', '', 'Reject'),
(30, '117429080020', 'MARNYL', 'DUNLAO', 'BACOLINA', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 7', 'Earth', 'Active', '', '2015-12-14 08:36:00', '', '', 'Reject'),
(31, '117320070006', 'REXXER ANDREI', 'DE LOS SANTOS', 'BELEBER', '', '', 'Male', 'MABINI, PULUPANDAN', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:00', '', '', 'Reject'),
(32, '117422070016', 'JOSHUA', 'SUICO', 'CARPENTERO', '', '', 'Male', 'ALIJIS, VALLADOLID', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:00', '', '', 'Reject'),
(33, '117429070043', 'JERSON', 'PIDO', 'DAMPOG', '', '', 'Male', 'PALAKA, VALLADOLID', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:00', '', '', 'Reject'),
(34, '117425070018', 'JESS LORD', 'ARROYO', 'DE LA CRUZ', '', '', 'Male', 'MABINI, PULUPANDAN', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:00', '', '', 'Reject'),
(35, '117422070022', 'RALPH JERO', 'CENTINO', 'DEMERIN', '', '', 'Male', 'ALIJIS, VALLADOLID', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:00', '', '', 'Reject'),
(36, '117427070001', 'TRESHIA', 'SALVANTE', 'ABENIR', '', '', 'Female', 'PACOL, VALLADOLID', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:00', '', '', 'Reject'),
(37, '117321070003', 'MA THERESA MAE', 'CORDOVA', 'ALLES', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:01', '', '', 'Reject'),
(38, '117429070018', 'ELLA MARIE', 'MARTENECIO', 'ALVAREZ', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:01', '', '', 'Reject'),
(39, '117422070005', 'LOVELY ANN', 'YUBARA', 'AMAR', '', '', 'Female', 'BAYABAS, VALLADOLID', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:01', '', '', 'Reject'),
(40, '117479070029', 'CRISTALLY', 'MALAPITAN', 'ANIAN', '', '', 'Female', 'BARANGAY 16 (POB.), BACOLOD CITY (Capital)', 'Student', 'Grade 8', 'Charity', 'Active', '', '2015-12-14 08:36:01', '', '', 'Reject'),
(41, '623144', 'gg', 'ss', 'd', '', '', 'male', 'test', 'student', '9', '1', 'active', '', '2023-04-01 22:48:03', '', '', 'Reject'),
(43, '999', 'Arlot', 'C.', 'Gaming', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '5', '4', 'active', '', '2023-04-01 22:48:03', '', '', 'Reject'),
(44, '999', 'Arlot', 'C.', 'Gaming', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '5', '4', 'active', '', '2023-04-01 22:48:03', '', '', 'Reject'),
(45, '45687', 'Balmond', 'J.', 'Neutron', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '3', '1', 'active', '', '2023-04-01 22:48:03', '', '', 'Reject'),
(46, '45687', 'Balmond', 'J.', 'Neutron', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '3', '1', 'active', '', '2023-04-01 22:48:03', '', '', 'Reject'),
(47, '114444', 'LAGARI', 'T.', 'Tester', '09999899999', 'lagari@email.com', 'Female', 'ilang ilang street', '', 'Grade 10', '2', 'Active', '', '2023-04-06 19:46:24', '', '', 'Reject'),
(48, '1234', 'Angela', 'U.', 'User', '09123213132', '', 'Female', 'gregory bacoor city', '', 'Grade 7', '3', '1234', '', '0000-00-00 00:00:00', 'Active', '2023-04-16 22:52:42', 'Reject'),
(49, '099999', 'MIMIYU7', '', 'Green', '09999999999', 'miyu@email.com', 'Male', 'gregdhgy', 'Student', 'Grade 7', '1', 'Deactivate', '', '2023-04-16 23:02:48', '1234', '1234', 'Reject'),
(50, '09099', 'Angela122', '', 'User', '24222222222', 'arc@yahoo.com', 'Male', 'gregory bacoor city', '', 'Grade 8', 'Flower', 'Deactivate', 'scarlet.jpeg', '2023-04-16 23:09:03', '', '', 'Accept'),
(51, '14344', 'Genos', 'U.', 'Green', '09123545343', '', 'Male', 'gregory bacoor city', 'Student', 'Grade 8', '3', 'Active', '', '2023-04-19 17:31:49', '', '', 'Reject'),
(52, '9879798', 'Testing lang', 'U.', 'Green', '09424245454', 'adam@phpzag.com', 'Female', 'gregoriy bacoor city', '', 'Grade 8', '56', 'Active', '', '2023-04-19 17:47:45', '1234', '1234', 'Reject'),
(53, '4111', 'MIMIYU', 'U.', 'Green', '09679080765', 'miyu12@gmail.com', 'Male', 'carmona', 'Student', 'Kinder', '1', 'Active', '', '2023-04-19 17:51:41', '', '', 'Reject'),
(55, '3000', 'Archie', '', 'Espiritu', '09999999999', 'archie@facebook.com', 'Male', 'bitas street', 'Student', 'Grade 12', 'Grade 7', 'Active', '', '2023-04-19 23:41:37', '1234', '1234', 'Reject'),
(56, '4000', 'Aceeee', '', 'Aldave', '09679080765', 'ace@login.com', 'Male', 'Cavite', 'Student', 'Grade 12', 'ICT-3', 'Active', 'prof.jpg', '2023-05-23 02:07:03', '123456789', '123456789', 'Reject'),
(57, '2000', 'Jumbo', 'T', 'Hotdog', '09967653433', 'hotdog@email.com', 'Female', 'Cavite', 'Student', 'Grade 12', 'ICT', 'Active', 'narcisa.jpg', '2023-05-23 02:23:35', '123', '123', 'Reject'),
(58, '5000', 'Mariella', 'S.', 'Aldave', '09679080055', 'mariel@gmail.com', 'Male', 'Cavite Carmona', 'Student', 'Grade 5', 'Kepler', 'Active', NULL, '2023-06-04 20:20:04', '12345', '12345', 'Reject'),
(59, '2500', 'Pein', 'D.', 'Akatsuki', '09987612333', 'pein@email.com', 'Male', 'Konoha', 'Student', 'Grade 12', 'Rain', 'Active', NULL, '2023-06-05 17:04:39', '12345', '12345', 'Reject'),
(60, '1200', 'Kenpachi', 'K.', 'Zaraki', '62626262626', 'kenpachi@email.com', 'Male', 'Soul Society', 'Student', 'Grade 12', '12', 'Active', NULL, '2023-06-16 20:59:11', '12345678', '12345678', 'Reject'),
(61, '3300', 'Kuronuma', '', 'Sawako', '11111111111', 'kurono@email.com', 'Female', 'Tokyo', 'Student', 'Grade 12', 'ICT', 'Active', NULL, '2023-06-16 21:01:41', '12345', '12345', 'Reject'),
(62, '7500', 'Raichi', '', 'Tara', '09679823123', 'raic@email.com', 'Male', 'Sakura', 'Student', 'Grade 4', 'Wooden', 'Active', NULL, '2023-06-16 21:04:24', '12345678', '12345678', 'Reject'),
(63, '2300', 'Traxex', 'D.', 'Ranger', '09828363232', 'traxex@email.com', 'Female', 'Sentinel', 'Student', 'Grade 9', 'Elves', 'Active', NULL, '2023-06-16 21:11:56', '12345678', '12345678', 'Reject'),
(64, '2350', 'Hinata', 'M.', 'Shoyo', '09483923223', 'hina@email.com', 'Male', 'Kanagawa', 'Student', 'Grade 10', 'Crow', 'Active', 'zayn.jpeg', '2023-06-16 21:57:51', '579646aad11fae4dd295812fb4526245', '579646aad11fae4dd295812fb4526245', 'Reject'),
(65, '5200', 'Test', 'S', 'Testers', '09743245543', 'testers@email.com', 'Male', 'Cavite', 'Student', 'Grade 7', 'Rain', 'Active', 'zayn.jpeg', '2023-06-17 00:04:03', '550e1bafe077ff0b0b67f4e32f29d751', '550e1bafe077ff0b0b67f4e32f29d751', 'Reject'),
(66, '8000', 'Zayn', '', 'Malik', '09987342932', 'zayn@email.com', 'Male', 'Bradford', 'Student', 'Grade 8', 'STEM', 'Active', 'zayn.jpeg', '2023-06-17 01:40:54', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(67, '550', 'Sanford', '', 'Bene', '09679081568', 'sanford@email.com', 'Male', 'Pampanga', 'Student', 'Grade 10', 'Echo', 'Active', NULL, '2023-06-18 17:28:11', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(68, '750', 'Vin', 'M.', 'Dino', '09789074322', 'dino@email.com', 'Female', 'Cavite', 'Student', 'Grade 5', 'Apple', 'Active', NULL, '2023-06-19 02:23:20', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(69, '450', 'Sawamura', 'Eijun', 'Kun', '09876543221', 'sawam@email.com', 'Female', 'Cavite', 'Student', 'Grade 7', 'Apple', 'Deactivate', NULL, '2023-06-19 02:27:29', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(70, '780', 'Hirom', 'M.', 'Nikyu', '09780245325', 'nik@email.com', 'Female', 'Bacoor', 'Student', 'Grade 5', 'Apple', 'Active', NULL, '2023-06-19 02:34:34', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(71, '311', 'Donald', 'J.', 'Trump', '09985645323', 'donald@email.com', 'Female', 'Cavite', 'Student', 'Grade 10', 'Rain', 'Active', NULL, '2023-06-19 02:40:04', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(80, '290', 'Medusa', 'M.', 'Kun', '09988776654', 'medu@email.com', 'Female', 'Cavite', 'Student', 'Grade 8', 'Apple', 'Active', NULL, '2023-06-19 03:18:44', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(81, '515', 'Try', 'Me', 'Lang', '09876998211', 'tryme@email.com', 'Prefer Not to Say', 'Bulacan', 'Student', 'Grade 8', 'Apple', 'Active', NULL, '2023-06-19 03:25:29', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept');

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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `user_id`, `user_name`, `date_log`) VALUES
(1, 19, 'MARY BERYL TULMO LUMAPAN', '2015-12-14 08:33:56'),
(2, 40, 'CRISTALLY MALAPITAN ANIAN', '2015-12-14 08:39:11'),
(3, 1, 'KERVIN KARL OSORIO CABUS', '2015-12-14 10:35:20'),
(4, 7, 'ANDRIA CASIANO PIT', '2015-12-14 10:36:12'),
(5, 10, 'REGINE DOMINGUEZ SALANATIN', '2015-12-14 10:36:29'),
(6, 18, 'ROZEL CHILES PALMA JANDOG', '2015-12-14 10:37:03'),
(7, 3, 'GERALD MANOSO PELINGON', '2015-12-14 10:37:23'),
(8, 8, 'ANGELA CASTILLO REJAS', '2015-12-14 10:37:26'),
(9, 17, 'CRISTY GAYLE CADAYDAY GOSIAOCO', '2015-12-14 10:37:38'),
(10, 9, 'ROWELA UNTAL ROGERO', '2015-12-14 10:38:05'),
(11, 17, 'CRISTY GAYLE CADAYDAY GOSIAOCO', '2015-12-14 10:38:29'),
(12, 16, 'RATCHEL YANOS GALVAN', '2015-12-14 10:38:29'),
(13, 15, 'REYNAN DATULAYTA GABALES', '2015-12-14 10:38:34'),
(14, 12, 'SUNDAY HECHANOVA FELIPE', '2015-12-14 10:38:37'),
(15, 12, 'SUNDAY HECHANOVA FELIPE', '2015-12-14 10:38:48'),
(16, 9, 'ROWELA UNTAL ROGERO', '2015-12-14 10:38:56'),
(17, 7, 'ANDRIA CASIANO PIT', '2015-12-14 10:39:01'),
(18, 5, 'JAN MICHAEL ALABE PORCEL', '2015-12-14 10:39:04'),
(19, 5, 'JAN MICHAEL ALABE PORCEL', '2015-12-14 10:39:06'),
(20, 17, 'CRISTY GAYLE CADAYDAY GOSIAOCO', '2015-12-14 10:40:34'),
(21, 16, 'RATCHEL YANOS GALVAN', '2015-12-14 10:40:39'),
(22, 15, 'REYNAN DATULAYTA GABALES', '2015-12-14 10:40:45'),
(23, 14, 'CHRISTOPHER ARGUELLES FRIAS', '2015-12-14 10:40:51'),
(24, 14, 'CHRISTOPHER ARGUELLES FRIAS', '2015-12-14 10:41:01'),
(25, 25, 'JOEZER COLENE LEGIRO GALIMBA', '2015-12-14 10:41:08'),
(26, 18, 'ROZEL CHILES PALMA JANDOG', '2015-12-14 10:41:16'),
(27, 20, 'REGINA MARIE DELAPER MACHAN', '2015-12-14 10:41:20'),
(28, 19, 'MARY BERYL TULMO LUMAPAN', '2015-12-14 10:41:21'),
(29, 20, 'REGINA MARIE DELAPER MACHAN', '2015-12-14 10:41:22'),
(30, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:41:28'),
(31, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:41:29'),
(32, 24, 'RGEE LOUIZE ESTARES DELIMA', '2015-12-14 10:41:29'),
(33, 22, 'KENNETH JUANEZA BENIT', '2015-12-14 10:41:31'),
(34, 19, 'MARY BERYL TULMO LUMAPAN', '2015-12-14 10:41:32'),
(35, 18, 'ROZEL CHILES PALMA JANDOG', '2015-12-14 10:41:32'),
(36, 13, 'JOEMAR MENDOZA FRANCISCO', '2015-12-14 10:41:37'),
(37, 11, 'JOHN MARK PAMPLIEGA CASTEN', '2015-12-14 10:41:41'),
(38, 10, 'REGINE DOMINGUEZ SALANATIN', '2015-12-14 10:41:45'),
(39, 10, 'REGINE DOMINGUEZ SALANATIN', '2015-12-14 10:41:48'),
(40, 10, 'REGINE DOMINGUEZ SALANATIN', '2015-12-14 10:41:50'),
(41, 25, 'JOEZER COLENE LEGIRO GALIMBA', '2015-12-14 10:42:06'),
(42, 26, 'JULIAH ARANGOTE ABEDONG', '2015-12-14 10:42:07'),
(43, 19, 'MARY BERYL TULMO LUMAPAN', '2015-12-14 10:42:11'),
(44, 19, 'MARY BERYL TULMO LUMAPAN', '2015-12-14 10:42:16'),
(45, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:42:22'),
(46, 21, 'MARLON GAJO BALANGAO', '2015-12-14 10:43:00'),
(47, 18, 'ROZEL CHILES PALMA JANDOG', '2015-12-14 10:43:48'),
(48, 18, 'ROZEL CHILES PALMA JANDOG', '2015-12-14 10:43:55'),
(49, 20, 'REGINA MARIE DELAPER MACHAN', '2015-12-14 10:44:01'),
(50, 25, 'JOEZER COLENE LEGIRO GALIMBA', '2015-12-14 10:44:07'),
(51, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:44:25'),
(52, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:44:27'),
(53, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:44:32'),
(54, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2015-12-14 11:05:19'),
(55, 35, 'RALPH JERO CENTINO DEMERIN', '2023-05-30 16:53:17'),
(56, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2023-06-06 16:31:59'),
(57, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2023-05-23 02:27:32'),
(58, 32, 'JOSHUA SUICO CARPENTERO', '2023-06-04 20:20:14'),
(59, 36, 'TRESHIA SALVANTE ABENIR', '2023-06-05 17:12:06'),
(60, 38, 'ELLA MARIE MARTENECIO ALVAREZ', '2015-12-14 11:16:13'),
(61, 38, 'ELLA MARIE MARTENECIO ALVAREZ', '2015-12-14 11:16:15'),
(62, 37, 'MA THERESA MAE CORDOVA ALLES', '2015-12-14 11:16:19'),
(63, 36, 'TRESHIA SALVANTE ABENIR', '2015-12-14 11:16:48'),
(64, 38, 'ELLA MARIE MARTENECIO ALVAREZ', '2015-12-14 11:16:50'),
(65, 39, 'LOVELY ANN YUBARA AMAR', '2015-12-14 11:16:55'),
(66, 38, 'ELLA MARIE MARTENECIO ALVAREZ', '2015-12-14 11:32:50'),
(67, 33, 'JERSON PIDO DAMPOG', '2015-12-14 11:33:15'),
(68, 19, 'MARY BERYL TULMO LUMAPAN', '2015-12-14 11:33:16'),
(69, 27, 'CHRISTINE MAE SALAZAR ABETO', '2015-12-14 11:33:18'),
(70, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2015-12-14 11:33:19'),
(71, 19, 'MARY BERYL TULMO LUMAPAN', '2015-12-14 11:34:29'),
(72, 18, 'ROZEL CHILES PALMA JANDOG', '2015-12-14 11:34:39'),
(73, 24, 'RGEE LOUIZE ESTARES DELIMA', '2015-12-14 11:34:42'),
(74, 33, 'JERSON PIDO DAMPOG', '2015-12-14 11:35:04'),
(75, 9, 'ROWELA UNTAL ROGERO', '2015-12-14 11:35:21'),
(76, 5, 'JAN MICHAEL ALABE PORCEL', '2015-12-14 11:35:24'),
(77, 33, 'JERSON PIDO DAMPOG', '2015-12-14 11:38:01'),
(78, 33, 'JERSON PIDO DAMPOG', '2015-12-14 11:40:11'),
(79, 30, 'MARNYL DUNLAO BACOLINA', '2015-12-14 11:40:17'),
(80, 31, 'REXXER ANDREI DE LOS SANTOS BELEBER', '2015-12-14 11:49:45'),
(81, 30, 'MARNYL DUNLAO BACOLINA', '2015-12-14 11:49:50'),
(82, 33, 'JERSON PIDO DAMPOG', '2015-12-14 11:50:45'),
(83, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2015-12-14 11:50:56'),
(84, 29, 'JANESSA DOROTEO ARGUELLES', '2015-12-14 11:53:03'),
(85, 20, 'REGINA MARIE DELAPER MACHAN', '2015-12-14 13:52:30'),
(86, 34, 'JESS LORD ARROYO DE LA CRUZ', '2015-12-14 14:11:26'),
(87, 30, 'MARNYL DUNLAO BACOLINA', '2015-12-14 14:12:05'),
(88, 33, 'JERSON PIDO DAMPOG', '2015-12-14 14:24:28'),
(89, 33, 'JERSON PIDO DAMPOG', '2015-12-14 14:25:03'),
(90, 33, 'JERSON PIDO DAMPOG', '2015-12-14 14:25:06'),
(91, 33, 'JERSON PIDO DAMPOG', '2015-12-14 14:25:12'),
(92, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2015-12-14 14:25:56'),
(93, 34, 'JESS LORD ARROYO DE LA CRUZ', '2015-12-14 14:26:46'),
(94, 30, 'MARNYL DUNLAO BACOLINA', '2015-12-14 14:26:52'),
(95, 30, 'MARNYL DUNLAO BACOLINA', '2015-12-14 14:27:44'),
(96, 34, 'JESS LORD ARROYO DE LA CRUZ', '2015-12-14 14:28:01'),
(97, 55, 'Archie  Espiritu', '2023-05-28 20:17:38'),
(98, 55, 'Archie  Espiritu', '2023-05-28 20:34:02'),
(99, 55, 'Archie  Espiritu', '2023-05-30 10:46:30'),
(100, 56, 'Ace S Aldave', '2023-06-11 18:27:11'),
(101, 55, 'Archie  Espiritu', '2023-06-11 18:38:45'),
(102, 56, 'Ace S Aldave', '2023-06-11 19:06:50'),
(103, 56, 'Ace S Aldave', '2023-06-11 19:10:40'),
(104, 56, 'Ace S Aldave', '2023-06-11 19:14:00'),
(105, 56, 'Ace S Aldave', '2023-06-11 19:30:42'),
(106, 56, 'Ace S Aldave', '2023-06-11 19:32:38'),
(107, 56, 'Ace S Aldave', '2023-06-11 19:34:53'),
(108, 56, 'Ace S Aldave', '2023-06-11 19:35:56'),
(109, 56, 'Ace S Aldave', '2023-06-11 19:41:39'),
(110, 56, 'Ace S Aldave', '2023-06-11 19:43:05'),
(111, 56, 'Ace S Aldave', '2023-06-11 19:45:27'),
(112, 56, 'Ace S Aldave', '2023-06-11 20:25:39'),
(113, 56, 'Ace S Aldave', '2023-06-12 00:14:47'),
(114, 56, 'Ace S Aldave', '2023-06-12 17:24:31'),
(115, 56, 'Ace S Aldave', '2023-06-12 19:14:56'),
(116, 56, 'Ace S Aldave', '2023-06-12 19:39:13'),
(117, 56, 'Ace S Aldave', '2023-06-12 19:46:02'),
(118, 56, 'Ace S Aldave', '2023-06-12 21:40:06'),
(119, 56, 'Ace S Aldave', '2023-06-12 21:43:50'),
(120, 56, 'Ace S Aldave', '2023-06-12 21:52:59'),
(121, 56, 'Ace S Aldave', '2023-06-12 21:57:41'),
(122, 56, 'Ace S Aldave', '2023-06-12 22:12:17'),
(123, 56, 'Ace S Aldave', '2023-06-12 22:16:54'),
(124, 56, 'Ace S Aldave', '2023-06-12 22:18:12'),
(125, 56, 'Ace S Aldave', '2023-06-12 22:21:08'),
(126, 56, 'Ace S Aldave', '2023-06-12 22:23:06'),
(127, 56, 'Ace S Aldave', '2023-06-12 22:24:52'),
(128, 56, 'Ace S Aldave', '2023-06-12 22:25:26'),
(129, 56, 'Ace S Aldave', '2023-06-12 22:27:36'),
(130, 56, 'Ace S Aldave', '2023-06-12 22:28:08'),
(131, 56, 'Ace S Aldave', '2023-06-12 22:31:43'),
(132, 56, 'Ace S Aldave', '2023-06-12 22:32:13'),
(133, 56, 'Ace S Aldave', '2023-06-12 22:32:59'),
(134, 56, 'Ace S Aldave', '2023-06-12 22:35:07'),
(135, 56, 'Ace S Aldave', '2023-06-12 22:35:42'),
(136, 56, 'Ace S Aldave', '2023-06-12 22:44:56'),
(137, 56, 'Ace S Aldave', '2023-06-12 22:45:42'),
(138, 55, 'Archie  Espiritu', '2023-06-12 23:47:01'),
(139, 56, 'Ace S Aldave', '2023-06-12 23:49:55'),
(140, 56, 'Ace S Aldave', '2023-06-12 23:50:29'),
(141, 56, 'Ace S Aldave', '2023-06-12 23:51:02'),
(142, 56, 'Ace S Aldave', '2023-06-12 23:51:30'),
(143, 56, 'Ace S Aldave', '2023-06-12 23:55:41'),
(144, 56, 'Ace S Aldave', '2023-06-13 00:36:00'),
(145, 56, 'Ace S Aldave', '2023-06-13 00:56:54'),
(146, 56, 'Ace S Aldave', '2023-06-13 01:40:05'),
(147, 59, 'Pein D. Akatsuki', '2023-06-13 01:41:37'),
(148, 59, 'Pein D. Akatsuki', '2023-06-13 01:42:14'),
(149, 59, 'Pein D. Akatsuki', '2023-06-13 01:42:42'),
(150, 56, 'Ace S Aldave', '2023-06-13 01:49:10'),
(151, 56, 'Ace S Aldave', '2023-06-13 01:56:00'),
(152, 55, 'Archie  Espiritu', '2023-06-13 01:57:32'),
(153, 56, 'Ace S Aldave', '2023-06-13 13:07:20'),
(154, 56, 'Ace S Aldave', '2023-06-14 11:42:36'),
(155, 56, 'Ace S Aldave', '2023-06-14 11:44:36'),
(156, 56, 'Ace S Aldave', '2023-06-14 11:45:04'),
(157, 55, 'Archie  Espiritu', '2023-06-14 14:59:53'),
(158, 55, 'Archie  Espiritu', '2023-06-14 15:16:22'),
(159, 56, 'Ace S Aldave', '2023-06-16 19:49:52'),
(160, 56, 'Ace S Aldave', '2023-06-16 19:55:11'),
(161, 56, 'Ace S Aldave', '2023-06-16 20:22:05'),
(162, 56, 'Ace S Aldave', '2023-06-16 21:22:42'),
(163, 64, 'Hinata M. Shoyo', '2023-06-16 21:59:33'),
(164, 64, 'Hinata M. Shoyo', '2023-06-16 22:01:49'),
(165, 64, 'Hinata M. Shoyo', '2023-06-16 22:11:06'),
(166, 64, 'Hinata M. Shoyo', '2023-06-16 22:12:35'),
(167, 64, 'Hinata M. Shoyo', '2023-06-16 22:14:11'),
(168, 64, 'Hinata M. Shoyo', '2023-06-17 22:15:27'),
(169, 64, 'Hinata M. Shoyo', '2023-06-20 22:16:03'),
(170, 64, 'Hinata M. Shoyo', '2023-06-16 23:42:41'),
(171, 64, 'Hinata M. Shoyo', '2023-06-16 23:51:10'),
(172, 64, 'Hinata M. Shoyo', '2023-06-16 23:55:15'),
(173, 65, 'Test S Testers', '2023-06-17 00:04:24'),
(174, 56, 'Ace S Aldave', '2023-06-17 00:46:58'),
(175, 56, 'Ace S Aldave', '2023-06-17 00:48:20'),
(176, 56, 'Ace S. Aldave', '2023-06-17 01:19:06'),
(177, 56, 'Ace  Aldave', '2023-06-17 01:36:18'),
(178, 56, 'Aceeee  Aldave', '2023-06-17 01:37:28'),
(179, 66, 'Zayn  Malik', '2023-06-17 01:41:41'),
(180, 66, 'Zayn  Malik', '2023-06-17 01:42:38'),
(181, 66, 'Zayn  Malik', '2023-06-17 01:44:54'),
(182, 66, 'Zayn  Malik', '2023-06-17 01:45:26'),
(183, 66, 'Zayn  Malik', '2023-06-17 01:46:18'),
(184, 66, 'Zayn  Malik', '2023-06-17 01:47:01'),
(185, 66, 'Zayn  Malik', '2023-06-22 01:47:28'),
(186, 66, 'Zayn  Malik', '2023-06-17 01:48:15'),
(187, 67, 'Sanford  Bene', '2023-06-18 17:28:44'),
(188, 67, 'Sanford  Bene', '2023-06-18 17:29:04'),
(189, 67, 'Sanford  Bene', '2023-06-18 17:29:32'),
(190, 67, 'Sanford  Bene', '2023-06-18 17:29:48'),
(191, 67, 'Sanford  Bene', '2023-06-18 17:33:16'),
(192, 66, 'Zayn  Malik', '2023-06-18 17:39:11'),
(193, 67, 'Sanford  Bene', '2023-06-18 17:45:10'),
(194, 66, 'Zayn  Malik', '2023-06-18 17:45:36'),
(195, 66, 'Zayn  Malik', '2023-06-18 18:08:41'),
(196, 67, 'Sanford  Bene', '2023-06-18 18:17:14'),
(197, 67, 'Sanford  Bene', '2023-06-18 18:18:13'),
(198, 67, 'Sanford  Bene', '2023-06-18 18:19:17'),
(199, 67, 'Sanford  Bene', '2023-06-18 18:20:57'),
(200, 67, 'Sanford  Bene', '2023-06-18 18:29:09'),
(201, 67, 'Sanford  Bene', '2023-06-18 18:34:30'),
(202, 67, 'Sanford  Bene', '2023-06-18 18:45:07'),
(203, 67, 'Sanford  Bene', '2023-06-18 18:47:08'),
(204, 67, 'Sanford  Bene', '2023-06-18 18:48:13'),
(205, 67, 'Sanford  Bene', '2023-06-18 19:04:06'),
(206, 67, 'Sanford  Bene', '2023-06-18 19:04:50'),
(207, 67, 'Sanford  Bene', '2023-06-18 19:15:37'),
(208, 67, 'Sanford  Bene', '2023-06-19 01:16:05'),
(210, 67, 'Sanford  Bene', '2023-06-19 01:26:30'),
(211, 67, 'Sanford  Bene', '2023-06-19 01:30:09'),
(212, 67, 'Sanford  Bene', '2023-06-19 01:34:34'),
(213, 66, 'Zayn  Malik', '2023-06-19 02:09:58'),
(214, 68, 'Vin M. Dino', '2023-06-19 02:23:54'),
(215, 69, 'Sawamura Eijun Kun', '2023-06-19 02:36:24'),
(216, 66, 'Zayn  Malik', '2023-06-19 03:39:38'),
(217, 66, 'Zayn  Malik', '2023-06-19 03:42:39'),
(218, 66, 'Zayn  Malik', '2023-06-19 03:43:37'),
(219, 67, 'Sanford  Bene', '2023-06-19 03:45:13'),
(220, 67, 'Sanford  Bene', '2023-06-19 03:46:18'),
(221, 67, 'Sanford  Bene', '2023-06-19 03:48:31'),
(222, 67, 'Sanford  Bene', '2023-06-19 03:49:12'),
(223, 67, 'Sanford  Bene', '2023-06-19 03:49:12'),
(224, 66, 'Zayn  Malik', '2023-06-19 03:49:30'),
(225, 81, 'Try Me Lang', '2023-06-19 10:39:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
