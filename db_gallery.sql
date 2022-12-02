-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2022 at 03:16 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work`
--

DROP TABLE IF EXISTS `tbl_work`;
CREATE TABLE IF NOT EXISTS `tbl_work` (
  `project_id` int(90) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(90) NOT NULL,
  `project_lbBG` varchar(90) NOT NULL,
  `project_biopic` varchar(90) NOT NULL,
  `project_bio` varchar(250) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_work`
--

INSERT INTO `tbl_work` (`project_id`, `project_name`, `project_lbBG`, `project_biopic`, `project_bio`) VALUES
(1, 'banner ad', '250_size.JPG', '250_size.JPG', 'This banner ad I have done for my makeup brand assignment. I also have created different banners for this assignment '),
(2, 'drum icon', 'Aman_Icon-3.SVG', 'Aman_Icon-3.SVG', 'This is for my assignment for a music mixer. In that assignment, I had to create icons for musical instruments. '),
(3, 'Quatro logo', 'logo.SVG', 'logo.SVG', 'This logo I created this for a rebranding assignment, In that assignment, I had to relaunch the Quatro fruit drink brand. And I created this logo as the new face of the brand '),
(4, 'Seven logo', 'logo_for_makeup_2.SVG', 'logo_for_makeup_2.SVG', 'This logo I created this for a makeup Brand I have created makeup brand and for that, I need to create a new stylish logo that can help my product attract maximum public attention.'),
(5, 'Makeup product', 'module-1.PNG', 'module-1.PNG', 'This is a makeup product that I created for seven makeup brands. I made this product and try to make my logo look completely visible and attractive to customers.'),
(6, 'Room', 'render0001.JPG', 'render0001.JPG', 'This is a room that I created in cinema 4d. I have made a bed, door, window, study table, and tv so it can give a more realistic feel to viewers.'),
(7, 'Snow globe', 'snow gobe0000.JPG', 'snow gobe0000.JPG', 'This is the snow globe assignment that I created\r\nfor the assignment. This whole design is done in cinema 4d.'),
(8, 'Living room', '-Renders0001.JPG', '-Renders0001.JPG', 'This is the living room which I have created in cinema 4d. All lighting and design for this assignment are done by me.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
