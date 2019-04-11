-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 08:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cybersecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `adduser`
--

CREATE TABLE `adduser` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `business` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adduser`
--

INSERT INTO `adduser` (`id`, `fname`, `lname`, `business`, `job_title`, `area`, `email`, `password`) VALUES
(8, 'John', 'RAi', 'escape', 'manager', 'dharan', 'john@gmail.com', '123'),
(9, 'John', 'RAi', 'escape', 'manager', 'dharan', 'john@gmail.com', '123'),
(10, 'John', 'RAi', 'escape', 'manager', 'dharan', 'john@gmail.com', '123'),
(11, 'John', 'RAi', 'escape', 'manager', 'dharan', 'john@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `adminpannel`
--

CREATE TABLE `adminpannel` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adminpannel`
--

INSERT INTO `adminpannel` (`id`, `username`, `password`) VALUES
(1, 'admin@admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `subject` text NOT NULL,
  `date` date DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `email`, `phone`, `subject`, `date`, `message`) VALUES
(1, 'Anjila', 'anjila@gmail.com', '980000000', 'PHP', '2019-04-03', 'nice');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Anjila', 'anjilasubedi95@gmail.com', 'Helw', 'Good!!!!!'),
(3, 'anjila', 'admin@admin', 'PHP', 'dffdbgfbg');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `filetype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `message`, `filetype`) VALUES
(5, 'Document', 'Past Papers', 'file124715.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `business` text NOT NULL,
  `job_title` text NOT NULL,
  `area` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `confirm_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `business`, `job_title`, `area`, `email`, `password`, `confirm_password`) VALUES
(1, '', '', 'escape', '', 'ktm', 'anjilasubedi95@gmail.com', '1234', '1234'),
(2, 'Nischal', 'Tripathi', 'Hlw world', 'CEO', 'ktm', 'nischal@gmail.com', '1234', '1234'),
(3, 'Nischal', 'Tripathi', 'abc', 'CEO', 'dharan', 'nischal@gmail.com', '123', '123'),
(4, 'Nischal', 'Tripathi', 'abc', 'CEO', 'dharan', 'nischal@gmail.com', '1234', '1234'),
(5, 'Sam', 'RAi', 'abc', 'CEO', 'dharan', 'sam@gmail.com', '1234', '1234'),
(6, 'John', 'Tripathi', 'dsa', 'manager', 'Brt', 'john@gmail.com', '1234', '1234'),
(7, 'Nischal', 'karki', 'escape', 'manager', 'Brt', 'nischal@gmail.com', '1234', '123'),
(8, 'anjila', 'subedi', 'escape', 'it', 'Brt', 'anjilasubedi95@gmail.com', '1234', '123'),
(9, 'anjila', 'subedi', 'escape', 'it', 'Brt', 'anjilasubedi95@gmail.com', '1234', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adduser`
--
ALTER TABLE `adduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpannel`
--
ALTER TABLE `adminpannel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adduser`
--
ALTER TABLE `adduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `adminpannel`
--
ALTER TABLE `adminpannel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
