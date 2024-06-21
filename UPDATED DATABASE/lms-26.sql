-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 18, 2023 at 09:51 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

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
  `admin_id` int NOT NULL AUTO_INCREMENT,
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
  `allowed_book_id` int NOT NULL AUTO_INCREMENT,
  `qntty_books` int NOT NULL,
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
  `allowed_days_id` int NOT NULL AUTO_INCREMENT,
  `no_of_days` int NOT NULL,
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
  `duration_id` int NOT NULL AUTO_INCREMENT,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`duration_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_duration`
--

INSERT INTO `allowed_duration` (`duration_id`, `duration`) VALUES
(1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

DROP TABLE IF EXISTS `barcode`;
CREATE TABLE IF NOT EXISTS `barcode` (
  `barcode_id` int NOT NULL AUTO_INCREMENT,
  `pre_barcode` varchar(100) NOT NULL,
  `mid_barcode` int NOT NULL,
  `suf_barcode` varchar(100) NOT NULL,
  PRIMARY KEY (`barcode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

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
(35, 'HRS', 33, 'LMS');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `acc_number` varchar(255) NOT NULL,
  `call_number` varchar(255) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  `author` varchar(50) NOT NULL,
  `author_2` varchar(100) NOT NULL,
  `author_3` varchar(100) NOT NULL,
  `author_4` varchar(100) NOT NULL,
  `author_5` varchar(100) NOT NULL,
  `book_copies` int NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `copyright_year` int NOT NULL,
  `status` varchar(30) NOT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`book_id`,`call_number`),
  KEY `call_number` (`call_number`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `acc_number`, `call_number`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`, `stat`, `file`, `file_type`) VALUES
(1, '820-BERMUDEZ-2020', '820-BERNECRUSAN', 'Trends Network', 12, 'Maria Jovita E. Zarate', 'Peter G. Romerosa', 'Maria Mercedes E. Arzadon', '', '', 9, '2018', 'Vibal Group, Inc.', '978-971-0315-72-7', 2018, 'New', 'VNHS1LMS', 'IMG_3763.JPG', '2015-12-14 01:06:46', 'Available', 'Active', '', 'pdf'),
(3, '510-ROBINS-2020', '510-ROB', 'Physical Science', 4, 'Ken Paul M. Espinosa, RN, RPT, MAN, MAEd ', '', '', '', '', 10, '2016', 'Golden Cronica Publishing, INC', '12323492-3432', 2016, 'New', 'VNHS3LMS', 'IMG_3755.JPG', '2015-12-14 01:21:47', 'Available', 'Active', '', ''),
(4, '813-LINDGREN-2021', '813-LIND', 'CESC', 2, 'Taguibao', 'De Guzman', '', '', '', 10, '2009', 'Vibal Group, Inc.', '0-689-84673-8', 2009, 'New', 'VNHS4LMS', 'IMG_3745.JPG', '2015-12-14 01:43:06', 'Available', 'Active', '', ''),
(5, '373-HOUGH-2020', '373-HOU', 'Childrens World', 5, 'Rebecca Gerlings', '', '', '', '', 10, '2007', 'Arcturus Publishing Limited', '978-1-84193-459-4', 2006, 'New', 'VNHS5LMS', 'IMG_3752.JPG', '2015-12-14 02:05:16', 'Available', 'Active', '', ''),
(6, '370-KARRAS-2020', '370-KRA', '21st Century', 2, 'Zarren Aleta Gaddi', '', '', '', '', 10, '2019', 'Golden Cronica Publishing, INC', '978-971-0193-55-4', 2019, 'New', 'VNHS6LMS', 'IMG_3760.JPG', '2015-12-14 02:05:47', 'Available', 'Active', '', ''),
(14, '900-ALDAVE-2023', '900-ALD', 'World History', 6, 'David Dale House', '', '', '', '', 7, '1995', 'Brockhampton Press', '1 86019 014 6', 1995, 'New', 'HRS12LMS', 'Untitled design.png', '2023-05-12 21:34:37', 'Available', 'Active', '', ''),
(15, '600-ALDAVE-2023', '600-ALESDAP', 'Practical Research', 9, 'Zarren Aleta Gaddi', '', '', '', '', 10, '2020', 'Golden Cronica Publishing, INCx', '978-971-0193-55-4', 2020, 'New', 'HRS13LMS', 'IMG_3746.JPG', '2023-05-14 14:56:04', 'Available', 'Active', '', ''),
(16, '510-PARKS-2023', '510-PARK', 'Adarna', 7, 'Dr. Erna A. Lahoz', '', '', '', '', 10, '2008', 'Magallanes Publishing House', '971-0407-38-5', 2008, 'New', 'HRS14LMS', '386458964_1713853182411663_3663072690952190857_n.jpg', '2023-06-13 00:42:41', 'Available', 'Active', '../user/ebooks/PH USA.pdf', ''),
(17, '030-ENCYC-2022', '030-ENCHIS', 'Itensive Eng.', 2, 'Rowena M. Matilla', '', '', '', '', 10, '2007', '', '978-233-4083-24-4', 2020, 'New', 'HRS15LMS', '384528922_1345677256051405_398134279573534056_n.jpg', '2023-06-13 00:45:37', 'Available', 'Active', '../user/ebooks/MODERN ERA.pdf', ''),
(18, '371-WILLIAMS-2023', '371-PE', 'Healthy Youth', 11, 'Lester James Dominic B. Hipol, MPES', 'R.L Adri, MAEd', 'Ma, Delapaz B. Banebane, MPES', 'Sheryl Grace M. Peralta', '', 9, '2016', 'Golden Cronica Publishing, INC', '933-211-3322-32-1', 2016, 'New', 'HRS16LMS', 'IMG_3758.JPG', '2023-06-13 00:48:34', 'Available', 'Active', '', ''),
(19, '800-FLYN-2020', '800-FLY', 'Business Policy', 8, 'Emanuel V. Soriano', 'Lee C. Nehrt', '', '', '', 8, '2019', 'DOOF INC', '971-117-065-5', 2019, 'New', 'HRS17LMS', 'IMG_3769.JPG', '2023-06-13 00:56:04', 'Available', 'Active', '../user/ebooks/TRY ME.pdf', ''),
(21, '902-ARCHIE-2023', '902-ARCH', 'Mathematics', 3, 'Max Bell', 'Jean Bell', 'John Bretzlauf', 'Amy Dillard', 'Robert Hartfield', 10, '2007', 'BREN', '0-07-694569-2', 2007, 'New', 'HRS19LMS', 'IMG_3749.JPG', '2023-06-19 03:28:16', 'Available', 'Active', '../user/ebooks/TESTESTES.pdf', ''),
(28, '222-AY-PARKS', '222-AY', 'Windows XP', 12, 'Andy Rathbone', '', '', '', '', 5, '2015', 'Echo PH', '0-7645-0883-8', 2015, 'New', 'HRS26LMS', 'IMG_3765.JPG', '2023-09-26 00:14:44', 'Available', 'Active', '../user/ebooks/BARCODES.pdf', NULL),
(30, '777-OA-ALD', '777-ALD', 'AP', 6, 'Victor F. Oribiana', '', '', '', '', 5, '2017', 'Aklat at Dunong Publishing, Inc.', '978-971-0170-95-1', 2017, 'New', 'HRS28LMS', '384528881_227387680327599_7133169094448963369_n.jpg', '2023-09-26 16:28:50', 'Available', 'Active', '../user/ebooks/TRY ME ULIT.pdf', NULL),
(32, '112-TES-PO', '122-TES', 'Level Of Awareness', 9, 'Gerald B. Balag, Jay Mark F. Fampulme', 'Bill Sean B. Galero', 'John Louie P. Villorente', 'Jasper Crispolon', 'John Gil B. Ellao', 5, '2019', '', '', 2019, 'New', 'HRS30LMS', 'IMG_3771.JPG', '2023-09-26 16:40:56', 'Available', 'Active', '../user/ebooks/hey hey hey.pdf', NULL),
(33, 'AA-904-PAN', 'AA-904', 'Reluctant Welfare', 8, 'Bruce S. Jansson', '', '', '', '', 5, '2020', 'Blacklist International', '80809996077', 2023, 'New', 'HRS31LMS', 'IMG_3773.JPG', '2023-09-26 17:13:23', 'Available', 'Active', '../user/ebooks/ESSAY.pdf', NULL),
(34, '676-LO-POR', '676-LO', 'Gen. Math', 1, 'Rommel S. Quiming', '', '', '', '', 5, '2019', 'Vibal Group, Inc.', '978-971-07-4132-4', 2019, 'New', 'HRS32LMS', '386468709_3534243010132768_1084762060428370976_n (1).jpg', '2023-09-26 18:39:52', 'Available', 'Active', '../user/ebooks/HISTORY.pdf', NULL),
(35, '899-ILY-LIY', '899-ILY', 'Baybayin', 10, 'Remedios Infantado', 'Crizel Sicat', 'Maria Wevenia Ricohermoso', 'Moreal Camba', '', 5, '2015', 'Rex Book Store, Inc', '978-971-23-7034-2', 2015, 'New', 'HRS33LMS', '385434771_3495612934031025_7612473755560619687_n.jpg', '2023-09-26 18:42:12', 'Available', 'Active', '../user/ebooks/QWERTY.pdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

DROP TABLE IF EXISTS `borrow_book`;
CREATE TABLE IF NOT EXISTS `borrow_book` (
  `borrow_book_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime DEFAULT NULL,
  `borrowed_status` varchar(100) NOT NULL,
  `book_penalty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`borrow_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrow_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `borrowed_status`, `book_penalty`) VALUES
(22, 81, 1, '2023-06-30 17:25:21', '2023-07-01 17:25:21', '2023-07-01 16:01:17', 'returned', 'No Penalty'),
(23, 66, 19, '2023-07-01 18:27:17', '2023-07-02 18:27:17', '2023-09-20 21:51:28', 'returned', '401'),
(24, 67, 19, '2023-07-01 18:28:04', '2023-07-02 18:28:04', NULL, 'borrowed', NULL),
(25, 66, 14, '2023-08-23 18:44:03', '2023-08-24 18:44:03', '2023-09-20 20:53:25', 'returned', '135'),
(26, 82, 14, '2023-09-20 21:52:57', '2023-09-21 21:52:57', NULL, 'borrowed', NULL),
(27, 66, 14, '2023-09-22 17:24:02', '2023-09-23 17:24:02', NULL, 'borrowed', NULL),
(28, 67, 14, '2023-09-23 13:55:43', '2023-09-24 13:55:43', NULL, 'borrowed', NULL),
(29, 86, 19, '2023-09-23 14:59:48', '2023-09-24 14:59:48', NULL, 'borrowed', NULL),
(30, 86, 18, '2023-09-23 15:00:06', '2023-09-24 15:00:06', NULL, 'borrowed', NULL),
(31, 88, 14, '2023-10-17 23:35:46', '2023-10-18 23:35:46', '2023-10-18 00:32:51', 'returned', 'No Penalty'),
(32, 67, 1, '2023-10-17 23:37:58', '2023-10-18 23:37:58', NULL, 'borrowed', NULL),
(33, 88, 28, '2023-10-17 23:43:32', '2023-10-18 23:43:32', '2023-10-18 00:44:00', 'returned', 'No Penalty'),
(34, 88, 14, '2023-10-18 00:48:41', '2023-10-19 00:48:41', '2023-10-18 00:50:18', 'returned', 'No Penalty'),
(35, 88, 32, '2023-10-18 01:12:35', '2023-10-19 01:12:35', '2023-10-18 01:13:15', 'returned', 'No Penalty'),
(36, 88, 33, '2023-10-18 01:16:01', '2023-10-19 01:16:01', '2023-10-18 01:16:36', 'returned', 'No Penalty'),
(37, 88, 32, '2023-10-18 01:51:34', '2023-10-19 01:51:34', '2023-10-18 01:53:49', 'returned', 'No Penalty');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `classname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`),
  KEY `classid` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

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
(131, 88, 'Your account has been approved', '2023-10-16 23:57:52'),
(132, 88, 'Request accepted to borrow book: AAAA', '2023-10-16 23:59:54'),
(133, 88, 'Request accepted to borrow book: Araling Panlipuna', '2023-10-17 00:00:15'),
(134, 88, 'Request accepted to borrow book: AAAA', '2023-10-17 00:30:38'),
(135, 88, 'Request accepted to borrow book: Alchemy', '2023-10-17 00:31:14'),
(136, 88, 'Request accepted to borrow book: AAAA', '2023-10-17 00:33:15'),
(137, 88, 'Request accepted to borrow book: ACE DOC', '2023-10-17 00:35:36'),
(138, 88, 'Request accepted to borrow book: Araling Panlipuna', '2023-10-17 00:40:33'),
(139, 88, 'Request accepted to borrow book: ACE DOC', '2023-10-17 00:41:46'),
(140, 88, 'Request accepted to borrow book: Araling Panlipuna', '2023-10-17 01:42:47'),
(141, 88, 'Request accepted to borrow book: Araling Panlipuna', '2023-10-17 23:35:28'),
(142, 88, 'Request accepted to borrow book: Araling Panlipuna', '2023-10-17 23:35:47'),
(143, 67, 'Request accepted to borrow book: English Expresswa', '2023-10-17 23:37:51'),
(144, 67, 'Request accepted to borrow book: English Expresswa', '2023-10-17 23:37:59'),
(145, 88, 'Request accepted to borrow book: Black Clover', '2023-10-17 23:42:01'),
(146, 88, 'Successfully claimed: Black Clover', '2023-10-17 23:43:33'),
(147, 88, 'You borrowed:  on library', '2023-10-18 00:32:51'),
(148, 88, 'You borrowed: Black Clover on library', '2023-10-18 00:44:01'),
(149, 88, 'Request accepted to borrow book: Araling Panlipuna', '2023-10-18 00:48:32'),
(150, 88, 'Successfully claimed: Araling Panlipunan', '2023-10-18 00:48:41'),
(151, 88, 'You borrowed:  on library', '2023-10-18 00:50:19'),
(152, 88, 'Request accepted to borrow book: ACE DOC', '2023-10-18 01:12:25'),
(153, 88, 'Successfully claimed: ACE DOC', '2023-10-18 01:12:35'),
(154, 88, 'You borrowed: ACE DOC on library', '2023-10-18 01:13:16'),
(155, 88, 'Request accepted to borrow book: AAAA', '2023-10-18 01:15:52'),
(156, 88, 'Successfully claimed: AAAA', '2023-10-18 01:16:01'),
(157, 88, 'You borrowed: AAAA on library', '2023-10-18 01:16:37'),
(158, 88, 'You borrowed: ACE DOC on library', '2023-10-18 01:51:37'),
(159, 88, 'You borrowed: ACE DOC on library', '2023-10-18 01:53:49'),
(160, 88, 'Request rejected to borrow book: AAAA', '2023-10-18 02:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

DROP TABLE IF EXISTS `penalty`;
CREATE TABLE IF NOT EXISTS `penalty` (
  `penalty_id` int NOT NULL AUTO_INCREMENT,
  `penalty_amount` int NOT NULL,
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
  `pending_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `date_issued` datetime(6) NOT NULL,
  PRIMARY KEY (`pending_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
CREATE TABLE IF NOT EXISTS `recommend` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `author_2` varchar(50) NOT NULL,
  `author_3` varchar(50) NOT NULL,
  `author_4` varchar(50) NOT NULL,
  `author_5` varchar(50) NOT NULL,
  `book_pub` varchar(50) NOT NULL,
  `publisher_name` varchar(50) NOT NULL,
  `copyright_year` int NOT NULL,
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
  `report_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

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
(99, 14, 66, 'Vin  Diesel', 'Void Borrow', '2023-07-02 19:34:13'),
(100, 14, 66, 'Vin  Diesel', 'Borrowed Book', '2023-08-23 18:44:03'),
(101, 15, 66, 'Vin  Diesel', 'Void Borrow', '2023-08-23 18:55:02'),
(102, 18, 66, 'Vin  Diesel', 'Void Borrow', '2023-08-23 18:57:36'),
(103, 14, 66, 'Vin  Diesel', 'Returned Book', '2023-09-20 20:53:25'),
(104, 19, 66, 'Vin  Diesel', 'Returned Book', '2023-09-20 21:51:28'),
(105, 14, 82, 'Vin  Diesel', 'Borrowed Book', '2023-09-20 21:52:59'),
(106, 14, 66, 'Vin  Diesel', 'Borrowed Book', '2023-09-22 17:24:05'),
(107, 14, 67, 'Vin  Diesel', 'Borrowed Book', '2023-09-23 13:55:47'),
(108, 19, 86, 'Vin  Diesel', 'Borrowed Book', '2023-09-23 14:59:50'),
(109, 18, 86, 'Vin  Diesel', 'Borrowed Book', '2023-09-23 15:00:09'),
(110, 7, 66, 'Vin  Diesel', 'Void Borrow', '2023-10-01 23:19:40'),
(111, 14, 88, 'Vin  Diesel', 'Borrowed Book', '2023-10-17 23:35:47'),
(112, 1, 67, 'Vin  Diesel', 'Borrowed Book', '2023-10-17 23:37:59'),
(113, 28, 88, 'Vin  Diesel', 'Borrowed Book', '2023-10-17 23:43:33'),
(114, 14, 88, 'Vin  Diesel', 'Returned Book', '2023-10-18 00:32:51'),
(115, 28, 88, 'Vin  Diesel', 'Returned Book', '2023-10-18 00:44:00'),
(116, 14, 88, 'Vin  Diesel', 'Borrowed Book', '2023-10-18 00:48:41'),
(117, 14, 88, 'Vin  Diesel', 'Returned Book', '2023-10-18 00:50:19'),
(118, 32, 88, 'Vin  Diesel', 'Borrowed Book', '2023-10-18 01:12:35'),
(119, 32, 88, 'Vin  Diesel', 'Returned Book', '2023-10-18 01:13:15'),
(120, 33, 88, 'Vin  Diesel', 'Borrowed Book', '2023-10-18 01:16:01'),
(121, 33, 88, 'Vin  Diesel', 'Returned Book', '2023-10-18 01:16:36'),
(122, 32, 88, 'Vin  Diesel', 'Borrowed Book', '2023-10-18 01:51:37'),
(123, 32, 88, 'Vin  Diesel', 'Returned Book', '2023-10-18 01:53:49'),
(124, 33, 88, 'Vin  Diesel', 'Rejected Request', '2023-10-18 02:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `request_borrow`
--

DROP TABLE IF EXISTS `request_borrow`;
CREATE TABLE IF NOT EXISTS `request_borrow` (
  `request_borrow_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `date_issued` datetime DEFAULT NULL,
  `date_request_borrow` datetime NOT NULL,
  `due_date` datetime DEFAULT NULL,
  PRIMARY KEY (`request_borrow_id`,`book_id`),
  KEY `book_id` (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_return`
--

DROP TABLE IF EXISTS `request_return`;
CREATE TABLE IF NOT EXISTS `request_return` (
  `return_request_id` int NOT NULL,
  `book_id` int NOT NULL,
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
  `return_book_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`return_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `book_penalty`, `payment`) VALUES
(1, 81, 1, '2023-06-30 17:25:21', '2023-07-01 17:25:21', '2023-07-01 16:01:17', 'No Penalty', NULL),
(2, 66, 14, '2023-08-23 18:44:03', '2023-08-24 18:44:03', '2023-09-20 20:53:25', '135', NULL),
(3, 66, 19, '2023-07-01 18:27:17', '2023-07-02 18:27:17', '2023-09-20 21:51:28', '401', NULL),
(4, 88, 14, '2023-10-17 23:35:46', '2023-10-18 23:35:46', '2023-10-18 00:32:51', 'No Penalty', NULL),
(5, 88, 28, '2023-10-17 23:43:32', '2023-10-18 23:43:32', '2023-10-18 00:44:00', 'No Penalty', NULL),
(6, 88, 14, '2023-10-18 00:48:41', '2023-10-19 00:48:41', '2023-10-18 00:50:18', 'No Penalty', NULL),
(7, 88, 32, '2023-10-18 01:12:35', '2023-10-19 01:12:35', '2023-10-18 01:13:15', 'No Penalty', NULL),
(8, 88, 33, '2023-10-18 01:16:01', '2023-10-19 01:16:01', '2023-10-18 01:16:36', 'No Penalty', NULL),
(9, 88, 32, '2023-10-18 01:51:34', '2023-10-19 01:51:34', '2023-10-18 01:53:49', 'No Penalty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `gender`, `address`, `type`, `level`, `section`, `status`, `user_image`, `user_added`, `userpassword`, `userconfirmpassword`, `approval`) VALUES
(55, '3000', 'Archie', '', 'Espiritu', '09999999999', 'archie@facebook.com', 'Male', 'bitas street', 'Student', 'Grade 12', 'Grade 7', 'Active', '', '2023-04-19 23:41:37', '1234', '1234', 'Reject'),
(56, '4000', 'Aceeee', '', 'Aldave', '09679080765', 'ace@login.com', 'Male', 'Cavite', 'Student', 'Grade 12', 'ICT-3', 'Active', 'prof.jpg', '2023-05-23 02:07:03', '123456789', '123456789', 'Reject'),
(58, '5000', 'Mariella', 'S.', 'Aldave', '09679080055', 'mariel@gmail.com', 'Male', 'Cavite Carmona', 'Student', 'Grade 5', 'Kepler', 'Active', NULL, '2023-06-04 20:20:04', '12345', '12345', 'Reject'),
(59, '2500', 'Pein', 'D.', 'Akatsuki', '09987612333', 'pein@email.com', 'Male', 'Konoha', 'Student', 'Grade 12', 'Rain', 'Active', NULL, '2023-06-05 17:04:39', '12345', '12345', 'Reject'),
(66, '8000', 'Zayn', '', 'Malik', '09987342932', 'zayn@email.com', 'Male', 'Bradford', 'Student', 'Grade 8', 'STEM', 'Active', 'zayn.jpeg', '2023-06-17 01:40:54', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(67, '550', 'Princess ', 'Alyeina', 'Torres', '09679081568', 'princesstorres@gmail.com', 'Female', 'Pampanga', 'Student', 'Grade 10', 'B-Achievers', 'Active', '', '2023-06-18 17:28:11', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'Accept'),
(81, '515', 'Josher Andrea', '', 'Paco', '09876998211', 'josherandrea@gmail.com', 'Male', 'Bulacan', 'Student', 'Grade 10', 'B-Achievers', 'Active', '', '2023-06-19 03:25:29', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(82, '650', 'Glenda', 'P.', 'Reed', '09678905422', 'glenda@email.com', 'Female', 'Cubao', 'Student', 'Grade 10', 'B-Achievers', 'Active', '', '2023-06-19 12:22:43', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(84, '200', 'Sugar', 'D.', 'Sugary', '09678908744', 'sugar@email.com', 'Female', 'Viva Homes', 'Student', 'Grade 10', 'ICT', 'Active', NULL, '2023-06-19 15:32:41', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(85, '853', 'Walang', '', 'Internet', '09675432211', 'wala@email.com', 'Prefer Not to Say', 'Tagaytay', 'Student', 'Grade 8', 'Rain', 'Active', NULL, '2023-06-19 15:55:36', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(86, '107879070217', 'Princess Angel', 'De Luna', 'Centino', '09152345597', 'princessangel@gmail.com', 'Female', 'Bacoor', 'Student', 'Grade 10', 'B-Achievers', 'Active', '', '2023-06-20 10:37:01', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept'),
(87, '123456789123', 'Reca', '', 'Flame', '09897675432', 'recaf@email.com', 'Male', 'Cavite', 'Student', 'Grade 12', 'Apple', 'Active', NULL, '2023-06-24 23:46:55', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Reject'),
(88, '000000000000', 'TRY', '', 'TRIAL', '09999999999', 'saitamagenos336@gmail.com', 'Female', 'Bacoor', 'Student', 'Grade 12', 'rizal', 'Active', NULL, '2023-10-16 23:57:40', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `date_log` datetime NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

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
(174, 88, 'TRY  TRIAL', '2023-10-16 23:59:30'),
(175, 88, 'TRY  TRIAL', '2023-10-17 23:22:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
