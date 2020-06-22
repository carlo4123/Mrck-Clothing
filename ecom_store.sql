-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 10:56 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Carlo', 'carlo4123@gmail.com', 'carlo4123', 'member2.jpg', 'Philippines', ' Celebrity', '09957894226', 'web-deleloper'),
(2, 'liza', 'liza@gmail.com', '123456', 'liza.jpg', 'Philippines', 'Celebrity', '09957894226', 'Baby');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(16) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(14, '::1', 1, ''),
(4, '::1', 1, ''),
(35, '::1', 1, 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.'),
(2, 'Women', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.'),
(3, 'Kids', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.'),
(4, 'Others', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(4, 'Ricky', 'rickysullano@gmail.com', '123456', 'philippines', 'QC', '1234567891', 'fakjfhalkfhksjhfkla', 'profilePic.jpg', '::1'),
(5, 'carlo', 'rena@gmail.com', 'carlo4123', 'philippines', 'quezon city', '123456789', 'six street', 'liza.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 1, 4995, 89944727, 5, 'Medium', '2020-04-14', 'Complete'),
(9, 5, 67, 1498499304, 1, 'Large', '2020-04-27', 'pending'),
(10, 5, 750, 1498499304, 5, 'Medium', '2020-04-27', 'pending'),
(11, 5, 4995, 1498499304, 5, 'Large', '2020-04-27', 'pending'),
(12, 4, 693, 874732865, 1, 'Large', '2020-04-27', 'pending'),
(13, 4, 815, 874732865, 5, 'Small', '2020-04-27', 'pending'),
(14, 4, 750, 874732865, 5, 'Large', '2020-04-27', 'pending'),
(15, 4, 4995, 874732865, 5, 'Medium', '2020-04-27', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 89944727, 4995, 'UBL / Omni Paisa', 12333211, 4123566, '2021-03-25'),
(2, 797318409, 0, 'paypall', 123456, 123456, '2020-03-25'),
(3, 2147483647, 0, 'Easy Paisa', 12333211, 0, '2021-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(11) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(9, 5, 1498499304, '3', 1, 'Large', 'pending'),
(10, 5, 1498499304, '4', 5, 'Medium', 'pending'),
(11, 5, 1498499304, '11', 5, 'Large', 'pending'),
(12, 4, 874732865, '14', 1, 'Large', 'pending'),
(13, 4, 874732865, '13', 5, 'Small', 'pending'),
(14, 4, 874732865, '6', 5, 'Large', 'pending'),
(15, 4, 874732865, '11', 5, 'Medium', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(26, 3, 3, '2020-06-19 18:13:10', 'shoes men', '8.jpg', '8.1.jpg', '8.2.jpg', 100, 'shoes', '<p>shoes&nbsp;</p>'),
(27, 1, 1, '2020-06-19 18:40:44', 'jackets', 'Untitled-2_0001_c1.2.jpg.jpg', 'Untitled-2_0000_c1.1.jpg.jpg', 'Untitled-2_0002_c1.jpg.jpg', 100, 'jacket', '<p>jackets</p>'),
(28, 2, 2, '2020-06-19 19:24:35', 'watch', 'Untitled-2_0080_w4.jpg.jpg', 'Untitled-2_0079_w4.2.jpg.jpg', 'Untitled-2_0078_w4.1.jpg.jpg', 100, 'watch for women', '<p>watch for women</p>'),
(29, 5, 2, '2020-06-19 19:33:59', 'T-shirts', 'Untitled-2_0068_t7.jpg.jpg', 'Untitled-2_0067_t7.2.jpg.jpg', 'Untitled-2_0066_t7.1.jpg.jpg', 100, 't-shirt for girls', '<p>t-shirt for girls</p>'),
(30, 2, 1, '2020-06-19 19:46:32', 'watch', 'Untitled-2_0077_w3.jpg.jpg', 'Untitled-2_0076_w3.2.jpg.jpg', 'Untitled-2_0075_w3.1.jpg.jpg', 100, 'watch for women', '<p>watch for women</p>'),
(31, 5, 2, '2020-06-19 19:48:11', 'T-shirts', 'Untitled-2_0065_t6.jpg.jpg', 'Untitled-2_0064_t6.2.jpg.jpg', 'Untitled-2_0063_t6.1.jpg.jpg', 100, 'T-shirts', '<p>T-shirtsfor women</p>'),
(32, 3, 1, '2020-06-19 19:53:00', 'shoes men', 'Untitled-2_0009_5.jpg.jpg', 'Untitled-2_0009_5.jpg.jpg', 'Untitled-2_0010_5.2.jpg.jpg', 100, 'shoes', '<p>shoes</p>'),
(33, 4, 1, '2020-06-19 19:54:31', 'Coats', 'Untitled-2_0002_c1.jpg.jpg', 'Untitled-2_0000_c1.1.jpg.jpg', 'Untitled-2_0001_c1.2.jpg.jpg', 100, 'coats', '<p>coats</p>'),
(34, 1, 1, '2020-06-19 20:05:39', 'jackets', 'Untitled-2_0023_j2.jpg.jpg', 'Untitled-2_0022_j2.2.jpg.jpg', 'Untitled-2_0021_j2.1.jpg.jpg', 100, 'jacket', '<p>jacket</p>'),
(35, 1, 3, '2020-06-19 20:06:58', 'jackets', 'Untitled-2_0036_j7.1.jpg.jpg', 'Untitled-2_0037_j7.2.jpg.jpg', 'Untitled-2_0038_j7.jpg.jpg', 100, 'jacket', '<p>jacket</p>'),
(36, 3, 2, '2020-06-19 20:15:59', 'shoes ', 'Untitled-2_0003_7.jpg.jpg', '7.jpg', 'Untitled-2_0004_7.2.jpg.jpg', 100, 'shoes for women', '<p>shoes for women</p>'),
(37, 5, 3, '2020-06-19 20:26:58', 'T-shirts', 'Untitled-2_0059_t4.jpg.jpg', 'Untitled-2_0058_t4.2.jpg.jpg', 'Untitled-2_0057_t4.1.jpg.jpg', 100, 'minecraft', '<p>minecraft</p>'),
(38, 5, 3, '2020-06-19 20:27:35', 'T-shirts', 'Untitled-2_0060_t5.1.jpg.jpg', 'Untitled-2_0062_t5.jpeg.jpg', 'Untitled-2_0061_t5.2.jpg.jpg', 100, 'marvel', '<p>marvel</p>'),
(39, 4, 2, '2020-06-19 20:28:53', 'Coats', 'Untitled-2_0003_c2.1.jpg.jpg', 'Untitled-2_0004_c2.2.jpg.jpg', 'Untitled-2_0005_c2.jpg.jpg', 100, 'coats', '<p>coats</p>'),
(40, 4, 2, '2020-06-19 20:29:50', 'Coats', 'Untitled-2_0009_c4.1.jpg.jpg', 'Untitled-2_0011_c4.jpg.jpg', 'Untitled-2_0010_c4.2.jpg.jpg', 100, 'coats', '<p>coats</p>'),
(41, 4, 2, '2020-06-19 20:30:30', 'Coats', 'Untitled-2_0006_c3.1.jpg.jpg', 'Untitled-2_0008_c3.jpg.jpg', 'Untitled-2_0007_c3.2.jpg.jpg', 100, 'coats', '<p>coats</p>'),
(42, 1, 1, '2020-06-19 20:31:47', 'jackets', 'Untitled-2_0020_j1.jpg.jpg', 'Untitled-2_0019_j1.2.jpg.jpg', 'Untitled-2_0018_j1.1.jpg.jpg', 100, 'jackets', '<p>jackets</p>'),
(43, 1, 1, '2020-06-19 20:32:38', 'jackets', 'Untitled-2_0026_j3.jpg.jpg', 'Untitled-2_0025_j3.2.jpg.jpg', 'Untitled-2_0024_j3.1.jpg.jpg', 100, 'jackets', '<p>jackets</p>'),
(44, 1, 3, '2020-06-19 20:34:38', 'jackets', 'Untitled-2_0039_j8.1.jpg.jpg', 'Untitled-2_0041_j8.jpg.jpg', 'Untitled-2_0040_j8.2.jpg.jpg', 100, 'jacket', '<p>jackets</p>'),
(45, 1, 3, '2020-06-19 20:35:57', 'jackets', 'Untitled-2_0032_j5.jpg.jpg', 'Untitled-2_0030_j5.1.jpg.jpg', 'Untitled-2_0031_j5.2.jpg.jpg', 100, 'jackets', '<p>jackets</p>'),
(46, 1, 2, '2020-06-19 20:36:30', 'jackets', 'Untitled-2_0029_j4.jpg.jpg', 'Untitled-2_0028_j4.2.jpg.jpg', 'Untitled-2_0027_j4.1.jpg.jpg', 100, 'jacket', '<p>jackets</p>'),
(47, 5, 1, '2020-06-19 20:40:41', 'T-shirts', 'Untitled-2_0048_t1.1.jpg.jpg', 'Untitled-2_0049_t1.2.jpg.jpg', 'Untitled-2_0050_t1.jpg.jpg', 100, 'T-shirts', '<p>T-shirts</p>'),
(48, 3, 2, '2020-06-19 20:41:24', 'shoes women', 'Untitled-2_0006_6.jpg.jpg', 'Untitled-2_0007_6.2.jpg.jpg', 'Untitled-2_0008_6.1.jpg.jpg', 100, 'shoes', '<p>shoes</p>'),
(49, 3, 1, '2020-06-19 20:43:33', 'shoes men', 'Untitled-2_0014_4.1.jpg.jpg', 'Untitled-2_0012_4.jpg.jpg', 'Untitled-2_0013_4.2.jpg.jpg', 100, 'shoes', '<p>shoes</p>'),
(50, 1, 2, '2020-06-19 20:44:16', 'jackets', 'Untitled-2_0013_c5.2.jpg.jpg', 'Untitled-2_0014_c5.jpg.jpg', 'Untitled-2_0012_c5.1.jpg.jpg', 100, 'jacket', '<p>jacket</p>'),
(51, 3, 1, '2020-06-19 20:45:18', 'shoes men', 'Untitled-2_0015_3.2.jpg.jpg', 'Untitled-2_0017_3.jpeg.jpg', 'Untitled-2_0016_3.1.jpg.jpg', 100, 'shoes', '<p>jacket</p>'),
(52, 4, 1, '2020-06-19 20:45:53', 'Coats', 'Untitled-2_0015_c6.1.jpg.jpg', 'Untitled-2_0016_c6.2.jpg.jpg', 'Untitled-2_0017_c6.jpg.jpg', 100, 'coats', '<p>coats</p>'),
(53, 1, 2, '2020-06-19 20:47:26', 'jackets', 'Untitled-2_0033_j6.1.jpg.jpg', 'Untitled-2_0034_j6.2.jpeg.jpg', 'Untitled-2_0035_j6.jpg.jpg', 100, 'jacket', '<p>jacket</p>'),
(54, 3, 1, '2020-06-19 20:47:58', 'shoes men', 'Untitled-2_0042_shoes1.1.jpg.jpg', 'Untitled-2_0043_shoes1.2.jpg.jpg', 'Untitled-2_0044_shoes1.jpg.jpg', 100, 'shoes', '<p>shoes</p>'),
(55, 3, 1, '2020-06-19 20:48:29', 'shoes men', 'Untitled-2_0047_shoes2.jpg.jpg', 'Untitled-2_0046_shoes2.2.jpg.jpg', 'Untitled-2_0045_shoes2.1.jpg.jpg', 100, 'shoes', '<p>shoes</p>'),
(56, 5, 1, '2020-06-19 20:49:13', 'T-shirts', 'Untitled-2_0051_t2.1.jpg.jpg', 'Untitled-2_0052_t2.2.jpg.jpg', 'Untitled-2_0053_t2.jpg.jpg', 100, 'T-shirts', '<p>T-shirts</p>'),
(57, 5, 3, '2020-06-19 20:49:39', 'T-shirts', 'Untitled-2_0056_t3.jpg.jpg', 'Untitled-2_0055_t3.2.jpg.jpg', 'Untitled-2_0054_t3.1.jpg.jpg', 100, 'T-shirts', '<p>T-shirts</p>'),
(58, 2, 1, '2020-06-19 20:50:15', 'watch', 'Untitled-2_0071_w1.jpg.jpg', 'Untitled-2_0070_w1.2.jpg.jpg', 'Untitled-2_0069_w1.1.jpg.jpg', 100, 'watch men', '<p>watch men</p>'),
(59, 2, 1, '2020-06-19 20:50:53', 'watch', 'Untitled-2_0073_w2.2.jpg.jpg', 'Untitled-2_0074_w2.jpg.jpg', 'Untitled-2_0072_w2.1.jpg.jpg', 100, 'watch men', '<p>watch men</p>'),
(60, 2, 3, '2020-06-19 20:51:29', 'watch for kids', 'Untitled-2_0083_w5.jpg.jpg', 'Untitled-2_0082_w5.2.jpg.jpg', 'Untitled-2_0081_w5.1.jpg.jpg', 100, 'watch for kids', '<p>watch for kids</p>'),
(61, 2, 3, '2020-06-19 20:52:03', 'watch for kids', 'Untitled-2_0084_w6.1.jpg.jpg', 'Untitled-2_0085_w6.2.jpg.jpg', 'Untitled-2_0086_w6.jpg.jpg', 100, 'watch for kids', '<p>watch for kids</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Jackets', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.'),
(2, 'Accesories', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.'),
(3, 'Shoes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.'),
(4, 'Coats', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.'),
(5, 'T-Shirts', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum reprehenderit officiis at tempore dolorem, maiores magni deserunt culpa iste eveniet sed dolore, obcaecati accusantium, possimus architecto saepe fugit. Nam, doloribus.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'slide1', 'slider-number-9.jpg', 'https://www.facebook.com/rena.atacador'),
(2, 'slide2', 'slide-7.jpg', ''),
(3, 'slide3', 'slide-3.jpg', ''),
(4, 'slide4', 'slide-4.jpg', ''),
(5, 'slide5', 'slide-5.jpg', ''),
(6, 'slide6', 'slide-6.jpg', ''),
(7, 'slider7', 'slide-8.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
