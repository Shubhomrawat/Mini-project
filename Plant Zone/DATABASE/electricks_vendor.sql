-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 07:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricks`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(3, 'admin', 'admin', 'admin@admin.com', 'admin', 'admin'),
(4, 'Pratik', 'Shrivastav', 'pratikshrivastav20@gmail.com', 'pratik20222', 'a1Bz20ydqelm8m1wql0cb2b62754dfd12b6ed0161d4b447df7');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Flower'),
(2, 'Seeds'),
(3, 'Fertilizer'),
(4, 'Pots'),
(5, 'Accessories '),
(6, 'Pebbles'),
(7, 'Offers');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(132, 9, 'has logged in the system at ', '2022-01-22 17:09:44'),
(133, 9, 'added a new product 1 of r', '2022-01-22 17:12:13'),
(134, 9, 'has logged in the system at ', '2022-01-22 18:29:16'),
(135, 10, 'has logged in the system at ', '2022-01-22 18:32:10'),
(136, 10, 'has logged in the system at ', '2022-01-22 19:06:04'),
(137, 10, 'has logged in the system at ', '2022-01-22 19:09:23'),
(138, 9, 'has logged in the system at ', '2022-01-22 19:52:03'),
(139, 9, 'has logged in the system at ', '2022-01-22 19:54:15'),
(140, 9, 'added a new product 1 of hello', '2022-01-22 20:18:57'),
(141, 11, 'has logged in the system at ', '2022-01-22 20:27:42'),
(142, 10, 'has logged in the system at ', '2022-01-23 00:48:23'),
(143, 10, 'has logged in the system at ', '2022-01-23 01:03:09'),
(144, 10, 'has logged in the system at ', '2022-01-23 01:39:53'),
(145, 10, 'added a new product 5 of Daisy', '2022-01-23 01:42:58'),
(146, 10, 'has logged in the system at ', '2022-01-23 01:54:23'),
(147, 12, 'has logged in the system at ', '2022-01-23 01:58:52'),
(148, 13, 'has logged in the system at ', '2022-01-23 12:54:09'),
(149, 10, 'has logged in the system at ', '2022-01-23 13:12:19'),
(150, 10, 'added a new product 4 of Iris', '2022-01-23 13:13:34'),
(151, 10, 'has logged in the system at ', '2022-01-23 13:14:25'),
(152, 10, 'added a new product 3 of Nozzle', '2022-01-23 13:16:10'),
(153, 10, 'has logged in the system at ', '2022-01-23 13:21:15'),
(154, 10, 'added a new product 2 of  Lettuce Black rose seed', '2022-01-23 13:23:16'),
(155, 10, 'added a new product 6 of Rose', '2022-01-23 13:24:36'),
(156, 10, 'has logged in the system at ', '2022-01-23 13:38:47'),
(157, 10, 'added a new product 3 of Tulip', '2022-01-23 13:44:17'),
(158, 10, 'added a new product 3 of Sunflower', '2022-01-23 13:45:53'),
(159, 10, 'added a new product 4 of Garden Trowel', '2022-01-23 13:47:28'),
(160, 10, 'has logged in the system at ', '2022-01-23 14:18:16'),
(161, 14, 'has logged in the system at ', '2022-01-23 14:35:56'),
(162, 14, 'has logged in the system at ', '2022-01-28 00:30:42'),
(163, 14, 'added a new product 5 of The Dream Small Ceramic Pot ', '2022-01-28 00:37:12'),
(164, 15, 'has logged in the system at ', '2022-01-28 00:49:25'),
(165, 15, 'has logged in the system at ', '2022-01-28 00:53:40'),
(166, 15, 'has logged in the system at ', '2022-01-28 01:06:54'),
(167, 16, 'has logged in the system at ', '2022-01-28 01:09:33'),
(168, 18, 'has logged in the system at ', '2022-01-28 01:10:08'),
(169, 18, 'added a new product 5 of Arugula Seeds (Rocket Leaves)', '2022-01-28 01:13:29'),
(170, 18, 'added a new product 5 of Arugula Seeds (Rocket Leaves)', '2022-01-28 01:13:34'),
(171, 18, 'added a new product 5 of Italian Basil Seeds', '2022-01-28 01:17:33'),
(172, 18, 'added a new product 5 of Churi Ceramic Pot (3 Inch Diameter)', '2022-01-28 01:25:34'),
(173, 18, 'added a new product 5 of The Dream Small Ceramic Pot (5.5 Inch Diameter)', '2022-01-28 01:26:46'),
(174, 18, 'added a new product 5 of Gingko', '2022-01-28 01:30:31'),
(175, 18, 'added a new product 5 of Calendula', '2022-01-28 01:31:56'),
(176, 18, 'added a new product 5 of Double Prong Weeder', '2022-01-28 01:33:10'),
(177, 18, 'added a new product 5 of Double-Edge Sickle', '2022-01-28 01:34:37'),
(178, 18, 'added a new product 5 of Garden Soil Mix - 5 Kg ', '2022-01-28 01:39:28'),
(179, 18, 'added a new product 5 of Gardenia Cow Manure - 5 Kg', '2022-01-28 01:40:45'),
(180, 18, 'added a new product 5 of Iron 3 Step Stand for Multiple Plants and Pots Stand', '2022-01-28 01:42:08'),
(181, 18, 'added a new product 5 of MINIATURE GARDEN', '2022-01-28 01:43:36'),
(182, 15, 'has logged in the system at ', '2022-01-28 03:46:28'),
(183, 15, 'added 100 of Gardenia Cow Manure - 5 Kg', '2022-01-28 03:47:56'),
(184, 15, 'added 100 of  Lettuce Black rose seed', '2022-01-28 03:48:08'),
(185, 15, 'added 100 of Arugula Seeds (Rocket Leaves)', '2022-01-28 03:48:17'),
(186, 15, 'added 100 of Calendula', '2022-01-28 03:48:26'),
(187, 15, 'added 100 of Churi Ceramic Pot (3 Inch Diameter)', '2022-01-28 03:48:36'),
(188, 15, 'added 100 of Daisy', '2022-01-28 03:48:49'),
(189, 15, 'added 100 of Double Prong Weeder', '2022-01-28 03:49:08'),
(190, 15, 'added 100 of Double-Edge Sickle', '2022-01-28 03:49:18'),
(191, 15, 'added 100 of Garden Soil Mix - 5 Kg ', '2022-01-28 03:49:28'),
(192, 15, 'added 100 of Garden Trowel', '2022-01-28 03:49:36'),
(193, 15, 'added 100 of Gingko', '2022-01-28 03:49:48'),
(194, 15, 'added 100 of Iris', '2022-01-28 03:49:57'),
(195, 15, 'added 100 of Iron 3 Step Stand for Multiple Plants and Pots Sta', '2022-01-28 03:50:06'),
(196, 15, 'added 100 of Tulip', '2022-01-28 03:50:19'),
(197, 15, 'added 100 of The Dream Small Ceramic Pot (5.5 Inch Diameter)', '2022-01-28 03:50:28'),
(198, 15, 'added 100 of Italian Basil Seeds', '2022-01-28 03:50:37'),
(199, 15, 'added 100 of MINIATURE GARDEN', '2022-01-28 03:50:46'),
(200, 15, 'added 100 of Nozzle', '2022-01-28 03:50:56'),
(201, 15, 'added 100 of Rose', '2022-01-28 03:51:07'),
(202, 15, 'added 100 of Sunflower', '2022-01-28 03:51:15'),
(203, 15, 'has logged in the system at ', '2022-01-28 03:53:39'),
(204, 15, 'has logged in the system at ', '2022-01-28 13:22:18'),
(205, 15, 'has logged in the system at ', '2022-01-28 13:22:19'),
(206, 15, 'has logged in the system at ', '2022-01-28 15:03:34'),
(207, 19, 'has logged in the system at ', '2022-01-28 15:24:42'),
(208, 19, 'added a new product 100 of rose', '2022-01-28 15:37:41'),
(209, 19, 'added 100 of rose', '2022-01-28 15:37:55'),
(210, 19, 'has logged in the system at ', '2022-01-28 15:41:17'),
(211, 19, 'has logged in the system at ', '2022-01-28 18:32:27'),
(212, 20, 'has logged in the system at ', '2022-01-28 19:00:21'),
(213, 20, 'added a new product 100 of rose', '2022-01-28 19:04:05'),
(214, 19, 'has logged in the system at ', '2022-02-10 15:15:37'),
(215, 20, 'has logged in the system at ', '2022-02-14 22:44:26'),
(216, 20, 'has logged in the system at ', '2022-02-18 22:11:58'),
(217, 20, 'has logged in the system at ', '2022-02-18 22:13:07'),
(218, 20, 'has logged in the system at ', '2022-02-18 22:13:23'),
(219, 20, 'has logged in the system at ', '2022-02-18 22:15:30'),
(220, 20, 'has logged in the system at ', '2022-02-18 22:16:01'),
(221, 4, '(Administrator) has logged in the system at ', '2022-02-18 22:21:32'),
(222, 4, '(Administrator) has logged in the system at ', '2022-02-18 22:22:09'),
(223, 4, '(Administrator) has logged in the system at ', '2022-02-18 20:01:53'),
(224, 20, 'has logged in the system at ', '2022-02-18 22:48:09'),
(225, 4, '(Administrator) has logged in the system at ', '2022-02-23 13:33:27'),
(226, 20, 'has logged in the system at ', '2022-02-23 16:16:52'),
(227, 20, 'has logged in the system at ', '2022-02-23 16:36:02'),
(228, 20, 'has logged in the system at ', '2022-02-23 16:38:14'),
(229, 4, '(Administrator) has logged in the system at ', '2022-02-23 14:09:36'),
(230, 4, '(Administrator) has logged in the system at ', '2022-02-23 21:37:29'),
(231, 4, '(Administrator) has logged in the system at ', '2022-02-23 21:41:24'),
(232, 4, '(Administrator) has logged in the system at ', '2022-02-23 22:11:04'),
(233, 4, '(Administrator) has logged in the system at ', '2022-02-23 22:13:51'),
(234, 0, '(Vendor) has logged in the system at ', '2022-02-23 22:16:57'),
(235, 4, '(Administrator) has logged in the system at ', '2022-02-25 21:31:00'),
(236, 0, '(Vendor) has logged in the system at ', '2022-02-25 21:39:07'),
(237, 0, '(Vendor) has logged in the system at ', '2022-02-26 08:20:53'),
(238, 0, 'added a new product 100 of rose', '2022-02-26 09:40:47'),
(239, 20, 'has logged in the system at ', '2022-02-26 12:15:17'),
(240, 0, '(Vendor) has logged in the system at ', '2022-02-26 09:48:18'),
(241, 0, '(Vendor) has logged in the system at ', '2022-02-26 15:01:10'),
(242, 0, '(Vendor) has logged in the system at ', '2022-02-26 15:28:00'),
(243, 22, 'has logged in the system at ', '2022-02-26 18:03:55'),
(244, 0, '(Vendor) has logged in the system at ', '2022-02-26 15:36:46'),
(245, 0, '(Vendor) has logged in the system at ', '2022-02-26 15:41:34'),
(246, 4, '(Administrator) has logged in the system at ', '2022-02-26 15:44:45'),
(247, 0, '(Vendor) has logged in the system at ', '2022-02-26 15:52:37'),
(248, 0, '(Vendor) has logged in the system at ', '2022-02-26 16:05:24'),
(249, 15, 'has logged in the system at ', '2022-02-26 18:35:29'),
(250, 1, '(Vendor) has logged in the system at ', '2022-02-26 16:07:06'),
(251, 0, '(Vendor) has logged in the system at ', '2022-02-26 20:43:59'),
(252, 1, '(Vendor) has logged in the system at ', '2022-02-26 20:44:43'),
(253, 1, 'added a new product 100 of rose', '2022-02-26 20:54:28'),
(254, 15, 'has logged in the system at ', '2022-02-26 23:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `shipping_add` varchar(500) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(53, 13, 1, '338', '434.00', 6, '1'),
(54, 13, 3, '335', '1302.00', 6, '1'),
(55, 13, 1, '334', '434.00', 6, '1'),
(56, 11, 1, '149', '125.00', 6, '1'),
(57, 12, 1, '397', '155.00', 6, '1'),
(58, 11, 1, '149', '125.00', 6, '1'),
(59, 13, 1, '329', '434.00', 6, '1'),
(60, 13, 1, '328', '434.00', 6, '1'),
(61, 13, 1, '327', '434.00', 6, '1'),
(62, 12, 2, '395', '310.00', 6, '1'),
(63, 13, 2, '325', '868.00', 6, '1'),
(64, 13, 1, '324', '434.00', 6, '1'),
(65, 11, 1, '148', '125.00', 6, '1'),
(66, 13, 1, '323', '434.00', 6, '1'),
(67, 11, 1, '147', '125.00', 6, '1'),
(68, 12, 1, '394', '155.00', 6, '1'),
(69, 12, 1, '393', '155.00', 6, '1'),
(70, 13, 1, '322', '434.00', 7, '1'),
(71, 11, 1, '146', '125.00', 7, '1'),
(72, 13, 1, '321', '434.00', 7, '1'),
(73, 13, 1, '320', '434.00', 7, '1'),
(74, 13, 1, '319', '434.00', 7, '1'),
(75, 13, 1, '318', '434.00', 6, '1'),
(76, 13, 3, '315', '1302.00', 6, '1'),
(77, 13, 1, '314', '434.00', 6, '1'),
(78, 13, 1, '313', '434.00', 6, '1'),
(79, 14, 1, '233', '760.00', 6, '1'),
(80, 13, 1, '311', '434.00', 6, '1'),
(81, 13, 2, '309', '868.00', 6, '1'),
(83, 14, 1, '233', '760.00', 6, '1'),
(84, 13, 1, '308', '434.00', 6, '1'),
(85, 15, 1, '455', '455.00', 6, '1'),
(86, 11, 1, '145', '125.00', 6, '1'),
(87, 13, 1, '306', '434.00', 6, '1'),
(88, 13, 1, '304', '434.00', 6, '1'),
(89, 13, 1, '303', '434.00', 6, '1'),
(90, 13, 1, '302', '434.00', 6, '1'),
(91, 14, 1, '232', '760.00', 6, '1'),
(92, 13, 1, '300', '434.00', 6, '1'),
(93, 14, 10, '222', '7600.00', 8, '1'),
(94, 13, 200, '0', '86800.00', 8, '1'),
(95, 13, 300, '0', '130200.00', 8, '1'),
(96, 11, 1, '144', '125.00', 6, '1'),
(97, 11, 144, '0', '18000.00', 6, '1'),
(102, 12, 1, '391', '155.00', 8, '1'),
(104, 14, 1, '221', '760.00', 9, '1'),
(105, 17, 1, '25', '2200.00', 9, '1'),
(111, 23, 3, '99', '357.00', 19, '1'),
(112, 32, 1, '', '200.00', 19, '1'),
(113, 23, 4, '95', '476.00', 19, '1'),
(114, 32, 4, '', '800.00', 19, '1'),
(116, 23, 5, '90', '595.00', 20, '1'),
(117, 32, 8, '', '1600.00', 20, '1'),
(118, 29, 3, '102', '450.00', 20, '1'),
(119, 35, 1, '104', '150.00', 20, '1'),
(120, 23, 1, '89', '119.00', 20, '1'),
(121, 35, 1, '103', '150.00', 20, '1'),
(122, 35, 3, '100', '450.00', 20, '1'),
(124, 23, 6, '83', '714.00', 15, '2'),
(125, 35, 5, '95', '750.00', 15, '2'),
(126, 20, 20, '85', '1580.00', 15, '2');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(20, 'Daisy', 'Daisy, any of several species of flowering plants belonging to the aster family (Asteraceae). The name daisy commonly denotes the oxeye daisy (Leucanthemum vulgare), the Shasta daisy and the English, or true, daisy (Bellis perennis). These and other plants called daisies are distinguished by a composite flower head composed of 15 to 30 white ray flowers surrounding a center consisting of bright yellow disk flowers, though other color combinations are common.', 85, '99.00', '79.00', 'Flower', 'Nursery', '1001', 'DAISY.png', 'DAISY.png', 'DAISY.png'),
(21, 'Iris', 'Iris is a genus of 260–300 species of flowering plants with showy flowers. ', 104, '89.00', '69.00', 'Offers', 'Alcatroz', '1004', 'IRIS.png', 'IRIS.png', 'IRIS.png'),
(22, 'Nozzle', ' The X826 Five Way Dial Plastic Hose Nozzle has an adjustable shower head that can be converted to mist and full steam. It can easily fit any garden hose. It is used to water shrub, vegetation beds, and small-sized lawns. This tool is chosen for its reliability and four types of sprays.', 103, '199.00', '179.00', 'Accessories ', 'Alcatroz', '1234', 'NOZZLE.png', 'NOZZLE.png', 'NOZZLE.png'),
(23, ' Lettuce Black rose seed', 'The black rose lettuce is a relatively unknown variety, but just as amazing as any. It has curly, fan-shaped leaves in deep red and a shiny surface. The leaves form a compact rosette when they grow 5- to 8-inches. This lettuce has a slightly bitter and nutty flavour, making it the perfect balance for sweeter lettuces or dressings', 83, '129.00', '119.00', 'Flower', 'Alcatroz', '1235', 'lettuce black rose seed.png', 'lettuce black rose seed.png', 'lettuce black rose seed.png'),
(24, 'Rose', 'A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles.', 106, '39.00', '29.00', 'Flower', 'Nursery', '1236', 'ROSE.png', 'ROSE.png', 'ROSE.png'),
(25, 'Tulip', 'Tulips (Tulipa) are a genus of spring-blooming perennial herbaceous bulbiferous geophytes (having bulbs as storage organs). The flowers are usually large, showy and brightly colored, generally red, pink, yellow, or white ', 103, '77.00', '57.00', 'Flower', 'Nursery', '1456', 'WhatsApp Image 2022-01-23 at 11.13.46 AM.jpeg', 'earl-wilcox-_PH_2xQo3iQ-unsplash.jpg', 'WhatsApp Image 2022-01-23 at 11.13.46 AM.jpeg'),
(26, 'Sunflower', 'Helianthus (/?hi?li?æn??s/)[3] is a genus comprising about 70 species of annual and perennial flowering plants in the daisy family Asteraceae.[4][5] Except for three South American species, the species of Helianthus are native to North America and Central America. The common names \"sunflower\" and \"common sunflower\" typically refer to the popular annual species', 103, '68.00', '50.00', 'Flower', 'Nursery', '1678', 'WhatsApp Image 2022-01-23 at 11.13.45 AM.jpeg', 'WhatsApp Image 2022-01-23 at 11.13.45 AM.jpeg', 'WhatsApp Image 2022-01-23 at 11.13.45 AM.jpeg'),
(27, 'Garden Trowel', 'A garden trowel is a small handheld shovel or spade. Garden trowels usually have wooden, plastic or rubber coated metal handles. The actual shovel part of a garden trowel can be made of various types of metal or even plastic, sometimes the metal blades are coated or painted.', 104, '159.00', '149.00', 'Accessories ', 'Alcatroz', '1278', 'Untitled_1024x1024.png', 'Untitled_1024x1024.png', 'Untitled_1024x1024.png'),
(29, 'Arugula Seeds (Rocket Leaves)', 'More famous in the culinary circle as rocket leaves, are bite-sized tender leaves with a tangy flavour and used primrily in salads. Rich in beneficial nitrates and polyphenols, it is also asscoiated with reducing risk or cancer, diabetes, and osteoporosis. An annual plant that prefers cooler climate and loves full sun and a well-draining soil.', 102, '150.00', '150.00', 'Seeds', 'Nursery', '1364', 'seed 1.png', 'seed 1.png', 'seed 1.png'),
(31, 'Italian Basil Seeds', 'Basil is one of the essential Italian herbs and is very easy to grow. It boasts of 2-3 inch long, dark green leaves, has a spicy, fragrant taste. The Italain basil is used extensively in the food industry,fresh in salads, on crostini or bruschetta, or in general cooking for pesto, sauces.', 105, '150.00', '150.00', 'Seeds', 'Alcatroz', '1365', 'seed 2.png', 'seed 2.png', 'seed 2.png'),
(32, 'Churi Ceramic Pot (3 Inch Diameter)', 'This is one of the cutest ceramic tabletop planters you will ever come across. Made of premium quality lightweight ceramic with a highly pigmented and glossy finish, the churi planter is a great size and shape to elevate your succulents to the next level. Add it to your side tables or work tables to add a pop of colour and greenery to your space.', 105, '200.00', '200.00', 'Pots', 'Nursery', '1366', 'POT 2.png', 'POT 2.png', 'POT 2.png'),
(33, 'The Dream Small Ceramic Pot (5.5 Inch Diameter)', 'The shape will remind you of the planters in your grandparents home but the look and feel of the premium ceramic and stunning glaze will give you a modern feel. The planter has a weighted base with drainage hole to save your plant form death by overwatering. A time tested shape that complements any plant and adds to its beauty.', 105, '200.00', '200.00', 'Pots', 'Nursery', '1367', 'pot1.png', 'pot1.png', 'pot1.png'),
(34, 'Gingko', 'As one of the oldest tree species, gingko is also one of the oldest homeopathic plants and a key herb in Chinese medicine. The leaves are used to create capsules, tablets, and extracts, and when dried, can be consumed as a tea.', 105, '150.00', '150.00', 'Flower', 'Plant Nursery', '1368', 'plant 1.png', 'plant 1.png', 'plant 1.png'),
(35, 'Calendula', 'Calendula is also known as pot marigold. It’s a centuries-old antifungal, antiseptic, wound-healing ally. The petals of these cheerful yellow-and-orange daisy-like flowers lend skin-soothing properties to many natural cosmetics and diaper creams.', 95, '150.00', '150.00', 'Flower', 'Alcatroz', '1369', 'plant 2.png', 'plant 2.png', 'plant 2.png'),
(36, 'Double Prong Weeder', 'The Double Prong Weeder is an upgrade to the Single Prong and is used for weeding, small root removal, loosening the soil efficiently and digging holes to sow seeds. It comes with a wooden handle for a powerful and firm grip and is perfectly sized for flower beds and small vegetable gardens.', 105, '250.00', '250.00', 'Accessories ', 'Alcatroz', '1400', 'acc 1.png', 'acc 1.png', 'acc 1.png'),
(37, 'Double-Edge Sickle', 'The Double-Edged Sickle is used to remove troublesome weeds and harvesting crops. It is unmatched in its efficiency with a superior quality blade and a firm wooden handle that allows the gardener or farmer to clear weeds and harvest their crops efficiently.', 54, '200.00', '200.00', 'Accessories ', 'Alcatroz', '1401', 'acc 2.png', 'acc 2.png', 'acc 2.png'),
(38, 'Garden Soil Mix - 5 Kg ', 'This soil mix is an excellent blend of nutrient-rich red soil and cow manure. The mixture can be readily used by both urban and commercial growers. Completely organic in nature it can be utilized for ornamental, vegetable or flowering plants with ease. ', 105, '250.00', '250.00', 'Fertilizer', 'Alcatroz', '1402', 'fer 1.png', 'fer 1.png', 'fer 1.png'),
(39, 'Gardenia Cow Manure - 5 Kg', 'Gardenia Cow Manure is an excellent fertilizer highly rich with organic matter and helps to improve aeration and break up compact soils. It is developed from composted cow dung of the Indian Desi cow and is incredibly rich with beneficial bacteria that convert soil nutrients into readily available forms for the tender plant.', 105, '250.00', '250.00', 'Fertilizer', 'Alcatroz', '1403', 'fer 2.jpg', 'fer 2.jpg', 'fer 2.jpg'),
(40, 'Iron 3 Step Stand for Multiple Plants and Pots Sta', '•	Durable and Able to Hold Multiple Plants – This space-saving & split-level design has 3 step iron planter stand for balcony &step stand for ceramic and heavy duty plant pots .those sturdy shelf that can be used to store and display beautiful gamla and tulsi plants on those plant shelf.', 105, '500.00', '500.00', 'Accessories ', 'Alcatroz', '1404', 'stand.png', 'stand.png', 'stand.png'),
(41, 'MINIATURE GARDEN', 'Don’t give up on that dream garden and landscape just cause you live in a matchbox apartment. Scale it down to fit into a single quirky planter for home sweet (and tiny) home.', 105, '300.00', '300.00', 'Accessories ', 'Alcatroz', '1405', 'mini.png', 'mini.png', 'mini.png');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_address` varchar(200) NOT NULL,
  `supp_contact` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(0, 'Nursery', 'Vashi', '(987)-884-12', 'picc@email.moto!'),
(1, 'Plant Nursery', 'Thane', '45643534567879', 'emal'),
(2, 'Alcatroz', 'Sta. Mesa Manila', '9435398928', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(10, 'Juhi', 'Baburao', 'Ramod', 'New panvel', 'juhiramod@gmail.com', '8898958311', 'juhi19', 'a1Bz20ydqelm8m1wqld3915844cde56f2dccfd24c7d34d12f0'),
(11, 'Rajit', 'p', 'shetty', 'Kalyan', 'rajit@gmail.com', '9883837', 'rajit', 'a1Bz20ydqelm8m1wqld3915844cde56f2dccfd24c7d34d12f0'),
(12, 'shubhom', 'manoj', 'rawat', 'thane', 'shubhom@gmail.com', '9882715243', 'shubhom', 'a1Bz20ydqelm8m1wqld3915844cde56f2dccfd24c7d34d12f0'),
(13, 'Pratik', 'm', 'Shrivastav', 'panvel', 'pratik@gmail.com', '987654321', 'pratik', 'a1Bz20ydqelm8m1wql912e79cd13c64069d91da65d62fbb78c'),
(14, 'Julie', 'b', 'Ramod', 'New panvel', 'julie@gmail.com', '8898958322', 'julie', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055'),
(15, 'Pratik', 'Prashant', 'Shrivastav', 'E-63 SAI UDHYAN CHS SAI NAGAR', 'pratikshrivastav20@gmail.com', '9969328125', 'pratik20', 'a1Bz20ydqelm8m1wql0cb2b62754dfd12b6ed0161d4b447df7'),
(16, 'juhi', 'hh', 'ramod', 'panvel', 'shubhomrawat@gmail.com', '7021947772', 'juhi', 'a1Bz20ydqelm8m1wql920e3e1ffd0aa54c60a84af197f40c5b'),
(17, 'shubhom', 'manoj', 'rawat', 'NEELKANTH GREENS B-3/ 701', 'shubhomrawat27@gmail.com', '7021947772', 'juhi', 'a1Bz20ydqelm8m1wql920e3e1ffd0aa54c60a84af197f40c5b'),
(18, 'Rajit', 'Chandrakant', 'Shetty', '306,2nd floor, b wing, kalpraj apt, kalyan west', 'rcshetty2106@gmail.com', '9137022326', 'rajit', 'a1Bz20ydqelm8m1wql86117571db83e5a95347b41c5785fb6c'),
(19, 'Pratik', 'Prashant', 'Shrivastav', 'E-63 SAI UDHYAN CHS SAI NAGAR', 'pratikshrivastav20@gmail.com', '9969328125', 'pratik2021', 'a1Bz20ydqelm8m1wql0cb2b62754dfd12b6ed0161d4b447df7'),
(20, 'Pratik', 'Prashant', 'Shrivastav', 'E-63 SAI UDHYAN CHS SAI NAGAR', 'pratikshrivastav20@gmail.com', '9969328125', 'pratik20222', 'a1Bz20ydqelm8m1wql0cb2b62754dfd12b6ed0161d4b447df7'),
(21, 'shubhom', 'manoj', 'rawat', 'NEELKANTH GREENS B-3/ 701', 'shubhomrawat27@gmail.com', '7021947772', 'shub', 'a1Bz20ydqelm8m1wqlf22e53bd186cdd54bd2f1d99bfc44068'),
(22, 'W', 's', 'r', 'dDWDEAFQFA', 'shubh@gmail.com', '8797', 'sam2022', 'a1Bz20ydqelm8m1wql764f514bdea46dbcdf2481956b0fcb39');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `supplier` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`user_id`, `firstname`, `lastname`, `supplier`, `email`, `username`, `password`) VALUES
(0, 'Rajit', 'Shetty', 'Nursery', 'rajitshetty@gmail.com', 'rajit2022', 'a1Bz20ydqelm8m1wql0cb2b62754dfd12b6ed0161d4b447df7'),
(1, 'shubhom', 'rawat', 'Plant Nursery', 'shubhom@gmail.com', 'shubhom2022', 'a1Bz20ydqelm8m1wql6785161ce53a744d08963027335c717f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
