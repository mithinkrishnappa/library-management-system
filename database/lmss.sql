-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 05:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lmss`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `confirm_password`, `admin_image`, `admin_type`, `admin_added`) VALUES
(4, 'Mithin', '', 'K', 'mithink', '1234', '1234', 'IMG-20181012-WA0006.jpg', 'Admin', '2019-09-24 22:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `allowed_book`
--

CREATE TABLE `allowed_book` (
  `allowed_book_id` int(11) NOT NULL,
  `qntty_books` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_book`
--

INSERT INTO `allowed_book` (`allowed_book_id`, `qntty_books`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `allowed_days`
--

CREATE TABLE `allowed_days` (
  `allowed_days_id` int(11) NOT NULL,
  `no_of_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_days`
--

INSERT INTO `allowed_days` (`allowed_days_id`, `no_of_days`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_title` varchar(100) NOT NULL,
  `category_id` int(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `author_2` varchar(100) NOT NULL,
  `year` int(100) NOT NULL,
  `call_no` varchar(100) NOT NULL,
  `cost` int(11) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `edition` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `book_copies` int(10) NOT NULL,
  `no_pages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_title`, `category_id`, `author`, `author_2`, `year`, `call_no`, `cost`, `book_pub`, `edition`, `isbn`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`, `book_copies`, `no_pages`) VALUES
('lkjhg', 1, 'jhg', 'df', 123, '00.646', 654334, 'pjdc ', 332, '987654321123', 'New', '3001', 'DGXI1727.JPG', '2019-09-26 16:24:00', 'Available', 1, 123);

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE `borrow_book` (
  `borrow_book_id` int(11) NOT NULL,
  `school_number` varchar(100) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `borrowed_status` varchar(100) NOT NULL,
  `book_penalty` varchar(100) NOT NULL,
  `book_barcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `classname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `classname`) VALUES
(1, 'Textbook'),
(2, 'Projects'),
(3, 'Novels'),
(4, 'Dictionary'),
(5, 'Aptitude');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `penalty_id` int(11) NOT NULL,
  `penalty_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penalty_id`, `penalty_amount`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `school_number` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `return_book_id` int(11) NOT NULL,
  `school_number` varchar(100) NOT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `school_number` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`school_number`, `firstname`, `middlename`, `lastname`, `contact`, `gender`, `address`, `type`, `level`, `user_image`, `status`, `user_added`) VALUES
('1BI17MCA41', 'Sabareesh', '', 'k', '8089531924', 'Male', '#05 RVSFH, Kottigepalya', 'Student', 'year 3', 'logo1.jpg', 'active', '2019-09-24 15:25:59');

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
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_barcode`);

--
-- Indexes for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`borrow_book_id`),
  ADD KEY `borrow_book_ibfk_1` (`book_barcode`);

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
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `school_number` (`school_number`),
  ADD KEY `report_ibfk_1` (`book_barcode`);

--
-- Indexes for table `return_book`
--
ALTER TABLE `return_book`
  ADD PRIMARY KEY (`return_book_id`),
  ADD KEY `return_book_ibfk_1` (`school_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`school_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `borrow_book_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_book`
--
ALTER TABLE `return_book`
  MODIFY `return_book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD CONSTRAINT `borrow_book_ibfk_1` FOREIGN KEY (`book_barcode`) REFERENCES `book` (`book_barcode`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`book_barcode`) REFERENCES `book` (`book_barcode`);

--
-- Constraints for table `return_book`
--
ALTER TABLE `return_book`
  ADD CONSTRAINT `return_book_ibfk_1` FOREIGN KEY (`school_number`) REFERENCES `user` (`school_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
