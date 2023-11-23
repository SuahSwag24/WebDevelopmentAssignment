-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 15, 2023 at 02:23 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodbankdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE IF NOT EXISTS `admininfo` (
  `AdminID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminEmail` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminName` varchar(255) NOT NULL,
  `AdminGender` varchar(6) NOT NULL,
  `AdminPhoneNum` varchar(12) NOT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`AdminID`, `AdminEmail`, `AdminPassword`, `AdminName`, `AdminGender`, `AdminPhoneNum`) VALUES
(1, 'suah@admin.com', 'suah', 'SuahSwag24212', 'male', '01111604717');

-- --------------------------------------------------------

--
-- Table structure for table `donationinfo`
--

CREATE TABLE IF NOT EXISTS `donationinfo` (
  `OrderID` int(10) NOT NULL AUTO_INCREMENT,
  `DonatedItem` text NOT NULL,
  `Quantity` varchar(25) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `donationinfo`
--

INSERT INTO `donationinfo` (`OrderID`, `DonatedItem`, `Quantity`, `UserID`) VALUES
(1, 'Milo 3-in-1', '1 pack', 1),
(5, 'Water', '2 kg', NULL),
(3, 'Milk + Coffee', '204 packs', NULL),
(4, 'Rice', '200 kg', NULL),
(6, 'Water', '2 kg', NULL),
(7, 'Stuff', '20 packs', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `foodbankinfo`
--

CREATE TABLE IF NOT EXISTS `foodbankinfo` (
  `FoodbankID` int(10) NOT NULL AUTO_INCREMENT,
  `FoodbankName` varchar(255) NOT NULL,
  `FoodbankLocation` varchar(255) NOT NULL,
  `Description` longtext NOT NULL,
  `ManagerName` varchar(255) NOT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  `PictureName` varchar(255) NOT NULL,
  PRIMARY KEY (`FoodbankID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `foodbankinfo`
--

INSERT INTO `foodbankinfo` (`FoodbankID`, `FoodbankName`, `FoodbankLocation`, `Description`, `ManagerName`, `ContactNumber`, `PictureName`) VALUES
(16, 'Test', 'test', 'test', 'test', '01111604717', 'uploads/21bbc18a913a240b897514f2684acd9a.png'),
(17, 'test', 'Does this even work?', '', '', '', ''),
(18, 'Namen', 'It worked!', '1321313', 'asdwa', '123', ''),
(19, 'The Greatness', 'Klang', 'Located in Taman I guess', 'Suah', '01111604717', ''),
(20, 'Namen', 'Does this even work?', '', '', '', 'ImageProcess()'),
(21, 'Namen', 'Does this even work?', '', '', '', 'uploads/d2dc6821fd020b2c9d2d589380e45c87.png'),
(22, 'Someone', '', '', '', '', 'uploads/0e5f53abc66445c40193e63e4c10ad80.png');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `UserID` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`UserID`, `Email`, `Password`, `UserName`, `Gender`, `PhoneNumber`) VALUES
(8, 'suahswag24@gmail.com', 's', 'SuahSwag24', 'male', '01111604717');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
