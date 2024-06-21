-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2023 at 05:13 AM
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
(1, 1);

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
(2, '800-CLAREVI-2023', '800-CLREVI', 'DAYBOOK of Critical Reading and Writing', 2, 'Fran Claggett', 'Louann Reid', 'Ruth Vinz', '', '', 1, '1978', 'Doubleday Canada Limited', '0-669-46432-5', 1978, 'Old', 'VNHS2LMS', 'IMG_0006 - Copy.JPG', '2015-12-14 01:11:06', 'Available', 'Active'),
(3, '510-ROBINS-2020', '510-ROB', 'Getting to Know-Puerto Rico', 1, 'Frances Robins', '', '', '', '', 0, 'Coward-McCann', 'TNC', '12323492-3432', 2020, 'Old', 'VNHS3LMS', '', '2015-12-14 01:21:47', 'Not Available', 'Active'),
(4, '813-LINDGREN-2021', '813-LIND', 'Lotta on Troublemaker Street', 7, 'Astrid Lindgren', '', '', '', '', 0, 'Aladdin Paperbacks', '2001', '0-689-84673-8', 1962, 'Old', 'VNHS4LMS', '', '2015-12-14 01:43:06', 'Not Available', 'Active'),
(5, '373-HOUGH-2020', '373-HOU', 'Great Days of Whailing', 1, 'Henry Beetle Hough', '', '', '', '', 1, '', '', '789452-123452', 0, 'Old', 'VNHS5LMS', '', '2015-12-14 02:05:16', 'Available', 'Active'),
(6, '370-KARRAS-2020', '370-KRA', 'Even Big Guys Cry', 1, 'Alex Karras', '', '', '', '', 0, '', '', '9879234-12442', 0, 'Old', 'VNHS6LMS', '', '2015-12-14 02:05:47', 'Not Available', 'Active'),
(7, '898-NAKPIL-2022', '898-NADO', 'Gintong Pamana Wika at Panitikan - Ikalawang Taon', 10, 'Lolita R. Nakpil', 'Leticia F. Dominguez', '', '', '', 1, '2000', 'SD Publications, INC.', '971-07-1885-1', 2000, 'Old', 'VNHS7LMS', 'IMG_0029 - Copy.JPG', '2015-12-14 02:20:36', 'Available', 'Active'),
(14, '900-ALDAVE-2023', '900-ALD', 'Araling Panlipunan', 6, 'Ace Aldave', '', '', '', '', 1, '1991', 'Blacklist International', '1999-22020', 2023, 'New', 'HRS12LMS', '', '2023-05-12 21:34:37', 'Available', 'Active'),
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

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
(51, 56, 'Request rejected to borrow book: 20', '2023-06-19 12:28:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `user_id`, `admin_name`, `detail_action`, `date_transaction`) VALUES
(11, 20, 56, 'Vin  Diesel', 'Rejected Request', '2023-06-19 12:28:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

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
(81, '515', 'Try', 'Me', 'Lang', '09876998211', 'tryme@email.com', 'Prefer Not to Say', 'Bulacan', 'Student', 'Grade 8', 'Apple', 'Active', NULL, '2023-06-19 03:25:29', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(82, '650', 'Glenda', 'P.', 'Reed', '09678905422', 'glenda@email.com', 'Female', 'Cubao', 'Student', 'Grade 10', 'Apple', 'Active', NULL, '2023-06-19 12:22:43', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `user_id`, `user_name`, `date_log`) VALUES
(6, 82, 'Glenda P. Reed', '2023-06-19 12:24:33'),
(7, 82, 'Glenda P. Reed', '2023-06-19 12:26:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
