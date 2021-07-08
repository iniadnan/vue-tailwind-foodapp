-- phpMyAdmin SQL Dump
-- version 5.1.1deb3+bionic1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2021 at 09:14 PM
-- Server version: 5.7.34-0ubuntu0.18.04.1
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_foodapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `weight` int(11) NOT NULL,
  `star` decimal(3,2) NOT NULL,
  `sold` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category`, `price`, `weight`, `star`, `sold`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hot Pizza', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'food', '25.00', 400, '4.45', 0, 'hot-pizza', 'hot-pizza.jpg', '2021-06-26 03:16:31', NULL, NULL),
(2, 'Triple Burger', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'food', '15.00', 300, '4.60', 0, 'triple-burger', 'triple-burger.jpg', '2021-06-26 11:53:07', NULL, NULL),
(3, 'Boba Iced Coffee', 'Ssearch for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'drink', '3.00', 120, '4.00', 0, 'boba-iced-coffee', 'boba-iced-coffee.jpg', '2021-06-26 11:54:01', NULL, NULL),
(4, 'Butter Croissant', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'cake', '2.20', 100, '3.50', 0, 'butter-croissant', 'butter-croissant.jpg', '2021-06-26 11:59:45', NULL, NULL),
(5, 'Choco Top', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.', 'cake', '1.30', 80, '3.00', 0, 'choco-top', 'choco-top.jpg', '2021-06-26 12:03:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `products` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `products`, `qty`, `price`, `total`) VALUES
(1, '1,2,3,4,5,6', '3,4,3,5,6,1', '3.20, 31.0, 1.30, 30, 90, 8', '100.00'),
(2, '1,5,3,2,4', '2,3,1,4,2', '25.00,1.30,3.00,15.00,2.20', '121.30'),
(3, '1,5,3,2,4', '2,3,1,4,2', '25.00,1.30,3.00,15.00,2.20', '121.30'),
(4, '1,4,3', '2,3,2', '25.00,2.20,3.00', '62.60'),
(5, '5', '2', '1.30', '2.60'),
(6, '5', '2', '1.30', '2.60'),
(7, '5', '2', '1.30', '2.60'),
(8, '2', '2', '15.00', '30.00'),
(9, '5,1,3', '4,3,3', '1.30,25.00,3.00', '89.20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `food` (`name`),
  ADD KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
