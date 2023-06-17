-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 22, 2016 at 06:15 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `staff_project`
--
CREATE DATABASE IF NOT EXISTS `staff_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `staff_project`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `leave_apply`
--

CREATE TABLE IF NOT EXISTS `leave_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stid` varchar(150) NOT NULL,
  `ltype` varchar(150) NOT NULL,
  `sdate` date NOT NULL,
  `edate` varchar(150) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `cmd` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `leave_apply`
--

INSERT INTO `leave_apply` (`id`, `stid`, `ltype`, `sdate`, `edate`, `reason`, `status`, `cmd`) VALUES
(1, '1', 'Adoption', '2016-08-06', '2016-08-06', 'Fever', 1, 'asdasd'),
(2, '1', 'Adoption', '2016-08-05', '2016-08-05', 'Fever', 0, NULL),
(3, '1', 'Matrnity', '2016-08-13', '2016-08-13', 'Cold', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE IF NOT EXISTS `leave_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `lname`) VALUES
(2, 'Adoption'),
(4, 'Matrnity');

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE IF NOT EXISTS `staff_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(20) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `sage` varchar(150) NOT NULL,
  `sgen` varchar(10) NOT NULL,
  `sdept` varchar(20) NOT NULL,
  `sdob` date NOT NULL,
  `sadd` varchar(150) NOT NULL,
  `scont` varchar(20) NOT NULL,
  `spass` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`id`, `sid`, `sname`, `sage`, `sgen`, `sdept`, `sdob`, `sadd`, `scont`, `spass`) VALUES
(1, 'CS1001', 'RAJA', '25', 'Male', 'CSE', '2016-08-04', 'Salem', '986532147', '123456');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
