-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Wrz 2022, 17:41
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--
CREATE DATABASE IF NOT EXISTS `biblioteka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `autor_id` int(10) UNSIGNED NOT NULL,
  `autor` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`autor_id`, `autor`) VALUES
(1, 'Brzechwa Jan'),
(2, 'Kozłowska Urszula'),
(3, 'Wiśniewska Anna'),
(4, 'Steel Danielle'),
(5, 'Roberts Nora'),
(6, 'Beaumont Emilie'),
(7, 'Tuwim Julian'),
(8, 'Andersen Hans Christian'),
(9, 'Sienkiewicz Henryk'),
(10, 'Konopnicka Maria'),
(11, 'Christie Agatha'),
(12, 'Pawlikowska Beata'),
(13, 'II Jan Paweł'),
(14, 'Belineau Nathalie'),
(15, 'King Stephen'),
(16, 'Bator Agnieszka'),
(17, 'Twardowski Jan'),
(18, 'Flisek Aneta'),
(19, 'Mickiewicz Adam'),
(20, 'Chmielewska Joanna'),
(21, 'Stadtmüller Ewa'),
(22, 'Frączek Agnieszka'),
(23, 'Podgórska Anna'),
(24, 'Drabik Wiesław'),
(25, 'Chotomska Wanda'),
(26, 'Grimm Jakub i Wilhelm'),
(27, 'Kozera Piotr'),
(28, 'Guzowska Beata'),
(29, 'Kienzler Iwona'),
(30, 'Bujak Adam'),
(31, 'Żeromski Stefan'),
(32, 'Montgomery Lucy Maud'),
(33, 'Grün Anselm osb'),
(34, 'Webb Holly'),
(35, 'Disney '),
(36, 'Michalec Bogusław'),
(37, 'Masterton Graham'),
(38, 'Gellner Dorota'),
(39, 'Doyle Arthur Conan'),
(40, 'Krzyżanek Joanna'),
(41, 'Stanecka Zofia'),
(42, 'Prus Bolesław'),
(43, 'Fabisińska Liliana'),
(44, 'Fredro Aleksander'),
(45, 'Grisham John'),
(46, 'Piotrowska Eliza'),
(47, 'Simon Francesca'),
(48, 'Wołoszański Bogusław'),
(49, 'Nożyńska-Demianiuk Agnieszka'),
(50, 'Wejner Rafał'),
(51, 'Palmer Diana'),
(52, 'Coben Harlan'),
(53, 'Lindgren Astrid'),
(54, 'Niemycki Mariusz'),
(55, 'Lekan Elżbieta'),
(56, 'Cieszyńska Jagoda'),
(57, 'Rosiński Grzegorz'),
(58, 'Kasdepke Grzegorz'),
(59, 'Tracy Brian'),
(60, 'Perrault Charles'),
(61, 'Patterson James'),
(62, 'Usenko Natalia'),
(63, 'Czarkowska Iwona'),
(64, 'Cussler Clive'),
(65, 'Jakimowicz-Klein Barbara'),
(66, 'Rodziewiczówna Maria'),
(67, 'Czyżowska Małgorzata'),
(68, 'Danowski Bartosz'),
(69, 'Verne Juliusz'),
(70, 'Mankell Henning'),
(71, 'Koper Sławomir'),
(72, 'Shakespeare William'),
(73, 'Kapusta Piotr'),
(74, 'Pratchett Terry'),
(75, 'Nowak Ewa'),
(76, 'Zarawska Patrycja'),
(77, 'Osho '),
(78, 'Stelmaszyk Agnieszka'),
(79, 'Lem Stanisław'),
(80, 'Wiśniewski Krzysztof'),
(81, 'Skwark Dorota'),
(82, 'Osborne Mary Pope'),
(83, 'Jelonek Tomasz'),
(84, 'Skarżyńska Ewa'),
(85, 'Tolkien John Ronald Reuel'),
(86, 'Miłosz Czesław'),
(87, 'Słowacki Juliusz'),
(88, 'Nienacki Zbigniew'),
(89, 'Bourgeois Paulette'),
(90, 'Twain Mark'),
(91, 'Błędowski Ernest'),
(92, 'Chmielewski Henryk Jerzy'),
(93, 'Goscinny Rene'),
(94, 'Nurowska Maria'),
(95, 'Szymanderska Hanna'),
(96, 'Niziurski Edmund'),
(97, 'Saint-Exupéry Antoine De'),
(98, 'Jordan Penny'),
(99, 'Kapuściński Ryszard'),
(100, 'Olech Joanna'),
(101, 'Kosik Rafał'),
(102, 'Cobb  Amelia'),
(103, 'Rothenberg Jess');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `gatunek_id` int(10) UNSIGNED NOT NULL,
  `gatunek` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `gatunki`
--

INSERT INTO `gatunki` (`gatunek_id`, `gatunek`) VALUES
(1, 'albumy'),
(2, 'biografie i wspomnienia'),
(3, 'czasopisma'),
(4, 'dla dzieci i młodzieży'),
(5, 'encyklopedie i leksykony'),
(6, 'eseje, felietony i publicystyka literacka'),
(7, 'ezoteryka'),
(8, 'fantastyka'),
(9, 'historia'),
(10, 'informatyka'),
(11, 'kalendarze'),
(12, 'komiks'),
(13, 'kulinaria'),
(14, 'lektury szkolne'),
(15, 'literatura faktu i reportaż'),
(16, 'literatura piękna'),
(17, 'literatura popularno - naukowa'),
(18, 'nauka języków'),
(19, 'nauki humanistyczne'),
(20, 'nauki przyrodnicze'),
(21, 'nauki społeczne'),
(22, 'nauki ścisłe'),
(23, 'pakiety'),
(24, 'poezje, cytaty, aforyzmy'),
(25, 'poradniki'),
(26, 'przewodniki i mapy'),
(27, 'religie i mitologie'),
(28, 'sensacja'),
(29, 'słowniki'),
(30, 'sport i rekreacja'),
(31, 'inne'),
(32, 'patronaty'),
(33, 'horror'),
(34, 'kryminał'),
(35, 'fantasy'),
(36, 'batalistyka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `klient_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) NOT NULL DEFAULT '',
  `nazwisko` varchar(20) NOT NULL DEFAULT '',
  `adres` varchar(255) NOT NULL DEFAULT '',
  `nr_kontaktowy` varchar(15) NOT NULL DEFAULT '',
  `last_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`klient_id`, `imie`, `nazwisko`, `adres`, `nr_kontaktowy`, `last_update`) VALUES
(1, 'Jan', 'Nowak', 'Bydgoszcz, ul. Batorego 25/2', '533433234', '2019-10-10 10:03:30'),
(2, 'Jakub', 'Wojtczak', 'Bydgoszcz, Warszawska 22', '600654321', '2022-06-28 07:44:54'),
(3, 'Tomasz', 'Szeliga', 'Bydgoszcz, ul. Lwowska 20 m. 31', '765444222', '2022-06-28 07:51:19'),
(4, 'Kamil', 'Jackowski', 'Bydgoszcz, Al. Jana Pawła II 33', '602343225', '2022-06-28 07:53:04'),
(5, 'Kacper', 'Adamski', 'Osielsko, ul. Kwiatowa 5', '622342111', '2022-06-28 08:04:24'),
(6, 'Wojciech', 'Jakubowski', 'Bydgoszcz, ul. Dworcowa 22 m. 12', '556345098', '2022-06-28 08:07:29'),
(7, 'Wacław', 'Putek', 'Bydgoszcz, ul. Szarych Szeregów 44/28', '533444654', '2022-06-28 08:14:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `ksiazka_id` int(10) UNSIGNED NOT NULL,
  `tytul` varchar(100) NOT NULL DEFAULT '',
  `gatunek_id` int(10) UNSIGNED DEFAULT NULL,
  `autor_id` int(10) UNSIGNED DEFAULT NULL,
  `wydawnictwo_id` int(10) UNSIGNED DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`ksiazka_id`, `tytul`, `gatunek_id`, `autor_id`, `wydawnictwo_id`, `last_update`) VALUES
(1, 'Niedokończone opowieści ', 35, 85, 6, '2019-10-02 05:07:06'),
(2, 'Królestwo', 4, 103, 1, '2019-10-02 05:07:06'),
(3, 'Zbrodnia w efekcie', 34, 20, 1, '2019-10-02 05:07:06'),
(4, 'Klin', 34, 20, 1, '2019-10-02 05:07:06'),
(5, 'Przebudzenie', 33, 15, 17, '2019-10-02 05:07:06'),
(6, 'Bastion', 33, 15, 43, '2019-10-02 05:07:06'),
(7, 'Nocna zmiana', 28, 15, 43, '2019-10-02 05:07:06'),
(8, 'Mroczna Wieża', 8, 15, 43, '2019-10-02 05:07:06'),
(9, 'Instytut', 28, 15, 43, '2019-10-02 05:07:06'),
(10, 'Cicha noc', 16, 4, 8, '2019-10-02 05:07:06'),
(11, 'Szczęście w nieszczęściu', 16, 4, 56, '2019-10-02 05:07:06'),
(12, 'Mroczna strona', 16, 4, 8, '2019-10-02 05:07:06'),
(13, 'Uwaga, to niebezpieczne', 4, 6, 1, '2019-10-02 05:07:06'),
(14, 'Dynastia Miziołków', 4, 100, 68, '2019-10-02 05:07:06'),
(15, 'Felix, Net i Nika oraz Gang Niewidzialnych Ludzi ', 4, 101, 68, '2019-10-02 05:07:06'),
(16, 'Śmieszne wierszyki', 4, 1, 1, '2019-10-02 05:07:06'),
(17, 'Wiersze polityczne', 24, 1, 30, '2019-10-02 05:07:06'),
(18, 'Akademia pana Kleksa', 4, 1, 37, '2019-10-02 05:07:06'),
(19, 'Wiersze Brzechwa dzieciom', 4, 1, 50, '2019-10-02 05:07:07'),
(20, 'Zosia i jej zoo. Senna sowa śnieżna', 4, 102, 7, '2019-10-02 05:07:07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwa`
--

CREATE TABLE `wydawnictwa` (
  `wydawnictwo_id` int(10) UNSIGNED NOT NULL,
  `wydawnictwo` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wydawnictwa`
--

INSERT INTO `wydawnictwa` (`wydawnictwo_id`, `wydawnictwo`) VALUES
(1, 'Olesiejuk'),
(2, 'Egmont'),
(3, 'PWN'),
(4, 'Helion'),
(5, 'Wolters Kluwer'),
(6, 'Zysk I S-Ka'),
(7, 'Zielona Sowa'),
(8, 'Znak'),
(9, 'Bellona'),
(10, 'Wilga'),
(11, 'Skrzat'),
(12, 'Novae Res Wydawnictwo Innowacyjne'),
(13, 'Harmonia'),
(14, 'Muza'),
(15, 'Impuls'),
(16, 'Aksjomat Kraków'),
(17, 'Prószyński i S-ka'),
(18, 'Difin'),
(19, 'SCHOLAR'),
(20, 'Napoleon V'),
(21, 'Uniwersytet Marii Curie-Skłodowskiej'),
(22, 'Adam Marszałek'),
(23, 'REBIS'),
(24, 'Uniwersytet Warszawski'),
(25, 'Ameet'),
(26, 'CeDeWu'),
(27, 'Jedność'),
(28, 'Literackie'),
(29, 'Universitas'),
(30, 'Uniwersytet Łódzki'),
(31, 'Sonia Draga'),
(32, 'PZWL'),
(33, 'WUJ'),
(34, 'C.H.Beck'),
(35, 'Pascal'),
(36, 'Edgard'),
(37, 'Dragon'),
(38, 'Media Rodzina'),
(39, 'Poligraf'),
(40, 'SBM'),
(41, 'Greg'),
(42, 'Literat'),
(43, 'Albatros'),
(44, 'Media Service Zawada'),
(45, 'WAM'),
(46, 'Siedmioróg'),
(47, 'Czarne'),
(48, 'Czarna Owca'),
(49, 'RM'),
(50, 'Nasza Księgarnia'),
(51, 'Aspra JR F.H. W.A.B. Uniwersytet Mikołaja Kopernika'),
(52, 'Edipresse'),
(53, 'Fenix'),
(54, 'LektorKlett'),
(55, 'LTW'),
(56, 'Amber'),
(57, 'ExpressMap'),
(58, 'Świat Książki'),
(59, 'Debit'),
(60, 'Studio Astropsychologii'),
(61, 'Agora'),
(62, 'eSPe'),
(63, 'Arti'),
(64, 'Dolnośląskie'),
(65, 'Wydawnictwo M'),
(66, 'Papilon'),
(67, 'Jaguar'),
(68, 'Literatura'),
(69, 'Urban&Partner'),
(70, 'Plan'),
(71, 'Ibis'),
(72, 'Czwarta Strona'),
(73, 'Freytag & Berndt'),
(74, 'Psychoskok'),
(75, 'Diecezjalne Sandomierz'),
(76, 'Filia'),
(77, 'Fabryka Słów'),
(78, 'Burda Książki'),
(79, 'Liwona'),
(80, 'Colgraf/Pasja'),
(81, 'Św. Wojciech'),
(82, 'Edipresse Książki'),
(83, 'Dialog'),
(84, 'KOS'),
(85, 'Uniwersytet im. Adama Mickiewicza w Poznaniu'),
(86, 'Marginesy'),
(87, 'Kobiece'),
(88, 'Bernardinum'),
(89, 'PWE Polskie Wydawnictwo Ekonomiczne'),
(90, 'Rozpisani.pl'),
(91, 'Bezdroża'),
(92, 'Arkady'),
(93, 'AWM Morex'),
(94, 'Esprit'),
(95, 'Martel'),
(96, 'Galaktyka'),
(97, 'Vocatio'),
(98, 'Księży Młyn');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `wypozyczenia_id` int(10) UNSIGNED NOT NULL,
  `klient_id` int(10) UNSIGNED NOT NULL,
  `ksiazka_id` int(10) UNSIGNED NOT NULL,
  `data_wypozyczenia` datetime NOT NULL,
  `data_oddania` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indeksy dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`gatunek_id`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`klient_id`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`ksiazka_id`),
  ADD KEY `autor_id` (`autor_id`),
  ADD KEY `wydawnictwo_id` (`wydawnictwo_id`),
  ADD KEY `gatunek_id` (`gatunek_id`);

--
-- Indeksy dla tabeli `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  ADD PRIMARY KEY (`wydawnictwo_id`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`wypozyczenia_id`),
  ADD KEY `klient_id` (`klient_id`),
  ADD KEY `ksiazka_id` (`ksiazka_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `autor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `gatunek_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `klient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `ksiazka_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  MODIFY `wydawnictwo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `wypozyczenia_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autorzy` (`autor_id`),
  ADD CONSTRAINT `ksiazki_ibfk_2` FOREIGN KEY (`wydawnictwo_id`) REFERENCES `wydawnictwa` (`wydawnictwo_id`),
  ADD CONSTRAINT `ksiazki_ibfk_3` FOREIGN KEY (`gatunek_id`) REFERENCES `gatunki` (`gatunek_id`);

--
-- Ograniczenia dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`klient_id`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`ksiazka_id`) REFERENCES `ksiazki` (`ksiazka_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
