-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2023 at 03:06 PM
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
(1, 3);

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
(1, 6);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barcode`
--

INSERT INTO `barcode` (`barcode_id`, `pre_barcode`, `mid_barcode`, `suf_barcode`) VALUES
(1, 'VNHS', 1, 'LMS');

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
  PRIMARY KEY (`book_id`,`call_number`),
  KEY `call_number` (`call_number`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `acc_number`, `call_number`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`, `stat`) VALUES
(1, '820-BERMUDEZ-2020', '820-BERNECRUSAN', 'Trends Network', 12, 'Maria Jovita E. Zarate', 'Peter G. Romerosa', 'Maria Mercedes E. Arzadon', '', '', 9, '2018', 'Vibal Group, Inc.', '978-971-0315-72-7', 2018, 'New', 'VNHS1LMS', 'IMG_3763.JPG', '2015-12-14 01:06:46', 'Available', 'Active'),
(3, '510-ROBINS-2020', '510-ROB', 'Physical Science', 4, 'Ken Paul M. Espinosa, RN, RPT, MAN, MAEd ', '', '', '', '', 10, '2016', 'Golden Cronica Publishing, INC', '12323492-3432', 2016, 'New', 'VNHS3LMS', 'IMG_3755.JPG', '2015-12-14 01:21:47', 'Available', 'Active'),
(4, '813-LINDGREN-2021', '813-LIND', 'CESC', 2, 'Taguibao', 'De Guzman', '', '', '', 10, '2009', 'Vibal Group, Inc.', '0-689-84673-8', 2009, 'New', 'VNHS4LMS', 'IMG_3745.JPG', '2015-12-14 01:43:06', 'Available', 'Active'),
(5, '373-HOUGH-2020', '373-HOU', 'Childrens World', 5, 'Rebecca Gerlings', '', '', '', '', 10, '2007', 'Arcturus Publishing Limited', '978-1-84193-459-4', 2006, 'New', 'VNHS5LMS', 'IMG_3752.JPG', '2015-12-14 02:05:16', 'Available', 'Active'),
(6, '370-KARRAS-2020', '370-KRA', '21st Century', 2, 'Zarren Aleta Gaddi', '', '', '', '', 10, '2019', 'Golden Cronica Publishing, INC', '978-971-0193-55-4', 2019, 'New', 'VNHS6LMS', 'IMG_3760.JPG', '2015-12-14 02:05:47', 'Available', 'Active'),
(14, '900-ALDAVE-2023', '900-ALD', 'World History', 6, 'David Dale House', '', '', '', '', 7, '1995', 'Brockhampton Press', '1 86019 014 6', 1995, 'New', 'HRS12LMS', 'Untitled design.png', '2023-05-12 21:34:37', 'Available', 'Active'),
(15, '600-ALDAVE-2023', '600-ALESDAP', 'Practical Research', 9, 'Zarren Aleta Gaddi', '', '', '', '', 10, '2020', 'Golden Cronica Publishing, INCx', '978-971-0193-55-4', 2020, 'New', 'HRS13LMS', 'IMG_3746.JPG', '2023-05-14 14:56:04', 'Available', 'Active'),
(16, '510-PARKS-2023', '510-PARK', 'Adarna', 7, 'Dr. Erna A. Lahoz', '', '', '', '', 11, '2008', 'Magallanes Publishing House', '971-0407-38-5', 2008, 'New', 'HRS14LMS', '386458964_1713853182411663_3663072690952190857_n.jpg', '2023-06-13 00:42:41', 'Available', 'Active'),
(17, '030-ENCYC-2022', '030-ENCHIS', 'Itensive Eng.', 2, 'Rowena M. Matilla', '', '', '', '', 10, '2007', '', '978-233-4083-24-4', 2020, 'New', 'HRS15LMS', '384528922_1345677256051405_398134279573534056_n.jpg', '2023-06-13 00:45:37', 'Available', 'Active'),
(18, '371-WILLIAMS-2023', '371-PE', 'Healthy Youth', 11, 'Lester James Dominic B. Hipol, MPES', 'R.L Adri, MAEd', 'Ma, Delapaz B. Banebane, MPES', 'Sheryl Grace M. Peralta', '', 9, '2016', 'Golden Cronica Publishing, INC', '933-211-3322-32-1', 2016, 'New', 'HRS16LMS', 'IMG_3758.JPG', '2023-06-13 00:48:34', 'Available', 'Active'),
(19, '800-FLYN-2020', '800-FLY', 'Business Policy', 8, 'Emanuel V. Soriano', 'Lee C. Nehrt', '', '', '', 8, '2019', 'DOOF INC', '971-117-065-5', 2019, 'New', 'HRS17LMS', 'IMG_3769.JPG', '2023-06-13 00:56:04', 'Available', 'Active'),
(21, '902-ARCHIE-2023', '902-ARCH', 'Mathematics', 3, 'Max Bell', 'Jean Bell', 'John Bretzlauf', 'Amy Dillard', 'Robert Hartfield', 10, '2007', 'BREN', '0-07-694569-2', 2007, 'New', 'HRS19LMS', 'IMG_3749.JPG', '2023-06-19 03:28:16', 'Available', 'Active'),
(28, '222-AY-PARKS', '222-AY', 'Windows XP', 12, 'Andy Rathbone', '', '', '', '', 5, '2015', 'Echo PH', '0-7645-0883-8', 2015, 'New', 'HRS26LMS', 'IMG_3765.JPG', '2023-09-26 00:14:44', 'Available', 'Active'),
(30, '777-OA-ALD', '777-ALD', 'AP', 6, 'Victor F. Oribiana', '', '', '', '', 5, '2017', 'Aklat at Dunong Publishing, Inc.', '978-971-0170-95-1', 2017, 'New', 'HRS28LMS', '384528881_227387680327599_7133169094448963369_n.jpg', '2023-09-26 16:28:50', 'Available', 'Active'),
(32, '112-TES-PO', '122-TES', 'Level Of Awareness', 9, 'Gerald B. Balag, Jay Mark F. Fampulme', 'Bill Sean B. Galero', 'John Louie P. Villorente', 'Jasper Crispolon', 'John Gil B. Ellao', 5, '2019', '', '', 2019, 'New', 'HRS30LMS', 'IMG_3771.JPG', '2023-09-26 16:40:56', 'Available', 'Active'),
(33, 'AA-904-PAN', 'AA-904', 'Reluctant Welfare', 8, 'Bruce S. Jansson', '', '', '', '', 5, '2020', 'Blacklist International', '80809996077', 2023, 'New', 'HRS31LMS', 'IMG_3773.JPG', '2023-09-26 17:13:23', 'Available', 'Active'),
(34, '676-LO-POR', '676-LO', 'Gen. Math', 1, 'Rommel S. Quiming', '', '', '', '', 5, '2019', 'Vibal Group, Inc.', '978-971-07-4132-4', 2019, 'New', 'HRS32LMS', '386468709_3534243010132768_1084762060428370976_n (1).jpg', '2023-09-26 18:39:52', 'Available', 'Active'),
(35, '899-ILY-LIY', '899-ILY', 'Baybayin', 10, 'Remedios Infantado', 'Crizel Sicat', 'Maria Wevenia Ricohermoso', 'Moreal Camba', '', 5, '2015', 'Rex Book Store, Inc', '978-971-23-7034-2', 2015, 'New', 'HRS33LMS', '385434771_3495612934031025_7612473755560619687_n.jpg', '2023-09-26 18:42:12', 'Available', 'Active');

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
  `payment_status` varchar(255) DEFAULT NULL,
  `book_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`borrow_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

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
-- Table structure for table `damage_fee`
--

DROP TABLE IF EXISTS `damage_fee`;
CREATE TABLE IF NOT EXISTS `damage_fee` (
  `damage_id` int NOT NULL AUTO_INCREMENT,
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
  `ebook_id` int NOT NULL AUTO_INCREMENT,
  `ebook_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `book_pub` varchar(255) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `copyright_year` int NOT NULL,
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
  `ebook_borrow_id` int NOT NULL AUTO_INCREMENT,
  `ebook_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_issued` datetime(6) NOT NULL,
  `status` varchar(255) NOT NULL,
  `due_date` datetime(6) NOT NULL,
  PRIMARY KEY (`ebook_borrow_id`,`ebook_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ebook_expiry`
--

DROP TABLE IF EXISTS `ebook_expiry`;
CREATE TABLE IF NOT EXISTS `ebook_expiry` (
  `expire_id` int NOT NULL AUTO_INCREMENT,
  `date_to_expire` int NOT NULL,
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
(1, 'logo.png', 'Claire B. Chua', 'Librarian/Faculty', 'Bachelor of Science in Secondary Education'),
(2, 'logo.png', 'Filomena V. Fernandez C.Ed.D., M.A.Ed', 'School Principal', 'Doctor of Christian Education - Honoris Causa'),
(4, 'logo.png', 'Alejandro B. Fernandez C.Ed.D.', 'Corporate President', 'Doctor of Christian Education - Honoris Causa'),
(5, 'logo.png', 'Angelito H. Cagurangan', 'Faculty', 'MAPEH Subject Teacher'),
(6, 'logo.png', 'Ma. Corazon C. Gabrino', 'Faculty', 'Math Subject Teacher'),
(7, 'logo.png', 'Fe F. Santos', 'Faculty', 'T.L.E Subject Teacher'),
(8, 'logo.png', 'Charmaigne B. Subol', 'Faculty', 'English Subject Teacher'),
(9, 'logo.png', 'Urbel Pielago', 'Faculty', 'Science Subject Teacher');

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=219 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `admin_name` varchar(100) DEFAULT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL,
  `book_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

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
  `payment_status` varchar(255) DEFAULT NULL,
  `book_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`return_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `user_id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `gender`, `address`, `type`, `level`, `section`, `status`, `user_image`, `user_added`, `userpassword`, `userconfirmpassword`, `approval`) VALUES
(97, '111111111111', 'try1', '', 'cobinban', '09999999999', 'saitamagenos336@gmail.com', 'Male', 'bacoor', 'Student', 'Grade 8', 'Section X', 'Active', '', '2023-12-09 22:34:31', '1bbd886460827015e5d605ed44252251', '1bbd886460827015e5d605ed44252251', 'Accept');

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
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `user_id`, `user_name`, `date_log`) VALUES
(315, 97, 'try1  cobinban', '2023-12-10 17:46:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
