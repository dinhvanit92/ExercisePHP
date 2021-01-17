-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 17, 2021 at 06:04 AM
-- Server version: 8.0.22
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_carts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `order_carts`, `order_date`, `user_id`, `total`) VALUES
(25, 'vantran05932ffffda04f58d45917eeab91d257', '{\"1\":{\"id\":\"1\",\"title\":\"Trà sửa Trân châu\",\"price\":\"150000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"},\"2\":{\"id\":\"2\",\"title\":\"Trà sửa xoài trân châu đen\",\"price\":\"51000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/iAnbgLkjdZ1Kud5qpzEd.png\"}}', '17-01-2121 05-01-25', 9, '201000'),
(26, 'vantran3c72258059461a9c2defc158ae6d15f7', '{\"1\":{\"id\":\"1\",\"title\":\"Trà sửa Trân châu\",\"price\":\"150000\",\"quantity\":\"3\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"}}', '17-01-2121 05-01-21', 9, '450000'),
(27, 'vantran7630fcbb4124450da0eb161e9b5af784', '{\"2\":{\"id\":\"2\",\"title\":\"Trà sửa xoài trân châu đen\",\"price\":\"51000\",\"quantity\":\"1\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/iAnbgLkjdZ1Kud5qpzEd.png\"}}', '17-01-2121 05-01-22', 9, '51000'),
(28, 'vantran923d99d3327eae6bfbdca9cc3714cce3', '{\"1\":{\"id\":\"1\",\"title\":\"Trà sửa Trân châu\",\"price\":\"150000\",\"quantity\":\"2\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/ceBZsyvgyRqGWXGEfFvM.png\"},\"2\":{\"id\":\"2\",\"title\":\"Trà sửa xoài trân châu đen\",\"price\":\"51000\",\"quantity\":\"3\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/iAnbgLkjdZ1Kud5qpzEd.png\"},\"3\":{\"id\":\"3\",\"title\":\"Đào Hồng Mận, Hạt é\",\"price\":\"51000\",\"quantity\":\"4\",\"image\":\"http://candyshop.trandinhvan.com/storage/product/1/So9zlHwVzXzZHeIKmx9l.png\"}}', '17-01-2121 05-01-59', 9, '657000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
