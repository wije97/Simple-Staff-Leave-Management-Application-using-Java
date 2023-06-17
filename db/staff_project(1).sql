-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2016 at 05:59 AM
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
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) NOT NULL,
  `sname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sno`, `sname`) VALUES
(1, 0, 'Rejected'),
(2, 1, 'Accepted');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `leave_apply`
--

INSERT INTO `leave_apply` (`id`, `stid`, `ltype`, `sdate`, `edate`, `reason`, `status`, `cmd`) VALUES
(1, '3', 'Adoption', '2016-08-06', '2016-08-06', 'Fever', 1, 'asdasd'),
(2, '3', 'Adoption', '2016-08-05', '2016-08-05', 'Fever', 1, ''),
(3, '3', 'Matrnity', '2016-08-13', '2016-08-13', 'Cold', 1, ''),
(4, '3', 'Matrnity', '2016-08-28', '2016-08-28', 'Fever', 1, 'Take care'),
(5, '2', 'Adoption', '2016-08-12', '2016-08-13', 'Fever', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE IF NOT EXISTS `leave_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `lname`) VALUES
(2, 'Adoption'),
(6, 'Normal'),
(7, 'Medical Leave'),
(8, 'Adoption');

-- --------------------------------------------------------

--
-- Table structure for table `postmsg`
--

CREATE TABLE IF NOT EXISTS `postmsg` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` varchar(150) NOT NULL,
  `smsg` varchar(150) DEFAULT NULL,
  `sdate` varchar(150) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `postmsg`
--

INSERT INTO `postmsg` (`sid`, `staffid`, `smsg`, `sdate`) VALUES
(1, 'ME1001', 'Hi', '8/30/16 8:11 PM'),
(2, 'EC1002', 'Hi', '8/30/16 8:11 PM'),
(5, 'CS1002', 'Welcome', '8/30/16 8:34 PM');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`id`, `sid`, `sname`, `sage`, `sgen`, `sdept`, `sdob`, `sadd`, `scont`, `spass`) VALUES
(2, 'CS1002', 'RAJA', '25', 'Male', 'CSE', '2016-08-04', 'Salem', '986532147', '12345'),
(4, 'ME1001', 'Raja', '25', 'Male', 'Mech', '2016-08-06', 'Salem', '9632587410', '12345'),
(5, 'EC1001', 'Ramkumar', '35', 'Male', 'ECE', '2016-08-06', 'Attur', '85963214750', '12354'),
(6, 'EC1002', 'Raju', '25', 'Male', 'ECE', '2016-08-18', 'Salem', '9856321047', '321'),
(7, 'ME1002', 'Kumar', '25', 'Male', 'Mech', '2016-08-05', 'Salem', '9865471230', '123'),
(8, 'ME1003', 'Mani', '22', 'Male', 'Mech', '2016-06-02', 'Omalur', '7890234545', '4321');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
