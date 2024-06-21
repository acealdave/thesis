-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2023 at 07:33 AM
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
(1, 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
(23, 'HRS', 21, 'LMS'),
(24, 'HRS', 22, 'LMS'),
(25, 'HRS', 23, 'LMS'),
(26, 'HRS', 24, 'LMS'),
(27, 'HRS', 25, 'LMS'),
(28, 'HRS', 26, 'LMS'),
(29, 'HRS', 27, 'LMS'),
(30, 'HRS', 28, 'LMS'),
(31, 'HRS', 29, 'LMS'),
(32, 'HRS', 30, 'LMS'),
(33, 'HRS', 31, 'LMS'),
(34, 'HRS', 32, 'LMS'),
(35, 'HRS', 33, 'LMS'),
(36, 'HRS', 34, 'LMS'),
(37, 'HRS', 35, 'LMS');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `acc_number`, `call_number`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`, `stat`) VALUES
(1, '820-BERMUDEZ-2020', '820-BERNECRUSAN', 'English Expressways : Second Year', 2, 'Virginia F. Bermudez', 'Remedios F. Nery', 'Josephine M. Cruz', 'Milagrosa A. San Juan', '', 9, '2011', 'SD Publications, INC.', '978-971-0315-72-7', 2010, 'Old', 'VNHS1LMS', 'IMG_0019.JPG', '2015-12-14 01:06:46', 'Available', 'Active'),
(3, '510-ROBINS-2020', '510-ROB', 'Getting to Know-Puerto Rico', 1, 'Frances Robins', '', '', '', '', 10, 'Coward-McCann', 'TNC', '12323492-3432', 2020, 'Old', 'VNHS3LMS', '', '2015-12-14 01:21:47', 'Available', 'Active'),
(4, '813-LINDGREN-2021', '813-LIND', 'Lotta on Troublemaker Street', 7, 'Astrid Lindgren', '', '', '', '', 10, 'Aladdin Paperbacks', '2001', '0-689-84673-8', 1962, 'Old', 'VNHS4LMS', '', '2015-12-14 01:43:06', 'Available', 'Active'),
(5, '373-HOUGH-2020', '373-HOU', 'Great Days of Whailing', 1, 'Henry Beetle Hough', '', '', '', '', 10, '', '', '789452-123452', 0, 'Old', 'VNHS5LMS', '', '2015-12-14 02:05:16', 'Available', 'Active'),
(6, '370-KARRAS-2020', '370-KRA', 'Even Big Guys Cry', 1, 'Alex Karras', '', '', '', '', 10, '', '', '9879234-12442', 0, 'Old', 'VNHS6LMS', 'Untitled design.png', '2015-12-14 02:05:47', 'Available', 'Active'),
(7, '898-NAKPIL-2022', '898-NADO', 'Gintong Pamana Wika at Panitikan - Ikalawang Taon', 10, 'Lolita R. Nakpil', 'Leticia F. Dominguez', '', '', '', 10, '2000', 'SD Publications, INC.', '971-07-1885-1', 2000, 'Old', 'VNHS7LMS', 'IMG_0029 - Copy.JPG', '2015-12-14 02:20:36', 'Available', 'Active'),
(14, '900-ALDAVE-2023', '900-ALD', 'Araling Panlipunan', 6, 'Ace Aldavee', '', '', '', '', 8, '1991', 'Blacklist International', '1999-22020', 2023, 'New', 'HRS12LMS', 'Untitled design.png', '2023-05-12 21:34:37', 'Available', 'Active'),
(15, '600-ALDAVE-2023', '600-ALESDAP', 'Introduction to Javascript', 12, 'Ace Aldave', 'Archie Espiritu', 'Tennee Dadap', '', '', 10, '2020', 'Blacklist International', '78909-998', 2023, 'New', 'HRS13LMS', '', '2023-05-14 14:56:04', 'Available', 'Active'),
(16, '510-PARKS-2023', '510-PARK', 'Pre-Calculus', 3, 'Bobby Parks', '', '', '', '', 10, '', '', '25652398-12452', 2023, 'New', 'HRS14LMS', '', '2023-06-13 00:42:41', 'Available', 'Active'),
(17, '030-ENCYC-2022', '030-ENCHIS', 'The World Encyclopedia of History', 5, 'Jimmy Baron', '', '', '', '', 10, '', '', '56423343-23442', 2020, 'New', 'HRS15LMS', '', '2023-06-13 00:45:37', 'Available', 'Active'),
(18, '371-WILLIAMS-2023', '371-PE', 'Fundamentals of Basketball', 11, 'Carter Williams', '', '', '', '', 10, '', '', '23321133-223213', 2021, 'New', 'HRS16LMS', '', '2023-06-13 00:48:34', 'Available', 'Active'),
(19, '800-FLYN-2020', '800-FLY', 'Alchemy', 4, 'Phineas Flyn', '', '', '', '', 6, '2019', 'DOOF INC', '7802482', 2019, 'New', 'HRS17LMS', 'Untitled design.png', '2023-06-13 00:56:04', 'Available', 'Active'),
(21, '902-ARCHIE-2023', '902-ARCH', 'History of Cavite', 6, 'Archie Espiritu', '', '', '', '', 10, '2020', 'BREN', '211203-223311', 2020, 'New', 'HRS19LMS', '', '2023-06-19 03:28:16', 'Available', 'Active'),
(22, '1111', '1111', 'Alamat ko', 10, 'Ako', '', '', '', '', 0, '2020', 'DOOF INC', '23231355343', 2023, 'New', 'HRS20LMS', '', '2023-06-30 17:15:11', 'Not Available', 'Delete'),
(23, '1111', '1111', 'Alamat ko', 11, 'Ako', '', '', '', '', 0, '2020', 'DOOF INC', '23231355343', 2023, 'New', 'HRS21LMS', '', '2023-06-30 17:21:22', 'Not Available', 'Delete'),
(28, '222-AY-PARKS', '222-AY', 'Black Clover', 7, 'Minami Parks', '', '', '', '', 4, '2019', 'Echo PH', '292909976586909086', 2020, 'Old', 'HRS26LMS', 'Untitled design.png', '2023-09-26 00:14:44', 'Available', 'Active'),
(30, '777-OA-ALD', '777-ALD', 'TESTING', 1, 'ACE', '', '', '', '', 5, '', '', '09878908622234210', 2020, 'New', 'HRS28LMS', 'Untitled design.png', '2023-09-26 16:28:50', 'Available', 'Active'),
(32, '112-TES-PO', '122-TES', 'ACE DOC', 1, 'Ako', '', '', '', '', 2, '2020', 'Echo PH', '098887900224567', 2019, 'New', 'HRS30LMS', '', '2023-09-26 16:40:56', 'Available', 'Active'),
(33, 'AA-904-PAN', 'AA-904', 'AAAA', 1, 'ALDAVEEEEE', '', '', '', '', 20, '2020', 'Blacklist International', '80809996077', 2023, 'New', 'HRS31LMS', 'natch.png', '2023-09-26 17:13:23', 'Available', 'Active'),
(34, '676-LO-POR', '676-LO', 'LOVER', 1, 'Taylor Swift', '', '', '', '', 5, '2020', 'Blacklist International', '098790776662234', 2023, 'New', 'HRS32LMS', 'Untitled design.png', '2023-09-26 18:39:52', 'Available', 'Active'),
(35, '899-ILY-LIY', '899-ILY', 'QWERTY', 1, 'Vivian', '', '', '', '', 5, '2019', 'DOOF INC', '56785445570098', 2023, 'New', 'HRS33LMS', 'Untitled design.png', '2023-09-26 18:42:12', 'Available', 'Active'),
(36, '777-90-33', '777-90', 'Freely', 8, 'Annabelle', '', '', '', '', 10, '2020', 'RSG', '1122456644422', 2020, 'New', 'HRS34LMS', 'Marco the Phoenix _ ãƒžãƒ«ã‚³ _ à¸¡à¸±à¸¥à¹‚à¸à¹‰ à¸Ÿà¸µà¸™à¸´à¸à¸‹à¹Œ.jpeg', '2023-10-27 22:11:29', 'Available', 'Active'),
(37, '88-CALEN-PO', '88-PO', 'CODE GEASS', 6, 'Lelouch Vi Britannia', '', '', '', '', 5, '2020', 'Calen', '2245661122998', 2023, 'New', 'HRS35LMS', '', '2023-11-12 23:33:55', 'Available', 'Active');

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
  `payment_status` varchar(255) DEFAULT NULL,
  `book_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`borrow_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrow_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `borrowed_status`, `book_penalty`, `payment_status`, `book_status`) VALUES
(22, 81, 1, '2023-06-30 17:25:21', '2023-07-01 17:25:21', '2023-07-01 16:01:17', 'returned', 'No Penalty', NULL, NULL),
(23, 66, 19, '2023-07-01 18:27:17', '2023-07-02 18:27:17', '2023-09-20 21:51:28', 'returned', '401', NULL, NULL),
(24, 67, 19, '2023-07-01 18:28:04', '2023-07-02 18:28:04', '2023-11-11 01:47:20', 'returned', '1657', 'Paid', 'Lost'),
(25, 66, 14, '2023-08-23 18:44:03', '2023-08-24 18:44:03', '2023-09-20 20:53:25', 'returned', '135', NULL, NULL),
(26, 82, 14, '2023-09-20 21:52:57', '2023-09-21 21:52:57', '2023-10-15 00:43:25', 'returned', '116', 'Paid', NULL),
(27, 66, 14, '2023-09-22 17:24:02', '2023-09-23 17:24:02', '2023-11-12 23:13:45', 'returned', '1251', 'Paid', 'Lost'),
(28, 67, 14, '2023-09-23 13:55:43', '2023-09-24 13:55:43', '2023-10-27 22:42:09', 'returned', '167', 'Paid', NULL),
(29, 86, 19, '2023-09-23 14:59:48', '2023-09-24 14:59:48', NULL, 'borrowed', NULL, NULL, NULL),
(30, 86, 18, '2023-09-23 15:00:06', '2023-09-24 15:00:06', '2023-10-18 13:06:23', 'returned', '120', 'Not Paid', NULL),
(31, 67, 33, '2023-10-15 00:08:08', '2023-10-16 00:08:08', '2023-10-15 00:08:24', 'returned', 'No Penalty', '', NULL),
(32, 67, 33, '2023-10-15 00:10:01', '2023-10-16 00:10:01', '2023-10-15 00:10:41', 'returned', 'No Penalty', '', NULL),
(33, 67, 33, '2023-10-15 00:14:14', '2023-10-16 00:14:14', '2023-10-15 00:14:32', 'returned', 'No Penalty', '', NULL),
(34, 67, 33, '2023-10-15 00:34:55', '2023-10-16 00:34:55', '2023-10-15 00:35:19', 'returned', 'No Penalty', 'Not Paid', NULL),
(35, 67, 32, '2023-10-15 00:37:13', '2023-10-16 00:37:13', '2023-10-15 00:37:18', 'returned', 'No Penalty', 'Not Paid', NULL),
(36, 82, 14, '2023-10-15 00:45:16', '2023-10-16 00:45:16', NULL, 'borrowed', NULL, NULL, NULL),
(37, 82, 19, '2023-10-15 00:52:12', '2023-10-16 00:52:12', NULL, 'borrowed', NULL, NULL, NULL),
(38, 86, 14, '2023-10-28 16:16:46', '2023-10-29 16:16:46', NULL, 'borrowed', NULL, NULL, NULL),
(39, 81, 19, '2023-10-28 21:19:48', '2023-10-29 21:19:48', NULL, 'borrowed', NULL, NULL, NULL),
(40, 67, 33, '2023-10-30 00:11:00', '2023-10-31 00:11:00', '2023-10-30 00:11:22', 'returned', '995', 'Paid', 'Lost'),
(41, 67, 32, '2023-11-12 22:25:21', '2023-11-13 22:25:21', '2023-11-12 22:29:46', 'returned', '-5', 'Paid', 'Lost'),
(42, 67, 33, '2023-11-12 22:30:47', '2023-11-13 22:30:47', '2023-11-12 22:32:21', 'returned', '-5', 'Paid', 'Lost'),
(43, 67, 33, '2023-11-12 22:37:05', '2023-11-13 22:37:05', '2023-11-12 22:37:33', 'returned', '-5', 'Paid', 'Lost'),
(44, 67, 33, '2023-11-12 22:45:08', '2023-11-13 22:45:08', '2023-11-12 22:45:26', 'returned', '-5', 'Paid', 'Lost'),
(45, 67, 33, '2023-11-12 22:50:34', '2023-11-13 22:50:34', '2023-11-12 22:54:31', 'returned', '-5', 'Paid', 'Lost'),
(46, 67, 33, '2023-11-12 22:58:54', '2023-11-13 22:58:54', '2023-11-12 22:59:05', 'returned', '-5', 'Paid', 'Good'),
(47, 67, 33, '2023-11-12 22:59:27', '2023-11-13 22:59:27', '2023-11-12 22:59:42', 'returned', '-5', 'Paid', 'Lost'),
(48, 67, 33, '2023-11-12 23:00:29', '2023-11-13 23:00:29', '2023-11-12 23:00:41', 'returned', '995', 'Paid', 'Lost'),
(49, 67, 18, '2023-11-12 23:01:26', '2023-11-13 23:01:26', '2023-11-12 23:01:43', 'returned', '995', 'Paid', 'Lost'),
(50, 67, 33, '2023-11-12 23:05:05', '2023-11-13 23:05:05', '2023-11-12 23:05:27', 'returned', '-5', 'Paid', 'Lost'),
(51, 67, 19, '2023-11-12 23:10:06', '2023-11-13 23:10:06', '2023-11-12 23:10:17', 'returned', '995', 'Paid', 'Lost'),
(52, 67, 19, '2023-11-12 23:10:58', '2023-11-13 23:10:58', '2023-11-12 23:24:45', 'returned', '1000', 'Paid', 'Lost'),
(53, 66, 28, '2023-11-15 23:34:36', '2023-11-16 23:34:36', NULL, 'borrowed', NULL, NULL, NULL),
(54, 66, 33, '2023-11-15 23:39:13', '2023-11-16 23:39:13', '2023-11-16 00:08:40', 'returned', '1000', 'No Penalty', 'Good'),
(55, 66, 19, '2023-11-15 23:43:29', '2023-11-16 23:43:29', NULL, 'borrowed', NULL, NULL, NULL),
(56, 67, 1, '2023-11-15 23:58:58', '2023-11-16 23:58:58', NULL, 'borrowed', NULL, NULL, NULL),
(57, 67, 32, '2023-11-16 00:07:46', '2023-11-17 00:07:46', NULL, 'borrowed', NULL, NULL, NULL),
(58, 66, 32, '2023-11-16 00:08:53', '2023-11-17 00:08:53', NULL, 'borrowed', NULL, NULL, NULL),
(59, 67, 33, '2023-11-28 20:20:30', '2023-11-29 20:20:30', NULL, 'borrowed', NULL, NULL, NULL),
(60, 84, 33, '2023-11-30 17:14:28', '2023-12-01 17:14:28', NULL, 'borrowed', NULL, NULL, NULL),
(61, 84, 32, '2023-12-02 23:41:32', '2023-12-03 23:41:32', NULL, 'borrowed', NULL, NULL, NULL);

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
-- Table structure for table `damage_fee`
--

DROP TABLE IF EXISTS `damage_fee`;
CREATE TABLE IF NOT EXISTS `damage_fee` (
  `damage_id` int(255) NOT NULL AUTO_INCREMENT,
  `damage_amount` decimal(65,0) NOT NULL,
  PRIMARY KEY (`damage_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_fee`
--

INSERT INTO `damage_fee` (`damage_id`, `damage_amount`) VALUES
(1, '1000');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

DROP TABLE IF EXISTS `ebook`;
CREATE TABLE IF NOT EXISTS `ebook` (
  `ebook_id` int(255) NOT NULL AUTO_INCREMENT,
  `ebook_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `book_pub` varchar(255) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `copyright_year` int(255) NOT NULL,
  `book_image` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL DEFAULT 'Active',
  `date_added` datetime(6) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ebook_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`ebook_id`, `ebook_title`, `author`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `book_image`, `remarks`, `file`, `stat`, `date_added`, `category`, `status`) VALUES
(1, 'Art In Focus', 'Gene Mittler', '2003', 'McGraw Hiil Company', 'ISBN 0-07-868545-1', 2023, 'artIn.jpg', 'Available', '../user/ebooks/Art in Focus.pdf', 'Active', '2023-11-09 20:02:50.000000', 'Textbook', 'Available'),
(2, 'Django', 'Ace Aldave', '2018', 'Blacklist International', '2323135534321', 2020, 'Django minimized logo.jpeg', 'Available', '../user/ebooks/com.google.android.apps.docs.storage.pdf', 'Active', '2023-11-09 22:06:35.000000', 'Novel', 'Available'),
(3, 'TRIAL', 'trial', '2018', 'DOOF INC', '223112355', 2023, 'artIn.jpg', 'Available', '../user/ebooks/REVIEWER - ITEC 110.pdf', 'Active', '2023-11-09 22:38:40.000000', 'Textbook', 'Available'),
(4, 'Four Step to Forgiveness', 'William Fergus Martin', '2020', 'Inner Traditions', 'ISBN 9781844096282', 2020, 'Powerful Bible Verses On Forgiveness ~ Coffee With Starla.jpeg', 'Available', '../user/ebooks/Four-Steps-to-Forgiveness-William-Fergus-Martin.pdf', 'Active', '2023-11-09 23:08:01.000000', 'Journal', 'Available'),
(5, 'Web Based Library Management System', 'Ace Aldave, Archie Espiritu, Tennee Dadap', '2023', 'Cavite State University', '55400998112', 2025, 'logo.png', 'Available', '../user/ebooks/PRE-FINAL-MANU-PART-A-REVISED-3.pdf', 'Active', '2023-11-09 23:12:21.000000', 'Hardbound Book', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_borrow`
--

DROP TABLE IF EXISTS `ebook_borrow`;
CREATE TABLE IF NOT EXISTS `ebook_borrow` (
  `ebook_borrow_id` int(255) NOT NULL AUTO_INCREMENT,
  `ebook_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `date_issued` datetime(6) NOT NULL,
  `status` varchar(255) NOT NULL,
  `due_date` datetime(6) NOT NULL,
  PRIMARY KEY (`ebook_borrow_id`,`ebook_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebook_borrow`
--

INSERT INTO `ebook_borrow` (`ebook_borrow_id`, `ebook_id`, `user_id`, `date_issued`, `status`, `due_date`) VALUES
(2, 1, 84, '2023-11-30 19:26:58.000000', 'Returned', '2023-12-03 19:26:58.000000'),
(12, 5, 84, '2023-12-02 20:49:01.000000', 'Borrowed', '2023-12-03 20:49:01.000000'),
(11, 5, 93, '2023-12-02 20:03:46.000000', 'Borrowed', '2023-12-03 20:03:46.000000'),
(10, 2, 93, '2023-12-02 20:00:44.000000', 'Borrowed', '2023-12-03 20:00:44.000000'),
(9, 1, 93, '2023-12-02 19:58:41.000000', 'Returned', '2023-12-03 19:58:41.000000'),
(8, 1, 89, '2023-12-01 20:33:52.000000', 'Returned', '2023-12-02 20:33:52.000000'),
(13, 2, 84, '2023-12-03 00:04:55.000000', 'Borrowed', '2023-12-04 00:04:55.000000'),
(14, 4, 84, '2023-12-03 00:07:16.000000', 'Returned', '2023-12-04 00:07:16.000000'),
(15, 4, 84, '2023-12-03 00:21:55.000000', 'Borrowed', '2023-12-04 00:21:55.000000'),
(16, 3, 84, '2023-12-03 00:26:56.000000', 'Borrowed', '2023-12-04 00:26:56.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_expiry`
--

DROP TABLE IF EXISTS `ebook_expiry`;
CREATE TABLE IF NOT EXISTS `ebook_expiry` (
  `expire_id` int(255) NOT NULL AUTO_INCREMENT,
  `date_to_expire` int(255) NOT NULL,
  PRIMARY KEY (`expire_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebook_expiry`
--

INSERT INTO `ebook_expiry` (`expire_id`, `date_to_expire`) VALUES
(1, 2);

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
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

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
(127, 66, 'Request void to borrow book: 14', '2023-07-02 19:34:13'),
(128, 66, 'Request void to borrow book: 15', '2023-08-23 18:55:02'),
(129, 66, 'Request void to borrow book: 18', '2023-08-23 18:57:36'),
(130, 66, 'Request void to borrow book: 7', '2023-10-01 23:19:40'),
(131, 67, 'You borrowed: Alchemy on library', '2023-10-27 22:42:09'),
(132, 86, 'You borrowed: Araling Panlipunan on library', '2023-10-28 16:17:00'),
(133, 81, 'You borrowed: Alchemy on library', '2023-10-28 21:19:50'),
(134, 67, 'You borrowed: AAAA on library', '2023-10-30 00:11:02'),
(135, 67, 'You borrowed: Alchemy on library', '2023-10-30 00:11:22'),
(136, 67, 'You borrowed: Alchemy on library', '2023-11-11 01:47:20'),
(137, 67, 'You borrowed: ACE DOC on library', '2023-11-12 22:25:22'),
(138, 67, 'You borrowed: ACE DOC on library', '2023-11-12 22:29:46'),
(139, 67, 'You borrowed: AAAA on library', '2023-11-12 22:30:48'),
(140, 67, 'You borrowed: AAAA on library', '2023-11-12 22:32:21'),
(141, 67, 'You borrowed: AAAA on library', '2023-11-12 22:37:06'),
(142, 67, 'You borrowed: AAAA on library', '2023-11-12 22:37:33'),
(143, 67, 'You borrowed: AAAA on library', '2023-11-12 22:45:09'),
(144, 67, 'You borrowed: AAAA on library', '2023-11-12 22:45:26'),
(145, 67, 'You borrowed: AAAA on library', '2023-11-12 22:50:35'),
(146, 67, 'You borrowed: AAAA on library', '2023-11-12 22:54:31'),
(147, 67, 'You borrowed: AAAA on library', '2023-11-12 22:58:55'),
(148, 67, 'You borrowed: AAAA on library', '2023-11-12 22:59:05'),
(149, 67, 'You borrowed: AAAA on library', '2023-11-12 22:59:28'),
(150, 67, 'You borrowed: AAAA on library', '2023-11-12 22:59:42'),
(151, 67, 'You borrowed: AAAA on library', '2023-11-12 23:00:31'),
(152, 67, 'You borrowed: AAAA on library', '2023-11-12 23:00:41'),
(153, 67, 'You borrowed: AAAA on library', '2023-11-12 23:05:07'),
(154, 67, 'You borrowed: AAAA on library', '2023-11-12 23:05:27'),
(155, 67, 'You borrowed: Alchemy on library', '2023-11-12 23:10:07'),
(156, 67, 'You borrowed: Alchemy on library', '2023-11-12 23:10:17'),
(157, 67, 'You borrowed: Alchemy on library', '2023-11-12 23:10:59'),
(158, 66, 'You borrowed: Araling Panlipunan on library', '2023-11-12 23:13:45'),
(159, 67, 'You borrowed: Alchemy on library', '2023-11-12 23:24:45'),
(160, 67, 'Request accepted to borrow book: AAAA', '2023-11-12 23:47:10'),
(161, 66, 'Request accepted to borrow book: AAAA', '2023-11-15 23:22:25'),
(162, 66, 'Request accepted to borrow book: Black Clover', '2023-11-15 23:33:39'),
(163, 66, 'Successfully claimed: Black Clover', '2023-11-15 23:34:36'),
(164, 66, 'Request accepted to borrow book: ACE DOC', '2023-11-15 23:37:14'),
(165, 66, 'Successfully claimed: AAAA', '2023-11-15 23:39:13'),
(166, 66, 'Request accepted to borrow book: Alchemy', '2023-11-15 23:40:33'),
(167, 66, 'Successfully claimed: Alchemy', '2023-11-15 23:43:29'),
(168, 67, 'Request accepted to borrow book: ACE DOC', '2023-11-15 23:58:16'),
(169, 67, 'Request accepted to borrow book: Even Big Guys Cry', '2023-11-16 00:05:35'),
(170, 67, 'Successfully claimed: ACE DOC', '2023-11-16 00:07:46'),
(171, 66, 'You borrowed: Black Clover on library', '2023-11-16 00:08:40'),
(172, 66, 'Successfully claimed: ACE DOC', '2023-11-16 00:08:53'),
(173, 84, 'Your account has been approved', '2023-11-16 14:45:04'),
(174, 67, 'Request accepted to borrow book: AAAA', '2023-11-28 20:20:12'),
(175, 67, 'Successfully claimed: AAAA', '2023-11-28 20:20:30'),
(176, 84, 'You borrowed: AAAA on library', '2023-11-30 17:14:29'),
(177, 84, 'Request accepted to borrow book: ACE DOC', '2023-11-30 17:49:02'),
(178, 89, 'Your account has been approved', '2023-12-01 20:32:09'),
(179, 84, 'Request rejected to borrow book: Alchemy', '2023-12-02 17:21:47'),
(180, 84, 'Request rejected to borrow book: Alchemy', '2023-12-02 17:27:54'),
(181, 84, 'Request rejected to borrow book: Alchemy', '2023-12-02 17:33:14'),
(182, 84, 'Request accepted to borrow book: Alchemy', '2023-12-02 19:51:10'),
(183, 84, 'Request accepted to borrow book: ACE DOC', '2023-12-02 23:41:14'),
(184, 84, 'Successfully claimed: ACE DOC', '2023-12-02 23:41:32');

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
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

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
  `admin_name` varchar(100) DEFAULT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL,
  `book_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `user_id`, `admin_name`, `detail_action`, `date_transaction`, `book_status`) VALUES
(43, 1, 81, 'Vin  Diesel', 'Borrowed Book', '2023-06-30 17:25:23', NULL),
(44, 1, 66, 'Vin  Diesel', 'Rejected Request', '2023-06-30 17:29:48', NULL),
(45, 1, 81, 'Vin  Diesel', 'Returned Book', '2023-07-01 16:01:17', NULL),
(46, 19, 66, 'Vin  Diesel', 'Borrowed Book', '2023-07-01 18:27:17', NULL),
(47, 19, 67, 'Vin  Diesel', 'Borrowed Book', '2023-07-01 18:28:04', NULL),
(48, 19, 86, 'Vin  Diesel', 'Returned Book', '2023-07-01 20:09:15', 'Good'),
(49, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 21:39:08', NULL),
(50, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 21:45:02', NULL),
(51, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-01 22:58:36', NULL),
(52, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 23:01:08', NULL),
(53, 14, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-01 23:03:06', NULL),
(54, 1, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-01 23:03:09', NULL),
(55, 3, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:00', NULL),
(56, 6, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:01', NULL),
(57, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:04', NULL),
(58, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:05', NULL),
(59, 1, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 00:54:06', NULL),
(60, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:21:16', NULL),
(61, 3, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:22:56', NULL),
(62, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:26:06', NULL),
(63, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:27:36', NULL),
(64, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:39:09', NULL),
(65, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:45:15', NULL),
(66, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:56:34', NULL),
(67, 16, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 02:57:26', NULL),
(68, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:02:12', NULL),
(69, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:12:29', NULL),
(70, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:12:30', NULL),
(71, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:23:31', NULL),
(72, 15, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:24:57', NULL),
(73, 15, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:26:23', NULL),
(74, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:37', NULL),
(75, 3, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:39', NULL),
(76, 18, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:41', NULL),
(77, 5, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:29:45', NULL),
(78, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:31:13', NULL),
(79, 4, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:31:15', NULL),
(80, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:22', NULL),
(81, 18, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:24', NULL),
(82, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:25', NULL),
(83, 6, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:28', NULL),
(84, 16, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:30', NULL),
(85, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 03:51:31', NULL),
(86, 6, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:32', NULL),
(87, 18, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:35', NULL),
(88, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:37', NULL),
(89, 17, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:25:39', NULL),
(90, 7, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:32:44', NULL),
(91, 1, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:48:55', NULL),
(92, 21, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:48:56', NULL),
(93, 16, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 04:48:58', NULL),
(94, 16, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:00:51', NULL),
(95, 5, 67, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:04:35', NULL),
(96, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:06:25', NULL),
(97, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:16:17', NULL),
(98, 16, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 13:46:30', NULL),
(99, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 19:34:13', NULL),
(100, 14, 66, 'Vin  Diesel', 'Borrowed Book', '2023-08-23 18:44:03', NULL),
(101, 15, 66, 'Vin  Diesel', 'Void Borrow', '2023-08-23 18:55:02', NULL),
(102, 18, 66, 'Vin  Diesel', 'Void Borrow', '2023-08-23 18:57:36', NULL),
(103, 14, 66, 'Vin  Diesel', 'Returned Book', '2023-09-20 20:53:25', NULL),
(104, 19, 66, 'Vin  Diesel', 'Returned Book', '2023-09-20 21:51:28', NULL),
(105, 14, 82, 'Vin  Diesel', 'Borrowed Book', '2023-09-20 21:52:59', NULL),
(106, 14, 66, 'Vin  Diesel', 'Borrowed Book', '2023-09-22 17:24:05', NULL),
(107, 14, 67, 'Vin  Diesel', 'Borrowed Book', '2023-09-23 13:55:47', NULL),
(108, 19, 86, 'Vin  Diesel', 'Borrowed Book', '2023-09-23 14:59:50', NULL),
(109, 18, 86, 'Vin  Diesel', 'Borrowed Book', '2023-09-23 15:00:09', NULL),
(110, 7, 66, 'Vin  Diesel', 'Void Borrow', '2023-10-01 23:19:40', NULL),
(111, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-10-15 00:08:09', NULL),
(112, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-10-15 00:08:24', NULL),
(113, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-10-15 00:10:36', NULL),
(114, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-10-15 00:10:41', NULL),
(115, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-10-15 00:14:16', NULL),
(116, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-10-15 00:14:32', NULL),
(117, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-10-15 00:34:56', NULL),
(118, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-10-15 00:35:19', NULL),
(119, 32, 67, 'Vin  Diesel', 'Borrowed Book', '2023-10-15 00:37:14', NULL),
(120, 32, 67, 'Vin  Diesel', 'Returned Book', '2023-10-15 00:37:18', 'Damaged'),
(121, 14, 82, 'Vin  Diesel', 'Returned Book', '2023-10-15 00:43:25', 'Lost'),
(122, 14, 82, 'Vin  Diesel', 'Borrowed Book', '2023-10-15 00:45:18', NULL),
(123, 19, 82, 'Vin  Diesel', 'Borrowed Book', '2023-10-15 00:52:13', NULL),
(124, 18, 86, 'Vin  Diesel', 'Borrowed Book', '2023-10-18 13:06:23', NULL),
(125, 14, 67, 'Vin  Diesel', 'Returned Book', '2023-10-27 22:42:09', 'Lost'),
(126, 14, 86, 'Vin  Diesel', 'Borrowed Book', '2023-10-28 16:17:00', 'Good'),
(127, 19, 81, 'Vin  Diesel', 'Borrowed Book', '2023-10-28 21:19:50', NULL),
(129, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-10-30 00:11:22', 'Damaged'),
(130, 19, 67, 'Vin  Diesel', 'Returned Book', '2023-11-11 01:47:20', 'Lost'),
(131, 1, 66, 'Vin  Diesel', 'Returned Book', '2023-11-12 11:04:00', 'Lost'),
(132, 32, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 22:25:22', NULL),
(133, 32, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 22:29:46', 'Lost'),
(134, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 22:30:48', NULL),
(135, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 22:32:21', 'Lost'),
(136, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 22:37:06', NULL),
(137, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 22:37:33', 'Lost'),
(138, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 22:45:09', NULL),
(139, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 22:45:26', 'Lost'),
(140, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 22:50:35', NULL),
(141, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 22:54:31', 'Lost'),
(142, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 22:58:55', NULL),
(143, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 22:59:05', 'Good'),
(144, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 22:59:28', NULL),
(145, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 22:59:42', 'Lost'),
(146, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 23:00:31', NULL),
(147, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 23:00:41', 'Lost'),
(148, 18, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 23:01:27', NULL),
(149, 18, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 23:01:43', 'Lost'),
(150, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 23:05:07', NULL),
(151, 33, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 23:05:27', 'Lost'),
(152, 19, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 23:10:07', NULL),
(153, 19, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 23:10:17', 'Lost'),
(154, 19, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-12 23:10:59', NULL),
(155, 14, 66, 'Vin  Diesel', 'Returned Book', '2023-11-12 23:13:45', 'Lost'),
(156, 19, 67, 'Vin  Diesel', 'Returned Book', '2023-11-12 23:24:45', 'Lost'),
(157, 28, 66, 'Vin  Diesel', 'Borrowed Book', '2023-11-15 23:34:36', NULL),
(158, 33, 66, 'Vin  Diesel', 'Borrowed Book', '2023-11-15 23:39:13', NULL),
(159, 19, 66, 'Vin  Diesel', 'Borrowed Book', '2023-11-15 23:43:29', NULL),
(160, 1, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-15 23:58:58', NULL),
(161, 32, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-16 00:07:46', NULL),
(162, 33, 66, 'Vin  Diesel', 'Returned Book', '2023-11-16 00:08:40', 'Good'),
(163, 32, 66, 'Vin  Diesel', 'Borrowed Book', '2023-11-16 00:08:53', NULL),
(164, 33, 67, 'Vin  Diesel', 'Borrowed Book', '2023-11-28 20:20:30', NULL),
(165, 33, 84, 'Vin  Diesel', 'Borrowed Book', '2023-11-30 17:14:29', NULL),
(166, 19, 84, 'Vin  Diesel', 'Rejected Request', '2023-12-02 17:21:47', NULL),
(167, 19, 84, 'Vin  Diesel', 'Rejected Request', '2023-12-02 17:27:54', NULL),
(168, 19, 84, 'Vin  Diesel', 'Rejected Request', '2023-12-02 17:33:14', NULL),
(169, 32, 84, 'Vin  Diesel', 'Borrowed Book', '2023-12-02 23:41:32', NULL);

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

--
-- Dumping data for table `request_borrow`
--

INSERT INTO `request_borrow` (`request_borrow_id`, `book_id`, `date_issued`, `date_request_borrow`, `due_date`) VALUES
(82, 1, NULL, '2023-10-15 02:29:07', NULL);

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
  `payment_status` varchar(255) DEFAULT NULL,
  `book_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`return_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `book_penalty`, `payment_status`, `book_status`) VALUES
(1, 81, 1, '2023-06-30 17:25:21', '2023-07-01 17:25:21', '2023-07-01 16:01:17', 'No Penalty', 'Not Paid', 'Good'),
(2, 66, 14, '2023-08-23 18:44:03', '2023-08-24 18:44:03', '2023-09-20 20:53:25', '135', 'Paid', 'Good'),
(3, 66, 19, '2023-07-01 18:27:17', '2023-07-02 18:27:17', '2023-09-20 21:51:28', '401', 'Paid', 'Good'),
(4, 67, 33, '2023-10-15 00:08:08', '2023-10-16 00:08:08', '2023-10-15 00:08:24', 'No Penalty', 'Not Paid', 'Good'),
(5, 67, 33, '2023-10-15 00:10:01', '2023-10-16 00:10:01', '2023-10-15 00:10:41', 'No Penalty', 'Not Paid', 'Good'),
(6, 67, 33, '2023-10-15 00:14:14', '2023-10-16 00:14:14', '2023-10-15 00:14:32', 'No Penalty', 'Not Paid', 'Good'),
(7, 67, 33, '2023-10-15 00:34:55', '2023-10-16 00:34:55', '2023-10-15 00:35:19', 'No Penalty', 'Not Paid', 'Good'),
(8, 67, 32, '2023-10-15 00:37:13', '2023-10-16 00:37:13', '2023-10-15 00:37:18', 'No Penalty', 'Not Paid', 'Good'),
(9, 82, 14, '2023-09-20 21:52:57', '2023-09-21 21:52:57', '2023-10-15 00:43:25', '116', 'Paid', 'Good'),
(10, 86, 18, '2023-09-23 15:00:06', '2023-09-24 15:00:06', '2023-10-18 13:06:23', '120', 'Paid', 'Good'),
(11, 67, 14, '2023-09-23 13:55:43', '2023-09-24 13:55:43', '2023-10-27 22:42:09', '167', 'Paid', 'Good'),
(12, 67, 33, '2023-10-30 00:11:00', '2023-10-31 00:11:00', '2023-10-30 00:11:22', '995', 'Paid', 'Lost'),
(13, 67, 19, '2023-07-01 18:28:04', '2023-07-02 18:28:04', '2023-11-11 01:47:20', '1657', 'Paid', 'Lost'),
(14, 67, 32, '2023-11-12 22:25:21', '2023-11-13 22:25:21', '2023-11-12 22:29:46', '-5', 'Paid', 'Lost'),
(15, 67, 33, '2023-11-12 22:30:47', '2023-11-13 22:30:47', '2023-11-12 22:32:21', '-5', 'Paid', 'Lost'),
(16, 67, 33, '2023-11-12 22:37:05', '2023-11-13 22:37:05', '2023-11-12 22:37:33', '-5', 'Paid', 'Lost'),
(17, 67, 33, '2023-11-12 22:45:08', '2023-11-13 22:45:08', '2023-11-12 22:45:26', '-5', 'Paid', 'Lost'),
(18, 67, 33, '2023-11-12 22:50:34', '2023-11-13 22:50:34', '2023-11-12 22:54:31', '-5', 'Paid', 'Lost'),
(19, 67, 33, '2023-11-12 22:58:54', '2023-11-13 22:58:54', '2023-11-12 22:59:05', '-5', 'Paid', 'Good'),
(20, 67, 33, '2023-11-12 22:59:27', '2023-11-13 22:59:27', '2023-11-12 22:59:42', '-5', 'Paid', 'Lost'),
(21, 67, 33, '2023-11-12 23:00:29', '2023-11-13 23:00:29', '2023-11-12 23:00:41', '995', 'Paid', 'Lost'),
(22, 67, 18, '2023-11-12 23:01:26', '2023-11-13 23:01:26', '2023-11-12 23:01:43', '995', 'Paid', 'Lost'),
(23, 67, 33, '2023-11-12 23:05:05', '2023-11-13 23:05:05', '2023-11-12 23:05:27', '-5', 'Paid', 'Lost'),
(24, 67, 19, '2023-11-12 23:10:06', '2023-11-13 23:10:06', '2023-11-12 23:10:17', '995', 'Paid', 'Lost'),
(25, 66, 14, '2023-09-22 17:24:02', '2023-09-23 17:24:02', '2023-11-12 23:13:45', '1251', 'Paid', 'Lost'),
(26, 67, 19, '2023-11-12 23:10:58', '2023-11-13 23:10:58', '2023-11-12 23:24:45', '1000', 'Paid', 'Lost'),
(27, 66, 33, '2023-11-15 23:39:13', '2023-11-16 23:39:13', '2023-11-16 00:08:40', '1000', 'No Penalty', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `school_number` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `user_added` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`school_number`),
  UNIQUE KEY `school_number` (`school_number`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `gender`, `address`, `email`, `level`, `section`, `user_added`) VALUES
(91, '301907654257', 'final', 'ito', 'pls', '09875665897', 'Female', 'Salawag', 'dadaptintin@gmail.com', '12', 'Section M', '2023-12-03 02:58:40.000000'),
(85, '401103876871', 'mimasaur', 'hello', 'pare', '9679080765', 'Male', 'Golden', 'jhonedward.aldave@cvsu.edu.ph', '12', 'Section M', '2023-12-03 02:58:40.000000'),
(90, '401103876875', 'delete ', 'mo', 'ako', '9679080762', 'Female', 'Salawag', 'trial@email.com', '11', 'Section K', '2023-12-03 02:58:40.000000'),
(88, '2.00111E+11', 'ace', 's', 'ace', '9679080765', 'Male', 'Bacoor', 'ace@email.com', '12', 'Section M', '2023-12-02 20:42:49.000000'),
(79, '200000000000 ', 'jack', 's', 'jack', '9659080769 ', 'Male', 'Bacoor', 'acesta@email.com', '12 ', 'Section M', '2023-12-02 00:59:24.000000');

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `gender`, `address`, `type`, `level`, `section`, `status`, `user_image`, `user_added`, `userpassword`, `userconfirmpassword`, `approval`) VALUES
(55, '3000', 'Archie', '', 'Espiritu', '09999999999', 'archie@facebook.com', 'Male', 'bitas street', 'Student', 'Grade 12', 'Grade 7', 'Active', '', '2023-04-19 23:41:37', '1234', '1234', 'Reject'),
(56, '4000', 'Aceeee', '', 'Aldave', '09679080765', 'ace@login.com', 'Male', 'Cavite', 'Student', 'Grade 12', 'ICT-3', 'Active', 'prof.jpg', '2023-05-23 02:07:03', '123456789', '123456789', 'Reject'),
(58, '5000', 'Mariella', 'S.', 'Aldave', '09679080055', 'mariel@gmail.com', 'Male', 'Cavite Carmona', 'Student', 'Grade 5', 'Kepler', 'Active', NULL, '2023-06-04 20:20:04', '12345', '12345', 'Reject'),
(59, '2500', 'Pein', 'D.', 'Akatsuki', '09987612333', 'pein@email.com', 'Male', 'Konoha', 'Student', 'Grade 12', 'Rain', 'Active', NULL, '2023-06-05 17:04:39', '12345', '12345', 'Reject'),
(66, '8000', 'Zayn', '', 'Malik', '09987342932', 'cratustiger.123@gmail.com', 'Male', 'Bradford', 'Student', 'Grade 8', 'STEM', 'Active', 'zayn.jpeg', '2023-06-17 01:40:54', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(67, '550', 'Sanford', '', 'Bene', '09679081568', 'acestaana.aldave@gmail.com', 'Male', 'Pampanga', 'Student', 'Grade 10', 'Echo', 'Active', NULL, '2023-06-18 17:28:11', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(81, '515', 'Try', 'Me', 'Lang', '09876998211', 'lovelyen26@gmail.com', 'Prefer Not to Say', 'Bulacan', 'Student', 'Grade 8', 'Apple', 'Active', '', '2023-06-19 03:25:29', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(82, '650', 'Glenda', 'P.', 'Reed', '09678905422', 'glenda@email.com', 'Female', 'Cubao', 'Student', 'Grade 10', 'Apple', 'Active', NULL, '2023-06-19 12:22:43', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(84, '200', 'Sugar', 'D.', 'Sugary', '09678908744', 'cratustiger.123@gmail.com', 'Female', 'Viva Homes', 'Student', 'Grade 10', 'ICT', 'Active', NULL, '2023-06-19 15:32:41', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(85, '853', 'Walang', '', 'Internet', '09675432211', 'wala@email.com', 'Prefer Not to Say', 'Tagaytay', 'Student', 'Grade 8', 'Rain', 'Active', NULL, '2023-06-19 15:55:36', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(86, '107879070217', 'Asher', 'De Luna', 'Dadap', '09152345597', 'acestaana.aldave@gmail.com', 'Female', 'Bacoor', 'Student', 'Grade 4', 'Orange', 'Active', '', '2023-06-20 10:37:01', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(87, '123456789123', 'Reca', '', 'Flame', '09897675432', 'recaf@email.com', 'Male', 'Cavite', 'Student', 'Grade 12', 'Apple', 'Active', NULL, '2023-06-24 23:46:55', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(89, '200111201234', 'Jhon Edward', 'Sta. Ana', 'Aldave', '09679080765', 'jhonedward.aldave@cvsu.edu.ph', 'Male', 'Cavite', 'Student', 'Grade 12', 'Section M', 'Active', NULL, '2023-12-01 20:31:36', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(90, '200111191234', 'ace', 's', 'ace', '09659080765', 'acesta@email.com', 'Male', 'Bacoor', 'Student', 'Grade 12', 'Section M', 'Active', NULL, '2023-12-01 22:50:36', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(93, '401103876871', 'mimasaur', 'hello', 'pare', '09679080765', 'jhonedward.aldave@cvsu.edu.ph', 'Male', 'Golden', 'Student', 'Grade 12', 'Section M', 'Active', NULL, '2023-12-02 19:56:17', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(94, '301907654257', 'final', 'ito', 'pls', '09875665897', 'dadaptintin@gmail.com', 'Female', 'Salawag', 'Student', 'Grade 12', 'Section M', 'Active', NULL, '2023-12-03 03:03:48', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject');

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
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

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
(136, 66, 'Zayn  Malik', '2023-07-02 19:34:23'),
(137, 66, 'Zayn  Malik', '2023-08-23 18:42:42'),
(138, 67, 'Sanford  Bene', '2023-09-21 00:24:01'),
(139, 67, 'Sanford  Bene', '2023-09-21 00:24:52'),
(140, 67, 'Sanford  Bene', '2023-09-21 00:34:41'),
(141, 66, 'Zayn  Malik', '2023-09-21 22:36:13'),
(142, 67, 'Sanford  Bene', '2023-09-21 22:56:40'),
(143, 66, 'Zayn  Malik', '2023-09-21 23:27:19'),
(144, 67, 'Sanford  Bene', '2023-09-22 19:28:36'),
(145, 67, 'Sanford  Bene', '2023-09-23 16:23:12'),
(146, 67, 'Sanford  Bene', '2023-09-24 23:26:22'),
(147, 67, 'Sanford  Bene', '2023-09-25 00:32:03'),
(148, 67, 'Sanford  Bene', '2023-09-25 19:46:16'),
(149, 67, 'Sanford  Bene', '2023-09-25 19:49:24'),
(150, 67, 'Sanford  Bene', '2023-09-25 19:52:43'),
(151, 67, 'Sanford  Bene', '2023-09-25 19:57:09'),
(152, 67, 'Sanford  Bene', '2023-09-25 22:54:27'),
(153, 67, 'Sanford  Bene', '2023-09-25 23:28:58'),
(154, 67, 'Sanford  Bene', '2023-09-25 23:31:13'),
(155, 67, 'Sanford  Bene', '2023-09-26 14:04:53'),
(156, 67, 'Sanford  Bene', '2023-09-26 14:08:30'),
(157, 67, 'Sanford  Bene', '2023-09-26 16:02:17'),
(158, 67, 'Sanford  Bene', '2023-09-26 16:12:51'),
(159, 67, 'Sanford  Bene', '2023-09-26 16:15:22'),
(160, 67, 'Sanford  Bene', '2023-09-26 16:57:43'),
(161, 67, 'Sanford  Bene', '2023-09-26 20:26:58'),
(162, 67, 'Sanford  Bene', '2023-09-27 17:32:16'),
(163, 67, 'Sanford  Bene', '2023-09-27 17:36:03'),
(164, 67, 'Sanford  Bene', '2023-10-01 23:52:41'),
(165, 67, 'Sanford  Bene', '2023-10-02 00:00:39'),
(166, 67, 'Sanford  Bene', '2023-10-02 00:19:46'),
(167, 66, 'Zayn  Malik', '2023-10-02 00:28:57'),
(168, 66, 'Zayn  Malik', '2023-10-02 01:05:33'),
(169, 66, 'Zayn  Malik', '2023-10-02 01:16:28'),
(170, 67, 'Sanford  Bene', '2023-10-02 15:08:16'),
(171, 67, 'Sanford  Bene', '2023-10-02 15:13:18'),
(172, 67, 'Sanford  Bene', '2023-10-02 15:20:43'),
(173, 67, 'Sanford  Bene', '2023-10-02 15:22:03'),
(174, 67, 'Sanford  Bene', '2023-10-07 14:59:55'),
(175, 67, 'Sanford  Bene', '2023-10-14 23:42:34'),
(176, 82, 'Glenda P. Reed', '2023-10-15 02:28:51'),
(177, 67, 'Sanford  Bene', '2023-10-15 02:56:00'),
(178, 82, 'Glenda P. Reed', '2023-10-15 18:55:44'),
(179, 67, 'Sanford  Bene', '2023-10-16 18:27:09'),
(180, 67, 'Sanford  Bene', '2023-10-16 21:17:21'),
(181, 67, 'Sanford  Bene', '2023-10-16 21:23:39'),
(182, 67, 'Sanford  Bene', '2023-10-16 23:03:08'),
(183, 67, 'Sanford  Bene', '2023-10-16 23:12:57'),
(184, 67, 'Sanford  Bene', '2023-10-16 23:26:39'),
(185, 67, 'Sanford  Bene', '2023-10-17 00:44:10'),
(186, 67, 'Sanford  Bene', '2023-10-17 00:50:43'),
(187, 67, 'Sanford  Bene', '2023-10-17 01:35:40'),
(188, 67, 'Sanford  Bene', '2023-10-17 22:03:37'),
(189, 67, 'Sanford  Bene', '2023-10-17 23:08:34'),
(190, 67, 'Sanford  Bene', '2023-10-18 01:55:57'),
(191, 67, 'Sanford  Bene', '2023-10-18 03:03:40'),
(192, 67, 'Sanford  Bene', '2023-10-18 12:59:56'),
(193, 67, 'Sanford  Bene', '2023-10-18 13:09:01'),
(194, 67, 'Sanford  Bene', '2023-10-18 15:42:20'),
(195, 67, 'Sanford  Bene', '2023-10-18 22:24:41'),
(196, 67, 'Sanford  Bene', '2023-10-18 22:58:13'),
(197, 67, 'Sanford  Bene', '2023-10-18 23:30:00'),
(198, 67, 'Sanford  Bene', '2023-10-19 00:05:45'),
(199, 67, 'Sanford  Bene', '2023-10-19 00:32:17'),
(200, 67, 'Sanford  Bene', '2023-10-19 01:42:34'),
(201, 67, 'Sanford  Bene', '2023-10-19 12:11:41'),
(202, 67, 'Sanford  Bene', '2023-10-19 12:13:37'),
(203, 67, 'Sanford  Bene', '2023-10-19 12:22:55'),
(204, 67, 'Sanford  Bene', '2023-10-19 12:23:43'),
(205, 67, 'Sanford  Bene', '2023-10-19 12:26:13'),
(206, 67, 'Sanford  Bene', '2023-10-19 12:29:00'),
(207, 67, 'Sanford  Bene', '2023-10-19 15:21:06'),
(208, 67, 'Sanford  Bene', '2023-10-19 15:23:26'),
(209, 67, 'Sanford  Bene', '2023-10-27 23:24:42'),
(210, 67, 'Sanford  Bene', '2023-10-27 23:29:28'),
(211, 67, 'Sanford  Bene', '2023-10-27 23:29:38'),
(212, 67, 'Sanford  Bene', '2023-10-28 14:16:26'),
(213, 67, 'Sanford  Bene', '2023-10-28 14:24:52'),
(214, 67, 'Sanford  Bene', '2023-10-28 14:26:42'),
(215, 67, 'Sanford  Bene', '2023-10-28 16:20:42'),
(216, 67, 'Sanford  Bene', '2023-10-30 19:05:55'),
(217, 67, 'Sanford  Bene', '2023-10-30 19:28:10'),
(218, 67, 'Sanford  Bene', '2023-10-30 19:33:07'),
(219, 67, 'Sanford  Bene', '2023-10-30 19:42:11'),
(220, 67, 'Sanford  Bene', '2023-10-30 19:45:18'),
(221, 67, 'Sanford  Bene', '2023-10-30 19:57:47'),
(222, 67, 'Sanford  Bene', '2023-10-30 20:23:35'),
(223, 67, 'Sanford  Bene', '2023-10-30 20:44:19'),
(224, 67, 'Sanford  Bene', '2023-10-30 23:44:29'),
(225, 67, 'Sanford  Bene', '2023-11-07 20:08:51'),
(226, 67, 'Sanford  Bene', '2023-11-07 21:00:38'),
(227, 67, 'Sanford  Bene', '2023-11-07 23:45:37'),
(228, 67, 'Sanford  Bene', '2023-11-07 23:58:22'),
(229, 67, 'Sanford  Bene', '2023-11-08 22:33:48'),
(230, 67, 'Sanford  Bene', '2023-11-08 23:20:53'),
(231, 67, 'Sanford  Bene', '2023-11-09 22:45:17'),
(232, 67, 'Sanford  Bene', '2023-11-11 19:16:55'),
(233, 67, 'Sanford  Bene', '2023-11-12 09:41:55'),
(234, 67, 'Sanford  Bene', '2023-11-12 11:51:40'),
(235, 67, 'Sanford  Bene', '2023-11-12 23:55:10'),
(236, 67, 'Sanford  Bene', '2023-11-13 12:03:53'),
(237, 67, 'Sanford  Bene', '2023-11-13 12:17:58'),
(238, 67, 'Sanford  Bene', '2023-11-13 15:10:06'),
(239, 66, 'Zayn  Malik', '2023-11-15 23:21:50'),
(240, 67, 'Sanford  Bene', '2023-11-15 23:56:50'),
(241, 67, 'Sanford  Bene', '2023-11-28 20:45:52'),
(242, 67, 'Sanford  Bene', '2023-11-29 16:05:00'),
(243, 67, 'Sanford  Bene', '2023-11-29 16:07:51'),
(244, 67, 'Sanford  Bene', '2023-11-29 16:10:14'),
(245, 67, 'Sanford  Bene', '2023-11-29 16:13:46'),
(246, 67, 'Sanford  Bene', '2023-11-29 20:03:12'),
(247, 67, 'Sanford  Bene', '2023-11-29 20:05:00'),
(248, 67, 'Sanford  Bene', '2023-11-29 20:14:36'),
(249, 67, 'Sanford  Bene', '2023-11-30 16:42:48'),
(250, 84, 'Sugar D. Sugary', '2023-11-30 17:15:25'),
(251, 84, 'Sugar D. Sugary', '2023-11-30 18:37:23'),
(252, 84, 'Sugar D. Sugary', '2023-11-30 18:45:22'),
(253, 84, 'Sugar D. Sugary', '2023-11-30 19:02:41'),
(254, 84, 'Sugar D. Sugary', '2023-11-30 19:09:23'),
(255, 84, 'Sugar D. Sugary', '2023-12-01 01:13:25'),
(256, 84, 'Sugar D. Sugary', '2023-12-01 15:05:02'),
(257, 84, 'Sugar D. Sugary', '2023-12-01 15:41:10'),
(258, 84, 'Sugar D. Sugary', '2023-12-01 16:16:38'),
(259, 89, 'Jhon Edward Sta. Ana Aldave', '2023-12-01 20:33:45'),
(260, 90, 'ace s ace', '2023-12-01 22:51:22'),
(261, 84, 'Sugar D. Sugary', '2023-12-01 22:51:43'),
(262, 84, 'Sugar D. Sugary', '2023-12-01 23:49:56'),
(263, 84, 'Sugar D. Sugary', '2023-12-02 16:50:31'),
(264, 84, 'Sugar D. Sugary', '2023-12-02 17:22:53'),
(265, 84, 'Sugar D. Sugary', '2023-12-02 17:28:17'),
(266, 84, 'Sugar D. Sugary', '2023-12-02 17:33:41'),
(267, 84, 'Sugar D. Sugary', '2023-12-02 17:57:24'),
(268, 84, 'Sugar D. Sugary', '2023-12-02 18:40:04'),
(269, 93, 'mimasaur hello pare', '2023-12-02 19:57:22'),
(270, 84, 'Sugar D. Sugary', '2023-12-02 20:07:48'),
(271, 84, 'Sugar D. Sugary', '2023-12-02 20:12:09'),
(272, 84, 'Sugar D. Sugary', '2023-12-02 20:26:39'),
(273, 67, 'Sanford  Bene', '2023-12-02 20:35:14'),
(274, 84, 'Sugar D. Sugary', '2023-12-02 20:38:13'),
(275, 84, 'Sugar D. Sugary', '2023-12-02 20:44:07'),
(276, 84, 'Sugar D. Sugary', '2023-12-02 20:48:15'),
(277, 84, 'Sugar D. Sugary', '2023-12-02 20:55:28'),
(278, 84, 'Sugar D. Sugary', '2023-12-02 23:01:05'),
(279, 67, 'Sanford  Bene', '2023-12-02 23:38:50'),
(280, 84, 'Sugar D. Sugary', '2023-12-02 23:41:50'),
(281, 67, 'Sanford  Bene', '2023-12-02 23:42:18'),
(282, 84, 'Sugar D. Sugary', '2023-12-02 23:46:12'),
(283, 84, 'Sugar D. Sugary', '2023-12-03 00:13:49'),
(284, 84, 'Sugar D. Sugary', '2023-12-03 00:24:53'),
(285, 84, 'Sugar D. Sugary', '2023-12-03 03:05:28'),
(286, 84, 'Sugar D. Sugary', '2023-12-03 03:22:25'),
(287, 84, 'Sugar D. Sugary', '2023-12-03 14:18:43'),
(288, 84, 'Sugar D. Sugary', '2023-12-03 14:30:13'),
(289, 93, 'mimasaur hello pare', '2023-12-03 14:30:41'),
(290, 84, 'Sugar D. Sugary', '2023-12-03 14:35:11'),
(291, 84, 'Sugar D. Sugary', '2023-12-03 14:35:56'),
(292, 84, 'Sugar D. Sugary', '2023-12-03 14:39:16'),
(293, 84, 'Sugar D. Sugary', '2023-12-03 14:41:59'),
(294, 84, 'Sugar D. Sugary', '2023-12-03 15:28:43'),
(295, 84, 'Sugar D. Sugary', '2023-12-03 15:29:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
