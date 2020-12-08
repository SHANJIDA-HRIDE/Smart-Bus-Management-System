-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 03:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `username`, `password`) VALUES
(2, 'rahul', '1088888', 'rahul', '9090'),
(8, 'mir', '0191', '1111@gmail.com', '8080'),
(10, 'mir', '01772232242', 'akash', '9090'),
(14, 'Anik', '01706363132', 'aiub.arifrahman', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `businfo`
--

CREATE TABLE `businfo` (
  `id` int(15) NOT NULL,
  `bustype` varchar(20) NOT NULL,
  `seatno` varchar(15) NOT NULL,
  `fare` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `busno` varchar(20) NOT NULL,
  `busname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businfo`
--

INSERT INTO `businfo` (`id`, `bustype`, `seatno`, `fare`, `status`, `busno`, `busname`) VALUES
(1, 'luxury AC Coach', '2', '1200', 'available', '123', 'Green Line'),
(2, 'AC', 'B-1', '550', 'Available', '6', 'Tungipara Express'),
(3, 'Sleeping Coach', 'F-2', '1200', 'Available', 'KA-78', 'Eagle Hino');

-- --------------------------------------------------------

--
-- Table structure for table `buslist`
--

CREATE TABLE `buslist` (
  `id` int(10) NOT NULL,
  `busname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buslist`
--

INSERT INTO `buslist` (`id`, `busname`) VALUES
(1, 'D-123');

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

CREATE TABLE `cancel` (
  `id` int(10) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `transection` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE `fare` (
  `id` int(10) NOT NULL,
  `busname` varchar(30) NOT NULL,
  `bustype` varchar(20) NOT NULL,
  `price` varchar(15) NOT NULL,
  `charge` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare`
--

INSERT INTO `fare` (`id`, `busname`, `bustype`, `price`, `charge`) VALUES
(21, 'Shohag', 'Non-AC Chair Coach', '200', '52'),
(22, 'enam', 'AC Chair Coach', '500020', '396');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `text`) VALUES
(6, 'bus ok');

-- --------------------------------------------------------

--
-- Table structure for table `paymentinfo`
--

CREATE TABLE `paymentinfo` (
  `id` int(10) NOT NULL,
  `merchantno` varchar(12) NOT NULL,
  `transection` varchar(12) NOT NULL,
  `refno` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentinfo`
--

INSERT INTO `paymentinfo` (`id`, `merchantno`, `transection`, `refno`) VALUES
(1, '01913937870', '999', 9999),
(3, '01775003870', '7777', 7777),
(4, '5959', '5959', 5959),
(5, '0155808275', '0171', 2525);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `rdate` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `lastname`, `mobile`, `email`, `password`, `rdate`, `gender`, `address`) VALUES
(1, 'Rahul', 'vai', '1775675786', 'em@gmail.com', '2020', '2020-06-30', 'male', '14 dn'),
(2, 'akash', 'mir', '1775675786', 'a@gmail.com', '4040', '2020-09-22', 'male', 'Dhaka,Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(10) NOT NULL,
  `busname` varchar(30) NOT NULL,
  `bus_from` varchar(200) NOT NULL,
  `bus_to` varchar(200) NOT NULL,
  `busdate` date NOT NULL,
  `bustime` time(6) NOT NULL,
  `busstand` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `busname`, `bus_from`, `bus_to`, `busdate`, `bustime`, `busstand`) VALUES
(18, 'Hanif', 'Noakhali', 'Rajshahi', '2020-09-28', '15:46:00.000000', 'PTI'),
(19, 'Eagle', 'Dhaka', 'Khulna', '2020-09-17', '19:34:00.000000', 'Gabtoli'),
(21, 'Sotabdhi', 'Dhaka', 'Comilla', '2020-09-05', '08:14:00.000000', 'Gulistan'),
(22, 'Greenline', 'Dhaka', 'Khulna', '2020-09-24', '22:15:00.000000', 'Saidabad'),
(23, 'tutul', 'zinzira', 'uuuu', '2020-09-15', '02:17:00.000000', 'Royal Mor');

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `id` int(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dob` int(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `post_office` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `pin_code` int(20) NOT NULL,
  `doj` int(30) NOT NULL,
  `bus_name` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`id`, `name`, `dob`, `address`, `post_office`, `city`, `pin_code`, `doj`, `bus_name`, `role`) VALUES
(2, 'Rahul Paul', 2020, '14 no.', 'Dhaka', 'Dhaka', 2100, 2020, 'ena', 'supervisor'),
(3, 'Karim', 2004, 'Dhaka,kuril', 'Kuril ,Badda', 'Niragonj', 555, 2020, 'Hanif', 'Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(10) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `umobile` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `busname` varchar(15) NOT NULL,
  `bustype` varchar(20) NOT NULL,
  `num_ber` varchar(15) NOT NULL,
  `busnum` varchar(30) NOT NULL,
  `busstand` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `uname`, `gender`, `umobile`, `email`, `busname`, `bustype`, `num_ber`, `busnum`, `busstand`) VALUES
(5, 'Rafi', 'Male', '01775003870', 'anik@gmail.com', 'Sotabdhi', 'Non Ac', '2', 'D-123', 'Santinogor'),
(7, 'Mir Akash', 'Male', '01555555555', 'anik@gmail.com', 'Eva', 'Hino', '10', 'D-123', 'Aiub'),
(9, 'Mina', 'Female', '0123654', 'mena@gmail.com', 'Raju', 'Cartton', '2', 'D-123', 'Village'),
(10, 'Milton', 'Male', '0188888888', 'mil@gmail.com', 'Greenline', '', '2', 'D-123', 'Santinogor'),
(12, 'Update', 'Custom', '11111111111', 'a@gmail.com', 'Greenline', 'VIP AC Coach', '3', 'D-123', 'Santinogor'),
(13, 'Mollika', 'Female', '01913937870', 'a@gmail.com', 'Hino', 'Luxury AC Coach', '2', 'D-123', 'Kafrul');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int(10) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `transection` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `mobile`, `transection`) VALUES
(1, '10101410', '25987'),
(2, '013333333333', '1991');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businfo`
--
ALTER TABLE `businfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buslist`
--
ALTER TABLE `buslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel`
--
ALTER TABLE `cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fare`
--
ALTER TABLE `fare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  ADD PRIMARY KEY (`id`,`refno`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`,`busdate`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `businfo`
--
ALTER TABLE `businfo`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `buslist`
--
ALTER TABLE `buslist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cancel`
--
ALTER TABLE `cancel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fare`
--
ALTER TABLE `fare`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `staff_info`
--
ALTER TABLE `staff_info`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
