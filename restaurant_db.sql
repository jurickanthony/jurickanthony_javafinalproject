-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 01:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `name`, `category`, `price`) VALUES
(4, 'humba ', 'panihapon', 123),
(7, 'fried egg', 'buntag', 50),
(8, 'samporado', 'pamahaw', 45),
(9, 'tinap.anan nga isda', 'panihapon', 30),
(10, 'fried chicken', 'lunch', 15),
(11, 'fried rice', 'pamahaw', 20),
(12, 'tinulang manok', 'paniudto', 35),
(13, 'tinula nga baboy', 'paniudto', 35),
(14, 'fried baki', 'panihapon', 50);

-- --------------------------------------------------------

--
-- Table structure for table `multiuserlogin`
--

CREATE TABLE `multiuserlogin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multiuserlogin`
--

INSERT INTO `multiuserlogin` (`username`, `password`, `usertype`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user'),
('admin', 'admin', 'ADMINISTRATOR'),
('waiter', 'waiter', 'waiter'),
('kitchen', 'kitchen', 'kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `table_name`, `product_name`, `quantity`, `price`, `status`, `total`) VALUES
(4, 'tb-Peace', 'fried rice', 6, 6, 'Accepted', 36),
(5, 'tb5', 'pan', 2, 9, 'Accepted', 18),
(6, 'tb7', 'kagiron', 4, 5, 'Accepted', 20),
(7, 'tb-2Love', 'tinap-anan', 2, 30, 'Accepted', 60),
(8, 'tb-4', 'fried chicken', 2, 15, 'Accepted', 30),
(9, 'tb-happy', 'fried rice', 2, 15, 'Rejected', 30),
(10, 'tb-happy', 'tinulang manok', 2, 30, 'Rejected', 60),
(11, 'tb-love', 'tinulang baboy', 2, 35, 'Accepted', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
