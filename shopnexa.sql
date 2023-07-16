-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 09:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopnexa`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) NOT NULL,
  `web_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `web_name`, `description`, `address`, `email`, `mobile_no`) VALUES
(11, 'shopnexa', 'hopNexa: Your ultimate destination for convenient and reliable online shopping.', 'at post varad bk', 'manojmahajan906@gmail.com', '8554898876');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_image`) VALUES
(22, 'mobiles', 'uploads/cat-images/44_12.jpg'),
(23, 'Appliances', 'uploads/cat-images/OIP (2).jpg'),
(24, 'shoes ', 'uploads/cat-images/o.jpg'),
(26, 'electronics', 'uploads/cat-images/OIP (1).jpg'),
(27, 'Grocery ', 'uploads/cat-images/OIP.jpg'),
(28, 'fashion', 'uploads/cat-images/Urban-Clothing-Stores.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `username`, `email`, `mobile_no`, `password`) VALUES
(1, 'manoj23', 'manojmahajan224@gmail.com', '8275331362', 'Manoj2000'),
(2, 'devesh21', 'deveshpatil234@gmail.com', '9634352641', '9d441d1d35a269019531eced9c6bb81d'),
(5, 'yogesh', 'yogeshchaudhary2101@gmail.com', '8600762261', 'ce69a736b73ac956fc87abd1409c999b');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email_id`, `subject`, `message`, `user_id`) VALUES
(1, 'manoj mahajan', 'manojmahajan1111@gmail.com', 'demo ', 'demo', 1),
(2, 'devesh patil', 'manojmahajan765@gmail.com', 'demo', 'demo', 2),
(3, 'manoj mahajan', 'manojmahajan224@gmail.com', 'problem ', 'demo', 0),
(4, 'manoj mahajan', 'manojmahajan224@gmail.com', 'demo ', 'demo ', 0),
(5, 'devesh patil', 'manojmahajan765@gmail.com', 'demo', 'demo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` int(15) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `tail` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `totalprice` varchar(15) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `track_id` int(100) NOT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `last_name`, `email`, `mobile_no`, `country`, `state`, `tail`, `city`, `address`, `totalprice`, `payment`, `user_id`, `track_id`, `inserted_on`) VALUES
(4, 'devesh', 'patil', 'devesh256@gmail.com', 2147483647, 'India', 'maharastra', 'dharangaon', 'varad bk', 'at post varad bk', '549', 'COD', '2', 83180193, '2023-05-24'),
(5, 'devesh', 'patil', 'manojmahajan765@gmail.com', 2147483647, 'India', 'maharastra', 'dharangaon', 'jalgaon', 'at post varad bk', '549', 'COD', '2', 18961015, '2023-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `offer_price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `long_desc` text NOT NULL,
  `image1` text DEFAULT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `image4` text NOT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `category`, `price`, `offer_price`, `description`, `long_desc`, `image1`, `image2`, `image3`, `image4`, `inserted_on`) VALUES
(28, 'Men Typography Round Neck Black T-Shirt ', '28', 599.00, 239.00, 'A sleek and stylish black round neck t-shirt for men featuring captivating typography design.', 'Elevate your casual style with this Men Typography Round Neck Black T-Shirt, boasting a contemporary and captivating typography design.\r\n\r\nMake a bold statement with this Men Typography Round Neck Black T-Shirt, featuring eye-catching typography that adds an edgy flair to your outfit.\r\n\r\nExperience the perfect fusion of comfort and style with this Men Typography Round Neck Black T-Shirt, showcasing a sleek design and attention-grabbing typography.\r\n\r\nStep up your wardrobe game with this Men Typography Round Neck Black T-Shirt, combining a classic black color with a modern typography design for a trendy and versatile look.\r\n\r\nEmbrace urban fashion with this Men Typography Round Neck Black T-Shirt, designed to impress with its striking typography and comfortable fit, making it a must-have addition to your collection.\r\n\r\n\r\n\r\n\r\n\r\n\r\nR', 'uploads/products-images/1.webp', 'uploads/products-images/2.webp', 'uploads/products-images/3.webp', 'uploads/products-images/4.webp', '2023-07-13'),
(29, 'Digital Print Semi Stitched Lehenga Choli', '28', 1350.00, 599.00, 'A stunning and versatile digital print semi-stitched Lehenga Choli that effortlessly blends traditional charm with contemporary style.', 'Embrace elegance and grace with this enchanting Digital Print Semi Stitched Lehenga Choli, adorned with intricate and vibrant digital prints that exude a mesmerizing charm.\r\n\r\nExperience the perfect blend of traditional aesthetics and modern design with this Digital Print Semi Stitched Lehenga Choli, featuring exquisite digital prints that enhance its beauty and allure.\r\n\r\nMake a fashion statement with this versatile Digital Print Semi Stitched Lehenga Choli, offering a plethora of captivating digital prints and the flexibility of customization to suit your style.\r\n\r\nElevate your ethnic wardrobe with this exquisite Digital Print Semi Stitched Lehenga Choli, boasting intricate digital prints that effortlessly create a stunning visual impact.\r\n\r\nImmerse yourself in the world of elegance and sophistication with this Digital Print Semi Stitched Lehenga Choli, where the artistry of digital prints meets the grace of a traditional silhouette, resulting in a truly captivating ensemble.', 'uploads/products-images/1-LehengaCholi.webp', 'uploads/products-images/2-LehengaCholi.webp', 'uploads/products-images/3-LehengaCholi.webp', 'uploads/products-images/4-LehengaCholi.webp', '2023-07-13'),
(30, 'OPPO Find N2 Flip (Astral Black, 256 GB)  (8 GB RAM)', '22', 45999.00, 39999.00, 'Discover the epitome of innovation and style with the OPPO Find N2 Flip in Astral Black, featuring a generous 256 GB storage and 8 GB RAM for seamless performance.', 'Experience the perfect balance of elegance and power with the OPPO Find N2 Flip in Astral Black, offering a massive 256 GB storage and 8 GB RAM for smooth multitasking and ample storage space.\r\n\r\nUnleash your creativity and enjoy seamless performance with the OPPO Find N2 Flip in Astral Black, equipped with 8 GB RAM and 256 GB storage to accommodate all your apps, files, and media.\r\n\r\nImmerse yourself in a world of immersive visuals and powerful performance with the OPPO Find N2 Flip in Astral Black, featuring 8 GB RAM and 256 GB storage to handle your tasks effortlessly.\r\n\r\nGet ready to elevate your mobile experience with the OPPO Find N2 Flip in Astral Black, boasting an impressive 8 GB RAM and 256 GB storage, ensuring smooth performance and ample storage capacity.\r\n\r\nDiscover the ultimate smartphone companion in the OPPO Find N2 Flip, available in Astral Black with a generous 8 GB RAM and 256 GB storage, offering a seamless and spacious user experience.', 'uploads/products-images/1-OPPO.webp', 'uploads/products-images/2-OPPO.webp', 'uploads/products-images/3-OPPO.webp', 'uploads/products-images/4-OPPO.webp', '2023-07-13'),
(32, 'poco f5', '22', 2999.00, 677.00, 'poco f5', 'poco f5', 'uploads/products-images/1-POCOF5.webp', 'uploads/products-images/2-POCOF5.webp', 'uploads/products-images/3-POCOF5.webp', 'uploads/products-images/4-POCOF5.webp', '2023-07-14'),
(33, 'poco f5', '22', 687677.00, 6666.00, 'demo', 'demo', 'uploads/products-images/1-POCOF5.webp', 'uploads/products-images/2-POCOF5.webp', 'uploads/products-images/3-POCOF5.webp', 'uploads/products-images/4-POCOF5.webp', '2023-07-14'),
(34, 'poco f5', '22', 444444.00, 87887.00, 'demo', 'demo', 'uploads/products-images/1-POCOF5.webp', 'uploads/products-images/2-POCOF5.webp', 'uploads/products-images/3-POCOF5.webp', 'uploads/products-images/4-POCOF5.webp', '2023-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `category`, `offer`, `image`) VALUES
(5, 'Electronics', '20', 'uploads/slides-images/uwp3405196.jpeg'),
(7, 'Shoes ', '40', 'uploads/slides-images/uwp3415630.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `password` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `mobile_no`, `email_id`, `gender`, `city`, `type`, `photo`, `password`) VALUES
(7, 'Yogesh chaudhary', '8600762261', 'yogeshchaudhary2101@gmail.com', 'Male', 'varad bk', 'User', 'uploads/users-images/IMG_20191216_210919.jpg', 'user'),
(8, 'manoj', '8554898876', 'manojmahajan906@gmail.com', 'Male', 'varad bk', 'Admin', 'uploads/users-images/1-shirt.webp', '5f57c08b0edde89daf27cf82c746120d');

-- --------------------------------------------------------

--
-- Table structure for table `web_info`
--

CREATE TABLE `web_info` (
  `id` int(10) NOT NULL,
  `web_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_info`
--

INSERT INTO `web_info` (`id`, `web_name`) VALUES
(1, 'shopnexa');

-- --------------------------------------------------------

--
-- Table structure for table `wish`
--

CREATE TABLE `wish` (
  `wish_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wish`
--

INSERT INTO `wish` (`wish_id`, `product_id`, `user_id`) VALUES
(9, 29, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `web_info`
--
ALTER TABLE `web_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish`
--
ALTER TABLE `wish`
  ADD PRIMARY KEY (`wish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `web_info`
--
ALTER TABLE `web_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wish`
--
ALTER TABLE `wish`
  MODIFY `wish_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
