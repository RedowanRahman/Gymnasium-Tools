-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 03:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(59, 4, 'Multi Home Gym', 1500, 1, 'Multi Home Gym.jpg'),
(67, 6, 'Multi Home Gym', 20000, 1, 'Multi Home Gym.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(10, 6, 'rafid', 'rafidrahman@gmail.com', '01890317598', 'Quality products and good service.'),
(11, 8, 'maruf', 'marufrusafi69@gmail.com', '01764114899', 'shera product bhai');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(11, 6, 'rafid', '0136987548', 'rafidrahman@gmail.com', 'cash on delivery', 'flat no. 5, dhanmondi-15, Dhaka, Bangladesh - 1209', ', Adjustable Dumbbells (1) , Everfit Folding Treadmill (1) ', 12500, '28-Aug-2022', 'completed'),
(12, 6, 'rafid', '0136987548', 'rafidrahman@gmail.com', 'cash on delivery', 'flat no. 10, dhanmondi-15, Dhaka, Bangladesh - 1209', ', Training Barbell (1) , Multi Home Gym (1) ', 27500, '28-Aug-2022', 'completed'),
(14, 8, 'maruf', '01764114899', 'marufrusafi69@gmail.com', 'cash on delivery', 'flat no. 5, 125 crescent road, green road, dhaka, Bangladesh - 1205', ', Adjustable Dumbbells (5) ', 12500, '29-Aug-2022', 'completed'),
(15, 8, 'maruf', '01764114899', 'marufrusafi69@gmail.com', 'cash on delivery', 'flat no. 5, 125 crescent road, green road, dhaka, Bangladesh - 1205', ', Everfit Folding Treadmill (4) ', 40000, '29-Aug-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Multi Home Gym', 20000, 'Multi Home Gym.jpg'),
(2, 'Stationary Bike', 15000, 'Sunny-Health-Fitness-Stationary-Bike_1050x1500.jpg'),
(4, 'Adjustable Dumbbells', 2500, 'Bowflex-SelectTech-552-Adjustable-Dumbbells.jpg'),
(5, 'Everfit Folding Treadmill', 10000, 'Everfit-Folding-Treadmill-up.jpg'),
(6, 'Training Barbell', 7500, 'Training-Barbell.jpg'),
(7, 'Weight Bench', 8500, 'Golds-Gym-XR-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(5, 'redowan', 'redowanrahman@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(6, 'rafid', 'rafidrahman@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(7, 'arnob', '190204088@aust.edu', '55aa4c2278a4f0e1b412a9b146f0b12a', 'admin'),
(8, 'maruf', 'marufrusafi69@gmail.com', '55aa4c2278a4f0e1b412a9b146f0b12a', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
