-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.2
-- Generation Time: Apr 23, 2018 at 07:38 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookings-master`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `CName` varchar(2500) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`CName`, `id`) VALUES
('Near Main Road', 3),
('Near Market', 4),
('Mountain Facing', 5),
('Near Public Transportation', 6);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_category_table`
--

CREATE TABLE `hotel_category_table` (
  `HCode` varchar(250) NOT NULL,
  `CCode` varchar(250) NOT NULL,
  `id` int(11) NOT NULL,
  `hotelMasterId` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_category_table`
--

INSERT INTO `hotel_category_table` (`HCode`, `CCode`, `id`, `hotelMasterId`) VALUES
('1', 'Near Mall Road', 1, 1),
('2', 'Near Main Road', 3, 2),
('2', 'Mountain Facing', 6, 2),
('1', 'Near Public Transportation', 7, 1),
('3', 'Near Market', 9, 3),
('1', 'Near Main Road', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_master`
--

CREATE TABLE `hotel_master` (
  `id` int(11) NOT NULL,
  `HName` varchar(2500) NOT NULL,
  `HContact` varchar(2500) NOT NULL,
  `HPhone` varchar(2500) NOT NULL,
  `HEmail` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_master`
--

INSERT INTO `hotel_master` (`id`, `HName`, `HContact`, `HPhone`, `HEmail`) VALUES
(1, 'Sample Hotel', 'jyotirmoy', '9871086913', 'jyotirmoy@gmail.com'),
(2, 'New Hotel', 'Jyotirmoy', '9871086913', 'jyotirmoy85@gmail.com'),
(3, 'Hotel Le Grande', 'jyotirmoy', '9871086913', 'jyotirmoy85@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room_tariff_table`
--

CREATE TABLE `hotel_room_tariff_table` (
  `HCode` varchar(250) NOT NULL,
  `RCode` varchar(250) NOT NULL,
  `Price` varchar(2500) NOT NULL,
  `id` int(11) NOT NULL,
  `hotelroomid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_transport_tariff`
--

CREATE TABLE `hotel_transport_tariff` (
  `TCode` varchar(250) NOT NULL,
  `Price` varchar(2500) NOT NULL,
  `HCode` varchar(250) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_category_master`
--

CREATE TABLE `room_category_master` (
  `id` int(11) NOT NULL,
  `RName` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_category_master`
--

INSERT INTO `room_category_master` (`id`, `RName`) VALUES
(2, 'Delux Ac'),
(3, 'Non Ac Delux');

-- --------------------------------------------------------

--
-- Table structure for table `transport_master`
--

CREATE TABLE `transport_master` (
  `id` int(11) NOT NULL,
  `TName` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(2500) NOT NULL,
  `password` varchar(2500) NOT NULL,
  `realm` varchar(2500) NOT NULL,
  `username` varchar(2500) NOT NULL,
  `emailVerified` tinyint(1) NOT NULL,
  `verificationToken` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `realm`, `username`, `emailVerified`, `verificationToken`) VALUES
(1, 'jyotirmoy85@gmail.com', '$2a$10$tvfJ/PQRg5iIkgdXSCV5zuxUaOt4ENi1wjR0kwcfaRF/BuXlLx7k2', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_category_table`
--
ALTER TABLE `hotel_category_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_master`
--
ALTER TABLE `hotel_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_room_tariff_table`
--
ALTER TABLE `hotel_room_tariff_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_transport_tariff`
--
ALTER TABLE `hotel_transport_tariff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_category_master`
--
ALTER TABLE `room_category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_master`
--
ALTER TABLE `transport_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hotel_category_table`
--
ALTER TABLE `hotel_category_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hotel_master`
--
ALTER TABLE `hotel_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hotel_room_tariff_table`
--
ALTER TABLE `hotel_room_tariff_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotel_transport_tariff`
--
ALTER TABLE `hotel_transport_tariff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_category_master`
--
ALTER TABLE `room_category_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transport_master`
--
ALTER TABLE `transport_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
