-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 12:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ravi`
--

-- --------------------------------------------------------

--
-- Table structure for table `examreg`
--

CREATE TABLE `examreg` (
  `course` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `registration_no` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examreg`
--

INSERT INTO `examreg` (`course`, `semester`, `registration_no`, `password`) VALUES
('Computer Science And Engineering', '6th', '20402060029', 'ravi12'),
('Computer Science And Engineering', '6th', '20402060026', 'raj12'),
('Computer Science And Engineering', '5th', '20402060021', 'ravi123');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `branch` varchar(80) NOT NULL,
  `semester` varchar(80) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `father_name`, `mother_name`, `dob`, `branch`, `semester`, `mobile`, `email`, `password`) VALUES
('RAVI KUMAR', 'naresh sharma', 'sarita devi', '2023-05-13', 'Computer Science And Engineering', '6th', 9304732843, 'ravikumar15101304@gmail.com', 'ravi123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examreg`
--
ALTER TABLE `examreg`
  ADD UNIQUE KEY `registration_no` (`registration_no`(50));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
