-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 24, 2025 at 03:48 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `currentdate` date NOT NULL,
  `postuser` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `image`, `description`, `currentdate`, `postuser`) VALUES
(1, 'Happy hour Buddy', 'blog-5.jpg', '“Nothing beats happy hour outdoors 🌿🍹 Relaxing with good vibes, great company, and comfy garden furniture. Perfect way to unwind!”', '2025-08-24', 'admin'),
(2, 'I Like all from FurnishMe', 'blog-4.jpg', 'The living room is the heart of every home, and the right furniture sets the tone for comfort and style. A cozy sofa, paired with accent chairs, creates a welcoming space for family and friends to gat', '2025-08-24', 'Ko Ko'),
(3, 'Standard Living Room We got!', 'blog-6.jpg', 'The living room is the heart of every home, and the right furniture sets the tone for comfort and style. A cozy sofa, paired with accent chairs, creates a welcoming space for family and friends to gat', '2025-08-24', 'aungaung');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productname` varchar(20) NOT NULL,
  `price` int NOT NULL,
  `star` int NOT NULL,
  `image` varchar(200) NOT NULL,
  `category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productname`, `price`, `star`, `image`, `category`) VALUES
(1, 'grounded chair', 523, 2, 'blog-1.jpg', 'House Sofa'),
(2, 'Stool', 321, 3, 'product-1.png', 'Corner Table'),
(3, 'Kid Comfort', 345, 4, 'product-2.png', 'House Sofa'),
(4, 'Coconut', 535, 4, 'product-3.png', 'House Sofa'),
(5, 'Flexible Chair', 200, 2, 'product-4.png', 'Office Chair'),
(6, 'Teddy Chair', 675, 5, 'product-5.png', 'House Sofa'),
(7, 'Relax', 322, 4, 'product-6.png', 'Working Table'),
(8, 'Mother Choice', 213, 3, 'product-8.png', 'Office Chair'),
(9, 'Flower Corner', 310, 3, 'flower corner.png', 'Corner Table'),
(10, 'Sis Wardrobe', 432, 2, 'girl cup board.png', 'New Wardrobe'),
(11, 'Coding Table', 230, 4, 'computer table.png', 'Working Table'),
(12, 'Kid Wardrobe', 380, 1, 'kid cupboard.png', 'New Wardrobe');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE IF NOT EXISTS `shoppingcart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `sarlary` int NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `tname`, `position`, `sarlary`, `image`) VALUES
(1, 'Jhon', 'CEO', 18000, 'team-6.jpg'),
(2, 'Nany', 'Managing Director', 15000, 'team-5.jpg'),
(3, 'Aunf ducks', 'HR Manager', 11500, 'team-3.jpg'),
(4, 'Jhonny', 'Supervisor', 6000, 'team-2.jpg'),
(5, 'Peter', 'Operation manager', 11000, 'team-4.jpg'),
(6, 'Khathy', 'Designer', 14500, 'team-1.jpg'),
(7, 'U Thaw Sinn San', 'Clerk', 444, 'mom cut.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('aungaung', 'aa@gmail.com', '$2y$10$u6GSevYIMYAW.4XV1xF28.zzidppid.8pZe1HekWQELervpGa7gPO'),
('admin', 'admin@gmail.com', '$2y$10$J0vLC7g70r/H6YwGN8Cks.IXiLp5NmXbUx5En5hg./45l.ehw.EnO'),
('July', 'july@gmail.com', '$2y$10$VQIYVJCt/HTxa.ps2cuBP.wfUxGksgSINUnB4sbnEXZ0gRvxCtzOW'),
('Ko Ko', 'kk@gmail.com', '$2y$10$j9gYkDej1h8QC63X8R2lr.OKtf73VwGW8FB/.Qb3/qrv6tXQFoM6C');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
