-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 07:41 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rohan`
--

-- --------------------------------------------------------

--
-- Table structure for table `esewa`
--

CREATE TABLE `esewa` (
  `id` int(11) NOT NULL,
  `ordernumber` int(11) NOT NULL,
  `userid` varchar(15) NOT NULL,
  `userpassword` varchar(11) NOT NULL,
  `product` varchar(20) NOT NULL,
  `useremail` varchar(18) NOT NULL,
  `platform` varchar(11) NOT NULL,
  `uid` varchar(11) NOT NULL,
  `productuid` varchar(11) NOT NULL,
  `useremailuid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `esewa`
--

INSERT INTO `esewa` (`id`, `ordernumber`, `userid`, `userpassword`, `product`, `useremail`, `platform`, `uid`, `productuid`, `useremailuid`) VALUES
(179, 7591299, '9843668555', 'Rohan@567', '100', 'adhikarirohan249@g', 'Facebook', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(25) NOT NULL,
  `f` int(20) NOT NULL,
  `free` int(10) NOT NULL,
  `fire` int(25) NOT NULL,
  `rohan` int(25) NOT NULL,
  `adhikari` int(25) NOT NULL,
  `kopila` int(25) NOT NULL,
  `khem` int(25) NOT NULL,
  `punya` int(25) NOT NULL,
  `alok` int(25) NOT NULL,
  `kelly` int(25) NOT NULL,
  `primis` int(25) NOT NULL,
  `hayato` int(25) NOT NULL,
  `moco` int(52) NOT NULL,
  `dasha` int(25) NOT NULL,
  `ford` int(25) NOT NULL,
  `toup` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `f`, `free`, `fire`, `rohan`, `adhikari`, `kopila`, `khem`, `punya`, `alok`, `kelly`, `primis`, `hayato`, `moco`, `dasha`, `ford`, `toup`) VALUES
(3, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 200, 0, 210, 110, 220, 330);

-- --------------------------------------------------------

--
-- Table structure for table `prise`
--

CREATE TABLE `prise` (
  `id` int(11) NOT NULL,
  `prize` int(11) NOT NULL,
  `product` varchar(25) NOT NULL,
  `ordernumber` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prise`
--

INSERT INTO `prise` (`id`, `prize`, `product`, `ordernumber`) VALUES
(1, 100, '100', 7591299);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `image` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product`, `description`, `amount`, `image`) VALUES
(1, '100 diamond', '', 100, '1.jpg'),
(2, '200 diamond', '', 200, '2.jpg'),
(3, '310 diamond', '', 300, '3.jpg'),
(4, '410 diamond', '', 400, '4.jpg'),
(5, '520 diamond', '', 500, '5.jpg'),
(6, '620 diamond', '', 600, '6.jpg'),
(7, '720 diamond', '', 700, '7.jpg'),
(8, '830 diamond', '', 800, '8.jpg'),
(9, '930 diamond', '', 900, '9.jpg'),
(10, '1060 diamond', '', 1000, '10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uidlist`
--

CREATE TABLE `uidlist` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(33, 'Rohan Adhikari', 'adhikarirohan249@gmail.com', '$2y$10$gQXCkYo.ZyrIYK0tiNVyRu10I2Pfw3ziZmCWMEzerLtQrPUqOWz0q', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `esewa`
--
ALTER TABLE `esewa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prise`
--
ALTER TABLE `prise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uidlist`
--
ALTER TABLE `uidlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `esewa`
--
ALTER TABLE `esewa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prise`
--
ALTER TABLE `prise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uidlist`
--
ALTER TABLE `uidlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
