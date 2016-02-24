-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2016 at 05:08 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `user_id` int(50) NOT NULL,
  `friend_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `user_id`, `friend_id`) VALUES
(1, 'Hello!', 1, 2),
(2, 'Hi!', 1, 3),
(3, 'Bangladesh', 2, 3),
(4, 'Nice', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `user_id` int(50) NOT NULL,
  `friend_id` int(50) NOT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`user_id`, `friend_id`) VALUES
(1, 2),
(1, 3),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE IF NOT EXISTS `relationship` (
  `user_1_id` int(50) NOT NULL,
  `user_2_id` int(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `action_user_id` int(50) NOT NULL,
  UNIQUE KEY `user_1_id` (`user_1_id`,`user_2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`user_1_id`, `user_2_id`, `status`, `action_user_id`) VALUES
(1, 2, 1, 1),
(1, 3, 0, 3),
(1, 4, 3, 4),
(1, 5, 1, 5),
(2, 6, 3, 2),
(3, 4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Shova', 'shoav01@gmail.com', 'abcd'),
(2, 'Tonmoy', 'tonmoy01@gmail.com', 'abcd'),
(3, 'Nabila', 'nabila02@yahoo.com', 'abcd'),
(4, 'Marzia', 'marzia91@yahoo.com', 'abcd');
