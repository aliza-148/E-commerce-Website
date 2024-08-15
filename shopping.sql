-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2024 at 03:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  `productname` varchar(11) NOT NULL,
  `productquantity` varchar(11) NOT NULL,
  `producttype` varchar(150) NOT NULL,
  `p_price` varchar(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `submitted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `productname`, `productquantity`, `producttype`, `p_price`, `image`, `submitted`) VALUES
(79, 1, 'Stoller', '2', 'Georeggte', '700', 'g1.jpg', 0),
(150, 0, 'Ring set', '1', 'Jewelery', '100', 'jew12.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `products` text NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `instructions` text NOT NULL,
  `payment_method` enum('cash_on_delivery','','','') NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `name`, `phone`, `email`, `address`, `city`, `state`, `postal_code`, `country`, `products`, `total_amount`, `instructions`, `payment_method`, `order_date`) VALUES
(1, 'qqqqqqqqqqqq', '11111111111111111111', 'lkkjk@gmail.com', 'uhjnmk89du', '83uiwjhsnm', '832uiqwjhksnam', '3900', 'pakistan', 'Only niqab', 200.00, 'make it safe', 'cash_on_delivery', '2024-07-27 13:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `submitted_at`) VALUES
(2, 'Aliza', 'alizaaaaaaaaaa14agust@gmail.com', 'i want to buy it now', '2024-08-01 04:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(150) NOT NULL,
  `user_id` int(150) NOT NULL,
  `product_id` int(150) NOT NULL,
  `quantity` int(150) NOT NULL,
  `total_amount` varchar(15) NOT NULL,
  ` order_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `quantity`, `total_amount`, ` order_date`, `status`, `payment_method`) VALUES
(22, 1, 92, 1, '700', '2024-07-25 09:18:58.648812', 'Pending', ''),
(23, 1, 124, 1, '3000', '2024-07-25 09:31:23.856466', 'Pending', ''),
(24, 1, 127, 1, '3000', '2024-07-25 09:45:36.406641', 'Pending', ''),
(25, 1, 163, 1, '20', '2024-07-27 11:33:18.983193', 'Pending', ''),
(26, 1, 163, 1, '20', '2024-07-27 11:33:51.164773', 'Pending', 'PayPal'),
(27, 1, 163, 1, '20', '2024-07-27 11:37:12.258915', 'Pending', 'Credit Card'),
(28, 1, 163, 1, '20', '2024-07-27 11:37:33.802998', 'Pending', 'Credit Card'),
(29, 1, 163, 2, '400', '2024-07-27 12:51:26.866680', 'Pending', 'Credit Card'),
(30, 1, 80, 1, '700', '2024-07-27 13:19:07.802008', 'Pending', 'Cash on Delivery'),
(31, 1, 80, 1, '700', '2024-07-31 04:32:08.580255', 'Pending', 'Credit Card'),
(32, 1, 80, 1, '700', '2024-08-01 03:47:01.124529', 'Pending', 'Credit Card'),
(33, 1, 94, 1, '600', '2024-08-01 04:14:03.621808', 'Pending', 'Credit Card'),
(34, 1, 97, 1, '700', '2024-08-01 04:23:50.100887', 'Completed', 'Credit Card'),
(35, 7, 89, 3, '1800', '2024-08-02 13:20:59.142988', '', 'Bank Account'),
(36, 7, 89, 3, '1800', '2024-08-02 13:21:30.535539', '', 'Bank Account'),
(37, 7, 91, 3, '1950', '2024-08-02 13:21:30.588651', '', 'Bank Account'),
(38, 7, 92, 2, '1200', '2024-08-02 13:21:30.601580', '', 'Bank Account'),
(39, 7, 91, 3, '1950', '2024-08-02 13:23:33.742101', '', 'Bank Account'),
(40, 7, 92, 2, '1200', '2024-08-02 13:23:33.793649', '', 'Bank Account'),
(41, 7, 94, 2, '1200', '2024-08-02 13:25:48.594392', '', 'Bank Account'),
(42, 7, 95, 3, '1800', '2024-08-02 13:25:48.610660', '', 'Bank Account'),
(44, 7, 88, 3, '1800', '2024-08-02 13:31:41.354921', '', 'Bank Account'),
(45, 7, 90, 3, '1800', '2024-08-02 13:31:41.401353', '', 'Bank Account'),
(46, 0, 79, 2, '1400', '2024-08-07 04:21:12.152718', '', 'Bank Account'),
(47, 0, 80, 2, '1400', '2024-08-07 04:21:12.160363', '', 'Bank Account'),
(48, 0, 83, 3, '2100', '2024-08-07 04:21:12.160579', '', 'Bank Account'),
(49, 0, 85, 3, '2100', '2024-08-07 04:21:12.160761', '', 'Bank Account'),
(50, 0, 86, 3, '2100', '2024-08-07 04:21:12.161021', '', 'Bank Account'),
(51, 0, 98, 3, '2100', '2024-08-07 04:21:12.161570', '', 'Bank Account'),
(52, 0, 115, 3, '2250', '2024-08-07 04:21:12.161772', '', 'Bank Account'),
(53, 0, 123, 1, '3000', '2024-08-07 04:21:12.161957', '', 'Bank Account'),
(54, 0, 124, 3, '9000', '2024-08-07 04:21:12.162171', '', 'Bank Account'),
(55, 0, 150, 1, '100', '2024-08-07 04:21:12.162355', '', 'Bank Account'),
(56, 0, 151, 1, '100', '2024-08-07 04:21:12.162592', '', 'Bank Account'),
(57, 0, 163, 3, '600', '2024-08-07 04:21:12.162769', '', 'Bank Account'),
(58, 0, 164, 1, '200', '2024-08-07 04:21:12.162946', '', 'Bank Account'),
(59, 0, 157, 9, '1800', '2024-08-07 13:16:42.478489', '', 'Bank Account'),
(60, 0, 158, 1, '230', '2024-08-07 13:16:42.489943', '', 'Bank Account'),
(61, 0, 161, 1, '450', '2024-08-07 13:16:42.490742', '', 'Bank Account'),
(62, 0, 79, 2, '1400', '2024-08-08 04:20:22.516039', '', 'Bank Account'),
(63, 0, 80, 2, '1400', '2024-08-08 04:22:03.812542', '', 'Cash on Delivery'),
(64, 0, 82, 3, '2100', '2024-08-08 04:24:00.479022', '', 'Bank Account'),
(65, 0, 85, 3, '2100', '2024-08-08 04:26:23.191670', '', 'Bank Account'),
(66, 0, 135, 1, '4500', '2024-08-08 05:27:32.471727', '', 'Bank Account'),
(67, 0, 136, 1, '4500', '2024-08-08 05:29:00.715245', '', 'Bank Account'),
(68, 0, 137, 1, '4500', '2024-08-08 05:32:53.564855', '', 'Bank Account'),
(69, 0, 139, 1, '4500', '2024-08-08 05:38:20.124039', '', 'Bank Account'),
(70, 0, 138, 1, '4500', '2024-08-08 05:41:20.536795', '', 'Bank Account'),
(71, 0, 132, 1, '4500', '2024-08-08 05:44:11.923055', '', 'Bank Account');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(150) NOT NULL,
  `account` varchar(150) NOT NULL,
  `cvv` varchar(150) NOT NULL,
  `ExD` date NOT NULL,
  `Amount` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`id`, `account`, `cvv`, `ExD`, `Amount`) VALUES
(1, '1234567890', '123', '2028-02-10', '676'),
(2, '0987654321', '098', '2028-03-12', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(150) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `productname` varchar(150) NOT NULL,
  `productquantity` varchar(150) NOT NULL,
  `p_price` varchar(150) NOT NULL,
  `producttype` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `user_email`, `productname`, `productquantity`, `p_price`, `producttype`, `image`) VALUES
(79, '', 'Stoller', '2', '700', 'Georeggte', 'g1.jpg'),
(80, '', 'Stoller', '2', '700', 'Georeggte', 'g2.jpg'),
(81, '', 'Stoller', '3', '700', 'Georeggte', 'g3.jpg'),
(82, '', 'Stoller', '3', '700', 'Georeggte', 'g4.webp'),
(83, '', 'Stoller', '3', '700', 'Georeggte', 'g5.jpg'),
(84, '', 'Stoller', '3', '700', 'Georeggte', 'g6.jpg'),
(85, '', 'Stoller', '3', '700', 'Georeggte', 'g7.jpg'),
(86, '', 'Stoller', '3', '700', 'Georeggte', 'g8.jpg'),
(87, '', 'Stoller', '3', '700', 'Georeggte', 'g9.jpg'),
(88, '', 'Stoller', '3', '600', 'Cotton', 'cotton 1.jpg'),
(89, '', 'Stoller', '3', '600', 'Cotton', 'cotton 2.jpg'),
(90, '', 'Stoller', '3', '600', 'Cotton', 'cotton 3.jpg'),
(91, '', 'Stoller', '3', '650', 'Cotton', 'cotton 4.jpg'),
(92, '', 'Stoller', '2', '600', 'Cotton', 'cotton 5.webp'),
(93, '', 'Stoller', '3', '550', 'Cotton', 'cotton 6.jpg'),
(94, '', 'Stoller', '2', '600', 'Cotton', 'cotton 7.jpg'),
(95, '', 'Stoller', '3', '600', 'Cotton', 'cotton 8.jpg'),
(96, '', 'Stoller', '3', '600', 'Cotton', 'cotton 9.jpg'),
(97, '', 'Stoller', '2', '700', 'Silk', 's2.jpg'),
(98, '', 'Stoller', '3', '700', 'Silk', 's3.jpg'),
(99, '', 'Stoller', '3', '700', 'Silk', 's4.jpg'),
(100, '', 'Stoller', '3', '700', 'Silk', 's5.jpg'),
(101, '', 'Stoller', '3', '700', 'Silk', 's6.jpg'),
(102, '', 'Stoller', '3', '700', 'Silk', 's7.jpg'),
(103, '', 'Stoller', '3', '700', 'Silk', 's8.jpg'),
(104, '', 'Stoller', '3', '700', 'Silk', 's9.jpg'),
(105, '', 'Stoller', '3', '450', 'Jersey', 'j1.jpg'),
(106, '', 'Stoller', '3', '450', 'Jersey', 'j2.jpg'),
(107, '', 'Stoller', '3', '450', 'Jersey', 'j3.jpg'),
(108, '', 'Stoller', '3', '700', 'Jersey', 'j4.jpg'),
(109, '', 'Stoller', '3', '700', 'Jersey', 'j5.jpg'),
(110, '', 'Stoller', '3', '700', 'Jersey', 'j6.webp'),
(111, '', 'Stoller', '3', '700', 'Jersey', 'j7.jpg'),
(112, '', 'Stoller', '3', '700', 'Jersey', 'j8.jpg'),
(113, '', 'Stoller', '3', '700', 'Jersey', 'j9.webp'),
(114, '', 'Stoller', '3', '750', 'Chiffon', 'c1.jpg'),
(115, '', 'Stoller', '3', '750', 'Chiffon', 'c2.jpg'),
(116, '', 'Stoller', '3', '750', 'Chiffon', 'c3.jpg'),
(117, '', 'Stoller', '3', '700', 'Chiffon', 'c4.jpg'),
(118, '', 'Stoller', '3', '700', 'Chiffon', 'c5.jpg'),
(119, '', 'Stoller', '3', '700', 'Chiffon', 'c6.jpg'),
(120, '', 'Stoller', '3', '700', 'Chiffon', 'c7.jpg'),
(121, '', 'Stoller', '3', '700', 'Chiffon', 'c8.jpg'),
(122, '', 'Stoller', '3', '700', 'Chiffon', 'c9.jpg'),
(123, '', 'Abaya', '1', '3000', 'Georegtte Fabric Abaya', 'ab1.webp'),
(124, '', 'Abaya', '3', '3000', 'Georegtte Fabric Abaya', 'ab2.jpg'),
(125, '', 'Abaya', '1', '3000', 'Georegtte Fabric Abaya', 'ab3.jpg'),
(126, '', 'Abaya', '1', '3000', 'Georegtte Fabric Abaya', 'ab4.jpg'),
(127, '', 'Abaya', '3', '3000', 'Georegtte Fabric Abaya', 'ab5.jpg'),
(128, '', 'Abaya', '1', '3000', 'Georegtte Fabric Abaya', 'ab6.jpg'),
(129, '', 'Abaya', '1', '3000', 'Georegtte Fabric Abaya', 'ab7.webp'),
(130, '', 'Abaya', '1', '3000', 'Georegtte Fabric Abaya', 'ab8.webp'),
(131, '', 'Abaya', '1', '3000', 'Georegtte Fabric Abaya', 'ab9.webp'),
(132, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n1.jpg'),
(133, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n2.jpg'),
(134, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n3.jpg'),
(135, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n4.jpg'),
(136, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n5.jpg'),
(137, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n6.webp'),
(138, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n7.jpg'),
(139, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n8.jpg'),
(140, '', 'Abaya', '1', '4500', 'Nida Fabric Abaya', 'n9.webp'),
(141, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z1.jpg'),
(142, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z2.jpg'),
(143, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z3.jpg'),
(144, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z4.jpeg'),
(145, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z5.webp'),
(146, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z6.webp'),
(147, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z7.webp'),
(148, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z8.jpg'),
(149, '', 'Abaya', '1', '6000', 'Zipper Abaya', 'z9.jpg'),
(150, '', 'Ring set', '1', '100', 'Jewelery', 'jew12.jpg'),
(151, '', 'Ring set', '1', '100', 'Jewelery', 'jew11.webp'),
(152, '', 'Ring set', '1', '100', 'Jewelery', 'jew10.webp'),
(153, '', 'Ring set', '1', '100', 'Jewelery', 'jew9.webp'),
(154, '', 'Ring set', '1', '100', 'Jewelery', 'jew8.webp'),
(155, '', 'Silver Bracelet ', '1', '200', 'Jewelery', 'jew7.jpg'),
(157, '', 'Golden Necklaces', '9', '200', 'Jewelery', 'jew6.jpg'),
(158, '', 'Bracelet ', '1', '230', 'Jewelery', 'jew5.webp'),
(159, '', 'Necklace and Ring', '1', '180', 'Jewelery', 'jew4.jpg'),
(160, '', 'Earings ', '1', '450', 'Jewelery', 'jew3.webp'),
(161, '', 'Silver Earings ', '1', '450', 'Jewelery', 'jew2.jpg'),
(162, '', 'Silver Gold Earings ', '1', '450', 'Jewelery', 'jew.jpg'),
(163, '', 'Niqab', '3', '200', 'Niqab', 'nq1.avif'),
(164, '', 'Niqab', '1', '200', 'Niqab', 'nq2.jpg'),
(165, '', 'Niqab', '1', '100', 'Niqab', 'nq2.jpg'),
(166, '', 'Niqab', '1', '170', 'Niqab', 'nq3.jpg'),
(167, '', 'Niqab', '1', '200', 'Niqab', 'nq4.webp'),
(168, '', 'Niqab', '1', '200', 'Niqab', 'nq5.jpg'),
(169, '', 'Niqab', '1', '250', 'Niqab', 'nq6.jpg'),
(170, '', 'Niqab', '1', '200', 'Niqab', 'nq7.jpg'),
(171, '', 'Niqab', '1', '200', 'Niqab', 'nq8.webp'),
(172, '', 'Niqab', '2', '200', 'Niqab', 'nq9.avif'),
(173, '', 'Stollers', '2', '900', 'Silk', 's1.jpg'),
(174, 'a@mail.com', 'xyz', '44', '44', 'Georeggte', 'Default_Create_a_stylized_highly_detailed_illustration_of_a_yo_0.jpg'),
(175, 'l@gmail.com', 'hdjks', '3', '3456', 'Georeggte', 'Default_Create_a_stylized_highly_detailed_illustration_of_a_yo_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `businessname` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `password`, `businessname`, `created_at`) VALUES
(1, 'Aliz AShraf', 'alizaashraf148@gmail.com', 'aliza@148', 'Hijabians', '2024-07-25 10:03:27'),
(2, 'Aliz AShraf', 'alizaashraf148@gmail.com', 'aliza@148', 'Hijabians', '2024-07-25 10:05:39'),
(3, 'Aliz AShraf', 'alizaashraf148@gmail.com', 'aliza@148', 'Hijabians', '2024-07-25 10:06:25'),
(4, 'Aliz AShraf', 'alizaashraf148@gmail.com', 'aliza@148', 'Hijabians', '2024-07-25 10:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `signupshop`
--

CREATE TABLE `signupshop` (
  `id` int(150) NOT NULL,
  `Username` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupshop`
--

INSERT INTO `signupshop` (`id`, `Username`, `name`, `email`, `password`, `phone`, `date`, `address`) VALUES
(1, 'Ali', 'Ashraf', 'a@mail.com', '1234', '21121212132', '2004-12-08', 'qqwertyuiopasdfghjklzxcvbnm'),
(2, 'sssssssssssssssss', 'llllllllllllllllllllllllllllll', 'l@gmail.com', '12233', '11111111111', '2003-02-07', 'qqqqwertyuio'),
(3, 'Sobiaa', 'Soooojaa', 'so@gmail.com', '12121', '11111132222', '1111-11-11', 'ksmklswjnwjnwjkxnwdjihwdui'),
(4, 'sssssssssssssssss', 'aa', 'a@gmail.com', 'aa', '33333333333', '1122-11-11', 'ssxwddddxsxxzz'),
(5, 'Aliza', 'Ashraf', 'aaaaaaaa@gmail.com', '111', '12212', '8888-08-08', '8w6bahs8ensjsish8w88j'),
(6, 'nabigh', 'Arshad', 'nabigh@gmail.com', '123', '03456782782', '2003-10-30', 'cup wlai kotheeeee hahahaah16526125'),
(7, 'Risha', 'bibi', 'r@gmail.com', '1111', '66666666666', '2002-08-08', 'ksnajh2ha2234dnnd-sdjjkd,7892ybh-qw'),
(8, 'root', 'jsjhxbjhxg', 'asa@gmail.com', '222', '33333333333', '9999-09-09', 'dkjhuhhg7-hd78bs'),
(9, 'sabaGR', 'saba', 'saba@gmail.com', '$2y$10$UHl8SMXk0P6X/knZqWejquEnwOXfBlLAHQ3jLNpaBur91d6Y7abfW', '88888888888', '1111-01-11', 'vghtdfgc4-gctrdtr5gv6-76'),
(10, 'Arishyyy123', 'Arishaa', 'ari@gmail.cm', '$2y$10$C9VW9Rh2A7aD8UWl1XslDODLQ4Njd7KCcMCN5EzW07GEmy0XQz25e', '09876543223', '1111-11-11', '234567sgjh-srqs8-iwuhADVh-JKJJI'),
(11, 'lisa', 'Aliza Ashraf', 'alizaaaaaaaaaa14agust@gmail.com', 'qqqq', '12345678090', '2004-12-08', 'nxbajhtw7yugwhe78eyhdg7yyuhgq78y7yu2ug78ye278y2uy'),
(12, 'Aliiiiiii', 'alili', 'alii@gmail.com', 'ali', '09876543432', '0001-01-01', '09e0923jioedu9dukjcnw09d09'),
(13, 'wahid', 'AbdulWahid', 'wahidali@gmail.com', 'www', '09823764437', '7777-07-07', '487eudjhn38uj120wqol0wapl'),
(14, 'Ari', 'shaa', 'arisha@gmail.com', '8989', '98989898989', '1811-12-18', 'j47eydhxwiskm'),
(15, 'LIZY', 'ALiza', 'aliza@gmail.com', 'aaa', '12345678900', '0000-00-00', '4rfvxcbnm23456789oksnksksjisjjkabxvashdhsacshcghsdbsduidio'),
(16, 'Alia', 'ALiaAli', 'AAA@gmail.com', 'mmm', '09765432134', '0000-00-00', '1qasdcv3ef6t'),
(17, 'LIsa33', 'Alizaa', 'ALIZAASHRAF@gmail.com', 'nnn', '09876543234', '0000-00-00', '6tgbni98ydtrfgchj87yusn78yugjhwxsy78ujhbn desyuhj'),
(18, 'malaikaali_090', 'Malaika ALi', 'Malaika@gmail.com', 'mmm', '45454545454', '0000-00-00', '7yehjdmxnacha.,pinkajn;lpoplmkljxoqikjxklasxjanxzBacavhas taha klasdddffhjkl'),
(19, 'Sahla12122', 'SaHEELA ALI', 'Sahel@gmail.com', 'sss', '00000000000', '0000-00-00', '45wrstfgavb89t5uiorjkgfnm,09iorjkldfxm7eywjhbsnm '),
(20, 'a', 'a', 'n@gmail.com', 'n@gmail.com', '11', '0000-00-00', 'n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signupshop`
--
ALTER TABLE `signupshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signupshop`
--
ALTER TABLE `signupshop`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
