-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 12:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `fee_submit`
--

CREATE TABLE `fee_submit` (
  `ID` int(255) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Month_Name` varchar(250) DEFAULT NULL,
  `Annual` int(255) DEFAULT NULL,
  `Month` int(255) DEFAULT NULL,
  `Sport` int(255) DEFAULT NULL,
  `Library` int(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee_submit`
--

INSERT INTO `fee_submit` (`ID`, `Name`, `Month_Name`, `Annual`, `Month`, `Sport`, `Library`, `Status`) VALUES
(12, 'tilak', 'july', 5000, 2500, 5000, 2500, 'Unpaid'),
(15, 'ravi', 'august', 10000, 0, 5000, 3000, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `report_card`
--

CREATE TABLE `report_card` (
  `ID` int(11) NOT NULL,
  `Roll` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Class` int(11) DEFAULT NULL,
  `Physics` int(11) DEFAULT NULL,
  `Math` int(11) DEFAULT NULL,
  `Chemistry` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_card`
--

INSERT INTO `report_card` (`ID`, `Roll`, `Name`, `Class`, `Physics`, `Math`, `Chemistry`) VALUES
(1, 23, 'tilak', 12, 100, 500, 23),
(3, 3, 'ravi', 12, 70, 70, 70),
(10, 50, 'Tilak tamang', 12, 90, 90, 90),
(33, 3, 'adf', 32, 56, 76, 65),
(67, 908, 'tilak', 23, 55, 55, 55);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Father_Name` varchar(50) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Father_Phone` varchar(10) DEFAULT NULL,
  `Class` int(11) DEFAULT NULL,
  `Roll_Number` int(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`ID`, `Name`, `Father_Name`, `Phone`, `Father_Phone`, `Class`, `Roll_Number`, `Address`) VALUES
(2, 'Tilak Tamang', 'Agam Bahadur Tamang', '97497', '87000', 12, 12, 'dillibazar');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `report_card`
--
ALTER TABLE `report_card`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
