-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2021 at 05:03 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `order_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_carts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `order_carts`, `order_date`, `user_id`, `total`) VALUES
(1, 'Administratorc345bc33732dbd4a9b470c4cb921fcf0', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"},\"2\":{\"id\":\"2\",\"title\":\"Tru00e0 su1eeda xou00e0i tru00e2n chu00e2u u0111en\",\"price\":\"51000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/iAnbgLkjdZ1Kud5qpzEd.png\"},\"3\":{\"id\":\"3\",\"title\":\"u0110u00e0o Hu1ed3ng Mu1eadn, Hu1ea1t u00e9\",\"price\":\"51000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/So9zlHwVzXzZHeIKmx9l.png\"}}', '', 37, ''),
(2, 'Administrator358ba1de8c4374de8d631c8eec639808', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"}}', '15-01-2121 15-01-25', 37, ''),
(3, 'Administrator358ba1de8c4374de8d631c8eec639808', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"}}', '15-01-2121 15-01-59', 37, '150000'),
(4, 'vantrana4f0a2c57d6c7c5ab0e0ee32a611cf08', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"},\"3\":{\"id\":\"3\",\"title\":\"u0110u00e0o Hu1ed3ng Mu1eadn, Hu1ea1t u00e9\",\"price\":\"51000\",\"quantity\":4,\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/So9zlHwVzXzZHeIKmx9l.png\"}}', '15-01-2121 15-01-07', 9, '354000'),
(5, 'vantran17ca969bc69402d2b6ca0404f36efff4', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":2,\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"},\"\":{\"id\":null,\"title\":null,\"price\":null,\"quantity\":8,\"image\":null}}', '15-01-2121 15-01-06', 9, '300000'),
(6, 'vantranf18a247606f7821f1cf5d0dfaf8797b8', '{\"\":{\"id\":null,\"title\":null,\"price\":null,\"quantity\":2,\"image\":null}}', '15-01-2121 15-01-34', 9, '0'),
(7, 'vantran4719a4f79a701cd565b66ca8db5b711f', '{\"\":{\"id\":null,\"title\":null,\"price\":null,\"quantity\":\"1\",\"image\":null}}', '15-01-2121 15-01-43', 9, '0'),
(8, 'vantran358ba1de8c4374de8d631c8eec639808', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"}}', '15-01-2121 15-01-58', 9, '150000'),
(9, 'vantran1a48ca77ab7ef4d1530d77309cd71779', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":4,\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"},\"2\":{\"id\":\"2\",\"title\":\"Tru00e0 su1eeda xou00e0i tru00e2n chu00e2u u0111en\",\"price\":\"51000\",\"quantity\":2,\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/iAnbgLkjdZ1Kud5qpzEd.png\"},\"3\":{\"id\":\"3\",\"title\":\"u0110u00e0o Hu1ed3ng Mu1eadn, Hu1ea1t u00e9\",\"price\":\"51000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/So9zlHwVzXzZHeIKmx9l.png\"}}', '15-01-2121 16-01-18', 9, '753000'),
(10, 'vantran358ba1de8c4374de8d631c8eec639808', '{\"1\":{\"id\":\"1\",\"title\":\"Tru00e0 su1eeda Tru00e2n chu00e2u\",\"price\":\"150000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"}}', '15-01-2121 16-01-52', 9, '150000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`) VALUES
(1, 'Trà sửa Trân châu', 'Đây là trà sửa', '150000', 'http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png'),
(2, 'Trà sửa xoài trân châu đen', 'Đây là trà sửa xoài ', '51000', 'http://candyshop.trandinhvan.com/storage/product/1/iAnbgLkjdZ1Kud5qpzEd.png'),
(3, 'Đào Hồng Mận, Hạt é', 'Đào Hồng Mận, Hạt é', '51000', 'http://candyshop.trandinhvan.com/storage/product/1/So9zlHwVzXzZHeIKmx9l.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(1, 'admin', 'vanit92', 'dinhvan.it92@gmail.com'),
(2, 'dinhvan1', '123123', 'dinhvan.ttn@gmail.com'),
(3, 'vantran158', '123456', 'dinhvan.ttn@gmail.com'),
(4, 'dinhvan1111', '123456', 'admin@gmail.com'),
(5, 'vantran158', '123123', 'dinhvan.ttn@gmail.com'),
(6, 'vantran158', '123123', 'dinhvan.ttn@gmail.com'),
(7, 'vantran15845', '123456', 'dinhvan.ttn@gmail.com'),
(8, 'vantran', '123123', 'dinhvan.ttn@gmail.com'),
(9, 'vantran', '123', 'dinhvan.ttn@gmail.com'),
(10, 'vantran158', '123456', 'dinhvan.it92@gmail.com'),
(11, 'admin', '123456', 'dinhvan.ttn@gmail.com'),
(12, 'admin', '123456', 'dinhvan.ttn@gmail.com'),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', ''),
(23, '', '', ''),
(24, '', '', ''),
(25, '', '', ''),
(26, '', '', ''),
(27, '', '', ''),
(28, '', '', ''),
(29, '', '', ''),
(30, '', '', ''),
(31, '', '', ''),
(32, '', '', ''),
(33, '', '', ''),
(34, '', '', ''),
(35, '', '', ''),
(36, '', '', ''),
(37, 'Administrator', '123', 'vantran@gmail.com'),
(38, 'Đình Văn', '123', 'vt@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

CREATE TABLE `user_products` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indexes for table `user_products`
--
ALTER TABLE `user_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_products`
--
ALTER TABLE `user_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `user_products`
--
ALTER TABLE `user_products`
  ADD CONSTRAINT `user_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `user_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
