-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 02:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34
Drop database ykom;
create database ykom;
use ykom;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ykom`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `idCart` int(11) UNSIGNED NOT NULL,
  `summaryPrice` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`idCart`, `summaryPrice`) VALUES
(1, 378.00),
(2, 2199.00),
(3, 0.00),
(4, 0.00),
(5, 0.00),
(6, 0.00),
(7, 0.00),
(8, 120.00),
(9, 0.00),
(10, 0.00),
(14, 0.00),
(15, 0.00),
(16, 0.00),
(17, 0.00),
(18, 0.00),
(19, 240.00),
(20, 0.00),
(21, 0.00),
(22, 0.00),
(23, 0.00),
(24, 1719.00),
(25, 0.00),
(26, 0.00),
(27, 0.00),
(28, 0.00),
(29, 0.00),
(30, 0.00),
(31, 0.00),
(32, 20989.88),
(33, 752.88),
(34, 1719.00),
(35, 360.00),
(36, 0.00),
(37, 0.00),
(38, 0.00),
(39, 0.00),
(40, 0.00),
(41, 0.00),
(42, 0.00),
(43, 0.00),
(44, 0.00),
(45, 0.00),
(46, 0.00),
(47, 56.00),
(48, 0.00),
(49, 0.00),
(50, 0.00),
(51, 0.00),
(52, 120.00),
(53, 120.00),
(54, 120.00),
(55, 872.88),
(56, 0.00),
(57, 0.00),
(58, 0.00),
(59, 0.00),
(60, 120.00),
(61, 120.00),
(62, 5037.00),
(63, 999.00),
(64, 5157.00),
(65, 120.00),
(66, 1719.00),
(67, 120.00),
(68, 1599.00),
(69, 1840.00),
(70, 2559.00),
(71, 0.00),
(72, 0.00),
(73, 120.00),
(74, 1719.00),
(75, 2598.00),
(76, 120.00),
(77, 0.00),
(78, 120.00),
(79, 0.00),
(80, 120.00),
(81, 0.00),
(82, 0.00),
(83, 0.00),
(84, 0.00);

--
-- Triggers `carts`
--
DELIMITER $$
CREATE TRIGGER `onNewCart` BEFORE INSERT ON `carts` FOR EACH ROW set NEW.SummaryPrice = 0.00
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idCategory` tinyint(2) UNSIGNED NOT NULL,
  `category` char(22) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`idCategory`, `category`) VALUES
(1, 'Procesory'),
(2, 'Dyski twarde HDD i SSD'),
(3, 'Karty graficzne\r\n'),
(4, 'Płyty główne'),
(5, 'Obudowy komputerowe'),
(6, 'Pamięci RAM'),
(7, 'Zasilacze komputerowe'),
(8, 'Chłodzenia komputerowe'),
(9, 'Karty dźwiękowe');

-- --------------------------------------------------------

--
-- Table structure for table `employeelogintime`
--

CREATE TABLE `employeelogintime` (
  `idLogged` int(11) NOT NULL,
  `idEmployee` int(11) UNSIGNED NOT NULL,
  `Time` datetime NOT NULL,
  `IP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeelogintime`
--

INSERT INTO `employeelogintime` (`idLogged`, `idEmployee`, `Time`, `IP`) VALUES
(1, 3, '2020-11-29 20:30:49', ''),
(2, 3, '2020-11-29 20:50:52', '26.230.17.254'),
(3, 1, '2020-11-29 20:51:28', '26.213.44.74'),
(4, 1, '2020-11-29 21:01:25', '26.213.44.74'),
(5, 1, '2020-11-29 22:07:35', '26.213.44.74'),
(6, 2, '2020-11-29 22:10:05', '26.212.186.202'),
(7, 1, '2020-11-29 22:13:08', '26.213.44.74'),
(8, 3, '2020-11-29 22:26:55', '26.230.17.254'),
(9, 1, '2020-11-29 22:29:57', '26.213.44.74'),
(10, 1, '2020-11-29 23:18:00', '26.213.44.74'),
(11, 1, '2020-11-29 23:18:11', '26.213.44.74'),
(12, 1, '2020-11-29 23:18:16', '26.213.44.74'),
(13, 1, '2020-11-29 23:18:21', '26.213.44.74'),
(14, 1, '2020-11-29 23:18:27', '26.213.44.74'),
(15, 1, '2020-11-29 23:18:32', '26.213.44.74'),
(16, 1, '2020-11-29 23:18:38', '26.213.44.74'),
(17, 1, '2020-11-29 23:18:45', '26.213.44.74'),
(18, 1, '2020-11-29 23:18:52', '26.213.44.74'),
(19, 3, '2020-11-29 23:48:34', '26.230.17.254'),
(20, 2, '2020-11-30 11:12:16', '26.212.186.202'),
(21, 3, '2020-11-30 11:13:32', '26.230.17.254'),
(22, 1, '2020-11-30 11:56:18', '26.213.44.74'),
(23, 1, '2020-11-30 14:01:04', '26.213.44.74'),
(24, 3, '2020-11-30 20:12:13', '26.230.17.254'),
(25, 2, '2020-11-30 20:13:19', '26.212.186.202'),
(26, 1, '2020-11-30 20:37:45', '26.213.44.74'),
(27, 3, '2020-11-30 20:38:44', '26.230.17.254'),
(28, 3, '2020-11-30 20:59:05', '26.230.17.254'),
(29, 3, '2020-11-30 22:05:33', '26.230.17.254'),
(30, 2, '2020-12-03 14:35:51', '26.212.186.202'),
(31, 1, '2020-12-03 15:03:57', '26.213.44.74'),
(32, 3, '2020-12-03 15:05:53', '26.230.17.254'),
(33, 3, '2020-12-03 15:18:27', '26.230.17.254'),
(34, 1, '2020-12-03 20:49:06', '26.213.44.74'),
(35, 3, '2020-12-03 21:21:35', '26.230.17.254'),
(36, 3, '2020-12-03 22:21:12', '26.230.17.254'),
(37, 1, '2020-12-03 22:28:35', '26.213.44.74'),
(38, 2, '2020-12-03 22:34:55', '26.212.186.202'),
(39, 1, '2020-12-03 22:38:10', '26.212.186.202'),
(40, 2, '2020-12-03 22:38:45', '26.212.186.202'),
(41, 3, '2020-12-03 22:45:19', '26.230.17.254'),
(42, 3, '2020-12-04 20:32:27', '26.230.17.254'),
(43, 1, '2020-12-04 20:33:11', '26.213.44.74'),
(44, 2, '2020-12-04 20:33:19', '26.212.186.202'),
(45, 2, '2020-12-05 18:33:27', '26.212.186.202'),
(46, 1, '2020-12-05 18:36:23', '26.230.17.254'),
(47, 1, '2020-12-05 19:33:46', '26.213.44.74'),
(48, 1, '2020-12-05 19:55:04', '26.230.17.254'),
(49, 2, '2020-12-07 13:31:58', '26.212.186.202'),
(50, 1, '2020-12-07 13:32:15', '26.213.44.74'),
(51, 2, '2020-12-07 13:34:16', '26.212.186.202'),
(52, 1, '2020-12-07 13:34:19', '26.213.44.74'),
(53, 4, '2020-12-07 13:34:31', '26.213.44.74'),
(54, 1, '2020-12-07 14:37:02', '26.230.17.254');

--
-- Triggers `employeelogintime`
--
DELIMITER $$
CREATE TRIGGER `onLogin` BEFORE INSERT ON `employeelogintime` FOR EACH ROW set new.time = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `idEmployee` int(11) UNSIGNED NOT NULL,
  `idPrem` tinyint(1) NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(56) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`idEmployee`, `idPrem`, `name`, `surname`, `email`, `password`) VALUES
(1, 2, 'Maruda', 'Marudowy', 'maruda@gmail.com', '$2y$10$P.xsvaf/mWsPsuMOWaYYKugU93YY7W4zZRBYNg5khE7Rmq/pyo6Hq'),
(2, 2, 'Karolina', 'Prekurat', 'karolina@gmail.com', '$2y$10$ba7pvfRXz5T9iWZHYjXm7.G6FI3iL8XrGsjdqq1jqHg.424h/4Om2'),
(3, 2, 'Adrianes', 'Rybarczukr', 'adrianeczek@gmail.com', '$2y$10$2ijawGC7z1dO7MoRNVe2R.22uozAnXyv1YOc/G92W.r9IRF0rOSfK'),
(4, 2, 'Jakub', 'Paprockiasd', 'jakub@gmail.com', '$2y$10$rF8AiUBCMJSxPdnGh4tciusGx57WM29hix7uHFCjrssIoYwxSbs7e');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) UNSIGNED NOT NULL,
  `idUser` int(11) UNSIGNED DEFAULT NULL,
  `idCart` int(11) UNSIGNED NOT NULL,
  `idStatus` tinyint(1) NOT NULL,
  `orderData` datetime NOT NULL,
  `postCode` char(6) COLLATE utf8_polish_ci NOT NULL,
  `phone` varchar(9) COLLATE utf8_polish_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `postCity` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(56) COLLATE utf8_polish_ci NOT NULL,
  `adress` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`idOrder`, `idUser`, `idCart`, `idStatus`, `orderData`, `postCode`, `phone`, `name`, `surname`, `postCity`, `email`, `adress`) VALUES
(1, NULL, 30, 1, '2020-12-04 23:51:46', '23-233', '344345654', 'Add', 'Add', 'Add', 'add@dk.pl', 'Add'),
(2, NULL, 31, 1, '2020-12-04 23:51:46', '23-233', '344345654', 'Add', 'Add', 'Add', 'add@dk.pl', 'Add'),
(3, NULL, 33, 1, '2020-12-04 23:51:46', '08-110', '123123123', 'Tak', 'Nie', 'siedlce', 'nie@nie.com', 'nie'),
(4, NULL, 52, 1, '2020-12-04 23:51:46', '23-323', '234567876', 'Asdsd', 'Adsd', 'Adsd', 'ers@o2.pl', 'Adsd'),
(5, NULL, 53, 1, '2020-12-04 23:51:46', '34-433', '456678900', 'Adrian', 'Rdd', 'Add', 'del@gma.com', 'Asdsd'),
(6, NULL, 54, 1, '2020-12-04 23:51:46', '89-322', '997998999', 'Kubus', 'Paprocus', 'Siema', 'kubus420@siema.jd', 'Pliszczusie 6'),
(7, NULL, 55, 1, '2020-12-04 23:51:46', '08-110', '123123123', 'Karolcia', 'Wesoła', 'Siedlce', 'kar.pre@gmail.com', 'Niewesoła 1'),
(8, 10, 1, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(9, 10, 1, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(10, 10, 1, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(11, 10, 1, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(12, 10, 1, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(13, 10, 1, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(14, 10, 60, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(15, 19, 8, 1, '2020-12-04 23:51:46', '08-110', '512038120', 'Karolina', 'Prekurat', 'Siedlce', 'nie@nie.com', 'Spacerowa 64'),
(16, 10, 61, 1, '2020-12-04 23:51:46', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 15'),
(17, 37, 24, 1, '2020-12-04 23:51:46', '89-322', '997998999', 'Kubus', 'Paprocus', 'Siema', 'kubus420@siema.jd', 'Pliszczusie 6'),
(18, 10, 63, 1, '2020-12-05 00:48:38', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 1555'),
(19, 32, 19, 3, '2020-12-05 00:48:51', '08-110', '997998999', 'Kubuś', 'Paprocuś', 'Siedlce', 'dlaczegoszesc@gmail.com', 'Pliszczusie 6'),
(20, 10, 65, 1, '0000-00-00 00:00:00', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 1555'),
(21, 32, 66, 5, '0000-00-00 00:00:00', '08-110', '997998999', 'Kubuś', 'Paprocuś', 'Siedlce', 'dlaczegoszesc@gmail.com', 'Pliszczusie 6'),
(22, 10, 67, 2, '0000-00-00 00:00:00', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 1555'),
(23, 10, 69, 3, '0000-00-00 00:00:00', '08-110', '510154094', 'Adrian', 'Kornik', 'Warszawa', 'lee@rock.com', 'Żubrowa 1555'),
(24, 10, 70, 1, '2020-12-07 14:13:55', 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 1555', '510154094', 'lee@rock.com'),
(25, 37, 64, 1, '2020-12-07 14:14:50', 'Kubus', 'Paprocus', 'Siemaessa', '89-322', 'Pliszczusie 61', '997998999', 'kubus420@siema.jd'),
(26, 37, 74, 1, '2020-12-07 14:19:25', 'Kubus', 'Paprocus', 'Siemaessa', '89-322', 'Pliszczusie61Pliszczusie61Pliszczusi 61P', '997998999', 'kubus420@siema.jd'),
(27, 10, 73, 1, '2020-12-07 14:19:31', 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 1555 333321321321321321321322132', '510154094', 'lee@rock.com'),
(28, 10, 76, 1, '2020-12-07 14:20:07', 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 1555 333321321321321321321322132', '510154094', 'lee@rock.com'),
(29, 10, 78, 1, '2020-12-07 14:20:18', 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 1555 333321321321321321321322132', '510154094', 'lee@rock.com'),
(30, 37, 75, 1, '2020-12-07 14:20:19', 'Kubus', 'Paprocus', 'Siemaessa', '89-322', 'Pliszczusie61Pliszczusie61Pliszczusi 61P', '997998999', 'kubus420@siema.jd'),
(31, 37, 80, 1, '2020-12-07 14:22:12', 'Kubus', 'Paprocus', 'Pliszczusie', '89-322', 'Pliszczusie61Pliszczusie61Pliszczusi61Pl', '997998999', 'kubus420@siema.jd');

--
-- Triggers `orders`
--
DELIMITER $$
CREATE TRIGGER `onNewOrder` BEFORE INSERT ON `orders` FOR EACH ROW set new.orderData = now(),
 new.idStatus = 1
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `idPrem` tinyint(1) NOT NULL,
  `permission` char(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`idPrem`, `permission`) VALUES
(1, 'pracownik'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `productgallery`
--

CREATE TABLE `productgallery` (
  `idFoto` int(11) NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `productgallery`
--

INSERT INTO `productgallery` (`idFoto`, `idProduct`, `photo`) VALUES
(87, 1, 'main.png'),
(120, 19, 'siema.png'),
(121, 19, 'siema1.png'),
(128, 20, 'siema.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) UNSIGNED NOT NULL,
  `idFoto` tinyint(1) NOT NULL DEFAULT 0,
  `archive` tinyint(1) NOT NULL DEFAULT 0,
  `idCategory` tinyint(2) UNSIGNED NOT NULL,
  `Quantity` int(10) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Specification` mediumtext COLLATE utf8_polish_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`idProduct`, `idFoto`, `archive`, `idCategory`, `Quantity`, `price`, `Specification`, `name`) VALUES
(1, 0, 0, 2, 10000, '120.00', 'Przeznaczenie produktu:PC;Pojemność:240 GB;Format:2.5\";Interfejs:SATA III (6.0Gb/s);Prędkość odczytu (maksymalna):545 MB/s;Rodzaj kości pamięci:TLC;', 'WD 240GB 2,5'),
(2, 0, 0, 3, 10000, '1599.00', 'Obsługa Ray tracingu:Tak;Układ graficzny:GeForce RTX 2060;Rodzaj złącza:PCI-E x16 3.0;Pamięć:6 GB;Rodzaj pamięci:GDDR6;', 'Gigabyte GeForce RTX 2060  OC 6GB GDDR6'),
(3, 0, 0, 1, 10000, '999.00', 'Seria:Ryzen™ 5 3600;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 'AMD Ryzen 5 3600'),
(4, 0, 0, 3, 10000, '752.88', 'Seria:Ryzen™ 5 3500X;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 'AMD Ryzen 5 3500X'),
(14, 0, 0, 1, 10000, '1.00', 'sdasdasdasd', 'Procesor'),
(15, 0, 0, 6, 10000, '1.00', 'sdasdasdasd', 'Procesor'),
(16, 0, 0, 1, 10000, '1.00', '', 'Duu'),
(17, 0, 0, 9, 10000, '54.00', 'siema:essa;', 'siema'),
(18, 0, 0, 1, 10000, '1.00', '', 'name'),
(19, 0, 0, 6, 10000, '12200.00', 'Na:wolno; ale: nie szybko;', 'ESSA'),
(20, 1, 0, 7, 10000, '234.00', 'alE:kokS;jeSt:ten;produkt:kochAny;', 'siema'),
(21, 0, 0, 1, 22, '2.08', 'nie', 'nic');

-- --------------------------------------------------------

--
-- Table structure for table `productsincarts`
--

CREATE TABLE `productsincarts` (
  `idCart` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `howMuch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `productsincarts`
--

INSERT INTO `productsincarts` (`idCart`, `idProduct`, `howMuch`) VALUES
(1, 17, 7),
(2, 1, 5),
(2, 2, 1),
(8, 19, 1),
(19, 1, 2),
(24, 1, 1),
(24, 2, 1),
(52, 1, 2),
(53, 1, 1),
(54, 1, 1),
(55, 1, 5),
(55, 4, 1),
(60, 1, 1),
(61, 1, 1),
(62, 1, 2),
(62, 2, 3),
(63, 3, 1),
(64, 1, 3),
(64, 2, 3),
(65, 1, 1),
(66, 1, 1),
(66, 2, 1),
(67, 1, 1),
(68, 2, 1),
(69, 1, 2),
(69, 2, 1),
(69, 16, 1),
(70, 1, 8),
(70, 2, 1),
(73, 1, 1),
(74, 1, 1),
(74, 2, 1),
(75, 2, 1),
(75, 3, 1),
(76, 1, 1),
(78, 1, 1),
(80, 1, 1);

--
-- Triggers `productsincarts`
--
DELIMITER $$
CREATE TRIGGER `onDeleteCart` AFTER DELETE ON `productsincarts` FOR EACH ROW UPDATE carts SET summaryPrice = summaryPrice -(
    SELECT price FROM products 
    WHERE idProduct = OLD.idProduct
) * OLD.howMuch
WHERE idCart = OLD.idCart
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `onInsertCart` BEFORE INSERT ON `productsincarts` FOR EACH ROW UPDATE carts SET summaryPrice = summaryPrice +(
    SELECT price FROM products 
    WHERE idProduct = NEW.idProduct
)
WHERE idCart = NEW.idCart
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `onUpdateCart` AFTER UPDATE ON `productsincarts` FOR EACH ROW UPDATE carts SET summaryPrice = summaryPrice +(
    SELECT price FROM products 
    WHERE idProduct = NEW.idProduct
) * (new.howMuch - old.howMuch)
WHERE idCart = NEW.idCart
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `idStatus` tinyint(1) NOT NULL,
  `status` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`idStatus`, `status`) VALUES
(1, 'nowe'),
(2, 'potwierdzone'),
(3, 'wysłane'),
(4, 'dostarczone'),
(5, 'zakończone');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCity` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCode` char(6) COLLATE utf8_polish_ci DEFAULT NULL,
  `address` text COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` char(9) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` text COLLATE utf8_polish_ci DEFAULT NULL,
  `password` text COLLATE utf8_polish_ci DEFAULT NULL,
  `currentCart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `name`, `surname`, `postCity`, `postCode`, `address`, `phone`, `email`, `password`, `currentCart`) VALUES
(10, 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 1555 333321321321321321321322132', '510154094', 'lee@rock.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 79),
(11, 'Monika', 'Kozioł', 'Warszawa', '00-023', 'ul. Kwiatowa 7', '870172408', 'monika.kozioł@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 2),
(12, 'Andrzej', 'Szatan', 'Radom', '26-605', 'ul. Tęczowa 666', '098098678', 'adrejo.sztano@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 3),
(13, 'Jakub', 'Morda', 'Siedlce', '08-110', 'ul. Piłsudskiego 78', '09227663', 'jakuboloelo@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 4),
(14, 'Ryszard', 'Kot', 'Zakopane', '34-505', 'ul. Główna 55', '123234345', 'rysio@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 5),
(15, 'Julita', 'Wróbel', 'Wrocłam', '50-004', 'ul. Mordercy 66', '098567900', 'angel99@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 6),
(18, 'Maciek', 'Grzegorczyk', 'Wiśniew', '08-112', 'Okno', '564573434', 'maciekgrzegorczyk@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 7),
(19, 'Karolina', 'Prekurat', 'Siedlce', '08-110', 'Spadaj 64', '512038120', 'nie@nie.com', '$2y$10$bY1Xph6TfomC5Bwuj9uXAexEdH/qBaUTQCT9edldDfl1uPRDbVz/K', 62),
(20, 'Andrzej', 'Kowalski', 'Siedlce', '08-110', 'Starowiejska 5', '224444444', 'andreakow@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 9),
(24, 'Maria', 'Curie', 'Curier', '09-345', 'Zielarska 14', '464565575', 'das@o2.pol', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 10),
(27, 'Barbara', 'Kareńska', 'Zenki', '43-232', 'Wolska 34', '343567543', 'fff@gm.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 14),
(30, 'sadas', 'dsdasd', 'dasdasd', '34-434', 'dasd', '213233567', '344ds@o2.pl', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 17),
(31, 'Asd', 'Adsd', 'Asds', '34-434', 'Adasdasd', '345678987', 'leerock.zero@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 18),
(32, 'Kubuś', 'Paprocuś', 'Siedlce', '08-110', 'Pliszczusie 6', '997998999', 'dlaczegoszesc@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 68),
(33, 'Karo', 'Preku', 'Siedl', '08-110', 'spac 1', '123123123', 'karap2001@o2.pl', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 20),
(34, 'adasdasd', 'dasasdasd', 'asdasd', '32-655', 'Sdsdd', '123456789', 'lee@rock.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 21),
(35, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'dlaczegoszesc@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 22),
(36, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'dlaczegoszesc@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 23),
(37, 'Kubus', 'Paprocus', 'Siemaessa', '89-322', 'Pliszczusie 61', '997998999', 'kubus420@siema.jd', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 84),
(38, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'kubus420@siema.jd', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 25),
(39, 'Asdd', 'dasdasd', 'Asdsd', '34-435', 'Adsadsd', '123456789', 'sdsa@o2.pl', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 26),
(40, 'Asdd', 'dasdasd', 'Asdsd', '34-435', 'Adsadsd', '123456789', 'sdsa@o2.pl', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 27),
(41, 'Kubus', 'Paprocus', 'Siema', '89-322', 'Pliszczusie 6', '997998999', 'kubus420@siema.jd', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 28),
(42, 'Monika', 'Nikt', 'Neverland', '08-110', 'Lihfxvbjyutyrter 66', '123123123', 'niwwwwwjjwww.lll@gmail.com', '$2y$10$/0.9x5/MbOT3c7FEsiQcoeWoEcIySrja1PL9uAcHZjhq1GUYcvgnu', 77),
(43, 'Monika', 'Nikt', 'Neverland', '08-110', 'Lihfxvbjyutyrter 66', '123123123', 'niwwwwwjjwww.lll@gmail.com', '$2y$10$931pT8bIj9Fk0EqexwpZDO9YTF5V4Ui8xLTpm3OpOs.rukbT0BBRK', 81),
(44, 'Monika', 'Nikt', 'Neverland', '08-110', 'Lihfxvbjyutyrter 66', '123123123', 'niwwwwwjjwww.lll@gmail.com', '$2y$10$fYl.JxSRN0QIdUa7wY0lf.yV1gpaAJv4.VcMJbTcQuotoZqk79VrO', 82),
(45, 'Monika', 'Nikt', 'Neverland', '08-110', 'Lihfxvbjyutyrter 66', '123123123', 'niwwwwwjjwww.lll@gmail.com', '$2y$10$VlMgcrnCkrIEsynWYdIKdeMAk21ZQS5yxNhBq/8IzV.tWOR0IYJwK', 83);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`idCart`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `employeelogintime`
--
ALTER TABLE `employeelogintime`
  ADD PRIMARY KEY (`idLogged`),
  ADD KEY `idEmployee` (`idEmployee`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmployee`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `idPrem` (`idPrem`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCart` (`idCart`),
  ADD KEY `idStatus` (`idStatus`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`idPrem`);

--
-- Indexes for table `productgallery`
--
ALTER TABLE `productgallery`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `idProdukt` (`idProduct`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idFoto` (`idFoto`);

--
-- Indexes for table `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD PRIMARY KEY (`idCart`,`idProduct`),
  ADD KEY `idProdukt` (`idProduct`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `idCart` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employeelogintime`
--
ALTER TABLE `employeelogintime`
  MODIFY `idLogged` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idPrem` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productgallery`
--
ALTER TABLE `productgallery`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `idStatus` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeelogintime`
--
ALTER TABLE `employeelogintime`
  ADD CONSTRAINT `employeelogintime_ibfk_1` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`idPrem`) REFERENCES `permissions` (`idPrem`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`idCategory`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD CONSTRAINT `productsincarts_ibfk_3` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
