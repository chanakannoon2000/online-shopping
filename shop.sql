-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2022 at 01:51 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `product_id`) VALUES
(1, 12, 4),
(2, 12, 8),
(3, 12, 46),
(4, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(256) COLLATE utf16_unicode_ci NOT NULL,
  `lname` varchar(256) COLLATE utf16_unicode_ci NOT NULL,
  `address` text COLLATE utf16_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_date`, `fname`, `lname`, `address`, `mobile`) VALUES
(4, '2022-11-07 18:18:03', 's', 'ss', 'aasa', '05555757'),
(5, '2022-11-07 18:18:03', 's', 'ss', 'aasa', '05555757'),
(6, '2022-11-07 18:18:03', '4te4', 'te', 'ete4', '0800'),
(7, '2022-11-07 19:47:15', '4te4', 'te', 'ete4', '0800'),
(8, '2022-11-07 19:50:07', '', '', '', ''),
(9, '2022-11-07 19:50:14', 'ht', 'rtr', 'rthr', 'htr'),
(10, '2022-11-07 20:07:02', 'e', 'ee', 'ee', '2'),
(11, '2022-11-07 20:11:35', 'r', 'r', 'r', 'r'),
(12, '2022-11-07 20:17:43', 'r', 'r', 'r', 'r');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `description` text COLLATE utf16_unicode_ci,
  `price` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`) VALUES
(1, 'Blueberry Cheesecake', 'a', 10),
(2, 'Chocolate', 'a', 10),
(3, 'Berry Bread', 'a', 100),
(4, 'Cake Box', 'a', 100),
(5, 'Carrot Cake', 'a', 100),
(6, 'Cheese Cake', 'a', 100),
(7, 'Brown Chocolate', 'a', 100),
(8, 'Banana Sandwich ', 'a', 100),
(9, 'Biscoff Stuffedcookies', 'a', 100),
(10, 'Chicken Sandwich', 'a', 100),
(11, 'Chocolate Bread', 'a', 100),
(12, 'Chocolate Chip', 'a', 100),
(13, 'Chocolate Roll', 'a', 100),
(14, 'Coconut Cake', 'a', 100),
(15, 'Coffee Tiramisu', 'a', 100),
(16, 'Croissant', 'a', 100),
(17, 'Daifuku', 'a', 100),
(18, 'Fruit Box', 'a', 100),
(19, 'Fruit Chessecake', 'a', 100),
(20, 'Fruit Pie', 'a', 100),
(21, 'Ham Cheeses', 'a', 100),
(22, 'Ham Sandwich', 'a', 100),
(23, 'Korea Cream', 'a', 100),
(24, 'Lemon Cake', 'a', 100),
(25, 'Mango Box', 'a', 100),
(26, 'Mango Cake', 'a', 100),
(27, 'Matcha Crep', 'a', 100),
(28, 'Matcha Chessescake', 'a', 100),
(29, 'Matcha Daifuku', 'a', 100),
(30, 'Matcha Roll', 'a', 100),
(31, 'Nutella', 'a', 100),
(32, 'Orange Lemon', 'a', 100),
(33, 'Oreo Box', 'a', 100),
(34, 'Peach Cake', 'a', 100),
(35, 'Red Velvet', 'a', 100),
(36, 'Roll', 'a', 100),
(37, 'Strawberry', 'a', 100),
(38, 'Strawberry Box', 'a', 100),
(39, 'Strawberry Croissant', 'a', 100),
(40, 'Strawberry Roll', 'a', 100),
(41, 'Strawberry Sandwich', 'a', 100),
(42, 'Tiramisu', 'a', 100),
(43, 'Banoffee', 'a', 100),
(44, 'Strawberry Cheesecake', 'a', 100),
(45, 'Bacon Scramble Croissant', 'a', 100),
(46, 'Banana Nutella Croisssant', 'a', 100),
(47, 'Matcha Tiramisu', 'a', 100),
(48, 'Chocolate Mochi', 'a', 100),
(49, 'Cream Mochi', 'a', 100),
(50, 'Matcha Red Bean Mochi', 'a', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
