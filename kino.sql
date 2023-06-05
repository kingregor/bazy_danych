-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Cze 2023, 00:03
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
-- Baza danych: `kino`
--
DROP DATABASE IF EXISTS `kino`;
CREATE DATABASE `kino` DEFAULT CHARACTER SET utf8mb4;
USE `kino`;

DELIMITER $$
--
-- Procedury
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `filmy_aktora` (IN `ak` VARCHAR(50) CHARSET utf8mb4)  DETERMINISTIC SELECT * FROM filmy
JOIN obsada ON filmy.id_filmu=obsada.id_filmu
JOIN aktorzy ON obsada.id_aktora=aktorzy.id_aktora
WHERE aktor LIKE ak$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktorzy`
--

CREATE TABLE `aktorzy` (
  `id_aktora` int(11) NOT NULL,
  `aktor` varchar(50) NOT NULL,
  `kobieta` tinyint(1) NOT NULL DEFAULT 0,
  `data_urodzenia` date NOT NULL,
  `wzrost` int(11) NOT NULL,
  `id_kraju` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `aktorzy`
--

INSERT INTO `aktorzy` (`id_aktora`, `aktor`, `kobieta`, `data_urodzenia`, `wzrost`, `id_kraju`) VALUES
(1, 'Keanu Reeves', 0, '1964-09-02', 185, 8),
(2, 'Willem Dafoe', 0, '1955-07-22', 177, 1),
(3, 'Alfie Allen', 0, '1986-09-12', 175, 2),
(4, 'Riccardo Scamarcio', 0, '1979-11-13', 178, 3),
(5, 'Claudia Gerini', 1, '1971-12-18', 170, 3),
(6, 'Halle Berry', 1, '1966-08-14', 166, 1),
(7, 'Laurence Fishburne', 0, '1961-07-30', 184, 1),
(8, 'Robert Downey Jr.', 0, '1965-04-04', 175, 1),
(9, 'Gwyneth Paltrow', 1, '1972-09-27', 175, 1),
(10, 'Leonardo DiCaprio', 0, '1974-11-11', 183, 1),
(11, 'Matthew McConaughey', 0, '1969-07-04', 182, 1),
(12, 'Anne Hathaway', 1, '1982-11-12', 173, 1),
(13, 'Michael Caine', 0, '1933-03-14', 188, 2),
(14, 'Sigourney Weaver', 1, '1949-10-08', 180, 1),
(15, 'John Hurt', 0, '1940-01-25', 175, 2),
(16, 'Bruce Willis', 0, '1955-03-19', 183, 9),
(17, 'Ben Affleck', 0, '1972-08-15', 192, 1),
(18, 'Matt Damon', 0, '1970-10-08', 178, 1),
(19, 'Robin Williams', 0, '1951-07-21', 170, 1),
(20, 'Forest Whitaker', 0, '1961-07-15', 188, 1),
(21, 'Brad Pitt', 0, '1963-12-18', 180, 1),
(22, 'Morgan Freeman', 0, '1937-06-01', 188, 1),
(23, 'Orlando Bloom', 0, '1977-01-13', 179, 2),
(24, 'Jack Nicholson', 0, '1937-04-22', 177, 1),
(25, 'Helen Hunt', 1, '1963-06-15', 170, 1),
(26, 'Tom Hanks', 0, '1956-07-09', 183, 1),
(27, 'Gary Sinise', 0, '1955-03-17', 178, 1),
(28, 'Jodie Foster', 1, '1962-11-19', 161, 1),
(29, 'Denzel Washington', 0, '1954-12-28', 185, 1),
(30, 'Tom Hardy', 0, '1977-09-15', 175, 1),
(31, 'Charlize Theron', 1, '1975-08-07', 177, 10),
(32, 'Tim Robbins', 0, '1958-10-16', 196, 1),
(33, 'David Morse', 0, '1953-10-11', 193, 1),
(34, 'Vin Diesel', 0, '1967-07-18', 183, 1),
(35, 'Paul Walker', 0, '1973-09-12', 188, 1),
(36, 'Nicole Kidman', 1, '1967-06-20', 180, 15),
(37, 'Hugh Jackman', 0, '1968-10-12', 189, 5),
(38, 'Mel Gibson', 0, '1956-01-03', 177, 1),
(39, 'Russell Crowe', 0, '1964-04-07', 182, 6),
(40, 'Arnold Schwarzenegger', 0, '1947-07-30', 188, 4),
(41, 'Connie Nielsen', 1, '1965-07-03', 179, 14),
(42, 'Joaquin Phoenix', 0, '1974-10-28', 173, 13),
(43, 'Kate Beckinsale', 1, '1973-07-26', 170, 2),
(44, 'Josh Hartnett', 0, '1978-07-21', 190, 1),
(45, 'Cuba Gooding Jr', 0, '1968-01-02', 178, 1),
(46, 'Alec Baldwin', 0, '1958-04-03', 183, 1),
(47, 'Dan Aykroyd', 0, '1952-07-01', 185, 1),
(48, 'Jon Voight', 0, '1938-12-29', 187, 1),
(49, 'Tom Sizemore', 0, '1961-11-29', 183, 1),
(50, 'Gene Hackman', 0, '1930-01-30', 187, 1),
(51, 'Clint Eastwood', 0, '1930-05-31', 193, 1),
(52, 'Viggo Mortensen', 0, '1958-10-20', 180, 1),
(53, 'Gary Oldman', 0, '1958-03-21', 174, 2),
(54, 'Harrison Ford', 0, '1942-07-13', 185, 1),
(55, 'Gleen Close', 1, '1947-03-19', 165, 1),
(56, 'Tommy Lee Jones', 0, '1946-09-15', 183, 1),
(57, 'Milla Jovovich', 1, '1975-12-17', 173, 11),
(58, 'Chris Tucker', 0, '1972-08-31', 185, 1),
(59, 'Jean Reno', 0, '1948-07-30', 188, 12),
(60, 'Natalie Portman', 1, '1981-06-09', 160, 7),
(61, 'Hugh Grant', 0, '1960-09-09', 180, 2),
(62, 'Julia Roberts', 1, '1967-10-29', 175, 1),
(63, 'Richard Gere', 0, '1949-08-21', 178, 1),
(64, 'Marton Csokas', 0, '1966-06-30', 186, 6),
(65, 'Clive Owen', 0, '1964-10-03', 189, 2),
(66, 'Alan Rickman', 0, '1946-02-21', 185, 2),
(67, 'John Travolta', 0, '1954-02-18', 188, 1),
(68, 'Uma Thurman', 1, '1970-04-29', 180, 1),
(69, 'Samuel L. Jackson', 0, '1948-12-21', 189, 1),
(70, 'Harvey Keitel', 0, '1939-07-30', 171, 1),
(71, 'Quentin Tarantino', 0, '1963-03-27', 185, 1),
(72, 'Tim Roth', 0, '1961-05-14', 170, 2),
(73, 'Jet Li', 0, '1963-04-26', 168, 16),
(74, 'Sylvester Stallone', 0, '1946-07-06', 177, 1),
(75, 'Jason Statham', 0, '1967-07-26', 178, 2),
(76, 'Dolph Lundgren', 0, '1957-11-03', 196, 17);

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id_filmu` int(11) NOT NULL,
  `tytul` varchar(50) NOT NULL,
  `oryginalny_tytul` varchar(50) NOT NULL,
  `opis` text DEFAULT NULL,
  `data_premiery` date DEFAULT NULL,
  `czas_trwania` int(11) NOT NULL,
  `zysk` decimal(5,1) DEFAULT NULL COMMENT 'w mln $',
  `id_gatunku` int(11) DEFAULT NULL,
  `id_rezysera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id_filmu`, `tytul`, `oryginalny_tytul`, `opis`, `data_premiery`, `czas_trwania`, `zysk`, `id_gatunku`, `id_rezysera`) VALUES
(1, 'John Wick', 'John Wick', 'Były płatny morderca ściga gangsterów, którzy wtargnęli do jego domu, dokonując brutalnej napaści i kradzieży.', '2014-09-19', 131, '86.0', 1, 1),
(2, 'John Wick 2', 'John Wick 2', 'John Wick udaje się do Rzymu na prośbę starego przyjaciela, który chce przejąć kontrolę nad międzynarodową gildią zabójców.', '2017-01-30', 121, '174.3', 1, 2),
(3, 'John Wick 3', 'John Wick 3', 'John Wick próbuje opuścić Nowy Jork po tym, jak zostaje wydalony z organizacji zabójców za morderstwo członka Najwyższej Rady.', '2019-05-15', 107, '328.3', 1, 2),
(4, 'Gothika', 'Gothika', 'Błyskotliwa psycholog, dr Miranda Grey jest ekspertem w sprawach logiki. Wie, co racjonalne i możliwe do zaakceptowania. Leczy niebezpieczne pacjentki na oddziale psychiatrycznym więzienia dla kobiet w Woodward. Pewnego dnia budzi się w nim jako pacjentka. Nie pamięta zupełnie, co się stało. Wkrótce okazuje się, że jest oskarżona o dokonanie morderstwa. Gdy sama postanawia dowiedzieć się prawdy, okazuje się, że kieruje nią żądny zemsty duch. ', '2003-11-13', 117, '141.6', 2, 3),
(5, 'Iron Man', 'Iron Man', 'Tony Stark buduje supernowoczesną zbroję. Multimiliarder postanawia walczyć ze złem jako Iron Man.', '2008-04-14', 98, '585.8', 2, 4),
(6, 'Wilk z Wall Street', 'The Wolf of Wall Street', 'Historia Jordana Belforta, brokera, którego błyskawiczna droga na szczyt i rozrzutny styl życia wzbudziły zainteresowanie FBI.', '2013-12-13', 116, '406.9', 3, 6),
(7, 'Interstellar', 'Interstellar', 'Byt ludzkości na Ziemi dobiega końca wskutek zmian klimatycznych. Grupa naukowców odkrywa tunel czasoprzestrzenny, który umożliwia poszukiwanie nowego domu.\r\nFilm oparty jest na teorii naukowej opracowanej przez fizyka z Caltech Kipa Thorne\'a.', '2014-10-26', 169, '773.8', 2, 7),
(8, 'Obcy - 8 pasażer Nostromo', 'Alien', 'Załoga statku kosmicznego Nostromo odbiera tajemniczy sygnał i ląduje na niewielkiej planetoidzie, gdzie jeden z jej członków zostaje zaatakowany przez obcą formę życia.', '2021-05-25', 127, '106.3', 2, 8),
(9, 'Armageddon', 'Armageddon', 'Po odkryciu asteroidy wielkości Teksasu, która zmierza w kierunku Ziemi, NASA rekrutuje grupę wiertniczych i wysyła na misję ratowania planety.', '1998-06-30', 137, '553.7', 2, 9),
(10, 'Buntownik z wyboru', 'Good Will Hunting', 'Will, matematyczny geniusz gardzący formalnym wykształceniem, zostaje oskarżony o pobicie policjanta. Profesor MIT, świadomy talentu chłopaka, proponuje mu, aby w zamian za zwolnienie z aresztu podjął naukę i terapię psychologiczną.', '1997-12-02', 121, '225.9', 4, 10),
(11, 'Good morning, Vietnam', 'Good morning, Vietnam', 'Po przyjeździe do Wietnamu Adrian Cronauer prowadzi program w wojskowej rozgłośni radiowej. Jego niekonwencjonalne metody pracy i oryginalny sposób bycia szybko budzą niechęć przełożonych.', '1987-12-23', 132, '123.9', 5, 11),
(12, 'Siedem', 'Seven', 'Dwóch policjantów stara się złapać seryjnego mordercę wybierającego swoje ofiary według specjalnego klucza - siedmiu grzechów głównych.', '1995-09-15', 127, '327.3', 6, 12),
(13, 'Troja', 'Troy', 'Ekranizacja epopei Homera opowiadająca o walce Greków pod murami Troi, aby odbić porwaną królową Sparty.', '2004-05-09', 183, '497.4', 7, 13),
(14, 'Infiltracja', 'The Departed', 'Tajny policjant w szeregach grupy przestępczej i informator mafii w bostońskiej jednostce dochodzeniowej toczą ze sobą śmiertelną rozgrywkę.', '2006-09-26', 152, '291.5', 1, 6),
(15, 'Lepiej być nie może', 'As Good as It Gets', 'Ekscentryczny Melvin zakochuje się w kelnerce z problemami.', '1997-12-06', 139, '314.2', 8, 14),
(16, 'Cast Away - poza światem', 'Cast Away', 'W wyniku katastrofy lotniczej inżynier firmy kurierskiej trafia na bezludną wyspę, gdzie musi przeżyć.', '2000-12-07', 143, '429.6', 9, 15),
(17, 'Forrest Gump', 'Forrest Gump', 'Historia życia Forresta, chłopca o niskim ilorazie inteligencji z niedowładem kończyn, który staje się miliarderem i bohaterem wojny w Wietnamie.', '1994-06-23', 142, '678.2', 9, 15),
(18, 'Kontakt', 'Contact', 'Ellie od lat prowadzi nasłuch kosmosu. W końcu odbiera sygnał nadany przez obcą cywilizację.', '1997-07-11', 153, '171.1', 2, 15),
(19, 'Lot', 'Flight', 'Pilot William \"Whip\" Whitaker szczęśliwie ląduje zepsutym samolotem. W sprawie wypadku toczy się śledztwo.', '2012-10-14', 138, '161.8', 9, 15),
(20, 'Mad Max: Na drodze gniewu', 'Mad Max: Fury Road', 'Prześladowany przez demony przeszłości Mad Max uważa, że najlepszym sposobem na przeżycie jest samotna wędrówka po świecie. Zostaje jednak wciągnięty do grupy uciekinierów przemierzających tereny spustoszone przez wojnę nuklearną (Wasteland) w pojeździe zwanym War Rig, prowadzonym przez Imperatorkę Furiosę. Uciekają z Cytadeli sterroryzowanej przez Immortana Joe’ego, któremu odebrano coś wyjątkowego. Rozwścieczony watażka zwołuje wszystkie swoje bandy i wytrwale ściga buntowników, podczas gdy na drogach toczy się wysokooktanowa wojna.', '2015-05-07', 120, '376.1', 2, 16),
(21, ' Atomic Blonde', ' Atomic Blonde', 'W scenie kiedy Lorraine Broughton jest odebrana przez agentów z lotniska w Berlinie Zachodnim, podczas jazdy ulicami stolicy Niemiec, za autem którym jedzie pojawia się Porsche. Podczas tego ujęcia można zauważyć, że pozostałe samochody, które stoją na ulicy nie były produkowane w 1989 roku.', '2017-03-12', 115, '95.7', 1, 1),
(22, 'The Old Guard', 'The Old Guard', 'Pod dowództwem wojowniczki imieniem Andy (Charlize Theron), sekretna grupa najemników, których nic nie jest w stanie zabić, od stuleci chroni świat śmiertelników. Kiedy zespół podejmuje się nowej misji ratunkowej i ich nadzwyczajne zdolności zostają nagle ujawnione, Andy i Nile (Kiki Layne), świeżo upieczony żołnierz w szeregach grupy, muszą wyeliminować zagrożenie ze strony ludzi, którzy za wszelką cenę chcą zawładnąć ich mocą i zarobić na tym fortunę.', '2020-07-10', 125, '587.0', 1, 17),
(23, 'Shrek', 'Shrek', 'Ogr o imieniu Shrek chce za wszelką cenę odzyskać spokój na terenie swojej posiadłości na bagnach, gdzie w wyniku represji okrutnego Lorda Farquaada zesłane zostały różne bajkowe postacie, w tym Pinokio, Wilk czy siedmiu krasnoludków. Shrek decyduje się na wyprawę do siedziby Farquaada, miasta Duloc, by odebrać prawa do swoich ziem, a w konsekwencji odzyskać utracony spokój. W wyprawie towarzyszy mu niezdarny Osioł. W wyniku negocjacji zawarty zostaje układ: w zamian za otrzymanie dokumentu ogr zobowiązuje się uwolnić ze smoczej wieży piękną królewnę Fionę, którą Lord wybrał na swoją przyszłą małżonkę.', '1990-10-17', 95, '488.4', 10, 18),
(24, 'Skazani na Shawshank', 'The Shawshank Redemption', 'Andy Dufresne (Tim Robbins), dobrze zarabiający bankier z Nowej Anglii, zostaje oskarżony o podwójne zabójstwo - swojej żony i jej kochanka. Uparcie twierdzi, że jest niewinny, ale dzięki niezbitym dowodom zostaje skazany na podwójne dożywocie w więzieniu Shawshank. Shawshank rządzi hipokryta i fanatyk biblijny, naczelnik Norton (Bob Gunton), a wraz z nim sadystyczni strażnicy. Andy już po kilku dniach poznaje brutalną, więzienną rzeczywistość, ale dzięki wrodzonej inteligencji, sprytowi oraz pomocy przyjaciela Ellisa Boyda \"Reda\" Reddinga (Morgan Freeman) udaje mu się zachować nadzieję, która pozwoli dokonać zemsty.', '2021-09-10', 142, '28.9', 9, 19),
(25, 'Zielona mila', 'The Green Mile', 'Rok 1935. Paul Edgecombe (Tom Hanks) jest jednym ze strażników bloku śmierci w więzieniu Cold Mountain. Do jego obowiązków należy odprowadzanie skazańców do celi śmierci długim korytarzem, wyłożonym zieloną wykładziną, zwaną \"Zieloną milą\". Pewnego dnia do więzienia przybywa olbrzymi czarnoskóry skazaniec, John Coffey (Michael Clarke Duncan). Ma oczekiwać na karę śmierci za zamordowanie dwóch białych dziewczynek. Jego wizyta na zawsze zmieni życie Paula i pozostałych pracowników więzienia.', '1999-12-06', 188, '286.8', 9, 19),
(26, 'Incepcja', 'Inception', 'Światowej sławy filmowiec Christopher Nolan wyreżyserował film z gwiazdorską obsadą, który zabiera widzów w podróż dookoła ziemskiego globu oraz w głąb intymnego i nieskończonego świata snów. Dom Cobb (Leonardo DiCaprio) jest niezwykle sprawnym złodziejem, mistrzem w wydobywaniu wartościowych sekretów ukrytych głęboko w świadomości podczas fazy snu, kiedy umysł jest najbardziej wrażliwy. Wyjątkowe umiejętności Cobba uczyniły z niego ważnego gracza w świecie szpiegostwa przemysłowego, ale i najbardziej poszukiwanego zbiega, a za swoją pozycję zapłacił utratą wszystkiego, co kocha. Teraz Cobb otrzymuje szansę na odkupienie. Za sprawą jednego, ostatniego zadania może odzyskać stracone życie. Musi tylko wraz ze swym zespołem dokonać rzeczy niemożliwej: zamiast skraść myśl, zaszczepić ją w śpiącym umyśle. Jeśli im się to uda, dokonają zbrodni doskonałej. Jednak nawet najbardziej precyzyjne planowanie nie jest w stanie przygotować ich na spotkanie z niezwykłym przeciwnikiem, który potrafi przewidzieć każdy ich ruch. Wróg, którego tylko Cobb mógł się spodziewać.', '2010-07-08', 148, '836.8', 6, 7),
(28, 'Szeregowiec Ryan', 'Saving Private Ryan', 'II wojna światowa była przełomowym wydarzeniem XX wieku i decydującym momentem dla Ameryki i świata. Przesunęła granice państw. Na zawsze zmieniła tych, którzy ją przeżyli i ukształtowała pokolenia, które po niej nadeszły. Nazwana została \"ostatnią wielką wojną\". Nic nie mogło przygotować żołnierzy na plaży Omaha do bitwy, którą właśnie mieli stoczyć. Przepełnieni nadzieją i determinacją, żaden z nich nie wiedział, czy uda mu się przeżyć. Patrząc na wybrzeże Normandii kapitan John Miller (Tom Hanks) wierzył, że walka, która ich czeka, jest największym wyzwaniem tej wojny. Nie wiedział, że to co najtrudniejsze, jest jeszcze przed nimi. Gdy sprzymierzone wojska opanowały plażę Omaha, Miller otrzymał rozkaz poprowadzenia swojego oddziału za linię wroga w niebezpiecznej misji znalezienia i ocalenia jednego człowieka - szeregowca Jamesa Ryana (Matt Damon) - najmłodszego z czterech braci, jedynego, który przeżył. Pozostali trzej zginęli w walce. W miarę, jak oddział przedzierał się coraz głębiej na terytorium wroga, ludzie kapitana Millera zaczęli podawać w wątpliwość celowość tej wyprawy. Dlaczego dla jednego człowieka naraża się życie ośmiu... Dlaczego życie tego szeregowca jest więcej warte niż ich wszystkich?', '1997-07-21', 170, '482.3', 5, 20),
(29, 'Riddick', 'Riddick', 'Zdradzony przez przyjaciół i pozostawiony na obcej planecie Riddick musi przetrwać w walce ze śmiertelnie groźnymi wrogami. Staje się jeszcze potężniejszy i niebezpieczniejszy niż kiedykolwiek wcześniej. Łowcy nagród ścigający go przez całą galaktykę staną się jedynie pionkami w grze, dzięki której Riddick rozpocznie odsiecz swojej planety, stojącej w obliczu zagłady.', '2013-08-28', 119, '98.3', 2, 21),
(30, 'Szybcy i wściekli', 'The Fast and the Furious', 'Opowieść o gangach, które rywalizują o prymat, ścigając się na ulicach miast przerobionymi samochodami, najczęściej produkcji japońskiej. Są to wyścigi o duże pieniądze. Gangi podejrzewane są także o serię porwań ciężarówek. Aby zlikwidować ten proceder, do jednej z grup przenika policjant, Brian (Paul Walker). Po pewnym czasie przekonuje do siebie szefa Dominica Toretto (Vin Diesel). Rywalizacja między gangami przybiera na sile, a dla Briana pojawiają się nowe problemy - zakochuje się w siostrze Dominica (Jordana Brewster).', '2001-06-18', 166, '207.5', 1, 34),
(31, 'Terminator  - Elektroniczny morderca', 'Terminator', 'Rok 2029. Spustoszonym nuklearną wojną światem rządzą roboty, rodzaj ludzki zszedł do podziemia, a Los Angeles to jedno wielkie gruzowisko. Jednak ludzie przygotowują się do buntu przeciw wszechwładnym maszynom-tyranom. Ich wysłannik (Michael Biehn) wraca do Los Angeles roku 1984. Musi za wszelką cenę uniemożliwić niezniszczalnemu cyborgowi z XXI wieku, terminatorowi (Arnold Schwarzenegger), zamordowanie Sary Connor (Linda Hamilton), przyszłej matki lidera rewolucji. Uzbrojony po zęby i pozbawiony jakichkolwiek uczuć terminator urządza krwawe polowanie na dziewczynę.', '1984-10-26', 107, '78.4', 2, 22),
(32, 'Człowiek Ringu', 'Cinderella Man', 'Opowieść o losach legendarnego sportowca Jima Braddocka - boksera, który po serii przegranych pojedynków, został zmuszony do porzucenia ringu. Podczas trudnych lat Wielkiego Kryzysu podejmował się wielu zajęć, by utrzymać rodzinę. Właśnie w tym okresie ponownie otrzymał szansę zmierzenia się z jednym z najlepszych bokserów tamtych czasów. Po niespodziewanym dla wszystkich zwycięstwie został wystawiony do walki z mistrzem świata - zawodnikiem znanym z uśmiercenia kilku swoich ringowych przeciwników.', '2005-05-23', 164, '108.5', 3, 23),
(33, 'Gladiator', 'Gladiator', 'Generał Maximus (Russell Crowe), jeden z najwybitniejszych dowódców w rzymskiej armii, dowiaduje się, że umierający cesarz Marek Aureliusz (Richard Harris) chce uczynić go swoim następcą na tronie. Nie podoba się to prawowitemu dziedzicowi, Kommodusowi (Joaquin Phoenix), który postanawia pozbyć się rywala i skazuje go na karę śmierci wraz z całą rodziną. Maximusowi cudem udaje się uciec. Trafia do niewoli, gdzie zostaje wyszkolony na gladiatora. Z walki na walkę zyskuje popularność, a na jego występy zaczyna przychodzić coraz więcej ludzi. Maximus jako wojownik wraca do Rzymu, by pomścić swoich bliskich, ale wie, że jedyną potęgą większą od władzy cesarza jest wola ludu i dlatego, by dokonać zemsty, musi stać się największym bohaterem Imperium. ', '2000-05-01', 155, '503.2', 7, 8),
(34, 'Joker', 'Joker', 'Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera. Przedstawiony przez Phillipsa obraz śledzi losy kultowego czarnego charakteru, człowieka zepchniętego na margines. To nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.', '2019-08-31', 122, '1074.5', 9, 24),
(35, 'Czego pragną kobiety', 'What Women Want', 'Nick Marshall jest typowym kobieciarzem, a z zawodu specjalistą od reklamy i - wydawałoby się - wybitnym pracownikiem, który wejdzie na sam szczyt. Przeszkodą okazuje się pewna kobieta imieniem Darcy, która otrzymuje stanowisko, o którym marzył. Nick jest nieźle wkurzony i to nie tylko na nią, ale na wszystkie kobiety jakie chodzą po naszej planecie. Pewnego dnia ulega jednak wypadkowi, wskutek którego nie umiera, ale doznaje wstrząsu, po którym słyszy myśli kobiet.', '2000-12-13', 127, '374.1', 11, 25),
(36, 'Braveheart - Waleczne Serce', 'Braveheart', 'Pod koniec XIII wieku Szkocja dostaje się pod panowanie angielskiego króla, Edwarda I. Przejęcie władzy odbywa się w wyjątkowo krwawych okolicznościach. Jednym ze świadków gwałtów i morderstw jest kilkunastoletni chłopak, William Wallace. Po latach spędzonych pod opieką wuja dorosły William wraca do rodzinnej wioski. Jedną z pierwszych osób, które spotyka, jest Murron - przyjaciółka z lat dzieciństwa. Dawne uczucie przeradza się w wielką i szczerą miłość. Niestety wkrótce dziewczyna ginie z rąk angielskich żołnierzy. Wydarzenie to staje się to momentem przełomowym w życiu młodego Szkota. William decyduje się bowiem na straceńczą walkę z okupantem i po brawurowym ataku zdobywa warownię wroga. Dzięki ogromnej odwadze zostaje wykreowany na przywódcę powstania przeciw angielskiej tyranii..', '1995-05-15', 177, '213.2', 7, 26),
(37, 'Mad Max', 'Mad Max', 'Nieokreślona przyszłość. Max Rockatansky prywatnie jest czułym mężem i kochającym ojcem, poza domem jednak zmienia się w pozbawionego skrupułów brutalnego gliniarza, egzekwującego prawo na australijskich szosach. Max, czując się rozdarty między domem a wyniszczającą pracą, nosi się z zamiarem porzucenia zawodu. Któregoś dnia, w czasie pościgu nieumyślnie doprowadza do śmierci lidera gangu motocyklowego, Nocnego Jeźdźca. Przypadkowa śmierć staje się pierwszym ogniwem łańcucha wypadków, które zburzą spokój miasta, a także samego bohatera.', '1979-04-12', 93, '100.0', 2, 16),
(38, 'Znaki', 'Signs', 'Mel Gibson wciela się w postać byłego pastora, ojca dwójki dzieci, który po tragicznej śmierci żony zrywa z Kościołem i porzuca stan duchowny. Wspólnie z córką, synem i młodszym bratem (Joaquin Phoenix) mieszka na farmie w Pensylwanii, gdzie pędzi spokojny żywot. Do czasu... Pewnego dnia odkrywa na swoim polu kukurydzy tajemniczy symbol, który nie mógł być pozostawiony przez człowieka. Niebawem informacje o podobnych znakach pojawiają się na całym świecie...', '2002-07-29', 106, '408.2', 2, 27),
(39, 'Tłumaczka', 'The Interpreter', 'Silvia Broome pracuje w ONZ jako tłumaczka. Pewnego dnia staje się świadkiem rozmowy dotyczącej zamachu na jednego z afrykańskich przywódców. Całą sprawą zajmują się agenci Tajnych Służb. Wkrótce jednak okazuje się, że nie wszystko jest tak oczywiste, jak było na samym początku, a tłumaczka skrywa pewną tajemnicę.', '2005-04-04', 128, '162.9', 1, 28),
(40, 'Wolverine', 'Wolverine', 'Hugh Jackman ponownie w roli tajemniczego, obdarzonego niezwykłą mocą Wolverine’a, który wyrusza do współczesnej Japonii. Stawia tam czoła nie tylko obcej kulturze, lecz także śmiertelnie groźnym wrogom, którzy gotowi są na wszystko, by go zniszczyć.  Wolverine odkryje swoje słabości, zyskując przy tym siłę, o której dotąd mógł tylko marzyć, a jego los zmieni się na zawsze…', '2013-07-16', 126, '414.8', 1, 29),
(43, 'Pearl Harbor', 'Pearl Harbor', 'Stany Zjednoczone, rok 1941. Dwaj przyjaciele i zapaleni piloci - Rafe (Ben Affleck) i Danny (Josh Hartnett) służą w lotnictwie. Rafe zakochuje się z wzajemnością w pięknej pielęgniarce Evelyn (Kate Beckinsale). Sielanka kończy się, gdy młody lotnik opuszcza Amerykę, by wziąć udział w bitwie o Anglię. Wkrótce przychodzi wiadomość o jego śmierci. Kilka miesięcy później Evelyn i Danny, którzy w międzyczasie zostali przeniesieni do Pear Harbor na Hawajach, nawiązują romans. Tymczasem z wojny wraca cały i zdrowy Rafe. Od tego momentu w splątane losy bohaterów ingeruje historia - japońskie bomby spadają na Pearl Harbor...', '2001-05-21', 183, '449.2', 5, 9),
(44, 'Van Helsing', 'Van Helsing', 'Van Helsing zostaje wysłany przez Watykan do zabicia Drakuli i jego wampirzyc, siejących spustoszenie w Transylwanii.', '2004-05-03', 132, '300.3', 13, 30),
(45, 'Władza absolutna', 'Absolute Power', 'Waszyngton, czasy współczesne. Włamywacz-weteran Luther Whitney (Clint Eastwood) ma zamiar godnie zakończyć złodziejską karierę. Decyduje się na jeszcze jeden - już ostatni - wielki skok, który swoim zwyczajem przygotowuje w najdrobniejszych szczegółach. Zakrada się do posiadłości Waltera Sullivana (E.G. Marshall), polityka i jednego z najbogatszych mieszkańców Waszyngtonu. W weneckim lustrze widzi sypialnię Sullivanów, w której żonę gospodarza Christy (Melora Hardin) uwodzi jego protegowany Alan Richmond (Gene Hackman), aktualnie piastujący urząd prezydenta Stanów Zjednoczonych. Pomiędzy nim a Christy wywiązuje się szamotanina, w trakcie której do sypialni wpadają dwaj agenci tajnych służb... Małżonka Sullivana ginie z ich rąk. Agenci oraz szefowa służb Białego Domu, Gloria Russell (Judy Davis), preparują na użytek prasy wersję - z włamywaczem jako zabójcą. Tymczasem Luther kradnie narzędzie zbrodni. Prowadzący śledztwo detektyw Seth Frank (Ed Harris) domyśla się, że włamania mógł dokonać tylko wykwalifikowany złodziej. Układa listę podejrzanych, a Luther zajmuje na niej czołowe miejsce. Agenci Białego Domu obawiają się, że włamywacz widział popełniony przez nich mord i chcą go zabić. Złodziej stawia im czoła, podejmuje dramatyczną walkę o życie własne, córki Kate (Laura Linney) oraz prawdę.', '1997-02-04', 121, '92.8', 14, 31),
(46, 'Karmazynowy przypływ', 'Crimson Tide', 'W Rosji grupa żołnierzy pod dowództwem nacjonalisty Radczenki przejmuje kontrolę nad wyrzutniami rakiet nuklearnych. Amerykański okręt podwodny \"Alabama\" zostaje wysłany, by patrolować wody terytorialne Rosji. \"Alabama\" to okręt klasy Ohio (jest tylko siedem takich na świecie) przenoszący pociski Tridant IC-4. Dowództwo \"Alabamy\" dostaje rozkaz odpalenia rakiet. Dochodzi do konfliktu między komandorem Frankiem Ramseyem (Gene Hackman) i jego pierwszym oficerem Ronem Hunterem (Denzel Washington), który zastanawia się nad słusznością wydanego rozkazu, ponieważ podczas potwierdzenia rozkazu okręt traci łączność z dowództwem. Nie wiadomo, czy rozkaz został potwierdzony, czy zarządzono odwołanie odpalenia rakiet. Konflikt oficerów dzieli załogę. Część uważa, że lojalność wobec groźby odpalenia pocisków nie jest najistotniejszą sprawą.', '1995-05-12', 116, '157.4', 6, 32),
(47, 'Air Force One', 'Air Force One', 'Na pokład startującego z moskiewskiego lotniska prezydenckiego samolotu Air Force One dostaje się grupa terrorystów podających się za rosyjskich dziennikarzy, Ich przywódcą jest fanatycznie oddany sprawie Rosji Ivan Korshunov (Gary Oldman), który z pomocą sympatyzującego z nim agenta amerykańskich służb specjalnych przejmuje kontrolę nad samolotem. Pilotom Air Force One udaje się podejść do lądowania na jednym z lotnisk wojskowych w Niemczech, zostają jednak zabici przez terrorystów, którzy podrywają samolot do dalszego lotu. Prezydent Marshall (Harrison Ford) ukrywa się, wszyscy są przekonani, że udało mu się uciec w kapsule ratunkowej...', '1997-07-21', 124, '315.2', 14, 33),
(48, 'Ścigany', 'The Fugitive', 'Szanowany chirurg Richard Kimble zostaje oskarżony o morderstwo żony i skazany na śmierć. Gdy w drodze do więzienia ucieka, jego śladem rusza szeryf Samuel Gerard.', '1993-07-29', 127, '368.9', 14, 35),
(49, 'Piąty Element', 'The Fifth Element', 'Korben Dallas to były komandos, a obecnie taksówkarz w NY w XXIII wieku. Wplątany zostaje w misję ratowania świata przed siłami zła pojawiającymi się raz na pięć tysięcy lat, a reprezentowanymi tym razem przez multimiliardera Zorga. Do jej zrealizowania potrzebuje mitycznych pięciu elementów. Wskutek zbiegu przypadków pomaga mu w tym ojciec Cornelius oraz piękna i tajemnicza Leeloo. Wyruszają w niebezpieczną misję do pozaziemskiego kurortu. Niestety nie wiadomo, czym jest i gdzie jest Piąty Element potrzebny do złączenia wszystkich w jedno i pokonania pędzącego w kierunku Ziemi Zła.', '1997-05-07', 126, '263.9', 2, 36),
(50, 'Leon Zawodowiec', 'Léon', 'Leon jest płatnym zabójcą. W niczym nie przypomina męskiego, twardego i nieposkromionego złoczyńcy. Wręcz przeciwnie: jest cichy, spokojny, na co dzień pije mleko. Pewnego dnia skorumpowana policja zabija swojego dostawcę narkotyków i jego rodzinę. Przeżyła tylko córka, która postanawia zemścić się na zabójcach. To niezwykle trudne zlecenie otrzymuje Leon, u którego młoda dziewczyna znajduje schronienie.', '1994-09-14', 110, '19.6', 1, 36),
(51, 'Forrest Gump', 'Forrest Gump', 'To romantyczna historia nierozgarniętego młodego człowieka o wielkim sercu i zdolności do odnajdywania się w największych wydarzeniach w historii USA, począwszy od swego dzieciństwa w latach 50-tych. Po tym, jak staje się gwiazdą footballu, odznaczonym bohaterem wojennym i odnoszącym sukcesy biznesmenem, główny bohater zyskuje status osobistości, lecz nigdy nie rezygnuje z poszukiwania tego, co dla niego najważniejsze - miłości swej przyjaciółki, Jenny Curran.\r\nForrest jest małym chłopcem, kiedy jego ojciec porzuca rodzinę, a matka utrzymuje siebie i syna biorąc pod swój dach lokatorów. Kiedy okazuje się, że jej chłopiec ma bardzo niski iloraz inteligencji, pozostaje nieustraszona w swoim przekonaniu, że ma on takie same możliwości, jak każdy inny. To prawda - takie same, a nawet dużo większe. W całym swym życiu Forrest niezamierzenie znajduje się twarzą w twarz z wieloma legendarnymi postaciami lat 50-tych, 60-tych i 70-tych. Wiedzie go to na boisko piłki nożnej, poprzez dżungle Wietnamu, Waszyngton, Chiny, Nowy Jork, do Luizjany i w wiele innych miejsc, a wszystko to relacjonuje on w swych poruszających i wstrząsających opowieściach przypadkowo spotkanym osobom.', '1994-06-23', 142, '678.2', 9, 15),
(52, 'Notting Hill', 'Notting Hill', 'William Thacker mieszka w zachodnim Londynie, w dzielnicy dla indywidualistów - Notting Hill. Jest rozwiedziony, sam myśli o sobie jako o dziwnym człowieku żyjącym na \"pół gwizdka\". Dzieli swoje mieszkanie z dziwacznym, nieogolonym Walijczykiem, Spikeem. Utrzymanie zapewnia mu kiepsko prosperująca księgarnia, której jest właścicielem. Pewnego dnia, przychodzi rano do swojej księgarni, wita się ze swym entuzjastycznym asystentem i gdy ten wychodzi, aby napić się cappucino, drzwi otwierają się cicho, William podnosi wzrok i jest zdumiony widząc, że jego klientką jest Anna Scott, największa współczesna gwiazda filmowa...', '1999-05-13', 124, '363.0', 15, 38),
(53, 'Pretty Woman', 'Pretty Woman', 'Dzieli ich wszystko, ale łączy jedno - oboje robią różne rzeczy dla pieniędzy. Bohaterką filmu jest Vivian Ward, dziewczyna do towarzystwa, która dopiero co przyjechała do Los Angeles z prowincji. Przypadkowo spotyka bogatego i przystojnego adwokata z Wall Street, Edwarda Lewisa, którego urzeka jej spontaniczność. Proponuje więc dziewczynie korzystną transakcję: za tydzień spędzony u jego boku dostanie trzy tysiące dolarów.', '1990-03-23', 119, '463.4', 15, 39),
(54, 'Bez litości', 'The Equalizer', 'W filmie \"Bez litości\" Denzel Washington gra McCalla, człowieka, który odciął się od tajemniczej przeszłości, by rozpocząć nowe, spokojne życie. Ale kiedy spotyka Teri (Chloë Grace Moretz), młodą dziewczynę, zmuszoną do współpracy przez niebezpiecznych rosyjskich gangsterów, nie może pozostać bezczynny - musi jej pomóc. Uzbrojony w pewne umiejętności, które pozwalają mu zemścić się na każdym, kto jest okrutny wobec bezbronnych ludzi, McCall rezygnuje z narzuconej sobie izolacji, by zaprowadzić sprawiedliwość. ', '0201-09-07', 132, '192.3', 1, 40),
(55, 'Księga ocalenia', 'The Book of Eli', 'W postapokaliptycznym świecie samotny bohater Eli (Denzel Washington) strzeże księgi, która dostarcza wiedzy mogącej uratować ludzkość. Despota (Gary Oldman) z małego, prowizorycznego miasteczka planuje objąć w posiadanie księgę. Nie zawaha się nawet poświęcić najbliższych, by osiągnąć cel.', '2010-01-11', 118, '157.1', 2, 41),
(57, 'Plan doskonały', 'Inside Man', 'Film opowiada o rozgrywce między trzema osobami: niezwykle inteligentnym i przebiegłym kryminalistą, Daltonem Russellem (Clive Owen), detektywem nowojorskiej policji, Keithem Frazierem (Denzel Washington) oraz elegancką i bezwzględną konsultantką wpływowych osób, Madeleine White (Jodie Foster). Dalton Russell zaplanował precyzyjny i śmiały napad na bank, w którym bierze 50 osób jako zakładników. Frazier, który negocjuje z bandytą podejrzewa, że kryje się za tym coś poważniejszego. Jego obawy potwierdzają się, gdy Madeleine White żąda prywatnego spotkania z Russellem, a szczegółami napadu osobiście zainteresowany jest potentat finansowy, Arthur Case.', '2006-03-16', 129, '186.0', 14, 37),
(58, 'Stan oblężenia', 'The Siege', 'W USA narasta fala terroryzmu. Dochodzenie w tej sprawie prowadzi specjalna sekcja FBI, której członkiem jest agent Anthony Hubbard (Denzel Washington). Po pewnym czasie do śledztwa włącza się agentka CIA, Elise Kraft (Annette Bening). Gdy w Nowym Jorku mają miejsce kolejne zamachy na ogromną skalę, rząd Stanów Zjednoczonych wprowadza stan wyjątkowy. Do miasta wkraczają silnie uzbrojone oddziały wojska, dowodzone przez generała Devereauxa (Bruce Willis), który znany jest z brutalnych i niekonwencjonalnych metod działania.', '1998-11-06', 116, '116.7', 14, 42),
(59, 'Szklana pułapka', 'Die Hard', 'Policjant John McClane udaje się do wielkiego biurowca Nakatomi Plaza, gdzie pracuje jego żona Holly. Na miejscu okazuje się, że wielki szklany budynek w całości został opanowany przez terrorystów, którzy chcą zrabować z firmowego sejfu 640 milionów dolarów. Zakładnikom grozi wielkie niebezpieczeństwo. Jedynie McClane nie zostaje zauważony przez bandytów i teraz może powiadomić policję. John stawia sobie za cel samodzielne oswobodzenie zakładników, wśród których znajduje się jego żona. Ma tylko pistolet małego kalibru..', '1988-07-12', 131, '141.6', 14, 43),
(60, 'Pulp fiction', 'Pulp fiction', 'Płatni mordercy, Jules i Vincent, dostają zlecenie, by odzyskać z rąk przypadkowych rabusiów tajemniczą walizkę bossa mafii. Nie dość tego, Vincent dostaje kolejną robotę - na czas nieobecności gangstera w mieście ma zaopiekować się jego poszukującą wrażeń żoną Mią. Vincent i Jules niespodziewanie wpadają po uszy, gdy przypadkowo zabijają zakładnika. Kłopoty ma też podupadły bokser, który otrzymał dużą sumę za przegranie swojej walki. Walkę jednak wygrywa, a Los Angeles staje się od tej chwili dla niego za małe. Specjaliści od mokrej roboty będą mieli co robić...', '1994-07-21', 154, '213.9', 14, 44),
(61, 'Niezniszczalni', 'The Expendables', 'Barney Ross jest dowódcą doświadczonej grupy najemników, którzy są jednymi z najlepszych w swoim fachu. Wśród weteranów znajdują się m. in. biegle władający bronią białą Lee Christmas i mistrz wschodnich sztuk walki Yin Yang. Drużyna otrzymuje zadanie obalenia despotycznego dyktatora, generała Garzę, który swoimi rządami, nie tylko krzywdzi obywateli państwa, ale też zaczyna zagrażać innym krajom. Najemnicy wyruszają do Ameryki Południowej na samobójczą misję.', '2010-08-03', 103, '274.5', 14, 45),
(62, 'Forrest Gump', 'Forrest Gump', 'To romantyczna historia nierozgarniętego młodego człowieka o wielkim sercu i zdolności do odnajdywania się w największych wydarzeniach w historii USA, począwszy od swego dzieciństwa w latach 50-tych. Po tym, jak staje się gwiazdą footballu, odznaczonym bohaterem wojennym i odnoszącym sukcesy biznesmenem, główny bohater zyskuje status osobistości, lecz nigdy nie rezygnuje z poszukiwania tego, co dla niego najważniejsze - miłości swej przyjaciółki, Jenny Curran.\r\nForrest jest małym chłopcem, kiedy jego ojciec porzuca rodzinę, a matka utrzymuje siebie i syna biorąc pod swój dach lokatorów. Kiedy okazuje się, że jej chłopiec ma bardzo niski iloraz inteligencji, pozostaje nieustraszona w swoim przekonaniu, że ma on takie same możliwości, jak każdy inny. To prawda - takie same, a nawet dużo większe. W całym swym życiu Forrest niezamierzenie znajduje się twarzą w twarz z wieloma legendarnymi postaciami lat 50-tych, 60-tych i 70-tych. Wiedzie go to na boisko piłki nożnej, poprzez dżungle Wietnamu, Waszyngton, Chiny, Nowy Jork, do Luizjany i w wiele innych miejsc, a wszystko to relacjonuje on w swych poruszających i wstrząsających opowieściach przypadkowo spotkanym osobom.', '1994-06-23', 142, '678.2', 9, 15),;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foto_aktorzy`
--

CREATE TABLE `foto_aktorzy` (
  `id_aktora` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `foto_aktorzy`
--

INSERT INTO `foto_aktorzy` (`id_aktora`, `link`) VALUES
(1, 'https://pl.wikipedia.org/wiki/Keanu_Reeves#/media/Plik:Reuni%C3%A3o_com_o_ator_norte-americano_Keanu_Reeves_(46806576944)_(cropped).jpg'),
(2, 'https://pl.wikipedia.org/wiki/Willem_Dafoe#/media/Plik:Willem_Dafoe_2014_(cropped).jpg'),
(3, 'https://pl.wikipedia.org/wiki/Alfie_Allen#/media/Plik:Alfie_Allen_by_Gage_Skidmore.jpg'),
(4, 'https://pl.wikipedia.org/wiki/Riccardo_Scamarcio#/media/Plik:Riccardo_Scamarcio_7.jpg'),
(5, 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Claudia_Gerini_2012.jpg'),
(6, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Halle_Berry_by_Gage_Skidmore_2.jpg/800px-Halle_Berry_by_Gage_Skidmore_2.jpg'),
(7, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/National_Memorial_Day_Concert_2017_%2834117818524%29_%28cropped%29.jpg/800px-National_Memorial_Day_Concert_2017_%2834117818524%29_%28cropped%29.jpg'),
(8, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg/800px-Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg'),
(9, 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Gwyneth_Paltrow_avp_Iron_Man_3_Paris.jpg'),
(10, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Leonardo_DiCaprio_October_2016.jpg/800px-Leonardo_DiCaprio_October_2016.jpg'),
(11, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Matthew_McConaughey_2019_%2848648344772%29.jpg/800px-Matthew_McConaughey_2019_%2848648344772%29.jpg'),
(12, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Anne_Hathaway_in_2017_%28restauration%29.jpg/800px-Anne_Hathaway_in_2017_%28restauration%29.jpg'),
(13, 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Sir_Michael_Caine%2C_28th_EFA_Awards_2015%2C_Berlin_%28cropped%29.jpg'),
(14, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Sigourney_Weaver_%40_2010_Academy_Awards.jpg/1280px-Sigourney_Weaver_%40_2010_Academy_Awards.jpg'),
(15, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/John_Hurt_by_Walterlan_Papetti.jpg/800px-John_Hurt_by_Walterlan_Papetti.jpg'),
(16, 'https://upload.wikimedia.org/wikipedia/commons/c/cc/BruceWillis2002.jpg'),
(17, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Ben_Affleck_%2835813532790%29.jpg/1920px-Ben_Affleck_%2835813532790%29.jpg'),
(18, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Matt_Damon_TIFF_2015.jpg/800px-Matt_Damon_TIFF_2015.jpg'),
(19, 'https://upload.wikimedia.org/wikipedia/commons/0/05/Robin_Williams_2011a_%282%29.jpg'),
(20, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Forest_Whitaker_2014.jpg/800px-Forest_Whitaker_2014.jpg'),
(21, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Brad_Pitt_2019_by_Glenn_Francis.jpg/800px-Brad_Pitt_2019_by_Glenn_Francis.jpg'),
(22, 'https://upload.wikimedia.org/wikipedia/commons/e/e4/Morgan_Freeman_Deauville_2018.jpg'),
(23, 'https://upload.wikimedia.org/wikipedia/commons/3/32/Orlando_Bloom_2_Hamburg_2014.jpg'),
(24, 'https://upload.wikimedia.org/wikipedia/commons/e/ec/Jack_Nicholson_2001.jpg'),
(25, 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Helen_Hunt_face.jpg'),
(26, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Sully_Japan_Premiere_Red_Carpet-_Tom_Hanks_%2829747605041%29_%28cropped%29.jpg/800px-Sully_Japan_Premiere_Red_Carpet-_Tom_Hanks_%2829747605041%29_%28cropped%29.jpg'),
(27, 'https://upload.wikimedia.org/wikipedia/commons/9/90/Gary_Sinise_2011_%28cropped%29.jpg'),
(28, 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Jodie_Foster_with_the_LG_Electronics_Kompressor_Vacuum_on_25th_Spirit_Awards_Blue_Carpet_held_at_Nokia_Theatre_L.A._Live_on_March_5%2C_2010_in_LA_%28cropped%29.jpg'),
(29, 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Denzel_Washington_cropped_02.jpg'),
(30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Tom_Hardy_TIFF_2014.jpg/800px-Tom_Hardy_TIFF_2014.jpg'),
(31, 'https://upload.wikimedia.org/wikipedia/commons/4/47/Charlize_Theron_%282019%29_%28cropped%29.jpg'),
(32, 'https://upload.wikimedia.org/wikipedia/commons/1/18/TimRobbinsTIFFSept2012.jpg'),
(33, 'https://upload.wikimedia.org/wikipedia/commons/2/22/David_Morse_%282015%29.jpg'),
(34, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Vin_Diesel_by_Gage_Skidmore_2.jpg/800px-Vin_Diesel_by_Gage_Skidmore_2.jpg'),
(35, 'https://pl.wikipedia.org/wiki/Paul_Walker#/media/Plik:PaulWalkerMar09.jpg'),
(36, 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Nicole_Kidman_Cannes_2017.jpg'),
(37, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Logan_Japan_Premiere_Red_Carpet-_Hugh_Jackman_%2838445328406%29_%28rotated%29.jpg/800px-Logan_Japan_Premiere_Red_Carpet-_Hugh_Jackman_%2838445328406%29_%28rotated%29.jpg'),
(38, 'https://upload.wikimedia.org/wikipedia/commons/9/95/Mel_Gibson_Cannes_2016_2.jpg'),
(39, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Russell_Crowe.jpg/800px-Russell_Crowe.jpg'),
(40, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Arnold_Schwarzenegger_-_2019_%2833730956438%29_%28cropped%29.jpg/800px-Arnold_Schwarzenegger_-_2019_%2833730956438%29_%28cropped%29.jpg'),
(41, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Connie_Nielsen_by_Gage_Skidmore.jpg/800px-Connie_Nielsen_by_Gage_Skidmore.jpg'),
(42, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Joaquin_Phoenix_in_2018.jpg/800px-Joaquin_Phoenix_in_2018.jpg'),
(43, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Kate_Beckinsale_Comic-Con_2011_%28Cropped%29.jpg/800px-Kate_Beckinsale_Comic-Con_2011_%28Cropped%29.jpg'),
(44, 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Hartnett%2C_Josh_%28FMC%29.jpg'),
(45, 'https://upload.wikimedia.org/wikipedia/commons/9/96/Cuba_Gooding_Jr_2022_%28cropped%29.jpg'),
(46, 'https://pl.wikipedia.org/wiki/Alec_Baldwin#/media/Plik:Alec_Baldwin_by_Gage_Skidmore.jpg'),
(47, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Dan_Aykroyd_%282009%29.JPG/800px-Dan_Aykroyd_%282009%29.JPG'),
(48, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Jon_Voight_2011.jpg/800px-Jon_Voight_2011.jpg'),
(49, 'https://pl.wikipedia.org/wiki/Tom_Sizemore#/media/Plik:Tom_Sizemore_(2010).jpg'),
(50, 'https://upload.wikimedia.org/wikipedia/commons/c/c4/GeneHackmanJun2108.jpg'),
(51, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Clint_Eastwood_J._Edgar_Premier%2C_November_2011_%28cropped%29.jpg/800px-Clint_Eastwood_J._Edgar_Premier%2C_November_2011_%28cropped%29.jpg'),
(52, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Viggo_Mortensen_B_%282020%29.jpg/800px-Viggo_Mortensen_B_%282020%29.jpg'),
(53, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Gary_Oldman_%2813925515511%29_%28cropped%29.jpg/800px-Gary_Oldman_%2813925515511%29_%28cropped%29.jpg'),
(54, 'https://pl.wikipedia.org/wiki/Harrison_Ford#/media/Plik:Harrison_Ford_by_Gage_Skidmore_3.jpg'),
(55, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Glenn_Close_-_Guardians_of_the_Galaxy_premiere_-_July_2014_%28cropped%29.jpg/800px-Glenn_Close_-_Guardians_of_the_Galaxy_premiere_-_July_2014_%28cropped%29.jpg'),
(56, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Tommy_Lee_Jones_2017.jpg/800px-Tommy_Lee_Jones_2017.jpg'),
(57, 'https://upload.wikimedia.org/wikipedia/commons/a/a8/Milla_Jovovich_Cannes_2016.jpg'),
(58, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/An_Evening_Honouring_Chris_Tucker.jpg/800px-An_Evening_Honouring_Chris_Tucker.jpg'),
(59, 'https://upload.wikimedia.org/wikipedia/commons/0/06/Jean_Reno_2010.jpg'),
(60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Natalie_Portman_2019_San_Diego_Comic-Con.jpg/800px-Natalie_Portman_2019_San_Diego_Comic-Con.jpg'),
(61, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Hugh_Grant_in_2014.jpg/800px-Hugh_Grant_in_2014.jpg'),
(62, 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Julia_Roberts_Cannes_2016_3.jpg'),
(63, 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Richard_Gere_2017.jpg'),
(64, 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Marton_Csokas_by_andrew_maccoll.jpg'),
(65, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/CliveOwen_2006.jpg/800px-CliveOwen_2006.jpg'),
(66, 'https://pl.wikipedia.org/wiki/Alan_Rickman#/media/Plik:Alan_Rickman_cropped_and_retouched.jpg'),
(67, 'https://pl.wikipedia.org/wiki/John_Travolta#/media/Plik:John_Travolta_1997.jpg'),
(68, 'https://pl.wikipedia.org/wiki/Uma_Thurman#/media/Plik:Uma_Thurman_UNICEF_2012.jpg'),
(69, 'https://pl.wikipedia.org/wiki/Samuel_L._Jackson#/media/Plik:Samuel_L_Jackson_at_San_Diego_ComicCon_2008.jpg'),
(70, 'https://pl.wikipedia.org/wiki/Harvey_Keitel#/media/Plik:Harvey_Keitel_Cannes_2015.jpg'),
(71, 'https://pl.wikipedia.org/wiki/Quentin_Tarantino#/media/Plik:Quentin_Tarantino_by_Gage_Skidmore.jpg'),
(72, 'https://pl.wikipedia.org/wiki/Tim_Roth#/media/Plik:Tim_Roth_Cannes_2014.jpg'),
(73, 'https://pl.wikipedia.org/wiki/Jet_Li#/media/Plik:Jet_Li_2009_(cropped).jpg'),
(74, 'https://pl.wikipedia.org/wiki/Sylvester_Stallone#/media/Plik:Sylvester_Stallone_Cannes_2019.jpg'),
(75, 'https://pl.wikipedia.org/wiki/Jason_Statham#/media/Plik:Jason_Statham_2018.jpg'),
(76, 'https://pl.wikipedia.org/wiki/Dolph_Lundgren#/media/Plik:Dolph_Lundgren_1990.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `id_gatunku` int(11) NOT NULL,
  `gatunek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `gatunki`
--

INSERT INTO `gatunki` (`id_gatunku`, `gatunek`) VALUES
(1, 'Akcja'),
(10, 'Animacja'),
(3, 'Biograficzny'),
(9, 'Dramat'),
(12, 'Fantasy'),
(7, 'Historyczny'),
(8, 'Komedia'),
(15, 'Komedia romantyczna'),
(4, 'Obyczajowy'),
(13, 'Przygodowy'),
(11, 'Romantyczny'),
(2, 'Sci-Fi'),
(14, 'Sensacyjny'),
(6, 'Thriller'),
(5, 'Wojenny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kraje`
--

CREATE TABLE `kraje` (
  `id_kraju` int(11) NOT NULL,
  `kraj` varchar(30) NOT NULL,
  `kontynent` enum('Europa','Azja','Afryka','Australia i Oceania','Ameryka Północna','Ameryka Południowa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kraje`
--

INSERT INTO `kraje` (`id_kraju`, `kraj`, `kontynent`) VALUES
(1, 'USA', 'Ameryka Północna'),
(2, 'Wielka Brytania', 'Europa'),
(3, 'Włochy', 'Europa'),
(4, 'Austria', 'Europa'),
(5, 'Australia', 'Australia i Oceania'),
(6, 'Nowa Zelandia', 'Australia i Oceania'),
(7, 'Izrael', 'Azja'),
(8, 'Liban', 'Azja'),
(9, 'Niemcy', 'Europa'),
(10, 'RPA', 'Afryka'),
(11, 'Ukraina', 'Europa'),
(12, 'Maroko', 'Afryka'),
(13, 'Portoryko', 'Ameryka Północna'),
(14, 'Dania', 'Europa'),
(15, 'Hawaje', 'Ameryka Północna'),
(16, 'Chiny', 'Azja'),
(17, 'Szwecja', 'Europa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obsada`
--

CREATE TABLE `obsada` (
  `id_obsady` int(11) NOT NULL,
  `id_filmu` int(11) NOT NULL,
  `id_aktora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `obsada`
--

INSERT INTO `obsada` (`id_obsady`, `id_filmu`, `id_aktora`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 2, 5),
(7, 3, 1),
(8, 3, 6),
(9, 3, 1),
(10, 3, 7),
(11, 4, 6),
(12, 4, 8),
(13, 5, 8),
(14, 5, 9),
(15, 6, 10),
(16, 7, 11),
(17, 7, 12),
(18, 7, 13),
(19, 8, 14),
(20, 8, 15),
(21, 9, 16),
(22, 9, 17),
(23, 10, 17),
(24, 10, 18),
(25, 10, 19),
(26, 11, 19),
(27, 11, 20),
(28, 12, 21),
(29, 12, 21),
(30, 12, 9),
(31, 13, 22),
(32, 13, 23),
(33, 14, 10),
(34, 14, 18),
(35, 14, 24),
(36, 15, 24),
(37, 15, 25),
(38, 16, 25),
(39, 16, 26),
(40, 17, 26),
(41, 17, 27),
(42, 18, 28),
(43, 18, 11),
(44, 18, 15),
(45, 19, 29),
(46, 20, 30),
(47, 20, 31),
(48, 21, 31),
(49, 24, 22),
(50, 24, 32),
(51, 25, 26),
(52, 25, 33),
(53, 26, 10),
(54, 26, 30),
(56, 28, 26),
(57, 28, 34),
(58, 29, 34),
(59, 30, 34),
(60, 30, 35),
(61, 31, 40),
(62, 32, 39),
(63, 33, 39),
(64, 33, 41),
(65, 33, 42),
(66, 34, 42),
(67, 35, 38),
(68, 35, 25),
(69, 36, 38),
(70, 37, 38),
(71, 38, 38),
(72, 38, 42),
(73, 39, 36),
(74, 40, 37),
(75, 13, 21),
(76, 43, 17),
(77, 43, 43),
(78, 43, 44),
(79, 43, 45),
(80, 43, 46),
(81, 43, 47),
(82, 43, 48),
(83, 43, 49),
(84, 44, 43),
(85, 44, 37),
(86, 46, 50),
(87, 46, 51),
(88, 46, 50),
(89, 46, 29),
(90, 46, 52),
(91, 47, 53),
(92, 47, 54),
(93, 47, 55),
(98, 48, 54),
(99, 48, 56),
(104, 49, 57),
(105, 49, 16),
(106, 49, 53),
(107, 49, 58),
(108, 50, 59),
(109, 50, 60),
(110, 50, 53),
(111, 51, 26),
(112, 51, 27),
(113, 52, 61),
(114, 52, 62),
(115, 53, 62),
(116, 53, 63),
(117, 54, 64),
(118, 54, 29),
(119, 55, 29),
(121, 57, 29),
(122, 57, 28),
(123, 57, 65),
(124, 58, 16),
(125, 58, 29),
(126, 59, 16),
(127, 59, 66),
(128, 60, 16),
(129, 60, 67),
(130, 60, 70),
(131, 60, 69),
(132, 60, 70),
(133, 60, 71),
(134, 60, 72),
(135, 61, 73),
(136, 61, 74),
(137, 61, 75),
(138, 61, 76);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyserzy`
--

CREATE TABLE `rezyserzy` (
  `id_rezysera` int(11) NOT NULL,
  `rezyser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rezyserzy`
--

INSERT INTO `rezyserzy` (`id_rezysera`, `rezyser`) VALUES
(1, 'David Leitch'),
(2, 'Chad Stahelski'),
(3, 'Mathieu Kassovitz'),
(4, 'Jon Favreau'),
(5, 'Hawk Ostby'),
(6, 'Martin Scorsese'),
(7, 'Christopher Nolan'),
(8, 'Ridley Scott'),
(9, 'Michael Bay'),
(10, 'Gus Van Sant'),
(11, 'Barry Levinson'),
(12, 'David Fincher'),
(13, 'Wolfgang Petersen'),
(14, 'James L. Brooks'),
(15, 'Robert Zemeckis'),
(16, 'George Miller'),
(17, 'Gina Prince-Bythewood'),
(18, 'William Steig'),
(19, 'Frank Darabont'),
(20, 'Steven Spielberg'),
(21, 'David Twohy'),
(22, 'James Cameron'),
(23, 'Ron Howard'),
(24, 'Todd Phillips'),
(25, 'Nancy Meyers'),
(26, 'Mel Gibson'),
(27, 'M. Night Shyamalan'),
(28, 'Sydney Pollack'),
(29, 'James Mangold'),
(30, 'Stephen Sommers'),
(31, 'Clint Eastwood'),
(32, 'Tony Scott'),
(33, 'Wolfgang Petersen'),
(34, 'Rob Cohen'),
(35, 'Andrew Davis'),
(36, 'Luc Besson'),
(37, 'Spike Lee'),
(38, 'Roger Michell'),
(39, 'Garry Marshall'),
(40, 'Antoine Fuqua'),
(41, 'Albert Hughes'),
(42, 'Edward Zwick'),
(43, 'John McTiernan'),
(44, 'Quentin Tarantino'),
(45, 'Sylvester Stallone');

-- --------------------------------------------------------


--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD PRIMARY KEY (`id_aktora`),
  ADD UNIQUE KEY `aktor` (`aktor`),
  ADD KEY `id_kraju` (`id_kraju`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id_filmu`),
  ADD KEY `rezyser_pol` (`id_rezysera`) USING BTREE,
  ADD KEY `gatunek_pol` (`id_gatunku`) USING BTREE;

--
-- Indeksy dla tabeli `foto_aktorzy`
--
ALTER TABLE `foto_aktorzy`
  ADD UNIQUE KEY `id_aktora` (`id_aktora`);

--
-- Indeksy dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`id_gatunku`),
  ADD UNIQUE KEY `gatunek_idx` (`gatunek`);

--
-- Indeksy dla tabeli `kraje`
--
ALTER TABLE `kraje`
  ADD PRIMARY KEY (`id_kraju`),
  ADD UNIQUE KEY `kraj` (`kraj`);

--
-- Indeksy dla tabeli `obsada`
--
ALTER TABLE `obsada`
  ADD PRIMARY KEY (`id_obsady`),
  ADD KEY `id_aktora_ob` (`id_obsady`),
  ADD KEY `id_filmu_obs` (`id_obsady`),
  ADD KEY `aktorzy_rel` (`id_aktora`),
  ADD KEY `film_rel` (`id_filmu`);

--
-- Indeksy dla tabeli `rezyserzy`
--
ALTER TABLE `rezyserzy`
  ADD PRIMARY KEY (`id_rezysera`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  MODIFY `id_aktora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id_filmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `id_gatunku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `kraje`
--
ALTER TABLE `kraje`
  MODIFY `id_kraju` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `obsada`
--
ALTER TABLE `obsada`
  MODIFY `id_obsady` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT dla tabeli `rezyserzy`
--
ALTER TABLE `rezyserzy`
  MODIFY `id_rezysera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD CONSTRAINT `aktorzy_ibfk_1` FOREIGN KEY (`id_kraju`) REFERENCES `kraje` (`id_kraju`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD CONSTRAINT `filmy_ibfk_1` FOREIGN KEY (`id_gatunku`) REFERENCES `gatunki` (`id_gatunku`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `filmy_ibfk_2` FOREIGN KEY (`id_rezysera`) REFERENCES `rezyserzy` (`id_rezysera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `foto_aktorzy`
--
ALTER TABLE `foto_aktorzy`
  ADD CONSTRAINT `aktor_foto` FOREIGN KEY (`id_aktora`) REFERENCES `aktorzy` (`id_aktora`);

--
-- Ograniczenia dla tabeli `obsada`
--
ALTER TABLE `obsada`
  ADD CONSTRAINT `aktor_rel` FOREIGN KEY (`id_aktora`) REFERENCES `aktorzy` (`id_aktora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `film_rel` FOREIGN KEY (`id_filmu`) REFERENCES `filmy` (`id_filmu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
