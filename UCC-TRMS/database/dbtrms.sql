-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 12:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblarchive`
--

CREATE TABLE `tblarchive` (
  `ID` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `objectives` varchar(255) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `limitations` varchar(255) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `panels` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblarchive`
--

INSERT INTO `tblarchive` (`ID`, `title`, `objectives`, `scope`, `limitations`, `teamname`, `members`, `panels`, `category`) VALUES
(1, 'TRMS', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'APPLICATION DEVELOPMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tblarchivedstud`
--

CREATE TABLE `tblarchivedstud` (
  `ID` int(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `studentno` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `section` varchar(10) NOT NULL,
  `contact` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblarchivedstud`
--

INSERT INTO `tblarchivedstud` (`ID`, `fullname`, `studentno`, `email`, `course`, `year`, `section`, `contact`) VALUES
(3, 'JIMUEL SANCHEZ', 20192509, 'sanchez.jimuel.bscs2019@gmail.com', 'BSCS', 3, 'C', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tblenrolled`
--

CREATE TABLE `tblenrolled` (
  `ID` int(20) NOT NULL,
  `studno` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `midname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblenrolled`
--

INSERT INTO `tblenrolled` (`ID`, `studno`, `lname`, `fname`, `midname`, `contact`, `email`) VALUES
(1, '20191940', 'OBEN', 'SARAH GRACE ARLYN', '-', '09469103169', 'oben.sarah.bscs2019@gmail.com'),
(2, '20192509', 'SANCHEZ', 'JIMUEL', 'LAPIDES', '09123456789', 'sanchez.jimuel.bscs2019@gmail.com'),
(3, '20192091', 'GAPUSAN', 'JESSICA JOY', 'SUMODEBILA', '09381731409', 'jessicagapusan23@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `ID` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `studentno` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `course` varchar(20) NOT NULL,
  `year` int(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`ID`, `fullname`, `studentno`, `email`, `course`, `year`, `section`, `contact`) VALUES
(1, 'SARAH GRACE ARLYN OBEN', 20191940, 'oben.sarah.bscs2019@gmail.com', 'BSCS', 3, 'C', '09469103169'),
(2, 'JESSICA JOY S. GAPUSAN', 20192091, 'gapusan.jessica.bscs2019@gmail.com', 'BSCS', 3, 'C', '09381731409');

-- --------------------------------------------------------

--
-- Table structure for table `tblthesis`
--

CREATE TABLE `tblthesis` (
  `ID` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `objectives` varchar(255) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `limitations` varchar(255) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `panels` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblthesis`
--

INSERT INTO `tblthesis` (`ID`, `title`, `objectives`, `scope`, `limitations`, `teamname`, `members`, `panels`, `category`) VALUES
(2, 'SIS', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'LOREM IPSUM', 'MOBILE DEVELOPMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `username`) VALUES
(1, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblarchive`
--
ALTER TABLE `tblarchive`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblarchivedstud`
--
ALTER TABLE `tblarchivedstud`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenrolled`
--
ALTER TABLE `tblenrolled`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblthesis`
--
ALTER TABLE `tblthesis`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblarchive`
--
ALTER TABLE `tblarchive`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblarchivedstud`
--
ALTER TABLE `tblarchivedstud`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblenrolled`
--
ALTER TABLE `tblenrolled`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblthesis`
--
ALTER TABLE `tblthesis`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;