-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 09:21 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `session` varchar(30) NOT NULL,
  `year` int(30) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `campus` varchar(30) NOT NULL,
  `degree` varchar(30) NOT NULL,
  `roll_no` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`session`, `year`, `faculty`, `faculty_id`, `campus`, `degree`, `roll_no`) VALUES
('IUI', 18, 'M', 2, 'A', 'B', 12),
('IUI', 18, 'M', 2, 'A', 'B', 13),
('IUI', 18, 'M', 2, 'A', 'B', 14),
('IUI', 18, 'M', 2, 'A', 'B', 15),
('IUI', 18, 'M', 2, 'A', 'B', 26),
('fa', 2016, 'M', 0, 'b', 'A', 27),
('A', 18, 'A', 0, 'V', 'MS', 28),
('A', 18, 'A', 0, 'V', 'MS', 29),
('A', 2016, 'M', 0, 'b', 'MS', 30),
('A', 2016, 'M', 0, 'b', 'MS', 31),
('iui', 16, 'A', 1, 'A', 'MS', 32),
('iui', 16, 'A', 1, 'A', 'MS', 33),
('iui', 18, 'M', 4, 'D', 'MS', 34),
('sp', 2016, 'a', 4, 'A', 'B', 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `roll_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
