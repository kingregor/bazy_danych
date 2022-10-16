-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Paź 2022, 19:26
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

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
  `aktor` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `kobieta` tinyint(1) NOT NULL DEFAULT 0,
  `data_urodzenia` date NOT NULL,
  `wzrost` int(11) NOT NULL,
  `kraj` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `aktorzy`
--

INSERT INTO `aktorzy` (`id_aktora`, `aktor`, `kobieta`, `data_urodzenia`, `wzrost`, `kraj`) VALUES
(1, 'Keanu Reeves', 0, '1964-09-02', 185, 'Liban'),
(2, 'Willem Dafoe', 0, '1955-07-22', 177, 'USA'),
(3, 'Alfie Allen', 0, '1986-09-12', 175, 'Wielka Brytania'),
(4, 'Riccardo Scamarcio', 0, '1979-11-13', 178, 'Włochy'),
(5, 'Claudia Gerini', 1, '1971-12-18', 170, 'Włochy'),
(6, 'Halle Berry', 1, '1966-08-14', 166, 'USA'),
(7, 'Laurence Fishburne', 0, '1961-07-30', 184, 'USA'),
(8, 'Robert Downey Jr.', 0, '1965-04-04', 175, 'USA'),
(9, 'Gwyneth Paltrow', 1, '1972-09-27', 175, 'USA'),
(10, 'Leonardo DiCaprio', 0, '1974-11-11', 183, 'USA'),
(11, 'Matthew McConaughey', 0, '1969-07-04', 182, 'USA'),
(12, 'Anne Hathaway', 1, '1982-11-12', 173, 'USA'),
(13, 'Michael Caine', 0, '1933-03-14', 188, 'Wielka Brytania'),
(14, 'Sigourney Weaver', 1, '1949-10-08', 180, 'USA'),
(15, 'John Hurt', 0, '1940-01-25', 175, 'Wielka Brytania'),
(16, 'Bruce Willis', 0, '1955-03-19', 183, 'Niemcy'),
(17, 'Ben Affleck', 0, '1972-08-15', 192, 'USA'),
(18, 'Matt Damon', 0, '1970-10-08', 178, 'USA'),
(19, 'Robin Williams', 0, '1951-07-21', 170, 'USA'),
(20, 'Forest Whitaker', 0, '1961-07-15', 188, 'USA'),
(21, 'Brad Pitt', 0, '1963-12-18', 180, 'USA'),
(22, 'Morgan Freeman', 0, '1937-06-01', 188, 'USA'),
(23, 'Orlando Bloom', 0, '1977-01-13', 179, 'Wielka Brytania'),
(24, 'Jack Nicholson', 0, '1937-04-22', 177, 'USA'),
(25, 'Helen Hunt', 1, '1963-06-15', 170, 'USA'),
(26, 'Tom Hanks', 0, '1956-07-09', 183, 'USA'),
(27, 'Gary Sinise', 0, '1955-03-17', 178, 'USA'),
(28, 'Jodie Foster', 1, '1962-11-19', 161, 'USA'),
(29, 'Denzel Washington', 0, '1954-12-28', 185, 'USA'),
(30, 'Tom Hardy', 0, '1977-09-15', 175, 'USA'),
(31, 'Charlize Theron', 1, '1975-08-07', 177, 'RPA'),
(32, 'Tim Robbins', 0, '1958-10-16', 196, 'USA'),
(33, 'David Morse', 0, '1953-10-11', 193, 'USA'),
(34, 'Vin Diesel', 0, '1967-07-18', 183, 'USA'),
(35, 'Paul Walker', 0, '1973-09-12', 188, 'USA'),
(36, 'Nicole Kidman', 1, '1967-06-20', 180, 'Hawaje'),
(37, 'Hugh Jackman', 0, '1968-10-12', 189, 'Australia'),
(38, 'Mel Gibson', 0, '1956-01-03', 177, 'USA'),
(39, 'Russell Crowe', 0, '1964-04-07', 182, 'Nowa Zelandia'),
(40, 'Arnold Schwarzenegger', 0, '1947-07-30', 188, 'Austria'),
(41, 'Connie Nielsen', 1, '1965-07-03', 179, 'Dania'),
(42, 'Joaquin Phoenix', 0, '1974-10-28', 173, 'Portoryko'),
(43, 'Shia LaBeouf', 0, '1986-06-11', 176, 'USA'),
(44, 'Michael Peña', 0, '1976-01-13', 170, 'USA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id_filmu` int(11) NOT NULL,
  `tytul` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `oryginalny_tytul` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `data_premiery` date DEFAULT NULL,
  `czas_trwania` int(11) NOT NULL,
  `id_gatunku` int(11) DEFAULT NULL,
  `id_rezysera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id_filmu`, `tytul`, `oryginalny_tytul`, `opis`, `data_premiery`, `czas_trwania`, `id_gatunku`, `id_rezysera`) VALUES
(1, 'John Wick', 'John Wick', 'Były płatny morderca ściga gangsterów, którzy wtargnęli do jego domu, dokonując brutalnej napaści i kradzieży.', '2014-09-19', 131, 1, 1),
(2, 'John Wick 2', 'John Wick 2', 'John Wick udaje się do Rzymu na prośbę starego przyjaciela, który chce przejąć kontrolę nad międzynarodową gildią zabójców.', '2017-01-30', 121, 1, 2),
(3, 'John Wick 3', 'John Wick 3', 'John Wick próbuje opuścić Nowy Jork po tym, jak zostaje wydalony z organizacji zabójców za morderstwo członka Najwyższej Rady.', '2019-05-15', 107, 1, 2),
(4, 'Gothica', 'Gothica', 'Błyskotliwa psycholog, dr Miranda Grey jest ekspertem w sprawach logiki. Wie, co racjonalne i możliwe do zaakceptowania. Leczy niebezpieczne pacjentki na oddziale psychiatrycznym więzienia dla kobiet w Woodward. Pewnego dnia budzi się w nim jako pacjentka. Nie pamięta zupełnie, co się stało. Wkrótce okazuje się, że jest oskarżona o dokonanie morderstwa. Gdy sama postanawia dowiedzieć się prawdy, okazuje się, że kieruje nią żądny zemsty duch. ', '2003-11-13', 117, 2, 3),
(5, 'Iron Man', 'Iron Man', 'Tony Stark buduje supernowoczesną zbroję. Multimiliarder postanawia walczyć ze złem jako Iron Man.', '2008-04-14', 98, 2, 4),
(6, 'Wilk z Wall Street', 'The Wolf of Wall Street', 'Historia Jordana Belforta, brokera, którego błyskawiczna droga na szczyt i rozrzutny styl życia wzbudziły zainteresowanie FBI.', '2013-12-13', 116, 3, 6),
(7, 'Interstellar', 'Interstellar', 'Byt ludzkości na Ziemi dobiega końca wskutek zmian klimatycznych. Grupa naukowców odkrywa tunel czasoprzestrzenny, który umożliwia poszukiwanie nowego domu.', '2014-10-26', 137, 2, 7),
(8, 'Obcy - 8 pasażer Nostromo', 'Alien', 'Załoga statku kosmicznego Nostromo odbiera tajemniczy sygnał i ląduje na niewielkiej planetoidzie, gdzie jeden z jej członków zostaje zaatakowany przez obcą formę życia.', '2021-05-25', 127, 2, 8),
(9, 'Armageddon', 'Armageddon', 'Po odkryciu asteroidy wielkości Teksasu, która zmierza w kierunku Ziemi, NASA rekrutuje grupę wiertniczych i wysyła na misję ratowania planety.', '1998-06-30', 137, 2, 9),
(10, 'Buntownik z wyboru', 'Good Will Hunting', 'Will, matematyczny geniusz gardzący formalnym wykształceniem, zostaje oskarżony o pobicie policjanta. Profesor MIT, świadomy talentu chłopaka, proponuje mu, aby w zamian za zwolnienie z aresztu podjął naukę i terapię psychologiczną.', '1997-12-02', 121, 4, 10),
(11, 'Good morning, Vietnam', 'Good morning, Vietnam', 'Po przyjeździe do Wietnamu Adrian Cronauer prowadzi program w wojskowej rozgłośni radiowej. Jego niekonwencjonalne metody pracy i oryginalny sposób bycia szybko budzą niechęć przełożonych.', '0000-00-00', 132, 5, 11),
(12, 'Siedem', 'Seven', 'Dwóch policjantów stara się złapać seryjnego mordercę wybierającego swoje ofiary według specjalnego klucza - siedmiu grzechów głównych.', '1995-09-15', 127, 6, 12),
(13, 'Troja', 'Troy', 'Ekranizacja epopei Homera opowiadająca o walce Greków pod murami Troi, aby odbić porwaną królową Sparty.', '2004-05-09', 183, 7, 13),
(14, 'Infiltracja', 'The Departed', 'Tajny policjant w szeregach grupy przestępczej i informator mafii w bostońskiej jednostce dochodzeniowej toczą ze sobą śmiertelną rozgrywkę.', '2006-09-26', 152, 1, 6),
(15, 'Lepiej być nie może', 'As Good as It Gets', 'Ekscentryczny Melvin zakochuje się w kelnerce z problemami.', '1997-12-06', 139, 8, 14),
(16, 'Cast Away - poza światem', 'Cast Away', 'W wyniku katastrofy lotniczej inżynier firmy kurierskiej trafia na bezludną wyspę, gdzie musi przeżyć.', '2000-12-07', 143, 9, 15),
(17, 'Forrest Gump', 'Forrest Gump', 'Historia życia Forresta, chłopca o niskim ilorazie inteligencji z niedowładem kończyn, który staje się miliarderem i bohaterem wojny w Wietnamie.', '1994-06-23', 142, 9, 15),
(18, 'Kontakt', 'Contact', 'Ellie od lat prowadzi nasłuch kosmosu. W końcu odbiera sygnał nadany przez obcą cywilizację.', '1997-07-11', 153, 2, 15),
(19, 'Lot', 'Flight', 'Pilot William \"Whip\" Whitaker szczęśliwie ląduje zepsutym samolotem. W sprawie wypadku toczy się śledztwo.', '2012-10-14', 138, 9, 15),
(20, 'Mad Max: Na drodze gniewu', 'Mad Max: Fury Road', 'Prześladowany przez demony przeszłości Mad Max uważa, że najlepszym sposobem na przeżycie jest samotna wędrówka po świecie. Zostaje jednak wciągnięty do grupy uciekinierów przemierzających tereny spustoszone przez wojnę nuklearną (Wasteland) w pojeździe zwanym War Rig, prowadzonym przez Imperatorkę Furiosę. Uciekają z Cytadeli sterroryzowanej przez Immortana Joe’ego, któremu odebrano coś wyjątkowego. Rozwścieczony watażka zwołuje wszystkie swoje bandy i wytrwale ściga buntowników, podczas gdy na drogach toczy się wysokooktanowa wojna.', '2015-05-07', 120, 2, 16),
(21, 'Atomic Blonde', 'Atomic Blonde', 'W scenie kiedy Lorraine Broughton jest odebrana przez agentów z lotniska w Berlinie Zachodnim, podczas jazdy ulicami stolicy Niemiec, za autem którym jedzie pojawia się Porsche. Podczas tego ujęcia można zauważyć, że pozostałe samochody, które stoją na ulicy nie były produkowane w 1989 roku.', '2017-03-12', 115, 1, 1),
(22, 'The Old Guard', 'The Old Guard', 'Pod dowództwem wojowniczki imieniem Andy (Charlize Theron), sekretna grupa najemników, których nic nie jest w stanie zabić, od stuleci chroni świat śmiertelników. Kiedy zespół podejmuje się nowej misji ratunkowej i ich nadzwyczajne zdolności zostają nagle ujawnione, Andy i Nile (Kiki Layne), świeżo upieczony żołnierz w szeregach grupy, muszą wyeliminować zagrożenie ze strony ludzi, którzy za wszelką cenę chcą zawładnąć ich mocą i zarobić na tym fortunę.', '2020-07-10', 125, 1, 17),
(23, 'Shrek', 'Shrek', 'Ogr o imieniu Shrek chce za wszelką cenę odzyskać spokój na terenie swojej posiadłości na bagnach, gdzie w wyniku represji okrutnego Lorda Farquaada zesłane zostały różne bajkowe postacie, w tym Pinokio, Wilk czy siedmiu krasnoludków. Shrek decyduje się na wyprawę do siedziby Farquaada, miasta Duloc, by odebrać prawa do swoich ziem, a w konsekwencji odzyskać utracony spokój. W wyprawie towarzyszy mu niezdarny Osioł. W wyniku negocjacji zawarty zostaje układ: w zamian za otrzymanie dokumentu ogr zobowiązuje się uwolnić ze smoczej wieży piękną królewnę Fionę, którą Lord wybrał na swoją przyszłą małżonkę.', '1990-10-17', 95, 10, 18),
(24, 'Skazani na Shawshank', 'The Shawshank Redemption', 'Andy Dufresne (Tim Robbins), dobrze zarabiający bankier z Nowej Anglii, zostaje oskarżony o podwójne zabójstwo - swojej żony i jej kochanka. Uparcie twierdzi, że jest niewinny, ale dzięki niezbitym dowodom zostaje skazany na podwójne dożywocie w więzieniu Shawshank. Shawshank rządzi hipokryta i fanatyk biblijny, naczelnik Norton (Bob Gunton), a wraz z nim sadystyczni strażnicy. Andy już po kilku dniach poznaje brutalną, więzienną rzeczywistość, ale dzięki wrodzonej inteligencji, sprytowi oraz pomocy przyjaciela Ellisa Boyda \"Reda\" Reddinga (Morgan Freeman) udaje mu się zachować nadzieję, która pozwoli dokonać zemsty.', '2021-09-10', 142, 9, 19),
(25, 'Zielona mila', 'The Green Mile', 'Rok 1935. Paul Edgecombe (Tom Hanks) jest jednym ze strażników bloku śmierci w więzieniu Cold Mountain. Do jego obowiązków należy odprowadzanie skazańców do celi śmierci długim korytarzem, wyłożonym zieloną wykładziną, zwaną \"Zieloną milą\". Pewnego dnia do więzienia przybywa olbrzymi czarnoskóry skazaniec, John Coffey (Michael Clarke Duncan). Ma oczekiwać na karę śmierci za zamordowanie dwóch białych dziewczynek. Jego wizyta na zawsze zmieni życie Paula i pozostałych pracowników więzienia.', '1999-12-06', 188, 9, 19),
(26, 'Incepcja', 'Inception', 'Światowej sławy filmowiec Christopher Nolan wyreżyserował film z gwiazdorską obsadą, który zabiera widzów w podróż dookoła ziemskiego globu oraz w głąb intymnego i nieskończonego świata snów. Dom Cobb (Leonardo DiCaprio) jest niezwykle sprawnym złodziejem, mistrzem w wydobywaniu wartościowych sekretów ukrytych głęboko w świadomości podczas fazy snu, kiedy umysł jest najbardziej wrażliwy. Wyjątkowe umiejętności Cobba uczyniły z niego ważnego gracza w świecie szpiegostwa przemysłowego, ale i najbardziej poszukiwanego zbiega, a za swoją pozycję zapłacił utratą wszystkiego, co kocha. Teraz Cobb otrzymuje szansę na odkupienie. Za sprawą jednego, ostatniego zadania może odzyskać stracone życie. Musi tylko wraz ze swym zespołem dokonać rzeczy niemożliwej: zamiast skraść myśl, zaszczepić ją w śpiącym umyśle. Jeśli im się to uda, dokonają zbrodni doskonałej. Jednak nawet najbardziej precyzyjne planowanie nie jest w stanie przygotować ich na spotkanie z niezwykłym przeciwnikiem, który potrafi przewidzieć każdy ich ruch. Wróg, którego tylko Cobb mógł się spodziewać.', '2010-07-08', 148, 6, 7),
(27, 'Interstellar', 'Interstellar', 'Historia grupy badaczy, którzy dzięki nowo odkrytemu tunelowi czasoprzestrzennemu pokonują granice do tej pory przekraczające ludzkie możliwości podróżowania w innym wymiarze. Film oparty jest na teorii naukowej opracowanej przez fizyka z Caltech Kipa Thorne\'a.', '2014-10-26', 169, 2, 7),
(28, 'Szeregowiec Ryan', 'Saving Private Ryan', 'II wojna światowa była przełomowym wydarzeniem XX wieku i decydującym momentem dla Ameryki i świata. Przesunęła granice państw. Na zawsze zmieniła tych, którzy ją przeżyli i ukształtowała pokolenia, które po niej nadeszły. Nazwana została \"ostatnią wielką wojną\". Nic nie mogło przygotować żołnierzy na plaży Omaha do bitwy, którą właśnie mieli stoczyć. Przepełnieni nadzieją i determinacją, żaden z nich nie wiedział, czy uda mu się przeżyć. Patrząc na wybrzeże Normandii kapitan John Miller (Tom Hanks) wierzył, że walka, która ich czeka, jest największym wyzwaniem tej wojny. Nie wiedział, że to co najtrudniejsze, jest jeszcze przed nimi. Gdy sprzymierzone wojska opanowały plażę Omaha, Miller otrzymał rozkaz poprowadzenia swojego oddziału za linię wroga w niebezpiecznej misji znalezienia i ocalenia jednego człowieka - szeregowca Jamesa Ryana (Matt Damon) - najmłodszego z czterech braci, jedynego, który przeżył. Pozostali trzej zginęli w walce. W miarę, jak oddział przedzierał się coraz głębiej na terytorium wroga, ludzie kapitana Millera zaczęli podawać w wątpliwość celowość tej wyprawy. Dlaczego dla jednego człowieka naraża się życie ośmiu... Dlaczego życie tego szeregowca jest więcej warte niż ich wszystkich?', '1997-07-21', 170, 5, 20),
(29, 'Riddick', 'Riddick', 'Zdradzony przez przyjaciół i pozostawiony na obcej planecie Riddick musi przetrwać w walce ze śmiertelnie groźnymi wrogami. Staje się jeszcze potężniejszy i niebezpieczniejszy niż kiedykolwiek wcześniej. Łowcy nagród ścigający go przez całą galaktykę staną się jedynie pionkami w grze, dzięki której Riddick rozpocznie odsiecz swojej planety, stojącej w obliczu zagłady.', '2013-08-28', 119, 2, 21),
(30, 'Szybcy i wściekli', 'The Fast and the Furious', 'Opowieść o gangach, które rywalizują o prymat, ścigając się na ulicach miast przerobionymi samochodami, najczęściej produkcji japońskiej. Są to wyścigi o duże pieniądze. Gangi podejrzewane są także o serię porwań ciężarówek. Aby zlikwidować ten proceder, do jednej z grup przenika policjant, Brian (Paul Walker). Po pewnym czasie przekonuje do siebie szefa Dominica Toretto (Vin Diesel). Rywalizacja między gangami przybiera na sile, a dla Briana pojawiają się nowe problemy - zakochuje się w siostrze Dominica (Jordana Brewster).', '2001-06-18', 166, 1, 0),
(31, 'Terminator  - Elektroniczny morderca', 'Terminator', 'Rok 2029. Spustoszonym nuklearną wojną światem rządzą roboty, rodzaj ludzki zszedł do podziemia, a Los Angeles to jedno wielkie gruzowisko. Jednak ludzie przygotowują się do buntu przeciw wszechwładnym maszynom-tyranom. Ich wysłannik (Michael Biehn) wraca do Los Angeles roku 1984. Musi za wszelką cenę uniemożliwić niezniszczalnemu cyborgowi z XXI wieku, terminatorowi (Arnold Schwarzenegger), zamordowanie Sary Connor (Linda Hamilton), przyszłej matki lidera rewolucji. Uzbrojony po zęby i pozbawiony jakichkolwiek uczuć terminator urządza krwawe polowanie na dziewczynę.', '1984-10-26', 107, 2, 22),
(32, 'Człowiek Ringu', 'Cinderella Man', 'Opowieść o losach legendarnego sportowca Jima Braddocka - boksera, który po serii przegranych pojedynków, został zmuszony do porzucenia ringu. Podczas trudnych lat Wielkiego Kryzysu podejmował się wielu zajęć, by utrzymać rodzinę. Właśnie w tym okresie ponownie otrzymał szansę zmierzenia się z jednym z najlepszych bokserów tamtych czasów. Po niespodziewanym dla wszystkich zwycięstwie został wystawiony do walki z mistrzem świata - zawodnikiem znanym z uśmiercenia kilku swoich ringowych przeciwników.', '2005-05-23', 164, 3, 23),
(33, 'Gladiator', 'Gladiator', 'Generał Maximus (Russell Crowe), jeden z najwybitniejszych dowódców w rzymskiej armii, dowiaduje się, że umierający cesarz Marek Aureliusz (Richard Harris) chce uczynić go swoim następcą na tronie. Nie podoba się to prawowitemu dziedzicowi, Kommodusowi (Joaquin Phoenix), który postanawia pozbyć się rywala i skazuje go na karę śmierci wraz z całą rodziną. Maximusowi cudem udaje się uciec. Trafia do niewoli, gdzie zostaje wyszkolony na gladiatora. Z walki na walkę zyskuje popularność, a na jego występy zaczyna przychodzić coraz więcej ludzi. Maximus jako wojownik wraca do Rzymu, by pomścić swoich bliskich, ale wie, że jedyną potęgą większą od władzy cesarza jest wola ludu i dlatego, by dokonać zemsty, musi stać się największym bohaterem Imperium. ', '2000-05-01', 155, 7, 8),
(34, 'Joker', 'Joker', 'Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera. Przedstawiony przez Phillipsa obraz śledzi losy kultowego czarnego charakteru, człowieka zepchniętego na margines. To nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.', '2019-08-31', 122, 9, 24),
(35, 'Czego pragną kobiety', 'What Women Want', 'Nick Marshall jest typowym kobieciarzem, a z zawodu specjalistą od reklamy i - wydawałoby się - wybitnym pracownikiem, który wejdzie na sam szczyt. Przeszkodą okazuje się pewna kobieta imieniem Darcy, która otrzymuje stanowisko, o którym marzył. Nick jest nieźle wkurzony i to nie tylko na nią, ale na wszystkie kobiety jakie chodzą po naszej planecie. Pewnego dnia ulega jednak wypadkowi, wskutek którego nie umiera, ale doznaje wstrząsu, po którym słyszy myśli kobiet.', '2000-12-13', 127, 11, 25),
(36, 'Braveheart - Waleczne Serce', 'Braveheart', 'Pod koniec XIII wieku Szkocja dostaje się pod panowanie angielskiego króla, Edwarda I. Przejęcie władzy odbywa się w wyjątkowo krwawych okolicznościach. Jednym ze świadków gwałtów i morderstw jest kilkunastoletni chłopak, William Wallace. Po latach spędzonych pod opieką wuja dorosły William wraca do rodzinnej wioski. Jedną z pierwszych osób, które spotyka, jest Murron - przyjaciółka z lat dzieciństwa. Dawne uczucie przeradza się w wielką i szczerą miłość. Niestety wkrótce dziewczyna ginie z rąk angielskich żołnierzy. Wydarzenie to staje się to momentem przełomowym w życiu młodego Szkota. William decyduje się bowiem na straceńczą walkę z okupantem i po brawurowym ataku zdobywa warownię wroga. Dzięki ogromnej odwadze zostaje wykreowany na przywódcę powstania przeciw angielskiej tyranii..', '1995-05-15', 177, 7, 26),
(37, 'Mad Max', 'Mad Max', 'Nieokreślona przyszłość. Max Rockatansky prywatnie jest czułym mężem i kochającym ojcem, poza domem jednak zmienia się w pozbawionego skrupułów brutalnego gliniarza, egzekwującego prawo na australijskich szosach. Max, czując się rozdarty między domem a wyniszczającą pracą, nosi się z zamiarem porzucenia zawodu. Któregoś dnia, w czasie pościgu nieumyślnie doprowadza do śmierci lidera gangu motocyklowego, Nocnego Jeźdźca. Przypadkowa śmierć staje się pierwszym ogniwem łańcucha wypadków, które zburzą spokój miasta, a także samego bohatera.', '1979-04-12', 93, 2, 16),
(38, 'Znaki', 'Signs', 'Mel Gibson wciela się w postać byłego pastora, ojca dwójki dzieci, który po tragicznej śmierci żony zrywa z Kościołem i porzuca stan duchowny. Wspólnie z córką, synem i młodszym bratem (Joaquin Phoenix) mieszka na farmie w Pensylwanii, gdzie pędzi spokojny żywot. Do czasu... Pewnego dnia odkrywa na swoim polu kukurydzy tajemniczy symbol, który nie mógł być pozostawiony przez człowieka. Niebawem informacje o podobnych znakach pojawiają się na całym świecie...', '2002-07-29', 106, 2, 27),
(39, 'Tłumaczka', 'The Interpreter', 'Silvia Broome pracuje w ONZ jako tłumaczka. Pewnego dnia staje się świadkiem rozmowy dotyczącej zamachu na jednego z afrykańskich przywódców. Całą sprawą zajmują się agenci Tajnych Służb. Wkrótce jednak okazuje się, że nie wszystko jest tak oczywiste, jak było na samym początku, a tłumaczka skrywa pewną tajemnicę.', '2005-04-04', 128, 1, 28),
(40, 'Wolverine', 'Wolverine', 'Hugh Jackman ponownie w roli tajemniczego, obdarzonego niezwykłą mocą Wolverine’a, który wyrusza do współczesnej Japonii. Stawia tam czoła nie tylko obcej kulturze, lecz także śmiertelnie groźnym wrogom, którzy gotowi są na wszystko, by go zniszczyć.  Wolverine odkryje swoje słabości, zyskując przy tym siłę, o której dotąd mógł tylko marzyć, a jego los zmieni się na zawsze…', '2013-07-16', 126, 1, 29),
(41, 'Furia', 'Fury', 'Kwiecień 1945 roku. Alianckie wojska rozgromiły niemiecką armię w Ardenach i maszerują wprost na Berlin. Znany z odwagi, zahartowany w boju dowódca czołgu pieszczotliwie nazywanego Furia, sierżant Wardaddy (Brad Pitt) otrzymuje zadanie specjalne. Wraz ze swoją załogą będzie musiał wykonać tajną misję za linią frontu i stawić czoła znacznie potężniejszym siłom wroga.', '2014-10-15', 134, 5, 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `id_gatunku` int(11) NOT NULL,
  `gatunek` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `gatunki`
--

INSERT INTO `gatunki` (`id_gatunku`, `gatunek`) VALUES
(1, 'Akcja'),
(2, 'Sci-Fi'),
(3, 'Biograficzny'),
(4, 'Obyczajowy'),
(5, 'Wojenny'),
(6, 'Thriller'),
(7, 'Historyczny'),
(8, 'Komedia'),
(9, 'Dramat'),
(10, 'Animacja'),
(11, 'Romantyczny'),
(12, 'Fantasy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obsada`
--

CREATE TABLE `obsada` (
  `id_obsady` int(11) NOT NULL,
  `id_filmu` int(11) NOT NULL,
  `id_aktora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

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
(55, 27, 11),
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
(76, 41, 21),
(77, 41, 43),
(78, 41, 44);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyserzy`
--

CREATE TABLE `rezyserzy` (
  `id_rezysera` int(11) NOT NULL,
  `rezyser` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `rezyserzy`
--

INSERT INTO `rezyserzy` (`id_rezysera`, `rezyser`) VALUES
(11, 'Barry Levinson'),
(2, 'Chad Stahelski'),
(7, 'Christopher Nolan'),
(30, 'David Ayer'),
(12, 'David Fincher'),
(1, 'David Leitch'),
(21, 'David Twohy'),
(19, 'Frank Darabont'),
(16, 'George Miller'),
(17, 'Gina Prince-Bythewood'),
(10, 'Gus Van Sant'),
(5, 'Hawk Ostby'),
(22, 'James Cameron'),
(14, 'James L. Brooks'),
(29, 'James Mangold'),
(4, 'Jon Favreau'),
(27, 'M. Night Shyamalan'),
(6, 'Martin Scorsese'),
(3, 'Mathieu Kassovitz'),
(26, 'Mel Gibson'),
(9, 'Michael Bay'),
(25, 'Nancy Meyers'),
(8, 'Ridley Scott'),
(15, 'Robert Zemeckis'),
(23, 'Ron Howard'),
(20, 'Steven Spielberg'),
(28, 'Sydney Pollack'),
(24, 'Todd Phillips'),
(18, 'William Steig'),
(13, 'Wolfgang Petersen');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD PRIMARY KEY (`id_aktora`),
  ADD UNIQUE KEY `aktor` (`aktor`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id_filmu`),
  ADD KEY `id_gatunku` (`id_gatunku`),
  ADD KEY `id_rezysera_idx` (`id_rezysera`) USING BTREE;

--
-- Indeksy dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`id_gatunku`);

--
-- Indeksy dla tabeli `obsada`
--
ALTER TABLE `obsada`
  ADD PRIMARY KEY (`id_obsady`),
  ADD KEY `aktor_obsada` (`id_obsady`),
  ADD KEY `id_aktora` (`id_aktora`),
  ADD KEY `id_filmu` (`id_filmu`);

--
-- Indeksy dla tabeli `rezyserzy`
--
ALTER TABLE `rezyserzy`
  ADD PRIMARY KEY (`id_rezysera`),
  ADD UNIQUE KEY `rezyser` (`rezyser`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  MODIFY `id_aktora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id_filmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `id_gatunku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `obsada`
--
ALTER TABLE `obsada`
  MODIFY `id_obsady` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT dla tabeli `rezyserzy`
--
ALTER TABLE `rezyserzy`
  MODIFY `id_rezysera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD CONSTRAINT `filmy_ibfk_1` FOREIGN KEY (`id_gatunku`) REFERENCES `gatunki` (`id_gatunku`);

--
-- Ograniczenia dla tabeli `obsada`
--
ALTER TABLE `obsada`
  ADD CONSTRAINT `obsada_ibfk_1` FOREIGN KEY (`id_aktora`) REFERENCES `aktorzy` (`id_aktora`),
  ADD CONSTRAINT `obsada_ibfk_2` FOREIGN KEY (`id_filmu`) REFERENCES `filmy` (`id_filmu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
