-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 04:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `admin_image` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL,
  `admin_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `confirm_password`, `admin_image`, `admin_type`, `admin_added`) VALUES
(1, 'Green', '', 'Tester', 'admin', 'admin', 'admin', 'Saitama_serious_profile.jpg', 'Admin', '2015-09-05 11:40:50'),
(2, 'John', 'J.', 'Doe', 'encoder', 'encoder', 'encoder', '', 'Encoder', '2015-09-29 11:40:50'),
(3, 'Anonymous', 'Anonymous', 'Anonymous', 'anonymous', 'anonymous', 'anonymous', '', 'Encoder', '2015-11-25 15:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `allowed_book`
--

CREATE TABLE `allowed_book` (
  `allowed_book_id` int(11) NOT NULL,
  `qntty_books` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `allowed_book`
--

INSERT INTO `allowed_book` (`allowed_book_id`, `qntty_books`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `allowed_days`
--

CREATE TABLE `allowed_days` (
  `allowed_days_id` int(11) NOT NULL,
  `no_of_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `allowed_days`
--

INSERT INTO `allowed_days` (`allowed_days_id`, `no_of_days`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

CREATE TABLE `barcode` (
  `barcode_id` int(11) NOT NULL,
  `pre_barcode` varchar(100) NOT NULL,
  `mid_barcode` int(100) NOT NULL,
  `suf_barcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(14, 'VNHS', 12, 'LMS'),
(15, 'VNHS', 13, 'LMS'),
(16, 'VNHS', 14, 'LMS'),
(17, 'VNHS', 15, 'LMS'),
(18, 'VNHS', 16, 'LMS'),
(19, 'HRS', 17, 'LMS'),
(20, 'HRS', 18, 'LMS');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
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
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`) VALUES
(1, 'English Expressways : Second Year', 1, 'Virginia F. Bermudez', 'Remedios F. Nery', 'Josephine M. Cruz', 'Milagrosa A. San Juan', '', 13, '2010', 'SD Publications, INC.', '978-971-0315-72-7', 2010, 'Old', 'VNHS1LMS', 'IMG_0019.JPG', '2015-12-14 01:06:46', 'Available'),
(2, 'DAYBOOK of Critical Reading and Writing', 8, 'Fran Claggett', 'Louann Reid', 'Ruth Vinz', '', '', 43, '1978', 'Doubleday Canada Limited', '0-669-46432-5', 1978, 'Old', 'VNHS2LMS', 'IMG_0006 - Copy.JPG', '2015-12-14 01:11:06', 'Available'),
(3, 'Getting to Know-Puerto Rico', 2, 'Frances Robins', '', '', '', '', 1, 'Coward-McCann', '1967', '', 0, 'Old', 'VNHS3LMS', '', '2015-12-14 01:21:47', 'Available'),
(4, 'Lotta on Troublemaker Street', 2, 'Astrid Lindgren', '', '', '', '', 0, 'Aladdin Paperbacks', '2001', '0-689-84673-8', 1962, 'Replacement', 'VNHS4LMS', '', '2015-12-14 01:43:06', 'Not Available'),
(5, 'Great Days of Whailing', 8, 'Henry Beetle Hough', '', '', '', '', 1, '', '', '', 0, 'Damaged', 'VNHS5LMS', '', '2015-12-14 02:05:16', 'Not Available'),
(6, 'Even Big Guys Cry', 2, 'Alex Karras', '', '', '', '', 1, '', '', '', 0, 'Lost', 'VNHS6LMS', '', '2015-12-14 02:05:47', 'Not Available'),
(7, 'Gintong Pamana Wika at Panitikan - Ikalawang Taon', 6, 'Lolita R. Nakpil', 'Leticia F. Dominguez', '', '', '', 11, '2000', 'SD Publications, INC.', '971-07-1885-1', 2000, 'Old', 'VNHS7LMS', 'IMG_0029 - Copy.JPG', '2015-12-14 02:20:36', 'Available'),
(8, 'MONGOO', 2, 'MjAY', '', '', '', '', 1, '', '', '092132132', 0, 'New', 'VNHS8LMS', 'Untitled design.png', '2023-04-23 00:23:10', 'Available'),
(9, 'MONGOO', 2, 'MjAY', '', '', '', '', 1, '', '', '099999', 0, 'New', 'VNHS8LMS', 'Untitled design.png', '2023-04-23 00:28:48', 'Available'),
(10, 'MONGOO', 2, 'MjAY', '', '', '', '', 1, '', '', '099999', 0, 'New', 'VNHS8LMS', 'Untitled design.png', '2023-04-23 00:29:44', 'Available'),
(11, 'MONGOO', 2, 'MjAY', '', '', '', '', 1, '', '', '099999', 0, 'New', 'VNHS9LMS', 'Untitled design.png', '2023-04-23 00:38:47', 'Available'),
(12, 'MONGOO', 2, 'MjAY', '', '', '', '', 1, '', '', '099999', 0, 'New', 'VNHS10LMS', 'Untitled design.png', '2023-04-23 00:40:19', 'Available'),
(13, 'MONGOO', 1, 'MjAY', '', '', '', '', 1, '', '', '099999', 0, 'New', 'VNHS11LMS', 'Untitled design.png', '2023-04-23 01:00:08', 'Available'),
(14, 'Biology', 4, 'Gregory', '', '', '', '', 12, '', '', '12321111-222', 0, 'New', 'VNHS12LMS', 'Untitled design.png', '2023-04-29 15:38:58', 'Available'),
(17, 'Biology3', 4, 'Gregory', '', '', '', '', 2, '', '', '12321111-222', 0, 'New', 'VNHS15LMS', '', '2023-04-29 15:51:14', 'Available'),
(20, 'Biology6', 4, 'Gregory', '', '', '', '', 6, '', '', '12321111-222', 0, 'Hardbound', 'HRS18LMS', '', '2023-05-09 18:44:37', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE `borrow_book` (
  `borrow_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `borrowed_status` varchar(100) NOT NULL,
  `book_penalty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(9, 14, 1, '2023-04-05 00:13:15', '2023-04-08 00:13:15', '0000-00-00 00:00:00', 'borrowed', ''),
(10, 2, 2, '2023-04-06 18:35:14', '2023-04-09 18:35:14', '2023-04-29 17:01:20', 'returned', '199'),
(11, 1, 2, '2023-04-06 19:09:01', '2023-04-09 19:09:01', '0000-00-00 00:00:00', 'borrowed', ''),
(12, 47, 7, '2023-04-06 19:47:22', '2023-04-09 19:47:22', '0000-00-00 00:00:00', 'borrowed', ''),
(13, 2, 1, '2023-04-29 17:00:47', '2023-05-02 17:00:47', '0000-00-00 00:00:00', 'borrowed', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `classname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `classname`) VALUES
(1, 'Textbook'),
(2, 'English'),
(3, 'Math'),
(4, 'Science'),
(5, 'Encyclopedia'),
(6, 'Filipiniana'),
(7, 'Novel'),
(8, 'General'),
(9, 'References');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `penalty_id` int(11) NOT NULL,
  `penalty_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penalty_id`, `penalty_amount`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `user_id`, `admin_name`, `detail_action`, `date_transaction`) VALUES
(1, 7, 2, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 02:50:30'),
(2, 7, 1, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 02:51:00'),
(3, 7, 4, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 02:52:01'),
(4, 3, 4, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 02:53:16'),
(5, 7, 2, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:57:34'),
(6, 7, 1, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:57:37'),
(7, 7, 4, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:57:45'),
(8, 3, 4, 'Jane M. Doe', 'Returned Book', '2015-12-14 02:57:48'),
(9, 7, 17, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 03:08:51'),
(10, 7, 4, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 03:09:01'),
(11, 7, 20, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 03:09:08'),
(12, 4, 14, 'Jane M. Doe', 'Borrowed Book', '2015-12-14 08:32:16'),
(13, 1, 14, 'Test  Tester', 'Borrowed Book', '2023-04-05 00:13:21'),
(14, 2, 2, 'Test  Tester', 'Borrowed Book', '2023-04-06 18:37:03'),
(15, 2, 1, 'Test  Tester', 'Borrowed Book', '2023-04-06 19:09:03'),
(16, 7, 47, 'Test  Tester', 'Borrowed Book', '2023-04-06 19:47:24'),
(17, 1, 2, 'Green  Testerw', 'Borrowed Book', '2023-04-29 17:00:53'),
(18, 2, 2, 'Green  Testerw', 'Returned Book', '2023-04-29 17:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `return_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `book_penalty`) VALUES
(1, 2, 7, '2015-11-14 02:50:27', '2015-11-17 02:50:27', '2015-12-14 02:57:31', '27'),
(2, 1, 7, '2015-11-14 02:50:58', '2015-11-17 02:50:58', '2015-12-14 02:57:30', '27'),
(3, 4, 7, '2015-12-14 02:51:59', '2015-12-17 02:51:59', '2015-12-13 02:57:29', 'No Penalty'),
(4, 4, 3, '2015-12-14 02:53:15', '2015-12-17 02:53:15', '2015-12-14 02:57:45', 'No Penalty'),
(5, 2, 2, '2023-04-06 18:35:14', '2023-04-09 18:35:14', '2023-04-29 17:00:54', '199');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
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
  `user_image` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_added` datetime NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `userconfirmpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `gender`, `address`, `type`, `level`, `section`, `user_image`, `status`, `user_added`, `userpassword`, `userconfirmpassword`) VALUES
(2, '117429060061', 'RONALD', 'PANIERGO', 'FLORES', '', '', 'Male', 'PALOMA, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:56', '', ''),
(3, '117427060036', 'GERALD', 'MANOSO', 'PELINGON', '', '', 'Male', 'PACOL, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:56', '', ''),
(4, '117429060130', 'RAM CHRISTIAN', 'DAYOT', 'PENUELA', '', '', 'Male', 'POBLACION, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:56', '', ''),
(5, '117429060132', 'JAN MICHAEL', 'ALABE', 'PORCEL', '', '', 'Male', 'POBLACION, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:56', '', ''),
(6, '117425060048', 'ROSIE', 'DE LA CRUZ', 'PELINGON', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:57', '', ''),
(7, '117425060051', 'ANDRIA', 'CASIANO', 'PIT', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:57', '', ''),
(8, '302694140043', 'ANGELA', 'CASTILLO', 'REJAS', '09999999999', 'ar@yahoo.com', 'Female', 'MABINI, PULUPANDAN', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:57', '1234', '1234'),
(9, '117422060063', 'ROWELA', 'UNTAL', 'ROGERO', '', '', 'Female', 'DOLDOL, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:57', '', ''),
(10, '117425060056', 'REGINE', 'DOMINGUEZ', 'SALANATIN', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 9', 'Antimony', '', 'Active', '2015-12-14 02:47:57', '', ''),
(11, '115856050005', 'JOHN MARK', 'PAMPLIEGA', 'CASTEN', '', '', 'Male', 'PALAKA SUR, PULUPANDAN', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:57', '', ''),
(12, '117425050023', 'SUNDAY', 'HECHANOVA', 'FELIPE', '', '', 'Male', 'MABINI, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:57', '', ''),
(13, '117425050025', 'JOEMAR', 'MENDOZA', 'FRANCISCO', '', '', 'Male', 'MABINI, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:57', '', ''),
(14, '117429050043', 'CHRISTOPHER', 'ARGUELLES', 'FRIAS', '', '', 'Male', 'TANDANG SORA, QUEZON CITY', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:58', '', ''),
(15, '117429050044', 'REYNAN', 'DATULAYTA', 'GABALES', '', '', 'Male', 'PALAKA, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:58', '', ''),
(16, '117422050037', 'RATCHEL', 'YANOS', 'GALVAN', '', '', 'Female', 'BAYABAS, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:58', '', ''),
(17, '302694140009', 'CRISTY GAYLE', 'CADAYDAY', 'GOSIAOCO', '', '', 'Female', 'SAGUA BANUA, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:58', '', ''),
(18, '117324050063', 'ROZEL CHILES', 'PALMA', 'JANDOG', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:58', '', ''),
(19, '117429050063', 'MARY BERYL', 'TULMO', 'LUMAPAN', '', '', 'Female', 'POBLACION, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:58', '', ''),
(20, '117429050066', 'REGINA MARIE', 'DELAPER', 'MACHAN', '', '', 'Female', 'POBLACION, VALLADOLID', 'Student', 'Grade 10', 'Amethyst', '', 'Active', '2015-12-14 02:47:58', '', ''),
(21, '117427080005', 'MARLON', 'GAJO', 'BALANGAO', '', '', 'Male', 'PACOL, VALLADOLID', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:58', '', ''),
(23, '117429080037', 'MARK ANGELO', 'BOJOS', 'CAMACHO', '', '', 'Male', 'POBLACION, VALLADOLID', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:58', '', ''),
(24, '117321080009', 'RGEE LOUIZE', 'ESTARES', 'DELIMA', '', '', 'Male', 'PALAKA SUR, PULUPANDAN', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:58', '', ''),
(25, '117321080014', 'JOEZER COLENE', 'LEGIRO', 'GALIMBA', '', '', 'Male', 'PALAKA SUR, PULUPANDAN', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:58', '', ''),
(26, '117427080001', 'JULIAH', 'ARANGOTE', 'ABEDONG', '', '', 'Female', 'PACOL, VALLADOLID', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:59', '', ''),
(27, '117321080002', 'CHRISTINE MAE', 'SALAZAR', 'ABETO', '09999999999', '', 'Female', 'PALAKA SUR, PULUPANDAN', '', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:59', '', ''),
(28, '117427080002', 'NICOLE ANN', 'PAGSUBERON', 'ABILGOS', '', '', 'Female', 'PACOL, VALLADOLID', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:59', '', ''),
(29, '117425080013', 'JANESSA', 'DOROTEO', 'ARGUELLES', '', '', 'Female', 'MABINI, VALLADOLID', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:35:59', '', ''),
(30, '117429080020', 'MARNYL', 'DUNLAO', 'BACOLINA', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 7', 'Earth', '', 'Active', '2015-12-14 08:36:00', '', ''),
(31, '117320070006', 'REXXER ANDREI', 'DE LOS SANTOS', 'BELEBER', '', '', 'Male', 'MABINI, PULUPANDAN', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:00', '', ''),
(32, '117422070016', 'JOSHUA', 'SUICO', 'CARPENTERO', '', '', 'Male', 'ALIJIS, VALLADOLID', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:00', '', ''),
(33, '117429070043', 'JERSON', 'PIDO', 'DAMPOG', '', '', 'Male', 'PALAKA, VALLADOLID', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:00', '', ''),
(34, '117425070018', 'JESS LORD', 'ARROYO', 'DE LA CRUZ', '', '', 'Male', 'MABINI, PULUPANDAN', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:00', '', ''),
(35, '117422070022', 'RALPH JERO', 'CENTINO', 'DEMERIN', '', '', 'Male', 'ALIJIS, VALLADOLID', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:00', '', ''),
(36, '117427070001', 'TRESHIA', 'SALVANTE', 'ABENIR', '', '', 'Female', 'PACOL, VALLADOLID', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:00', '', ''),
(37, '117321070003', 'MA THERESA MAE', 'CORDOVA', 'ALLES', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:01', '', ''),
(38, '117429070018', 'ELLA MARIE', 'MARTENECIO', 'ALVAREZ', '', '', 'Female', 'PALAKA, VALLADOLID', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:01', '', ''),
(39, '117422070005', 'LOVELY ANN', 'YUBARA', 'AMAR', '', '', 'Female', 'BAYABAS, VALLADOLID', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:01', '', ''),
(40, '117479070029', 'CRISTALLY', 'MALAPITAN', 'ANIAN', '', '', 'Female', 'BARANGAY 16 (POB.), BACOLOD CITY (Capital)', 'Student', 'Grade 8', 'Charity', '', 'Active', '2015-12-14 08:36:01', '', ''),
(41, '623144', 'gg', 'ss', 'd', '', '', 'male', 'test', 'student', '9', '1', '', 'active', '2023-04-01 22:48:03', '', ''),
(43, '999', 'Arlot', 'C.', 'Gaming', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '5', '4', '', 'active', '2023-04-01 22:48:03', '', ''),
(44, '999', 'Arlot', 'C.', 'Gaming', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '5', '4', '', 'active', '2023-04-01 22:48:03', '', ''),
(45, '45687', 'Balmond', 'J.', 'Neutron', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '3', '1', '', 'active', '2023-04-01 22:48:03', '', ''),
(46, '45687', 'Balmond', 'J.', 'Neutron', '', '', 'male', 'B1 L34 bitas St. Cavite', 'student', '3', '1', '', 'active', '2023-04-01 22:48:03', '', ''),
(47, '114444', 'LAGARI', 'T.', 'Tester', '09999899999', '', 'Female', 'ilang ilang street', '', 'Grade 8', '2', '', 'Active', '2023-04-06 19:46:24', '', ''),
(48, '1234', 'Angela', 'U.', 'User', '09123213132', '', 'Female', 'gregory bacoor city', '', 'Grade 7', '3', '', '1234', '0000-00-00 00:00:00', 'Active', '2023-04-16 22:52:42'),
(49, '099999', 'MIMIYU7', 'U.', 'Green', '09999999999', '', 'Male', 'gregdhgy', 'Student', 'Grade 7', '1', '', 'Active', '2023-04-16 23:02:48', '1234', '1234'),
(50, '09099', 'Angela10', 'U.', 'User', '24222222222', 'arc@yahoo.com', 'Female', 'gregory bacoor city', 'Student', 'Grade 5', 'Magenta', '171352_calculator_icon.png', 'Active', '2023-04-16 23:09:03', '1234', '1234'),
(51, '14344', 'Genos', 'U.', 'Green', '09123545343', '', 'Male', 'gregory bacoor city', 'Student', 'Grade 8', '3', '', 'Active', '2023-04-19 17:31:49', '', ''),
(52, '9879798', 'Testing lang', 'U.', 'Green', '09424245454', 'adam@phpzag.com', 'Female', 'gregoriy bacoor city', '', 'Grade 8', '56', 'american-express.png', 'Active', '2023-04-19 17:47:45', '1234', '1234'),
(53, '09099', 'MIMIYU', 'U.', 'Green', '09556565666', 'ar@gmail.com', 'Male', 'gregory bacoor city', 'Student', 'Grade 3', 'Green', '', 'Active', '2023-04-19 17:51:41', '1234', '1234'),
(55, '3000', 'Archie', '', 'Espiritu', '09999999999', 'archie@facebook.com', 'Male', 'bitas street', 'Student', 'Grade 7', 'Grade 7', '', 'Active', '2023-04-19 23:41:37', '1234', '1234'),
(56, '729', 'Genos', 'U.', 'Green', '09651651656', 'ar@gmail.com', 'Male', 'gregory bacoor city', 'Student', 'Grade 2', '3', '', 'Active', '2023-04-29 20:40:44', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `date_log` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(8, 8, 'ANGELA CASTILLO REJAS', '2023-05-09 20:53:54'),
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
(50, 25, 'JOEZER COLENE LEGIRO GALIMBA', '2023-04-29 23:29:14'),
(51, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:44:25'),
(52, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:44:27'),
(53, 23, 'MARK ANGELO BOJOS CAMACHO', '2015-12-14 10:44:32'),
(54, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2015-12-14 11:05:19'),
(55, 35, 'RALPH JERO CENTINO DEMERIN', '2023-05-09 21:09:27'),
(56, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2023-05-09 21:05:49'),
(57, 28, 'NICOLE ANN PAGSUBERON ABILGOS', '2015-12-14 11:09:11'),
(58, 32, 'JOSHUA SUICO CARPENTERO', '2015-12-14 11:09:18'),
(59, 36, 'TRESHIA SALVANTE ABENIR', '2015-12-14 11:16:09'),
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
(96, 34, 'JESS LORD ARROYO DE LA CRUZ', '2015-12-14 14:28:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `allowed_book`
--
ALTER TABLE `allowed_book`
  ADD PRIMARY KEY (`allowed_book_id`);

--
-- Indexes for table `allowed_days`
--
ALTER TABLE `allowed_days`
  ADD PRIMARY KEY (`allowed_days_id`);

--
-- Indexes for table `barcode`
--
ALTER TABLE `barcode`
  ADD PRIMARY KEY (`barcode_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`borrow_book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD KEY `classid` (`category_id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`penalty_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `return_book`
--
ALTER TABLE `return_book`
  ADD PRIMARY KEY (`return_book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `allowed_book`
--
ALTER TABLE `allowed_book`
  MODIFY `allowed_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allowed_days`
--
ALTER TABLE `allowed_days`
  MODIFY `allowed_days_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barcode`
--
ALTER TABLE `barcode`
  MODIFY `barcode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `borrow_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `penalty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `return_book`
--
ALTER TABLE `return_book`
  MODIFY `return_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
