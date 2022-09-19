-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 11:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `street_hut_db`
--
CREATE DATABASE IF NOT EXISTS `street_hut_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `street_hut_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(11, 9, 43, 4),
(15, 9, 30, 1),
(16, 9, 38, 3),
(17, 9, 31, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Drinkables', 'drink'),
(2, 'Meals', 'meal'),
(4, 'Extras', 'ext'),
(5, 'New Arrivals', 'new'),
(6, 'Promo', 'promo'),
(7, 'Desserts', 'desserts');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 33, 2),
(15, 9, 30, 5),
(16, 9, 32, 2),
(17, 9, 38, 3),
(18, 10, 42, 3),
(19, 10, 43, 4),
(20, 10, 45, 5),
(21, 11, 43, 1),
(22, 11, 41, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 2, 'Devilled chicken Pizza -Large', '<p>Devilled chicken in spicy sauce with a double layer of cheese.</p>\n', 'devilled-chicken-pizza-large', 2500, 'devilled-chicken-pizza-large.jpg', '2022-06-06', 1),
(31, 2, 'Butter Chicken Masala Pizza -L', '<p>The ever famous Butter Masala Chicken together with a layer of cream cheese, fresh onions, coriander, ginger and garlic, blanketed with a layer of mozzarella cheese.</p>\r\n', 'butter-chicken-masala-pizza-l', 2400, 'butter-chicken-masala-pizza-l.jpg', '2022-06-06', 2),
(32, 2, 'Sri Lankan Spicy Chicken Pizza -L', '<p>A combination of black chicken, devilled chicken &amp; chicken sausages, accompanied by nai miris, garlic &amp; onion with a double layer of mozzarella cheese.</p>\r\n', 'sri-lankan-spicy-chicken-pizza-l', 2600, 'sri-lankan-spicy-chicken-pizza-l.jpg', '2022-06-06', 1),
(33, 2, 'Super Supreme Pizza -L', '<p>Roast chicken, chicken bacon, chicken sausage, beef pepperoni, pineapple, bell pepper, mushroom, onion and olive with a double layer of mozzarella cheese</p>\r\n', 'super-supreme-pizza-l', 3200, 'super-supreme-pizza-l.jpg', '2022-06-06', 1),
(35, 2, 'Chicken Burger -M', '<p><strong>Chicken Burger</strong></p>\r\n\r\n<ul>\r\n	<li>Medium Portion</li>\r\n	<li>Griled Chicken&nbsp;</li>\r\n	<li>Organic Flavour</li>\r\n</ul>\r\n', 'chicken-burger-m', 850, 'chicken-burger-m.jpg', '2022-06-06', 1),
(37, 4, 'French Fries -L', '<p>In house Curated Ingerdients</p>\r\n\r\n<p>With a Touch of Organic Ingerdients</p>\r\n', 'french-fries-l', 350, 'french-fries-l.jpg', '2022-05-27', 1),
(38, 4, 'French Fries -M', '<p>In house Curated Ingerdients</p>\r\n\r\n<p>With a Touch of Organic Ingerdients</p>\r\n\r\n<p>single portion</p>\r\n', 'french-fries-m', 250, 'french-fries-m.jpg', '2022-06-03', 2),
(40, 2, 'Veggi Pizza - L', '', 'veggi-pizza-l', 2000, 'veggi-pizza-l_1653177515.jpg', '0000-00-00', 0),
(41, 6, 'Choco Cookie Set of 6/p', '<p><strong>Choco Cookie Set of 6/p</strong></p>\r\n\r\n<p>High Quality Chocolate Cookee with Choc&nbsp;chips</p>\r\n', 'choco-cookie-set-of-6-p', 600, 'choco-cookie-set-of-6-p.jpg', '2022-06-06', 1),
(42, 7, 'Lava Cake ', '<p>Hot Melted Choco Lava Cake&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'lava-cake', 500, 'lava-cake.jpg', '0000-00-00', 0),
(43, 1, 'Chamomile Tea', '<p>Chamomile Tea</p>\r\n\r\n<ul>\r\n	<li>Dried chamomile flowers are used to make chamomile tea.</li>\r\n	<li>Researchers are interested in the benefits of consuming chamomile tea.</li>\r\n	<li>Similarly to any other herbal remedy, it is not safe for everyone.</li>\r\n	<li>The more potent the tea, the more likely it is to offer health benefits.</li>\r\n</ul>\r\n', 'chamomile-tea', 150, 'chamomile-tea.jpg', '2022-06-06', 5),
(44, 5, 'Fried Chicken Wings with French Fries', '<p>Fried Chicken Wings with French Fries.</p>\r\n\r\n<p>Deep Fried Chicken with Masala Topping</p>\r\n', 'fried-chicken-wings-french-fries', 950, 'fried-chicken-wings-french-fries.jpg', '2022-05-27', 1),
(45, 5, 'Berry Popsicle Pack of 4', '<p>Berry Ice Pospsicle&nbsp;</p>\r\n\r\n<p>Melt Proof Packing</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'berry-popsicle-pack-of-4', 600, 'berry-popsicle-pack-of-4.jpg', '2022-05-24', 9),
(46, 2, 'Tandoori Chicken Burger', '<p>Tandoori Chicken Burger</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Top Ingerdients</strong></li>\r\n	<li><strong>Indian Cuisine</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'tandoori-chicken-burger', 1050, 'tandoori-chicken-burger.jpg', '0000-00-00', 0),
(47, 6, 'Pack of 4  Flavoured Donuts', '<p>Pack of 4 &nbsp;Flavoured Donuts</p>\r\n\r\n<p>Was $4.50&nbsp; &nbsp;Save $1.00</p>\r\n\r\n<ul>\r\n	<li>blue berry</li>\r\n	<li>chocolate</li>\r\n	<li>sprinkles</li>\r\n	<li>stawberry&nbsp;</li>\r\n</ul>\r\n', 'pack-of-4-flavoured-donuts', 500, 'pack-of-4-flavoured-donuts.jpg', '0000-00-00', 0),
(48, 2, 'Masala Chicken Curry', 'Large portion of Masala Chicken Curry with Organic Ingredients Such as Coriander Leaves,Mint\r\n', 'masala-chicken-curry', 1000, 'masala-chicken-curry.jpg', '2022-05-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2022-05-23'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2022-05-24'),
(11, 32, 'PAYID-MKPGSQQ9S770547H3335121S', '2022-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$lSTVlrcTiOi0iE7LA8lG3efBFDNQkMAKzQVykU69Qj15eNF6og7Xe', 1, 'Admin', 'Street Hut', '', '', 'log _p.png', 1, '', '', '2022-05-21'),
(9, 'aabidhme@gmail.com', '$2y$10$ARRooAd86Yjfp/C1ZoZfvedJpNt7i9uby4UzHDmGPBo.DFXE88kbG', 0, 'Aabidh', 'Wadood', 'Mawanella,Srilanka', '0763888698', 'male2.png', 1, 'k8FBpynQfqsv', 'TtapRVkbj3DOQWJ', '2022-05-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
