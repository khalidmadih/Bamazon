
-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;

-- Creating the database
CREATE DATABASE bamazon_db;
USE bamazon_db;



-- Creating Table structure for table `departments`

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) NOT NULL,
  `over_head_costs` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;

INSERT INTO `departments` VALUES 
(1,'Books',355.00),(
2,'Supplies',245.20),
(3,'Equipment',400.00),
(4,'Acessories',120.00);

UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_name` varchar(30) NOT NULL,
  `department_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;

INSERT INTO `products` VALUES 
(1,'Nivea Shaving Cream',2,9.25,55),
(2,'Colgate® Toothpaste',2,9.25,55),
(3,'Vivelle Hair Gel',2,21.50,28),
(4,'Dove Hand Soap',2,21.50,31),
(5,'Duracell AA Batteries',2,4.29,140),
(6,'Tango Cake',3,4.70,33),
(7,'Tager Chocolate barre',3,6.60,62),
(8,'Tefal Cake Pan',3,8.50,80),
(9,'Sharper Knifes',3,10.50,52),
(10,'Aroma TeaPot',3,8.99,47),
(11,'The Cake Bible',1,20.83,12),
(12,'Rose\'s Heavenly Cakes',1,27.15,23),
(13,'The Contemporary Cake Decorati',1,11.99,52),
(14,'Gel Color Burgundy Wine',4,1.35,125),
(15,'Gel Color Royal Blue',4,1.35,125),
(16,'Gel Color Leaf Green',4,1.35,125),
(17,'Gel Color Deep Pink',4,1.35,125),
(18,'Gel Color Orange',4,1.35,120),
(19,'Gel Color Golden Yelow',4,1.35,125);

UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `quantity_purchased` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;

INSERT INTO `sales` VALUES 
(1,14,2,'2018-02-3 03:09:15'),
(2,10,1,'2018-02-3 03:15:09'),
(3,4,3,'2018-02-3 03:21:24'),
(4,18,5,'2018-02-3 03:24:08'),
(5,2,5,'2018-02-3 03:29:26');

UNLOCK TABLES;

