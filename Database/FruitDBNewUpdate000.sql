-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.35 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for onlinestore
CREATE DATABASE IF NOT EXISTS `onlinestore` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlinestore`;

-- Dumping structure for table onlinestore.category
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table onlinestore.category: ~48 rows (approximately)
INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
	(1, 'Apples'),
	(2, 'Oranges'),
	(3, 'Papaya'),
	(4, 'Watermelone'),
	(5, 'Mango'),
	(6, 'Grapes'),
	(7, 'Apples'),
	(8, 'Oranges'),
	(9, 'Papaya'),
	(10, 'Watermelone'),
	(11, 'Mango'),
	(12, 'Grapes'),
	(13, 'Apples'),
	(14, 'Oranges'),
	(15, 'Papaya'),
	(16, 'Watermelone'),
	(17, 'Mango'),
	(18, 'Grapes'),
	(19, 'Apples'),
	(20, 'Oranges'),
	(21, 'Papaya'),
	(22, 'Watermelone'),
	(23, 'Mango'),
	(24, 'Grapes'),
	(25, 'Apples'),
	(26, 'Oranges'),
	(27, 'Papaya'),
	(28, 'Watermelone'),
	(29, 'Mango'),
	(30, 'Grapes'),
	(31, 'Apples'),
	(32, 'Oranges'),
	(33, 'Papaya'),
	(34, 'Watermelone'),
	(35, 'Mango'),
	(36, 'Grapes'),
	(37, 'Apples'),
	(38, 'Oranges'),
	(39, 'Papaya'),
	(40, 'Watermelone'),
	(41, 'Mango'),
	(42, 'Grapes'),
	(43, 'Apples'),
	(44, 'Oranges'),
	(45, 'Papaya'),
	(46, 'Watermelone'),
	(47, 'Mango'),
	(48, 'Grapes');

-- Dumping structure for table onlinestore.gender
CREATE TABLE IF NOT EXISTS `gender` (
  `gender_id` int NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(45) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table onlinestore.gender: ~14 rows (approximately)
INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
	(1, 'Male'),
	(2, 'Female'),
	(3, 'Male'),
	(4, 'Female'),
	(5, 'Male'),
	(6, 'Female'),
	(7, 'Male'),
	(8, 'Female'),
	(9, 'Male'),
	(10, 'Female'),
	(11, 'Male'),
	(12, 'Female'),
	(13, 'Male'),
	(14, 'Female');

-- Dumping structure for table onlinestore.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `img` text,
  `brand_brand_id` int DEFAULT NULL,
  `category_cat_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `color_color_id` int DEFAULT NULL,
  `status` int DEFAULT (1),
  `product_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_brand1_idx` (`brand_brand_id`),
  KEY `fk_product_category1_idx` (`category_cat_id`),
  KEY `fk_product_color1_idx` (`color_color_id`),
  KEY `FK_product_stock` (`product_id`),
  KEY `fk_product_size1_idx` (`qty`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table onlinestore.product: ~48 rows (approximately)
INSERT INTO `product` (`id`, `name`, `description`, `img`, `brand_brand_id`, `category_cat_id`, `qty`, `color_color_id`, `status`, `product_id`, `price`) VALUES
	(1, 'Best Papaya', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/9930093-768x768.png', 4, 2, 100, 2, 1, NULL, 6000),
	(2, 'Best Watermelone', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/5403_watermelon-large-quarter~melonwater-qr.png', 4, 4, 20, 4, 1, NULL, 7000),
	(3, 'Best Mango', 'Everyday Calculator: Simplify calculations with this straightforward tool featuring digits, basic operators, and essential functions.\n\nEssential Calculator: A no-frills calculator designed for simple math tasks with easy navigation and clear results.', 'assets/products/download.png', 4, 4, 4, 4, 1, NULL, 80000),
	(4, 'Best Mangosteen', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/41NmbQ16LrL._SX300_SY300_QL70_FMwebp_.png', 4, 2, 20, 2, 1, NULL, 555),
	(5, 'Best Grapes', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/download1.png', 4, 2, 0, 2, 1, NULL, 5585),
	(6, 'Best Avacodos', 'Clear Display Calculator: Features a large text field and essential buttons for effortless arithmetic calculations.\n\nEfficient Calculator: Designed for ease of use, this calculator handles basic math operations with a straightforward interface.', 'assets/products/avocado_500x_d2cd985a-9a87-4251-a439-f3cb732b8eb1.png', 4, 3, 44, 2, 1, NULL, 77),
	(7, 'Best Apples', 'Compact Math App: Efficiently perform basic math operations with a compact, user-friendly interface.\n\nSimple Arithmetic Tool: Get accurate results quickly with this easy-to-use calculator for basic addition, subtraction, multiplication, and division.\n\n', 'assets/products/pomme-large.png', 2, 4, 1, 1, 1, NULL, 799),
	(8, 'Best Orange', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/Washington_Navel_4dcc837389d1e_272ad75f-8e30-4a08-8a12-203e8ad56ebf.png', 2, 1, 3, 3, 1, NULL, 888),
	(12, 'Best Papaya', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/9930093-768x768.png', 4, 2, 100, 2, 1, NULL, 6000),
	(13, 'Best Watermelone', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/5403_watermelon-large-quarter~melonwater-qr.png', 4, 4, 20, 4, 1, NULL, 7000),
	(14, 'Best Mango', 'Everyday Calculator: Simplify calculations with this straightforward tool featuring digits, basic operators, and essential functions.\n\nEssential Calculator: A no-frills calculator designed for simple math tasks with easy navigation and clear results.', 'assets/products/download.png', 4, 4, 4, 4, 1, NULL, 80000),
	(15, 'Best Mangosteen', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/41NmbQ16LrL._SX300_SY300_QL70_FMwebp_.png', 4, 2, 20, 2, 1, NULL, 555),
	(16, 'Best Grapes', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/download1.png', 4, 2, 0, 2, 1, NULL, 5585),
	(17, 'Best Avacodos', 'Clear Display Calculator: Features a large text field and essential buttons for effortless arithmetic calculations.\n\nEfficient Calculator: Designed for ease of use, this calculator handles basic math operations with a straightforward interface.', 'assets/products/avocado_500x_d2cd985a-9a87-4251-a439-f3cb732b8eb1.png', 4, 3, 44, 2, 1, NULL, 77),
	(18, 'Best Apples', 'Compact Math App: Efficiently perform basic math operations with a compact, user-friendly interface.\n\nSimple Arithmetic Tool: Get accurate results quickly with this easy-to-use calculator for basic addition, subtraction, multiplication, and division.\n\n', 'assets/products/pomme-large.png', 2, 4, 1, 1, 1, NULL, 799),
	(19, 'Best Orange', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/Washington_Navel_4dcc837389d1e_272ad75f-8e30-4a08-8a12-203e8ad56ebf.png', 2, 1, 3, 3, 1, NULL, 888),
	(20, 'Best Papaya', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/9930093-768x768.png', 4, 2, 100, 2, 1, NULL, 6000),
	(21, 'Best Watermelone', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/5403_watermelon-large-quarter~melonwater-qr.png', 4, 4, 20, 4, 1, NULL, 7000),
	(22, 'Best Mango', 'Everyday Calculator: Simplify calculations with this straightforward tool featuring digits, basic operators, and essential functions.\n\nEssential Calculator: A no-frills calculator designed for simple math tasks with easy navigation and clear results.', 'assets/products/download.png', 4, 4, 4, 4, 1, NULL, 80000),
	(23, 'Best Mangosteen', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/41NmbQ16LrL._SX300_SY300_QL70_FMwebp_.png', 4, 2, 20, 2, 1, NULL, 555),
	(24, 'Best Grapes', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/download1.png', 4, 2, 0, 2, 1, NULL, 5585),
	(25, 'Best Avacodos', 'Clear Display Calculator: Features a large text field and essential buttons for effortless arithmetic calculations.\n\nEfficient Calculator: Designed for ease of use, this calculator handles basic math operations with a straightforward interface.', 'assets/products/avocado_500x_d2cd985a-9a87-4251-a439-f3cb732b8eb1.png', 4, 3, 44, 2, 1, NULL, 77),
	(26, 'Best Apples', 'Compact Math App: Efficiently perform basic math operations with a compact, user-friendly interface.\n\nSimple Arithmetic Tool: Get accurate results quickly with this easy-to-use calculator for basic addition, subtraction, multiplication, and division.\n\n', 'assets/products/pomme-large.png', 2, 4, 1, 1, 1, NULL, 799),
	(27, 'Best Orange', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/Washington_Navel_4dcc837389d1e_272ad75f-8e30-4a08-8a12-203e8ad56ebf.png', 2, 1, 3, 3, 1, NULL, 888),
	(28, 'Best Papaya', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/9930093-768x768.png', 4, 2, 100, 2, 1, NULL, 6000),
	(29, 'Best Watermelone', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/5403_watermelon-large-quarter~melonwater-qr.png', 4, 4, 20, 4, 1, NULL, 7000),
	(30, 'Best Mango', 'Everyday Calculator: Simplify calculations with this straightforward tool featuring digits, basic operators, and essential functions.\n\nEssential Calculator: A no-frills calculator designed for simple math tasks with easy navigation and clear results.', 'assets/products/download.png', 4, 4, 4, 4, 1, NULL, 80000),
	(31, 'Best Mangosteen', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/41NmbQ16LrL._SX300_SY300_QL70_FMwebp_.png', 4, 2, 20, 2, 1, NULL, 555),
	(32, 'Best Grapes', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/download1.png', 4, 2, 0, 2, 1, NULL, 5585),
	(33, 'Best Avacodos', 'Clear Display Calculator: Features a large text field and essential buttons for effortless arithmetic calculations.\n\nEfficient Calculator: Designed for ease of use, this calculator handles basic math operations with a straightforward interface.', 'assets/products/avocado_500x_d2cd985a-9a87-4251-a439-f3cb732b8eb1.png', 4, 3, 44, 2, 1, NULL, 77),
	(34, 'Best Apples', 'Compact Math App: Efficiently perform basic math operations with a compact, user-friendly interface.\n\nSimple Arithmetic Tool: Get accurate results quickly with this easy-to-use calculator for basic addition, subtraction, multiplication, and division.\n\n', 'assets/products/pomme-large.png', 2, 4, 1, 1, 1, NULL, 799),
	(35, 'Best Orange', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/Washington_Navel_4dcc837389d1e_272ad75f-8e30-4a08-8a12-203e8ad56ebf.png', 2, 1, 3, 3, 1, NULL, 888),
	(36, 'Best Papaya', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/9930093-768x768.png', 4, 2, 100, 2, 1, NULL, 6000),
	(37, 'Best Watermelone', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/5403_watermelon-large-quarter~melonwater-qr.png', 4, 4, 20, 4, 1, NULL, 7000),
	(38, 'Best Mango', 'Everyday Calculator: Simplify calculations with this straightforward tool featuring digits, basic operators, and essential functions.\n\nEssential Calculator: A no-frills calculator designed for simple math tasks with easy navigation and clear results.', 'assets/products/download.png', 4, 4, 4, 4, 1, NULL, 80000),
	(39, 'Best Mangosteen', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/41NmbQ16LrL._SX300_SY300_QL70_FMwebp_.png', 4, 2, 20, 2, 1, NULL, 555),
	(40, 'Best Grapes', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/download1.png', 4, 2, 0, 2, 1, NULL, 5585),
	(41, 'Best Avacodos', 'Clear Display Calculator: Features a large text field and essential buttons for effortless arithmetic calculations.\n\nEfficient Calculator: Designed for ease of use, this calculator handles basic math operations with a straightforward interface.', 'assets/products/avocado_500x_d2cd985a-9a87-4251-a439-f3cb732b8eb1.png', 4, 3, 44, 2, 1, NULL, 77),
	(42, 'Best Apples', 'Compact Math App: Efficiently perform basic math operations with a compact, user-friendly interface.\n\nSimple Arithmetic Tool: Get accurate results quickly with this easy-to-use calculator for basic addition, subtraction, multiplication, and division.\n\n', 'assets/products/pomme-large.png', 2, 4, 1, 1, 1, NULL, 799),
	(43, 'Best Orange', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/Washington_Navel_4dcc837389d1e_272ad75f-8e30-4a08-8a12-203e8ad56ebf.png', 2, 1, 3, 3, 1, NULL, 888),
	(44, 'Best Papaya', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/9930093-768x768.png', 4, 2, 100, 2, 1, NULL, 6000),
	(45, 'Best Watermelone', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/5403_watermelon-large-quarter~melonwater-qr.png', 4, 4, 20, 4, 1, NULL, 7000),
	(46, 'Best Mango', 'Everyday Calculator: Simplify calculations with this straightforward tool featuring digits, basic operators, and essential functions.\n\nEssential Calculator: A no-frills calculator designed for simple math tasks with easy navigation and clear results.', 'assets/products/download.png', 4, 4, 4, 4, 1, NULL, 80000),
	(47, 'Best Mangosteen', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/41NmbQ16LrL._SX300_SY300_QL70_FMwebp_.png', 4, 2, 20, 2, 1, NULL, 555),
	(48, 'Best Grapes', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/download1.png', 4, 2, 0, 2, 1, NULL, 5585),
	(49, 'Best Avacodos', 'Clear Display Calculator: Features a large text field and essential buttons for effortless arithmetic calculations.\n\nEfficient Calculator: Designed for ease of use, this calculator handles basic math operations with a straightforward interface.', 'assets/products/avocado_500x_d2cd985a-9a87-4251-a439-f3cb732b8eb1.png', 4, 3, 44, 2, 1, NULL, 77),
	(50, 'Best Apples', 'Compact Math App: Efficiently perform basic math operations with a compact, user-friendly interface.\n\nSimple Arithmetic Tool: Get accurate results quickly with this easy-to-use calculator for basic addition, subtraction, multiplication, and division.\n\n', 'assets/products/pomme-large.png', 2, 4, 1, 1, 1, NULL, 799),
	(51, 'Best Orange', 'Basic Operation Calculator: Ideal for quick calculations, this app provides easy access to digits and arithmetic functions.\n\nUser-Friendly Math Tool: Simplifies everyday calculations with a clean design and essential arithmetic buttons.', 'assets/products/Washington_Navel_4dcc837389d1e_272ad75f-8e30-4a08-8a12-203e8ad56ebf.png', 2, 1, 3, 3, 1, NULL, 888);

-- Dumping structure for table onlinestore.status_id
CREATE TABLE IF NOT EXISTS `status_id` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table onlinestore.status_id: ~2 rows (approximately)
INSERT INTO `status_id` (`status_id`, `status`) VALUES
	(1, 'Active'),
	(2, 'Deactive');

-- Dumping structure for table onlinestore.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `joined_date` date NOT NULL,
  `verification_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_type_id` int NOT NULL,
  `gender_gender_id` int NOT NULL,
  `status_status_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_user_user_type_idx` (`user_type_id`),
  KEY `fk_user_gender1_idx` (`gender_gender_id`),
  KEY `fk_user_status_id1_idx` (`status_status_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table onlinestore.user: ~23 rows (approximately)
INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `mobile`, `joined_date`, `verification_code`, `user_type_id`, `gender_gender_id`, `status_status_id`) VALUES
	(1, 'Dushan', 'Malinga', 'malinga@gmail.com', '123456', '0759255256', '2024-06-22', '123456789', 1, 1, 2),
	(2, 'Dushan', 'Malinga', 'malingadushan@gmail.com', '123456', '0759255255', '2024-06-23', NULL, 1, 1, 1),
	(3, 'Dushan', 'Malinga', 'malingadushan5@gmail.com', '12345', '0759255254', '2024-06-23', NULL, 1, 1, 1),
	(4, 'Dushan', 'Malinga', 'malingadushan27@gmail.com', '12345', '0759255257', '2024-06-23', NULL, 1, 1, 1),
	(5, 'Dushan', 'Malinga', 'malingahello@gmail.com', '12345', '0759255252', '2024-06-23', NULL, 1, 1, 1),
	(6, 'Dushan', 'Malinga', 'Hello@gmail.com', '123456', '0759255250', '2024-06-23', NULL, 1, 1, 1),
	(7, 'Dushan', 'Malinga', 'malingaSrilanka@gmail.com', '123456', '0759255251', '2024-06-23', NULL, 1, 1, 1),
	(8, 'Dushan', 'Malinga', 'malingadushan000@gmail.com', '1234556', '0759255777', '2024-06-23', NULL, 1, 1, 1),
	(9, 'Dushan', 'Malinga', 'malingadushan45623@gmail.com', '123456', '0759255006', '2024-06-23', NULL, 1, 1, 1),
	(10, 'Dushan', 'Malinga', 'malinga00000@gmail.com', '123456', '0759205256', '2024-06-23', NULL, 1, 1, 1),
	(11, 'Dushan', 'Malinga' 'malingadushan788@gmail.com', '123456', '0759255200', '2024-07-16', NULL, 1, 1, 1),
	(14, 'Dushan', 'Malinga', 'malinadushan788@gmail.com', '123456', '0754255200', '2024-07-16', NULL, 1, 1, 1),
	(15, 'Dushan', 'Malinga', 'malinga7878@gmail.com', '789789', '0759255206', '2024-07-16', NULL, 1, 1, 1),
	(16, 'Dushan', 'Malinga', 'malingadush7an@gmail.com', '456456', '0759255233', '2024-07-16', NULL, 1, 1, 1),
	(17, 'Dushan', 'Malinga', 'malingadu5@gmail.com', '78787', '0759255056', '2024-07-16', NULL, 1, 1, 1),
	(18, 'Dushan', 'Malinga', '4malinga@gmail.com', '44444', '0759255156', '2024-07-16', NULL, 1, 1, 1),
	(19, 'Dushan', 'Malinga', 'malingsxa@gmail.com', '123456', '0759275256', '2024-07-16', NULL, 1, 1, 1),
	(20, 'Dushan', 'Malinga', 'zzzmali123nga@gmail.com', '123456', '0759255205', '2024-07-16', NULL, 1, 1, 1),
	(21, 'Hansi', 'Dhami', 'dahami@gmail.com', ', 'malingadushan999@gmail.com', '55555', '0759255000', '2024-07-16', NULL, 1, 1, 1),
	(12, 'Dushan', 'Malinga', 'malingadusha77n@gmail.com', '787878', '0750255256', '2024-07-16', NULL, 1, 1, 1),
	(13, 'Dushan', 'Malinga',123456', '0759255010', '2024-07-30', NULL, 1, 2, 1),
	(22, 'Girl', 'Hana', 'Hellogirl@gmail.com', '123123', '0759255888', '2024-07-31', NULL, 1, 2, 1),
	(23, 'Pahan', 'Shen', 'H@gmail.com', '121212', '0779317271', '2024-08-03', NULL, 1, 1, 1);

-- Dumping structure for table onlinestore.user_type
CREATE TABLE IF NOT EXISTS `user_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table onlinestore.user_type: ~2 rows (approximately)
INSERT INTO `user_type` (`id`, `user`) VALUES
	(1, 'Admin'),
	(2, 'User');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
