-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2018 at 02:03 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `accepted`
--

CREATE TABLE `accepted` (
  `username` varchar(100) NOT NULL,
  `order_no` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accepted`
--

INSERT INTO `accepted` (`username`, `order_no`, `date`) VALUES
('12345', '111', '2018-11-03'),
('12345', '122', '2018-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `contact`, `email`, `position`, `password`) VALUES
('admin', 'Admin', 9521729192, 'parvatjakhar@gmail.com', 'Head Librarian.', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `username` varchar(100) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `applydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`username`, `book_id`, `applydate`) VALUES
('12345', '13', '2018-11-13'),
('12345', '17', '2018-11-13'),
('1650', '12', '2018-11-13'),
('1650', '19', '2018-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `publisher`, `category`, `price`, `count`) VALUES
('10', 'DBMS', 'Korth2', 'new hill', 'cse', 100, 95),
('11', 'Computer Networks2', 'Kurose and Ross', 'Pearson Education', 'cse', 100, 97),
('12', 'Computer Architecture', 'Morris Mano', 'Pearson Education', 'cse', 100, 18),
('13', 'Compiler Design', 'Ullman', 'Pearson Education', 'cse', 100, 13),
('14', 'Digital Electronics', 'Jennifer Rexford', 'new hill', 'ECE', 100, 19),
('15', 'Analog', 'Morris Mano', 'Pearson Education', 'ECE', 100, 29),
('16', 'Circuit', 'HP tiwari', 'Pearson Education', 'EE', 100, 27),
('17', 'Machines', 'Jennifer Rexford', 'new hill', 'EE', 1, 27),
('18', 'Basic Mechanical', 'Jennifer Rexford', 'new hill', 'Mechanical', 100, 30),
('19', 'Nano Particles', 'Rutherford', 'Pearson Education', 'Physics', 100, 29);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `username` varchar(100) NOT NULL,
  `feedback` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`username`, `feedback`) VALUES
('1650', 'Kindly Provide Some Megazines,,,');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) NOT NULL,
  `fine` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`username`, `fine`) VALUES
('12345', 20),
('1482', 0),
('1650', 0),
('1699', 0),
('1706', 0);

-- --------------------------------------------------------

--
-- Table structure for table `forget`
--

CREATE TABLE `forget` (
  `username` varchar(100) NOT NULL,
  `dpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forget`
--

INSERT INTO `forget` (`username`, `dpassword`) VALUES
('12345', '5b4f256207fbf550ca9b3f813791b073'),
('1482', '0'),
('1650', '0'),
('1699', '0'),
('1706', '0');

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--

CREATE TABLE `issued` (
  `username` varchar(100) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issued`
--

INSERT INTO `issued` (`username`, `book_id`, `issuedate`, `returndate`) VALUES
('12345', '17', '2018-11-02', '2018-11-15'),
('1650', '13', '2018-11-13', '2018-11-30'),
('1650', '16', '2018-11-13', '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `username` varchar(100) NOT NULL,
  `notification` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`username`, `notification`, `date`, `time`) VALUES
('1482', 'Your Fines Have Been Cleared By Library', '2018-11-09', '06:34:00'),
('1650', 'Book issued By Admin Collect From Library Book-Id =13 return date=2018-11-30', '2018-11-13', '06:13:00'),
('1650', 'Book issued By Admin Collect From Library Book-Id =16 return date=2018-11-30', '2018-11-13', '06:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_no`, `description`, `date`) VALUES
('111', 'book Title=dbms,Author=korth,edition=6th,Copies=5.', '2018-11-03'),
('122', 'book Title=Compilers,Author=Ullman,edition=6th,Copies=5.', '2018-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`username`, `name`, `email`, `contact`, `password`) VALUES
('12345', 'Supplier1', 'Supplier1@gmail.com', '9521729193', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `name`, `contact`, `email`, `password`) VALUES
('12345', 'Parvat Jakhar', 9521729193, '2016ucp1699@mnit.ac.in', '827ccb0eea8a706c4c34a16891f84e7b'),
('1482', 'Aditya Raj', 9521729192, 'parvatjakhar@gmail.com', 'ab541d874c7bc19ab77642849e02b89f'),
('1650', 'Bharat Pal', 1234567890, '2016ucp1650@mnit.ac.in', '973a5f0ccbc4ee3524ccf035d35b284b'),
('1699', 'Parvat', 2016, '20161699@mnit.ac.in', 'ef2a4be5473ab0b3cc286e67b1f59f44'),
('1706', 'Girish Kumar', 918112246380, '2016ucp1706@mnit.ac.in', '8bb88f80d334b1869781beb89f7b73be');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted`
--
ALTER TABLE `accepted`
  ADD KEY `username` (`username`),
  ADD KEY `order_no` (`order_no`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD KEY `username` (`username`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `username` (`username`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `forget`
--
ALTER TABLE `forget`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `issued`
--
ALTER TABLE `issued`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD KEY `username` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accepted`
--
ALTER TABLE `accepted`
  ADD CONSTRAINT `accepted_ibfk_1` FOREIGN KEY (`username`) REFERENCES `supplier` (`username`),
  ADD CONSTRAINT `accepted_ibfk_2` FOREIGN KEY (`order_no`) REFERENCES `orders` (`order_no`);

--
-- Constraints for table `applied`
--
ALTER TABLE `applied`
  ADD CONSTRAINT `applied_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applied_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `fine`
--
ALTER TABLE `fine`
  ADD CONSTRAINT `fine_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `issued`
--
ALTER TABLE `issued`
  ADD CONSTRAINT `issued_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `issued_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
