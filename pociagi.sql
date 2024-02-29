-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Lut 2024, 12:46
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pociagi`
--
CREATE DATABASE IF NOT EXISTS `pociagi` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `pociagi`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bilety`
--

CREATE TABLE `bilety` (
  `nr_biletu` int(4) NOT NULL,
  `nr_przejazdu` int(3) DEFAULT NULL,
  `cena` int(3) DEFAULT NULL,
  `ilosc` int(2) DEFAULT NULL,
  `ulga` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `bilety`
--

INSERT INTO `bilety` (`nr_biletu`, `nr_przejazdu`, `cena`, `ilosc`, `ulga`) VALUES
(2001, 501, 180, 1, '0.33'),
(2002, 501, 180, 2, '0.00'),
(2003, 502, 69, 1, '0.33'),
(2004, 502, 69, 2, '0.00'),
(2005, 503, 180, 2, '0.00'),
(2006, 504, 32, 10, '0.00'),
(2007, 506, 120, 1, '0.33'),
(2008, 504, 32, 1, '0.33'),
(2009, 509, 180, 1, '0.00'),
(2010, 503, 180, 1, '0.33'),
(2011, 504, 32, 2, '0.00'),
(2012, 509, 180, 1, '0.33'),
(2013, 504, 32, 2, '0.00'),
(2014, 505, 32, 1, '0.33'),
(2015, 506, 120, 1, '0.33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przejazdy`
--

CREATE TABLE `przejazdy` (
  `nr_przejazdu` int(3) NOT NULL,
  `nr_skladu` int(3) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `stacja_pocz` varchar(18) DEFAULT NULL,
  `czas_wyj` time DEFAULT NULL,
  `stacja_kon` varchar(19) DEFAULT NULL,
  `czas_przyj` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `przejazdy`
--

INSERT INTO `przejazdy` (`nr_przejazdu`, `nr_skladu`, `data`, `stacja_pocz`, `czas_wyj`, `stacja_kon`, `czas_przyj`) VALUES
(501, 104, '2022-07-15', 'Warszawa Wschodnia', '08:12:00', 'Berlin Hauptbahnhof', '14:55:00'),
(502, 106, '2022-07-15', 'Warszawa Wschodnia', '16:10:00', 'Berlin Hauptbahnhof', '20:55:00'),
(503, 109, '2022-07-15', 'Gdynia', '03:12:00', 'Jelenia Gora', '13:12:00'),
(504, 108, '2022-07-16', 'Konin', '05:12:00', 'Poznan', '07:12:00'),
(505, 108, '2022-07-16', 'Poznan', '12:12:00', 'Konin', '16:44:00'),
(506, 105, '2022-07-17', 'Katowice', '06:12:00', 'Gdynia', '14:55:00'),
(507, 103, '2022-07-17', 'Poznan', '08:10:00', 'Katowice', '12:40:00'),
(508, 101, '2022-07-18', 'Poznan', '05:12:00', 'Zielona Gora', '08:12:00'),
(509, 102, '2022-07-18', 'Katowice', '07:12:00', 'Gdynia', '14:12:00'),
(510, 108, '2022-07-18', 'Poznan', '12:12:00', 'Konin', '16:44:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sklady`
--

CREATE TABLE `sklady` (
  `nr_skladu` int(3) NOT NULL,
  `nazwa` varchar(23) DEFAULT NULL,
  `lokomotywa` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `sklady`
--

INSERT INTO `sklady` (`nr_skladu`, `nazwa`, `lokomotywa`) VALUES
(101, 'Bachus', 'EP-07'),
(102, 'Zefir', 'EP-09'),
(103, 'Cegielski', 'EP-09'),
(104, 'Malczewski', 'EP-09'),
(105, 'Barbakan', 'EP-07'),
(106, 'Berolina', 'Husarz'),
(107, 'Berolina', 'Husarz'),
(108, 'Powstaniec Wielkopolski', 'EP-09'),
(109, 'Szklarka', 'EP-09'),
(110, 'Hetman', 'Pendolino');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bilety`
--
ALTER TABLE `bilety`
  ADD PRIMARY KEY (`nr_biletu`),
  ADD KEY `nr_przejazdu` (`nr_przejazdu`);

--
-- Indeksy dla tabeli `przejazdy`
--
ALTER TABLE `przejazdy`
  ADD PRIMARY KEY (`nr_przejazdu`),
  ADD KEY `nr_skladu` (`nr_skladu`);

--
-- Indeksy dla tabeli `sklady`
--
ALTER TABLE `sklady`
  ADD PRIMARY KEY (`nr_skladu`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `bilety`
--
ALTER TABLE `bilety`
  ADD CONSTRAINT `bilety_ibfk_1` FOREIGN KEY (`nr_przejazdu`) REFERENCES `przejazdy` (`nr_przejazdu`);

--
-- Ograniczenia dla tabeli `przejazdy`
--
ALTER TABLE `przejazdy`
  ADD CONSTRAINT `przejazdy_ibfk_1` FOREIGN KEY (`nr_skladu`) REFERENCES `sklady` (`nr_skladu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
