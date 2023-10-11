-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Paź 2023, 20:04
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
CREATE DATABASE IF NOT EXISTS `kino` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kino`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(76, 'Dolph Lundgren', 0, '1957-11-03', 196, 17),
(77, 'Al Pacino', 0, '1940-04-25', 170, 1),
(79, 'Meryl Streep', 1, '2023-06-22', 168, 1),
(80, 'Jake Gyllenhaal', 0, '1980-12-19', 183, 1),
(81, 'Anthony Hopkins', 0, '1937-12-31', 175, 2),
(82, 'Scarlett Johansson', 1, '1984-11-22', 160, 1),
(83, 'Woody Harrelson', 0, '1961-07-23', 177, 1),
(84, 'Will Smith', 0, '1968-09-25', 188, 1),
(85, 'Kevin Spacey', 0, '1959-07-26', 179, 1),
(86, 'Liam Neeson', 0, '1952-06-07', 193, 2),
(87, 'Ralph Fiennes', 0, '1962-12-22', 183, 2),
(88, 'Ben Kingsley', 0, '1943-12-31', 173, 1),
(89, 'Warren Beatty', 0, '1937-03-30', 188, 1),
(90, 'Carrie-Anne Moss', 1, '1967-08-21', 174, 19),
(91, 'Gemma Arterton', 1, '1986-02-02', 170, 2),
(92, 'Margot Robbie', 1, '1990-07-02', 168, 5),
(93, 'Alexander Skarsgård', 0, '1976-08-25', 193, 17),
(94, 'Alicia Vikander', 1, '1988-10-03', 168, 17),
(95, 'Angelina Jolie', 1, '1975-06-04', 169, 1),
(96, 'Daniel Craig', 0, '1968-03-02', 178, 2),
(97, 'Sam Elliott', 0, '1944-08-09', 188, 1),
(98, 'Dakota Blue Richards', 1, '1994-04-11', 168, 2),
(99, 'Dakota Fanning', 1, '1994-02-24', 163, 1),
(100, 'Donald Sutherland', 0, '1975-07-17', 193, 19),
(101, 'Kiefer Sutherland', 0, '1966-12-21', 179, 2),
(102, 'Colin Farrell', 0, '1976-05-31', 178, 25),
(103, 'Tom Cruise', 0, '1962-07-03', 170, 1),
(104, 'Antonio Banderas', 0, '1960-08-10', 174, 26),
(105, 'Kelly McGillis', 1, '1957-07-09', 178, 1),
(106, 'Johnny Depp', 0, '1963-06-09', 178, 1),
(107, 'Keira Knightley', 1, '1985-03-26', 170, 2),
(108, 'Julianne Moore', 1, '1960-12-03', 160, 1),
(109, 'Olga Kurylenko', 1, '1997-11-14', 175, 11),
(111, 'Tom Berenger', 0, '1949-05-31', 180, 1),
(112, 'Charlie Sheen', 0, '1965-09-03', 178, 1),
(113, 'Christian Slater', 0, '1969-08-18', 174, 1),
(114, 'Michael Biehn', 0, '1956-07-31', 182, 1),
(115, 'Sean Connery', 0, '1930-08-25', 189, 2),
(116, 'Nicolas Cage', 0, '1964-01-07', 183, 1),
(117, 'Ed Harris', 0, '1950-11-28', 173, 1),
(118, 'Claire Forlani', 1, '1972-07-01', 166, 2),
(119, 'Olivia Wilde', 1, '1984-03-10', 170, 1),
(120, 'Jude Law', 0, '1972-12-29', 178, 2),
(121, 'Stanley Tucci', 0, '1960-11-11', 173, 1),
(122, 'Paul Newman', 0, '1925-01-26', 177, 1),
(123, 'Ewan McGregor', 0, '1971-03-31', 179, 2),
(124, 'Djimon Hounsou', 0, '1964-04-24', 187, NULL),
(125, 'Robert Redford', 0, '1936-08-18', 179, 1),
(126, 'Karen Allen', 1, '1951-10-05', 165, 1),
(127, 'John Rhys-Davies', 0, '1944-05-05', 185, 2),
(128, 'Rosanna Arquette', 1, '1959-08-10', 160, 1),
(129, 'Robert Duvall', 0, '1931-01-05', 178, 1),
(130, 'James Woods', 0, '1947-04-18', 183, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(51, 'Forrest Gump', 'Forrest Gump', '\"Forrest Gump\" to romantyczna historia nierozgarniętego młodego człowieka o wielkim sercu i zdolności do odnajdywania się w największych wydarzeniach w historii USA, począwszy od swego dzieciństwa w latach 50-tych. Po tym, jak staje się gwiazdą footballu, odznaczonym bohaterem wojennym i odnoszącym sukcesy biznesmenem, główny bohater zyskuje status osobistości, lecz nigdy nie rezygnuje z poszukiwania tego, co dla niego najważniejsze - miłości swej przyjaciółki, Jenny Curran.\r\nForrest jest małym chłopcem, kiedy jego ojciec porzuca rodzinę, a matka utrzymuje siebie i syna biorąc pod swój dach lokatorów. Kiedy okazuje się, że jej chłopiec ma bardzo niski iloraz inteligencji, pozostaje nieustraszona w swoim przekonaniu, że ma on takie same możliwości, jak każdy inny. To prawda - takie same, a nawet dużo większe. W całym swym życiu Forrest niezamierzenie znajduje się twarzą w twarz z wieloma legendarnymi postaciami lat 50-tych, 60-tych i 70-tych. Wiedzie go to na boisko piłki nożnej, poprzez dżungle Wietnamu, Waszyngton, Chiny, Nowy Jork, do Luizjany i w wiele innych miejsc, a wszystko to relacjonuje on w swych poruszających i wstrząsających opowieściach przypadkowo spotkanym osobom.', '1994-06-23', 142, '678.2', 9, 15),
(52, 'Notting Hill', 'Notting Hill', 'William Thacker mieszka w zachodnim Londynie, w dzielnicy dla indywidualistów - Notting Hill. Jest rozwiedziony, sam myśli o sobie jako o dziwnym człowieku żyjącym na \"pół gwizdka\". Dzieli swoje mieszkanie z dziwacznym, nieogolonym Walijczykiem, Spikeem. Utrzymanie zapewnia mu kiepsko prosperująca księgarnia, której jest właścicielem. Pewnego dnia, przychodzi rano do swojej księgarni, wita się ze swym entuzjastycznym asystentem i gdy ten wychodzi, aby napić się cappucino, drzwi otwierają się cicho, William podnosi wzrok i jest zdumiony widząc, że jego klientką jest Anna Scott, największa współczesna gwiazda filmowa...', '1999-05-13', 124, '363.0', 15, 38),
(53, 'Pretty Woman', 'Pretty Woman', 'Dzieli ich wszystko, ale łączy jedno - oboje robią różne rzeczy dla pieniędzy. Bohaterką filmu jest Vivian Ward, dziewczyna do towarzystwa, która dopiero co przyjechała do Los Angeles z prowincji. Przypadkowo spotyka bogatego i przystojnego adwokata z Wall Street, Edwarda Lewisa, którego urzeka jej spontaniczność. Proponuje więc dziewczynie korzystną transakcję: za tydzień spędzony u jego boku dostanie trzy tysiące dolarów.', '1990-03-23', 119, '463.4', 15, 39),
(54, 'Bez litości', 'The Equalizer', 'W filmie \"Bez litości\" Denzel Washington gra McCalla, człowieka, który odciął się od tajemniczej przeszłości, by rozpocząć nowe, spokojne życie. Ale kiedy spotyka Teri (Chloë Grace Moretz), młodą dziewczynę, zmuszoną do współpracy przez niebezpiecznych rosyjskich gangsterów, nie może pozostać bezczynny - musi jej pomóc. Uzbrojony w pewne umiejętności, które pozwalają mu zemścić się na każdym, kto jest okrutny wobec bezbronnych ludzi, McCall rezygnuje z narzuconej sobie izolacji, by zaprowadzić sprawiedliwość. ', '0201-09-07', 132, '192.3', 1, 40),
(55, 'Księga ocalenia', 'The Book of Eli', 'W postapokaliptycznym świecie samotny bohater Eli (Denzel Washington) strzeże księgi, która dostarcza wiedzy mogącej uratować ludzkość. Despota (Gary Oldman) z małego, prowizorycznego miasteczka planuje objąć w posiadanie księgę. Nie zawaha się nawet poświęcić najbliższych, by osiągnąć cel.', '2010-01-11', 118, '157.1', 2, 41),
(57, 'Plan doskonały', 'Inside Man', 'Film opowiada o rozgrywce między trzema osobami: niezwykle inteligentnym i przebiegłym kryminalistą, Daltonem Russellem (Clive Owen), detektywem nowojorskiej policji, Keithem Frazierem (Denzel Washington) oraz elegancką i bezwzględną konsultantką wpływowych osób, Madeleine White (Jodie Foster). Dalton Russell zaplanował precyzyjny i śmiały napad na bank, w którym bierze 50 osób jako zakładników. Frazier, który negocjuje z bandytą podejrzewa, że kryje się za tym coś poważniejszego. Jego obawy potwierdzają się, gdy Madeleine White żąda prywatnego spotkania z Russellem, a szczegółami napadu osobiście zainteresowany jest potentat finansowy, Arthur Case.', '2006-03-16', 129, '186.0', 14, 37),
(58, 'Stan oblężenia', 'The Siege', 'W USA narasta fala terroryzmu. Dochodzenie w tej sprawie prowadzi specjalna sekcja FBI, której członkiem jest agent Anthony Hubbard (Denzel Washington). Po pewnym czasie do śledztwa włącza się agentka CIA, Elise Kraft (Annette Bening). Gdy w Nowym Jorku mają miejsce kolejne zamachy na ogromną skalę, rząd Stanów Zjednoczonych wprowadza stan wyjątkowy. Do miasta wkraczają silnie uzbrojone oddziały wojska, dowodzone przez generała Devereauxa (Bruce Willis), który znany jest z brutalnych i niekonwencjonalnych metod działania.', '1998-11-06', 116, '116.7', 14, 42),
(59, 'Szklana pułapka', 'Die Hard', 'Policjant John McClane udaje się do wielkiego biurowca Nakatomi Plaza, gdzie pracuje jego żona Holly. Na miejscu okazuje się, że wielki szklany budynek w całości został opanowany przez terrorystów, którzy chcą zrabować z firmowego sejfu 640 milionów dolarów. Zakładnikom grozi wielkie niebezpieczeństwo. Jedynie McClane nie zostaje zauważony przez bandytów i teraz może powiadomić policję. John stawia sobie za cel samodzielne oswobodzenie zakładników, wśród których znajduje się jego żona. Ma tylko pistolet małego kalibru..', '1988-07-12', 131, '141.6', 14, 43),
(60, 'Pulp fiction', 'Pulp fiction', 'Płatni mordercy, Jules i Vincent, dostają zlecenie, by odzyskać z rąk przypadkowych rabusiów tajemniczą walizkę bossa mafii. Nie dość tego, Vincent dostaje kolejną robotę - na czas nieobecności gangstera w mieście ma zaopiekować się jego poszukującą wrażeń żoną Mią. Vincent i Jules niespodziewanie wpadają po uszy, gdy przypadkowo zabijają zakładnika. Kłopoty ma też podupadły bokser, który otrzymał dużą sumę za przegranie swojej walki. Walkę jednak wygrywa, a Los Angeles staje się od tej chwili dla niego za małe. Specjaliści od mokrej roboty będą mieli co robić...', '1994-07-21', 154, '213.9', 14, 44),
(61, 'Niezniszczalni', 'The Expendables', 'Barney Ross jest dowódcą doświadczonej grupy najemników, którzy są jednymi z najlepszych w swoim fachu. Wśród weteranów znajdują się m. in. biegle władający bronią białą Lee Christmas i mistrz wschodnich sztuk walki Yin Yang. Drużyna otrzymuje zadanie obalenia despotycznego dyktatora, generała Garzę, który swoimi rządami, nie tylko krzywdzi obywateli państwa, ale też zaczyna zagrażać innym krajom. Najemnicy wyruszają do Ameryki Południowej na samobójczą misję.', '2010-08-03', 103, '274.5', 14, 45),
(62, 'Lista Schindlera', 'Schindler\'s List', 'Poruszający dramat przedstawiający losy żydów w krakowskim getcie w czasie II wojny światowej. Tytułowy Schindler jest niemieckim przemysłowcem, właścicielem fabryki zatrudniającej żydów. Początkowo nieczuły na ich los, dbający wyłącznie o swoje korzyści z biegiem czasu zmienia swoje podejście i w pojedynkę rozpoczyna batalie o uratowanie ponad tysiąca żydów, co przypłaca własnym bankructwem.', '1993-11-30', 195, '322.2', 5, 20),
(63, 'Gandhi', 'Gandhi', 'Dzieje Mahatmy Gandhiego - przywódcy politycznego i duchowego Indii w walce o niepodległość, którego myśl etyczna wywarła wielki wpływ na cały cywilizowany świat - wydawały się bardzo ryzykownym tematem filmowym. Brytyjski aktor i reżyser zabiegał o możliwość zrealizowania tego obrazu przez 20 lat. Wielkie, dwuczęściowe dzieło, monumentalna, epicka opowieść o życiu człowieka, którego już za życia otaczał nimb świętości - stało się głośnym wydarzeniem artystycznym. Nie było jednak zamiarem twórców stawianie Gandhiego na piedestale. Kierowali się wskazówką Pendit Nehru: Nie trzeba czynić go świętym, jak to zrobiliśmy w Indiach. Był na to zbyt wielkim człowiekiem. Popisową kreację stworzył w tym filmie Ben Kingsley - syn indyjskiego lekarza i angielskiej modelki, wsławiony rolami szekspirowskimi, którego nagroda Oscara za tę rolę uczyniła gwiazdą pierwszej wielkości.', '1982-11-30', 191, '52.8', 3, 46),
(64, 'Bugsy', 'Bugsy', 'Benjamin \"Bugsy\" Siegel (Warren Beatty) był legendarnym gangsterem, który pod maską ujmującego uroku osobistego i nieskazitelnej elegancji skrywał wybuchowy temperament. Virginia Hill (Annette Bening) była początkującą aktoreczką o olśniewającej urodzie, ciętym języku i burzliwej przeszłości. Połączył ich namiętny romans - oboje uwielbiali seks, ryzyko i niebezpieczne życie, rzucili więc wyzwanie bossom przestępczego półświatka, by w samym środku pustyni zbudować miasto swoich marzeń: Las Vegas. Przynoszący znakomite kreacje Bena Kingsleya, Harveya Keitela i Joe\'ego Mantegna film wyróżniono 10 nominacjami do Oscara.', '1991-12-10', 134, '49.1', 16, 47),
(65, 'Matrix', 'Matrix', 'Neo (Keanu Reeves) jest genialnym hakerem. Pewnego dnia nawiązuje z nim kontakt tajemniczy Morfeusz (Laurence Fishburne) - człowiek, który obiecuje przekazać mu wiedzę o rzeczywistości, w jakiej żyje. Prawdę o dwóch światach: prawdziwym i wygenerowanym, który ma tylko udawać rzeczywistość. Neo przystaje do grupy Morfeusza i zaczyna dostrzegać, że świat, w którym egzystował to fikcja, a jego życiem cały czas ktoś kierował. Kolejne stopnie wtajemniczenia stawiają przed Neo nowe pytania. Czym jest Matrix i komu służy? I jaką rolę w planie Morfeusza ma do spełnienia on sam?', '1999-03-24', 136, '467.2', 2, 48),
(67, 'Książe Persji: Piaski czasu', 'Prince of Persia: The Sands of Time', 'Król Persji, Sharaman, na czele armii perskiej atakuje bogate i potężne miasto Alamut. Podczas oblężenia Dastan, syn króla, wraz ze starszym bratem Tusem, przedostają się do wnętrza twierdzy, by odnaleźć mityczne artefakty. Młodzieniec zdobywa niesamowity sztylet, pozwalający mu na manipulacje czasem, a Tus odnajduje magiczną szatę, którą oddaje Dastanowi. Ten zaś, nieświadomy konsekwencji swojego czynu, podarowuje ją swemu ojcu. Czarnoksięska magia tej przeklętej szaty sprawia, iż Sharaman umiera. Książę zostaje niesłusznie oskarżony o morderstwo i skazany na śmierć. Aby oczyścić się z zarzutów ucieka z miasta. W trakcie wielu przygód poznaje Taminę, księżniczkę z miasta Alamut, z którą zamierza odwrócić bieg wypadków za pomocą swojego sztyletu.', '2010-05-09', 116, '336.4', 13, 49),
(68, 'Tarzan: Legenda', 'The Legend of Tarzan', 'Mijają lata, od kiedy Tarzan opuścił afrykańską dżunglę na rzecz cywilizowanego życia w Londynie. Jako John Clayton III, Lord Greystoke decyduje się wrócić do Konga, gdzie ma pełnić funkcję emisariusza rządu z misją handlową. Nie zdaje sobie jednak sprawy z tego, że jest pionkiem w śmiertelnie niebezpiecznej grze targanego wolą zemsty, chciwego kapitana Leona Roma z Belgii (Waltz). Okazuje się, że osoby stojące za zabójczym spiskiem nie mają pojęcia, co rozpęta się za ich sprawą.', '2016-06-27', 109, '356.7', 13, 50),
(69, 'Tomb Raider', 'Tomb Raider', 'Lara Croft to niepokorna córka ekscentrycznego podróżnika, który zniknął, gdy dziewczyna miała kilkanaście lat. Teraz, jako 21-letnia kobieta, podąża własną ścieżką, odmawiając spełnienia woli ojca, który chciał dla niej spokojnego życia. Zostawia wszystko za sobą i udaje się w ostatnie znane miejsce jego pobytu. Poszukując śladów, musi odnaleźć osławiony grobowiec na mitycznej wyspie u wybrzeży Japonii. Jeśli nie przezwycięży własnych lęków, może nie przeżyć niezwykle niebezpiecznej wyprawy. Jak wiele poświęci, by poznać tajemnicę zniknięcia ojca i zyskać miano tomb raidera?', '2018-03-04', 118, '274.7', 13, 51),
(70, 'Lara Croft: Tomb Rider', 'Lara Croft: Tomb Rider', 'Pewnej nocy, kiedy trzy planety ustawiły się w jednej linii, Lara Croft odkryła pomiędzy pudłami przywiezionymi dwadzieścia lat wcześniej z jednej z archeologicznych wypraw swojego nieżyjącego ojca lorda Croft tajemniczy zegar. Kiedyś ojciec opowiedział jej o tajnej organizacji Illuminati, która poszukuje starożytnego zegara - klucza do przestrzeni i czasu. Klucz ten jest trójkątem wykonanym z krystalicznego metalu i 5000 lat temu został użyty do pokonania wrogów organizacji. Jeśli dwie części tego trójkąta kiedykolwiek zostaną złożone, czas się zatrzyma, przodkowie wrócą do życia, a los ludzkości zostanie zmieniony na zawsze. Lara ma 48 godzin do czasu, kiedy wszystkie planety staną w jednej linii i dojdzie do całkowitego zaćmienia - wtedy moc trójkąta będzie największa. Jeśli jej misja się nie powiedzie następna taka sytuacja nastąpi za 5000 lat. W swojej misji Lara wyrusza do Kambodży gdzie znajduje się Grobowiec Tańczącego Światła kryjący jedna cześć tajemnicy, a następnie na Syberię gdzie w Świątyni Dziesięciu Tysięcy Cieni znajduje się druga cześć sekretu. Czy 48 godzin wystarczy, aby Lara Croft odkryła tajemnicę i ocaliła wszechświat?', '2001-06-11', 100, '274.7', 13, 52),
(71, 'Złoty Kompas', 'The Golden Compass', 'W samym sercu angielskiego Oksfordu dorasta osierocona przez rodziców dziewczynka imieniem Lyra (Dakota Blue Richards). W jej świecie, równoległym do naszego, magia, nauka i teologia są ze sobą ściśle powiązane, a każdy człowiek posiada własnego towarzysza, połączonego z nim niewidzialną więzią - dajmona. Lyra wiedzie spokojne życie, aż do czasu, kiedy najbliższy jej przyjaciel, chłopiec kuchenny imieniem Roger (Ben Walker) z kolegium, w którym dziewczynka się wychowuje, zostaje porwany przez postacie zwane przez wszystkich \"grobalami\" - wiele dzieci zostało przez nich uprowadzonych i nikt ich nigdy nie odnalazł. Dziewczynka wyrusza na poszukiwania, które zawiodą ją na daleką północ. Przed wyjazdem otrzymuje niezwykłe urządzenie - czytnik symboli, tzw. \"aletheiometr\", który posiada zdolność odpowiedzi na każde pytanie. Podczas swojej podróży spotyka wiele ciekawych postaci - Cyganów, pancernego niedźwiedzia Lorka, czarownice. Uprowadzone dzieci są poddawane strasznym eksperymentom, mającym związek z tajemniczym pyłem. Lyra odegra w całej tej historii ogromną rolę, pomimo że nie zdaje sobie z tego jeszcze sprawy.', '2007-11-27', 113, '372.2', 12, 53),
(72, 'Człowiek w ogniu', 'Man on Fire', 'Amerykanin John Creasy jest człowiekiem, którego nawet na jawie prześladują koszmary z przeszłości. Często zagląda do kieliszka, ma myśli samobójcze, gdyż poszukuje sensu swego życia. Tego szuka nawet w Biblii, ale ona nie daje mu odpowiedzi. Jego przyjaciel Rayburn znajduje mu w Meksyku posadę ochroniarza dziewczynki imieniem Pita Ramos, która jest córką bogatego Meksykanina Samuela i Amerykanki Lisy. W Meksyku od jakiegoś czasu coraz częściej zdarzają się porwania dla okupu i nie tylko. Ofiary rzadko kiedy wychodzą z tego cało - są okrutnie okaleczone lub po prostu bestialsko mordowane. Creasy ma za zadanie właśnie przed tym ochraniać Pitę. Na początku Creasy z trudem znosi obecność ciekawskiej i rezolutnej dziewczynki, która stara się z nim zaprzyjaźnić. Jednak Creasy uważa, że jej rodzice zapłacili mu za jej pilnowanie, a nie za coś więcej. Na szczęście dziewczynka ma ten dar, dzięki któremu udaje jej się jednak zaprzyjaźnić z ochroniarzem. Dzięki niej Creasy wreszcie odnajduje sens swojego życia, odstawia alkohol i zaczyna się wreszcie uśmiechać, cieszyć życiem. Niestety, pewnego dnia sielanka dobiega końca. Bandyci urządzają zasadzkę i pomimo bohaterskiej walki Creasy\'ego - Pita zostaje porwana, a on w ciężkim stanie trafia do szpitala. Pomimo tego obiecuje sobie pomścić swoją małą przyjaciółkę.', '2004-04-18', 146, '130.8', 14, 32),
(73, 'W sieci zła', 'Fallen', 'Detektyw Hobbes (Denzel Washington) doprowadza do ujęcia psychopatycznego zabójcy Reese\'a, który wkrótce potem zostaje stracony. Jakiś czas później Hobbes przyjeżdża na miejsce makabrycznego morderstwa. Sprawca działa dokładnie tak jak Reese. Kolejne dowody prowadzą detektywa do szokującego odkrycia.', '1998-01-16', 183, '25.2', 6, 54),
(74, 'Telefon', 'Phone Booth', 'Stu jest arogantem, który dzięki umiejętności manipulowania ludźmi całkiem nieźle radzi sobie w życiu. Choć jest żonaty, romansuje z  kelnerką marzącą o zostaniu aktorką. Codziennie o tej samej porze dzwoni do dziewczyny z budki telefonicznej, aby nie dowiedziała się o tym żona. Po jednej z tych rozmów odruchowo odbiera dzwoniący aparat. Jego rozmówca zabrania mu odłożenia słuchawki pod karą śmierci. Siłą perswazji jest nie tylko słowo, ale i broń wycelowana w ulicę. Przypadek sprawia, że uwięziony Stu zostaje wzięty za przestępcę.', '2002-09-10', 81, '97.8', 6, 55),
(76, 'Wywiad z Wampirem', 'Interview with the Vampire: The Vampire Chronicles', 'Przeszło dwieście lat temu Louis de Pointe du Lac był zwykłym człowiekiem, miał wspaniałą żonę, która jednak zmarła podczas porodu. Jego wewnętrzny ból po stracie żony i córki był nie do zniesienia, a życie przestało mieć dla niego jakikolwiek sens. Wówczas odwiedził go Lestat, wampir. Przekonał go, że zna sposób, by raz na zawsze położyć kres jego bezgranicznemu cierpieniu i uczynił go wampirem. Jako dodatkowe wyróżnienie zapewnił mu nieśmiertelność. Od tamtego czasu, przez dwa stulecia, Louis był świadkiem niezliczonych ludzkich cierpień. Widział, jak za sprawą bezwzględnego Lestata przelewała się ludzka krew. Sam nigdy nie nauczył się zabijać. Wreszcie postanowił, że musi opowiedzieć komuś o sobie. Udziela więc wywiadu dziennikarzowi z San Francisco. Opowiada wstrząsającą historię o miłości, pragnieniu, o ekstazie i o tym wszystkim, co wiąże się z przywilejem bycia wampirem.', '1994-11-09', 123, '223.7', 17, 56),
(77, 'Top Gun', 'Top Gun', 'Maverick i Goose to dwaj piloci marynarki udowadniający z każdym lotem swoje ogromne możliwości. Wybrani do szkoły asów przestworzy - Top Gun są szkoleni na najlepszych pilotów na świecie. Wkrtóce Maverick zakochuje się w swojej instruktorce Charlie.  ', '1986-05-12', 110, '357.2', 14, 32),
(78, 'Turysta', 'The Tourist', 'Bohaterem filmu jest niejaki Frank Tupelo, amerykański turysta, który postanawia wyjechać do Włoch, by leczyć złamane serce. Spotyka tam niezwykłą, atrakcyjną kobietę o imieniu Elise Clifton-Ward. Jak się potem okazuje, kobieta świadomie staje na jego życiowej drodze. Jest agentką Interpolu, która postanawia wykorzystać Franka do schwytania światowej sławy kryminalisty, z którym kiedyś miała romans...', '2010-12-06', 103, '278.3', 6, 58),
(79, 'Dziewiąte wrota', 'The Ninth Gate', 'Boris Balkan jest kolekcjonerem starych książek. Wszystkie jego starodruki są poświęcone jednemu tematowi - szatanowi. Ozdobą tej kolekcji jest jeden z trzech istniejących na świecie egzemplarzy księgi \"Dziewięć Wrót Królestwa Cieni\". Nie będąc pewny, czy jest to oryginał, zleca on Deanowi Corso, specjaliście od poszukiwania starych ksiąg, odnalezienie i dokładne porównanie swojego egzemplarza z dwoma pozostałymi. Zanim Corso wyrusza do Europy w poszukiwaniu ksiąg, wokół niego dzieją się dziwne rzeczy. Śmierć przyjaciela, który przechowywał księgę, sprawia, że waha się on, czy kontynuować zadanie. Balkan jest jednak niezwykle szczodry.', '1993-08-25', 133, '58.4', 17, 59),
(80, 'Piraci z Karaibów: Klątwa Czarnej Perły', 'Pirates of the Caribbean: The Curse of the Black P', 'Karaiby, XVIII w. 10-letnia Elizabeth, córka gubernatora, jest świadkiem katastrofy statku, wyglądającej na robotę piratów. Z wody wyłowiono jednego ocalonego, małego chłopca, Willa Turnera, na szyi którego Elizabeth znajduje tajemniczy medalion, wyglądający na piracki. Przestraszona dziewczynka zrywa medalion i ukrywa go przed wszystkimi. Chwilę później widzi czarny statek z postrzępionymi żaglami i piracką flagą na maszcie, znikający we mgle. 8 lat później, Port Royal. Podczas uroczystości promocji Jamesa Norringtona (Jack Davenport), w którym ojciec Elizabeth widzi przyszłego zięcia, na komodora, dziewczyna spada ze skały do morza. Ratuje ją Jack Sparrow - pirat, który do Port Royal przybył aby kupić (ukraść) statek. W \"nagrodę\" Norrington zakuwa go w kajdany i skazuje na śmierć przez powieszenie. Jednak w nocy Port Royal przeżywa atak piratów pod wodzą kapitana Barbossy, którzy chcą odzyskać tajemniczy medalion, ciągle będący w posiadaniu Elizabeth. Dziewczyna zostaje porwana, a piraci odpływają i nikt nie wie, gdzie szukać córki gubernatora. Zakochany w niej Will Turner zwraca się o pomoc do Jacka Sparrowa. Uwolniwszy go z celi, razem z nim kradnie statek i wyrusza, najpierw na Tortugę, a potem w ślad za niedoścignioną Czarną Perłą, statkiem Barbossy, by ocalić swoją ukochaną', '2003-06-28', 143, '654.2', 13, 60),
(81, 'Ludzkie Dzieci', 'Children of Men', 'Film zrealizowany na podstawie powieści P.D. James. Nominowany przez Akademię reżyser Alfonso Cuarón tym razem tworzy zadziwiającą wizję niedalekiej przyszłości, wysyłając jednocześnie sygnał ostrzegawczy dla współczesnego świata. Akcja dzieje się na Ziemi w 2027 roku: nadzieja na przedłużenie istnienia gatunku ludzkiego wydaje się być niejasną mrzonką. Już od prawie 19 lat nie przyszło na świat na naszej planecie żadne dziecko, a z każdym upływającym \"bezdzietnym\" rokiem rasa ludzka w niewytłumaczalny sposób zbliża się do całkowitego wymarcia. O ile większość ludzi przyjmuje ten nieunikniony wyrok z oporem, popadając w bezprawie i nihilizm, są również tacy, którzy nie składają broni i postanawiają godnie walczyć o zjednoczoną planetę i prawa topniejącej w oczach populacji.', '2006-09-03', 109, '70.0', 2, 61),
(82, 'Niepamięć', 'Oblivion', 'est rok 2077: Jack Harper (Cruise) stacjonuje na ewakuowanej Ziemi, serwisując niesprawne drony. Jego misja jako część operacji mającej na celu zabezpieczenie niezbędnych surowców po dekadach wojen z obcymi dobiega końca. Za dwa tygodnie Harper dołączy do grupy ocalałych przebywających w kolonii, na księżycu Saturna - Tytanie, z dala od zniszczonego wojną świata, który kiedyś nazywał domem. Życie patrolującego niebo z wysokości tysięcy metrów Jacka ulega drastycznej zmianie, kiedy ratuje z rozbitego statku kosmicznego piękną nieznajomą. Pojawienie się kobiety daje początek łańcuchowi wydarzeń, które zmuszają Jacka do podania w wątpliwość wszystkiego, co do tej pory wiedział. Odkrywając szokującą prawdę, która łączy go z Ziemią z przeszłości, Jack zostaje zmuszony do licznych aktów odwagi. Los ludzkości spoczywa teraz w rękach człowieka, który wierzył, że nasz świat wkrótce zostanie stracony na zawsze.', '2013-03-23', 125, '286.2', 2, 62),
(83, 'Urodzony 4 lipca', 'Born on the Fourth of July', 'Ron Kovic, wychowywany w duchu patriotycznym, trafia na wojnę w Wietnamie, gdzie o patriotyzmie nikt nie pamięta. Ron zostaje ranny i trafia do szpitala, zaś według diagnozy zostanie kaleką do końca życia. Powrót do kraju okazuje się dla niego wielkim rozczarowaniem...', '1998-12-20', 145, '161.0', 9, 63),
(84, 'Pluton', 'Platoon', 'Przybyły do Wietnamu Chris Taylor szybko odkrywa, że najtrudniejszą walką, którą musi stoczyć, jest walka z samym sobą - z własnymi słabościami, strachem, gniewem i wycieńczeniem. \"Pluton\" to opowieść o ludziach za młodych aby umierać, zbyt niedojrzałych, by ustrzec się przed spustoszeniem, jakie w ich duszach dokonuje brutalna wojna. W wilgotnej, parnej dżungli szybko wyrasta się ze złudzeń.', '1986-12-19', 120, '138.5', 5, 63),
(85, 'Żółtodziób', 'The Rookie', 'Doświadczony policyjny detektyw Nick Pulovski nie jest zadowolony, kiedy szef przydziela mu - na miejsce zamordowanego partnera - nowicjusza Davida Ackermana. Jego najgorsze obawy potwierdzają się już podczas pierwszej akcji. Zdany na własne siły Pulovski zostaje porwany przez dwójkę bezwzględnych gangsterów - Stroma i Liesl. Za uwolnienie policjanta żądają oni okupu w wysokości dwóch milionów dolarów. Zdeprymowany Ackerman zdaje sobie sprawę, że musi teraz skutecznie wkroczyć do akcji, jeśli chce pozbyć się paraliżującego poczucia winy. Pojawia się jednocześnie kolejny, nie mniej ważny problem. W niebezpieczeństwie znajduje się jego narzeczona Sarah, której śladami podąża wynajęty przez Stroma płatny zabójca...', '1990-12-06', 121, '21.6', 18, 31),
(86, 'Obcy – decydujące starcie', 'Aliens', 'o 57 latach dryfowania w przestrzeni kosmicznej oficer Ellen Ripley (Sigourney Weaver) zostaje odnaleziona. Na stacji dowiaduje się, że \"firma\" wysłała dużą grupę kolonistów na planetę, z której załoga Nostromo wniosła na pokład obcego. Przerażona próbuje interweniować, jednak bez skutku, gdyż nikt jej nie wierzy. Kiedy wydaje się, że wszystko wraca do normy, z bazy osadników przestają nadchodzić wiadomości. Oficer Ripley wyrusza wraz z oddziałem komandosów i pracownikiem \"firmy\" na planetę. To, co tam zastają, nie śniło im się w najgorszych koszmarach.', '1986-07-14', 137, '131.1', 2, 22),
(87, 'Twierdza', 'The Rock', 'Generał Francis Hummel, uczestnik najważniejszych amerykańskich misji wojskowych od czasów wojny wietnamskiej,  wraz ze swoim oddziałem zajmuje wyspę Alcatraz i bierze jako zakładników grupę  turystów. Grozi, że jeśli nie otrzyma okupu w wysokości 100 milionów dolarów, wystrzeli w kierunku San Francisco bomby ze śmiercionośnym gazem. Pieniądze zamierza przekazać wdowom po amerykańskich żołnierzach, którzy stracili życie w różnych akcjach wojskowych na świecie. Władze wysyłają do Alcatraz oddział Navy SEALS, którego zadaniem jest powstrzymać generała i odbić zakładników. W skład zespołu wchodzą m. in. specjalista od broni chemicznej Stanley Goodspeed i były agent MI6 John Mason, który zna Alcatraz od podszewki.', '1996-06-16', 136, '335.1', 14, 9),
(88, 'Joe Black', 'Meet Joe Black', 'Susan jest córką milionera, a jej pasja to pomaganie innym. Na pierwszy rzut oka niczego jej nie brakuje, a jednak... Pewnego dnia w barze podrywa ją młody, niezwykle przystojny i inteligentny mężczyzna Joe, w którym zaczyna się zakochiwać. Tuż po wspólnym lunchu i pożegnaniu nieznajomy ginie pod kołami samochodu. Susan jest niezwykle zaskoczona, kiedy po kilku godzinach ten sam przystojniak z baru staje się gościem jej ojca Williama. Dziwi ją również fakt, że zupełnie jej nie pamięta.', '1998-11-02', 181, '142.9', 19, 64),
(89, 'Kowboje i Obcy', 'Cowboys & Aliens', 'Akcja filmu \"Kowboje i obcy\" rozgrywa się w 1873 roku. Samotny, nieznajomy kowboj Jake przybywa do miasteczka Absolution znajdującego się pośrodku pustkowia. Mieszkańcy nie są zadowoleni z jego wizyty. W tym miejscu obcy nie są mile widziani, a sami mieszkańcy robią tylko to, co rozkaże im pułkownik Dolarhyde. W miasteczku niepodzielnie rządzi strach. Jeśli mieszkańcom wydawało się, że wiedzą o nim wszystko, to nadchodzące wydarzenia brutalnie to zmienią. Z nieba przybywają tajemnicze istoty, które zaczynają porywać ludzi. W panice mieszkańcy zwracają się o pomoc do obcego, którego wcześniej odrzucili. Ten wspólnie z Elli organizuje drużynę, która stanie do walki z kosmicznymi najeźdźcami.', '2011-07-29', 118, '174.8', 2, 4),
(90, 'Droga do zatracenia', 'Road to Perdition', 'Akcja filmu rozgrywa się w latach 30. w USA - w czasach panowania mafii Ala Capone. Główny bohater, Michael Sullivan, jest człowiekiem od czarnej roboty. Podczas jednej z akcji jego syn przypadkowo widzi morderstwo. Mafia obawia się, iż nie dochowa on tajemnicy milczenia. Wyrok jest jeden - zabójstwo rodziny Sullivanów. Ginie żona Michaela i ich młodszy syn. Ojciec wraz z drugim synem zmuszeni są do ucieczki przed mafią.', '2002-07-09', 117, '181.0', 16, 65);
INSERT INTO `filmy` (`id_filmu`, `tytul`, `oryginalny_tytul`, `opis`, `data_premiery`, `czas_trwania`, `zysk`, `id_gatunku`, `id_rezysera`) VALUES
(91, 'Wyspa', 'The Island', 'Połowa XXI wieku. Dwójka głównych bohaterów, Lincoln Sześć-Echo i Jordan Dwa-Delta, którzy są jednymi z wielu mieszkańców zamkniętego ośrodka, myśli wciąż o tytułowej Wyspie - jedynym nie zanieczyszczonym skrawku ziemi. Lincolna dręczą koszmary, z ich powodu zaczyna wątpić w istnienie Wyspy. Jego wielka ciekawość w końcu doprowadza do odkrycia. Wszyscy mieszkańcy ośrodka są oszukiwani, a ich życie nie jest cenne. Z tego powodu Lincoln wraz z Jordan postanawiają uciec w nieznane.', '2005-07-11', 136, '162.9', 1, 9),
(92, 'O jeden most za daleko', 'A Bridge Too Far', 'We wrześniu 1944 roku, Alianci zaczęli borykać się z problemami z zaopatrzeniem. Wiadomo było że środków, wystarczy tylko na jedną ofensywę. Do tego w Francji dowodzili dwaj nieprzepadający za sobą dowódcy: Patton na południu i Montgomery na północy. To właśnie ten drugi przygotował plan operacji Market Garden, o której opowiada film. Plan zakładał zdobycie wszystkich mostów od Belgii, przez Holandię aż do mostu w Arnhem. Zdobycie tych mostów miało otworzyć dorgię do serca Niemiec, co zakończyłoby wojnę na gwiazdkę 1944 roku. Niestety błędy w planowaniu, braki w sprzęcie i ignorancja dowództwa na wiadomości wywiadu doprowadziły do klęski. Film ten jest jednym z najlepiej zrealizowanych i wiernych historycznie obrazów opowiadających o II Wojnie Światowej.', '1977-06-15', 175, '50.8', 5, 66),
(93, 'Poszukiwacze Zaginionej Arki', 'Raiders of the Lost Ark', 'Dr Indiana Jones jest archeologiem, który łączy wykłady uniwersyteckie z ekspedycjami badawczymi. Właśnie powrócił z ostatniej, w trakcie której odniósł porażkę w rywalizacji z naukowcem pracującym dla nazistów. Nie dane jest mu zająć się nauczaniem. Otrzymuje bowiem tajne zadanie od służb specjalnych. Wyrusza do Egiptu, gdzie prawdopodobnie odkryto miejsce przechowywania Arki Przymierza. Nie może dopuścić, by święte trofeum znalazło się w rękach Niemców. Pomoże mu w tym jego dawna dziewczyna, Marion.', '1981-06-12', 115, '389.9', 13, 20),
(94, 'Wielki Błękit', 'Le grand bleu', 'Jacques to homo delphinus - nurek, który lepiej czuje się w towarzystwie delfinów w ich morskim królestwie, niż wśród ludzi. Rywalizuje z przyjacielem z dzieciństwa, Enzo, o mistrzowski tytuł we \"Free Diving\" oraz bije kolejne rekordy głębokości w nurkowaniu bez butli. Walka, połączona z wzajemną fascynacją obu bohaterów może doprowadzić do tragedii. Obaj przecież kochają morze i nurkowanie na swój sposób i nie wyobrażają sobie życia bez niego. Wydaje się, że jest tam miejsce dla nich obu, lecz co powie na tęsknoty Jacquesa Johana, kochająca tego dziwnego człowieka - delfina całym sercem?', '1988-05-11', 168, '3.6', 9, 36),
(95, 'Kolekcjoner kości', 'The Bone Collector', 'Cztery lata temu nowojorski detektyw Lincoln Rhyme był jednym z najlepszych kryminologów w kraju. Wydał kilka książek, które stały się bestsellerami. Uległ jednak wypadkowi a obrażenia, jakich doznał, okazały się fatalne w skutkach: Lincoln jest sparaliżowany od szyi w dół i może poruszać tylko palcem jednej ręki. Zrezygnowany i na zawsze przykuty do łóżka myśli o samobójstwie, dopóki niezwykła sprawa nie przywraca mu wiary w siebie. Jego były partner, detektyw Paulie Sellitto prosi go bowiem, by pomógł mu odszukać multimilionera, który wraz z żoną zaginął w tajemniczych okolicznościach.', '1999-08-29', 118, '151.5', 6, 67),
(96, 'John Q.', 'John Q.', 'John Q. jest głową niezbyt zamożnej, ale szczęśliwej rodziny. Zabrany przez bank samochód przestaje być problemem, kiedy okazuje się, że ukochany synek potrzebuje natychmiastowego przeszczepu serca, inaczej umrze. John jednak dowiaduje się, że jego polisa nie obejmuje takiej operacji, więc nagle musi znaleźć 75 000 dolarów. Od tego zależy życie jego synka. Mężczyzna podejmuje desperacką walkę z biedą, szpitalem i systemem, który pozwala na wypisanie dziecka z oddziału i tym samym pozostawienie na pewną śmierć. Kiedy wszystkie wysiłki Johna idą na marne, ucieka się on do ostateczności - terroryzuje pracowników i pacjentów pogotowia, próbując w ten sposób wymusić na lekarzach przeprowadzenie operacji na dziecku.', '2002-02-15', 116, '102.2', 6, 68);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `foto_aktorzy`
--

CREATE TABLE `foto_aktorzy` (
  `id_aktora` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(76, 'https://pl.wikipedia.org/wiki/Dolph_Lundgren#/media/Plik:Dolph_Lundgren_1990.jpg'),
(77, 'https://pl.wikipedia.org/wiki/Al_Pacino#/media/Plik:Alfredo_James_Pacino.jpg'),
(80, 'https://pl.wikipedia.org/wiki/Jake_Gyllenhaal#/media/Plik:Jake_Gyllenhaal_2019_by_Glenn_Francis.jpg'),
(81, 'https://pl.wikipedia.org/wiki/Anthony_Hopkins#/media/Plik:AnthonyHopkins10TIFF.jpg'),
(82, 'https://pl.wikipedia.org/wiki/Scarlett_Johansson#/media/Plik:Scarlett_Johansson_by_Gage_Skidmore_2019.jpg'),
(84, 'https://pl.wikipedia.org/wiki/Will_Smith#/media/Plik:TechCrunch_Disrupt_2019_(48834434641)_(cropped).jpg'),
(86, 'https://pl.wikipedia.org/wiki/Liam_Neeson#/media/Plik:Liam_Neeson_Deauville_2012_2.jpg'),
(87, 'https://pl.wikipedia.org/wiki/Ralph_Fiennes#/media/Plik:Ralph_Fiennes_from_%22The_White_Crow%22_at_Opening_Ceremony_of_the_Tokyo_International_Film_Festival_2018_(31747095048).jpg'),
(88, 'https://en.wikipedia.org/wiki/Ben_Kingsley#/media/File:Ben_Kingsley_by_Gage_Skidmore.jpg'),
(89, 'https://en.wikipedia.org/wiki/Warren_Beatty#/media/File:Warren_Beatty.jpg'),
(90, 'https://en.wikipedia.org/wiki/Carrie-Anne_Moss#/media/File:Carrie-Anne_Moss_May_2016.jpg'),
(91, 'https://en.wikipedia.org/wiki/Gemma_Arterton#/media/File:Gemma_Arterton_Toronto_2014.jpg'),
(92, 'https://pl.wikipedia.org/wiki/Margot_Robbie#/media/Plik:SYDNEY,_AUSTRALIA_-_JANUARY_23_Margot_Robbie_arrives_at_the_Australian_Premiere_of_\'I,_Tonya\'_on_January_23,_2018_in_Sydney,_Australia_(25980753838)_(cropped).jpg'),
(93, 'https://pl.wikipedia.org/wiki/Alexander_Skarsg%C3%A5rd#/media/Plik:Alexander_Skarsgard_(29485267411)_(cropped).jpg'),
(94, 'https://pl.wikipedia.org/wiki/Alicia_Vikander#/media/Plik:Alicia_Vikander_-_Tokyo_International_Film_Festival_2019_(49013506278)_(cropped).jpg'),
(95, 'https://pl.wikipedia.org/wiki/Angelina_Jolie#/media/Plik:Angelina_Jolie_2_June_2014_(cropped).jpg'),
(96, 'https://pl.wikipedia.org/wiki/Daniel_Craig#/media/Plik:Daniel_Craig_-_Film_Premiere_%22Spectre%22_007_-_on_the_Red_Carpet_in_Berlin_(22387409720)_(cropped).jpg'),
(97, 'https://en.wikipedia.org/wiki/Sam_Elliott#/media/File:TIFF_2018_Samuel_Elliott_(44592132581)_(cropped).jpg'),
(98, 'https://en.wikipedia.org/wiki/Dakota_Blue_Richards#/media/File:Dakota_Blue_Richards_2012_(Headshot).jpg'),
(99, 'https://en.wikipedia.org/wiki/Dakota_Fanning#/media/File:Dakota_Fanning_SAG_AWARDS_2020.jpg'),
(101, 'https://pl.wikipedia.org/wiki/Kiefer_Sutherland#/media/Plik:Kiefer_Sutherland_2_SDCC_2014.jpg'),
(102, 'https://pl.wikipedia.org/wiki/Colin_Farrell#/media/Plik:BansheesBFI131022_(21_of_22)_(52447275762)_(cropped).jpg'),
(103, 'https://pl.wikipedia.org/wiki/Tom_Cruise#/media/Plik:TomCruiseDec08MTV_cropped.jpg'),
(104, 'https://pl.wikipedia.org/wiki/Antonio_Banderas#/media/Plik:Antonio_Banderas_2014.jpg'),
(106, 'https://pl.wikipedia.org/wiki/Johnny_Depp#/media/Plik:Johnny_Depp_2020.jpg'),
(107, 'https://pl.wikipedia.org/wiki/Keira_Knightley#/media/Plik:KeiraKnightleyByAndreaRaffin2011_(cropped).jpg'),
(108, 'https://pl.wikipedia.org/wiki/Julianne_Moore#/media/Plik:Julianne_Moore_Cannes_2018_(tweaked).jpg'),
(109, 'https://pl.wikipedia.org/wiki/Olga_Kurylenko#/media/Plik:Olga_Kurylenko_Festival_de_Cinema_de_Sitges_2019_(cropped).jpg'),
(111, 'https://pl.wikipedia.org/wiki/Tom_Berenger#/media/Plik:Tom_Berenger_in_2019.jpg'),
(112, 'https://pl.wikipedia.org/wiki/Charlie_Sheen#/media/Plik:Charlie_Sheen_2012.jpg'),
(113, 'https://pl.wikipedia.org/wiki/Christian_Slater#/media/Plik:Christian_Slater_at_the_64th_Berlin_International_Film_Festival,_February_2014.jpg'),
(114, 'https://pl.wikipedia.org/wiki/Michael_Biehn#/media/Plik:Michael_Biehn_2014_(cropped).jpg'),
(115, 'https://pl.wikipedia.org/wiki/Sean_Connery#/media/Plik:Sean_Connery_(1983).jpg'),
(116, 'https://pl.wikipedia.org/wiki/Nicolas_Cage#/media/Plik:Nicolas_Cage_Deauville_2013.jpg'),
(117, 'https://pl.wikipedia.org/wiki/Ed_Harris#/media/Plik:Ed_Harris_by_Gage_Skidmore.jpg'),
(118, 'https://pl.wikipedia.org/wiki/Claire_Forlani#/media/Plik:Claire_Forlani_in_2015.jpg'),
(119, 'https://pl.wikipedia.org/wiki/Olivia_Wilde#/media/Plik:Olivia_Wilde_in_2021_2.jpg'),
(120, 'https://pl.wikipedia.org/wiki/Jude_Law#/media/Plik:Jude_Law_-_Headshot.jpg'),
(121, 'https://pl.wikipedia.org/wiki/Stanley_Tucci#/media/Plik:Stanley_Tucci_2017_Berlinale.jpg'),
(123, 'https://pl.wikipedia.org/wiki/Ewan_McGregor#/media/Plik:Ewan_McGregor_Cannes_2012.jpg'),
(124, 'https://pl.wikipedia.org/wiki/Djimon_Hounsou#/media/Plik:Djimon_Hounsou_by_Gage_Skidmore_2.jpg'),
(126, 'https://pl.wikipedia.org/wiki/Karen_Allen#/media/Plik:KarenAllen10TIFF.jpg'),
(127, 'https://pl.wikipedia.org/wiki/John_Rhys-Davies#/media/Plik:John_Rhys-Davies_byVetulani.JPG'),
(128, 'https://pl.wikipedia.org/wiki/Rosanna_Arquette#/media/Plik:Rosanna_arquette(CannesPressConference).jpg'),
(129, 'https://pl.wikipedia.org/wiki/Robert_Duvall#/media/Plik:Robert_Duvall_2014_(cropped).jpg'),
(130, 'https://pl.wikipedia.org/wiki/James_Woods#/media/Plik:James_Woods_2015.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `id_gatunku` int(11) NOT NULL,
  `gatunek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `gatunki`
--

INSERT INTO `gatunki` (`id_gatunku`, `gatunek`) VALUES
(1, 'Akcja'),
(10, 'Animacja'),
(3, 'Biograficzny'),
(9, 'Dramat'),
(12, 'Fantasy'),
(16, 'Gangsterski'),
(7, 'Historyczny'),
(17, 'Horror'),
(8, 'Komedia'),
(18, 'Komedia kryminalna'),
(15, 'Komedia romantyczna'),
(19, 'Melodramat'),
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
  `kontynent` enum('Europa','Azja','Afryka','Australia i Oceania','Ameryka Północna','Ameryka Południowa') NOT NULL,
  `flaga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `kraje`
--

INSERT INTO `kraje` (`id_kraju`, `kraj`, `kontynent`, `flaga`) VALUES
(1, 'USA', 'Ameryka Północna', 'https://pl.wikipedia.org/wiki/Stany_Zjednoczone#/media/Plik:Flag_of_the_United_States.svg'),
(2, 'Wielka Brytania', 'Europa', 'https://pl.wikipedia.org/wiki/Wielka_Brytania#/media/Plik:Flag_of_the_United_Kingdom_(3-5).svg'),
(3, 'Włochy', 'Europa', 'https://pl.wikipedia.org/wiki/W%C5%82ochy#/media/Plik:Flag_of_Italy.svg'),
(4, 'Austria', 'Europa', 'https://pl.wikipedia.org/wiki/Austria#/media/Plik:Flag_of_Austria.svg'),
(5, 'Australia', 'Australia i Oceania', 'https://pl.wikipedia.org/wiki/Australia#/media/Plik:Flag_of_Australia.svg'),
(6, 'Nowa Zelandia', 'Australia i Oceania', 'https://pl.wikipedia.org/wiki/Nowa_Zelandia#/media/Plik:Flag_of_New_Zealand.svg'),
(7, 'Izrael', 'Azja', 'https://pl.wikipedia.org/wiki/Izrael#/media/Plik:Flag_of_Israel.svg'),
(8, 'Liban', 'Azja', 'https://pl.wikipedia.org/wiki/Liban#/media/Plik:Flag_of_Lebanon.svg'),
(9, 'Niemcy', 'Europa', 'https://pl.wikipedia.org/wiki/Niemcy#/media/Plik:Flag_of_Germany.svg'),
(10, 'RPA', 'Afryka', 'https://pl.wikipedia.org/wiki/Niemcy#/media/Plik:Flag_of_Germany.svg'),
(11, 'Ukraina', 'Europa', 'https://pl.wikipedia.org/wiki/Ukraina#/media/Plik:Flag_of_Ukraine.svg'),
(12, 'Maroko', 'Afryka', 'https://pl.wikipedia.org/wiki/Maroko#/media/Plik:Flag_of_Morocco.svg'),
(13, 'Portoryko', 'Ameryka Północna', 'https://pl.wikipedia.org/wiki/Portoryko#/media/Plik:Flag_of_Puerto_Rico.svg'),
(14, 'Dania', 'Europa', 'https://pl.wikipedia.org/wiki/Dania#/media/Plik:Flag_of_Denmark.svg'),
(15, 'Hawaje', 'Ameryka Północna', 'https://pl.wikipedia.org/wiki/Hawaje#/media/Plik:Flag_of_Hawaii.svg'),
(16, 'Chiny', 'Azja', 'https://pl.wikipedia.org/wiki/Chi%C5%84ska_Republika_Ludowa#/media/Plik:Flag_of_the_People\'s_Republic_of_China.svg'),
(17, 'Szwecja', 'Europa', 'https://pl.wikipedia.org/wiki/Szwecja#/media/Plik:Flag_of_Sweden.svg'),
(19, 'Kanada', 'Ameryka Północna', 'https://pl.wikipedia.org/wiki/Kanada#/media/Plik:Flag_of_Canada_(Pantone).svg'),
(20, 'Meksyk', 'Ameryka Północna', 'https://pl.wikipedia.org/wiki/Meksyk#/media/Plik:Flag_of_Mexico.svg'),
(21, 'Korea Południowa', 'Azja', 'https://pl.wikipedia.org/wiki/Korea_Po%C5%82udniowa#/media/Plik:Flag_of_South_Korea.svg'),
(22, 'Mongolia', 'Azja', 'https://pl.wikipedia.org/wiki/Mongolia#/media/Plik:Flag_of_Mongolia.svg'),
(23, 'Japonia', 'Azja', 'https://pl.wikipedia.org/wiki/Japonia#/media/Plik:Flag_of_Japan.svg'),
(24, 'Indie', 'Azja', 'https://pl.wikipedia.org/wiki/Indie#/media/Plik:Flag_of_India.svg'),
(25, 'Irlandia', 'Europa', 'https://pl.wikipedia.org/wiki/Irlandia#/media/Plik:Flag_of_Ireland.svg'),
(26, 'Hiszpania', 'Europa', 'https://pl.wikipedia.org/wiki/Hiszpania#/media/Plik:Flag_of_Spain.svg'),
(27, 'Benin', 'Afryka', 'https://pl.wikipedia.org/wiki/Benin#/media/Plik:Flag_of_Benin.svg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obsada`
--

CREATE TABLE `obsada` (
  `id_obsady` int(11) NOT NULL,
  `id_filmu` int(11) NOT NULL,
  `id_aktora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(133, 60, 71),
(134, 60, 72),
(135, 61, 73),
(136, 61, 74),
(137, 61, 75),
(138, 61, 76),
(139, 62, 86),
(140, 62, 87),
(141, 62, 88),
(142, 63, 88),
(143, 64, 88),
(144, 64, 89),
(145, 64, 54),
(146, 65, 1),
(147, 65, 7),
(148, 65, 90),
(149, 67, 80),
(150, 67, 91),
(151, 67, 88),
(152, 68, 69),
(153, 68, 92),
(154, 68, 93),
(155, 69, 94),
(156, 70, 95),
(157, 70, 48),
(158, 70, 96),
(159, 71, 96),
(160, 71, 36),
(161, 71, 97),
(162, 71, 98),
(163, 72, 99),
(164, 72, 29),
(165, 73, 29),
(166, 74, 102),
(167, 74, 20),
(168, 74, 101),
(169, 76, 21),
(170, 76, 103),
(171, 76, 104),
(172, 77, 105),
(173, 77, 103),
(174, 78, 95),
(175, 78, 106),
(176, 79, 106),
(177, 80, 23),
(178, 80, 106),
(179, 80, 107),
(180, 81, 65),
(181, 81, 108),
(183, 81, 13),
(184, 82, 103),
(185, 82, 109),
(186, 82, 22),
(187, 83, 103),
(188, 83, 2),
(189, 83, 111),
(190, 84, 20),
(191, 84, 2),
(192, 84, 111),
(193, 84, 112),
(194, 85, 112),
(195, 85, 51),
(196, 76, 113),
(197, 76, 113),
(198, 1, 2),
(199, 86, 14),
(200, 31, 114),
(201, 87, 115),
(202, 87, 114),
(203, 87, 116),
(204, 87, 117),
(205, 87, 33),
(206, 87, 118),
(207, 88, 118),
(208, 88, 21),
(209, 88, 81),
(210, 90, 26),
(211, 90, 96),
(212, 90, 120),
(213, 90, 121),
(214, 90, 122),
(215, 91, 82),
(216, 91, 123),
(217, 91, 124),
(218, 92, 50),
(219, 92, 13),
(221, 92, 115),
(222, 92, 81),
(223, 92, 125),
(224, 93, 126),
(225, 93, 54),
(226, 93, 127),
(227, 94, 128),
(228, 94, 59),
(229, 95, 29),
(230, 95, 95),
(231, 96, 29),
(232, 96, 129),
(233, 96, 130);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyserzy`
--

CREATE TABLE `rezyserzy` (
  `id_rezysera` int(11) NOT NULL,
  `rezyser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(45, 'Sylvester Stallone'),
(46, 'Richard Attenborough'),
(47, 'Barry Levinson'),
(48, 'Lilly Wachowski, Lana Wachowski'),
(49, 'Mike Newell'),
(50, 'David Yates'),
(51, 'Roar Uthaug'),
(52, 'Simon West'),
(53, 'Chris Weitz'),
(54, 'Gregory Hoblit'),
(55, 'Joel Schumacher'),
(56, 'Neil Jordan'),
(58, 'Florian Henckel von Donnersmarck'),
(59, 'Roman Polański'),
(60, 'Gore Verbinski'),
(61, 'Alfonso Cuarón'),
(62, 'Joseph Kosinski'),
(63, 'Oliver Stone'),
(64, 'Martin Brest'),
(65, 'Sam Mendes'),
(66, 'Richard Attenborough'),
(67, 'Phillip Noyce'),
(68, 'Nick Cassavetes');

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
  MODIFY `id_aktora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id_filmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `id_gatunku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `kraje`
--
ALTER TABLE `kraje`
  MODIFY `id_kraju` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `obsada`
--
ALTER TABLE `obsada`
  MODIFY `id_obsady` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT dla tabeli `rezyserzy`
--
ALTER TABLE `rezyserzy`
  MODIFY `id_rezysera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD CONSTRAINT `aktorzy_ibfk_1` FOREIGN KEY (`id_kraju`) REFERENCES `kraje` (`id_kraju`);

--
-- Ograniczenia dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD CONSTRAINT `filmy_ibfk_1` FOREIGN KEY (`id_rezysera`) REFERENCES `rezyserzy` (`id_rezysera`),
  ADD CONSTRAINT `filmy_ibfk_2` FOREIGN KEY (`id_gatunku`) REFERENCES `gatunki` (`id_gatunku`);

--
-- Ograniczenia dla tabeli `foto_aktorzy`
--
ALTER TABLE `foto_aktorzy`
  ADD CONSTRAINT `foto_aktorzy_ibfk_1` FOREIGN KEY (`id_aktora`) REFERENCES `aktorzy` (`id_aktora`);

--
-- Ograniczenia dla tabeli `obsada`
--
ALTER TABLE `obsada`
  ADD CONSTRAINT `obsada_ibfk_1` FOREIGN KEY (`id_filmu`) REFERENCES `filmy` (`id_filmu`),
  ADD CONSTRAINT `obsada_ibfk_2` FOREIGN KEY (`id_aktora`) REFERENCES `aktorzy` (`id_aktora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
