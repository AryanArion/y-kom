-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lis 2020, 23:33
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ykom`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `carts`
--

CREATE TABLE `carts` (
  `idCart` int(11) NOT NULL,
  `cartName` text COLLATE utf8_polish_ci DEFAULT NULL,
  `summaryPrice` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `carts`
--

INSERT INTO `carts` (`idCart`, `cartName`, `summaryPrice`) VALUES
(1, NULL, 0.00),
(2, NULL, 2199.00),
(3, NULL, 0.00),
(4, NULL, 0.00),
(5, NULL, 0.00),
(6, NULL, 0.00),
(7, NULL, 0.00),
(8, NULL, 1113.00),
(9, NULL, 0.00),
(10, NULL, 0.00),
(14, NULL, 0.00),
(15, NULL, 0.00),
(16, NULL, 0.00),
(17, NULL, 0.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `idCategory` int(11) NOT NULL,
  `category` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `categories`
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
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `idEmployee` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `login` text COLLATE utf8_polish_ci DEFAULT NULL,
  `password` text COLLATE utf8_polish_ci DEFAULT NULL,
  `idPrem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`idEmployee`, `name`, `surname`, `login`, `password`, `idPrem`) VALUES
(1, 'Andrzej', 'Adrian', 'andrzej.adrian', '123', 2),
(2, 'Karolina', 'Prekurat', 'karolina.prekurat', '123', 1),
(3, 'Adrian', 'Rybaczuk', 'adrian.rybaczuk', '123', 1),
(4, 'Jakub', 'Paprocki', 'jakub.paprocki', '123', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idCart` int(11) NOT NULL,
  `idEmployee` int(11) DEFAULT NULL,
  `idStatus` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCity` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCode` varchar(5) COLLATE utf8_polish_ci DEFAULT NULL,
  `adress` text COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` varchar(9) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permissions`
--

CREATE TABLE `permissions` (
  `idPrem` int(11) NOT NULL,
  `premission` tinytext COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `permissions`
--

INSERT INTO `permissions` (`idPrem`, `premission`) VALUES
(1, 'pracownik'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `Specification` mediumtext COLLATE utf8_polish_ci DEFAULT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idFoto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`idProduct`, `name`, `price`, `Quantity`, `Specification`, `idCategory`, `idFoto`) VALUES
(1, 'WD 240GB 2,5\" SATA SSD', '120.00', 11, 'Przeznaczenie produktu:PC;Pojemność:240 GB;Format:2.5\";Interfejs:SATA III (6.0Gb/s);Prędkość odczytu (maksymalna):545 MB/s;Rodzaj kości pamięci:TLC;', 2, NULL),
(2, 'Gigabyte GeForce RTX 2060  OC 6GB GDDR6', '1599.00', 12, 'Obsługa Ray tracingu:Tak;Układ graficzny:GeForce RTX 2060;Rodzaj złącza:PCI-E x16 3.0;Pamięć:6 GB;Rodzaj pamięci:GDDR6;', 3, NULL),
(3, 'AMD Ryzen 5 3600', '999.00', 12, 'Seria:Ryzen™ 5 3600;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 1, NULL),
(4, 'AMD Ryzen 5 3500X', '753.00', 50, 'Seria:Ryzen™ 5 3500X;Taktowanie:3.6 GHz;Liczba rdzeni:6 rdzeni;Cache:35 MB', 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productsincarts`
--

CREATE TABLE `productsincarts` (
  `idCart` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `howMuch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `productsincarts`
--

INSERT INTO `productsincarts` (`idCart`, `idProduct`, `howMuch`) VALUES
(2, 1, 5),
(2, 2, 1),
(8, 1, 3),
(8, 4, 1);

--
-- Wyzwalacze `productsincarts`
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
-- Struktura tabeli dla tabeli `produktgallery`
--

CREATE TABLE `produktgallery` (
  `idFoto` int(11) NOT NULL,
  `idProdukt` int(11) DEFAULT NULL,
  `photo` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `status`
--

CREATE TABLE `status` (
  `idStatus` int(11) NOT NULL,
  `status` text COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `status`
--

INSERT INTO `status` (`idStatus`, `status`) VALUES
(1, 'potwierdzone'),
(2, 'nowepotwierdzone'),
(3, 'wysłane'),
(4, 'dostarczone'),
(5, 'zakończone');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci DEFAULT NULL,
  `surname` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCity` text COLLATE utf8_polish_ci DEFAULT NULL,
  `postCode` char(6) COLLATE utf8_polish_ci DEFAULT NULL,
  `address` text COLLATE utf8_polish_ci DEFAULT NULL,
  `phone` varchar(9) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` text COLLATE utf8_polish_ci DEFAULT NULL,
  `password` text COLLATE utf8_polish_ci DEFAULT NULL,
  `currentCart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`idUser`, `name`, `surname`, `postCity`, `postCode`, `address`, `phone`, `email`, `password`, `currentCart`) VALUES
(10, 'Adrian', 'Kornik', 'Warszawa', '08-110', 'Żubrowa 15', '510154094', 'lee@rock.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 1),
(11, 'Monika', 'Kozioł', 'Warszawa', '00-023', 'ul. Kwiatowa 7', '870172408', 'monika.kozioł@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 2),
(12, 'Andrzej', 'Szatan', 'Radom', '26-605', 'ul. Tęczowa 666', '098098678', 'adrejo.sztano@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 3),
(13, 'Jakub', 'Morda', 'Siedlce', '08-110', 'ul. Piłsudskiego 78', '09227663', 'jakuboloelo@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 4),
(14, 'Ryszard', 'Kot', 'Zakopane', '34-505', 'ul. Główna 55', '123234345', 'rysio@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 5),
(15, 'Julita', 'Wróbel', 'Wrocłam', '50-004', 'ul. Mordercy 66', '098567900', 'angel99@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 6),
(18, 'Maciek', 'Grzegorczyk', 'Wiśniew', '08-112', 'Okno', '564573434', 'maciekgrzegorczyk@gmail.com', '$2y$10$JfleS6PLAls7a1IRDdxmsOcFLysjlAYI6c5H5fK4jr3LD03ipuQgG', 7),
(19, 'Karolina', 'Prekurat', 'Siedlce', '08-110', 'Kubusia Puchata 64', '512038120', 'nie@nie.com', '$2y$10$M49Ur99ipuG4SzJbRX9xLOnocTZLJNvJBp5ar5UNi1LvS27uKQxTC', 8),
(20, 'Andrzej', 'Kowalski', 'Siedlce', '08-110', 'Starowiejska 5', '224444444', 'andreakow@gmail.com', '$2y$10$6ILj42WxvsVnQGlKnsKvQe4rJnIZ1iPCbSH8cYwOC3V9udMKTNgN.', 9),
(24, 'Maria', 'Curie', 'Curier', '09-345', 'Zielarska 14', '464565575', 'das@o2.pol', '$2y$10$TIlgUtMKUIzQcJ.q38EsueYroDqnjbcprCXcI1YhRhitURflcGfii', 10),
(27, 'Barbara', 'Kareńska', 'Zenki', '43-232', 'Wolska 34', '343567543', 'fff@gm.com', '$2y$10$YRhwvwYE4Cpr9BsRKGyJXO0KYM6GwUwLYNHcfMsHIeqRT9fHwjo6C', 14),
(30, 'sadas', 'dsdasd', 'dasdasd', '34-434', 'dasd', '213233567', '344ds@o2.pl', '$2y$10$B4bvGSWgbtRexHgCWapIz.b6sdSKUPeJk69TmPjGg56Z4pFyBMY12', 17);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`idCart`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`idEmployee`),
  ADD KEY `idPrem` (`idPrem`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCart` (`idCart`),
  ADD KEY `idStatus` (`idStatus`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idEmployee` (`idEmployee`);

--
-- Indeksy dla tabeli `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`idPrem`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idFoto` (`idFoto`);

--
-- Indeksy dla tabeli `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD PRIMARY KEY (`idCart`,`idProduct`),
  ADD KEY `idProdukt` (`idProduct`);

--
-- Indeksy dla tabeli `produktgallery`
--
ALTER TABLE `produktgallery`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `idProdukt` (`idProdukt`);

--
-- Indeksy dla tabeli `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `carts`
--
ALTER TABLE `carts`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `employees`
--
ALTER TABLE `employees`
  MODIFY `idEmployee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `permissions`
--
ALTER TABLE `permissions`
  MODIFY `idPrem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `produktgallery`
--
ALTER TABLE `produktgallery`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `status`
--
ALTER TABLE `status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`idPrem`) REFERENCES `permissions` (`idPrem`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `status` (`idStatus`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`idEmployee`) REFERENCES `employees` (`idEmployee`);

--
-- Ograniczenia dla tabeli `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`idCategory`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idFoto`) REFERENCES `produktgallery` (`idFoto`);

--
-- Ograniczenia dla tabeli `productsincarts`
--
ALTER TABLE `productsincarts`
  ADD CONSTRAINT `productsincarts_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `carts` (`idCart`),
  ADD CONSTRAINT `productsincarts_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);

--
-- Ograniczenia dla tabeli `produktgallery`
--
ALTER TABLE `produktgallery`
  ADD CONSTRAINT `produktgallery_ibfk_1` FOREIGN KEY (`idProdukt`) REFERENCES `products` (`idProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
