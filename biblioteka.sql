-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Kwi 2023, 16:13
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
-- Baza danych: `biblioteka`
--
DROP DATABASE IF EXISTS `biblioteka`;
CREATE DATABASE `biblioteka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

DROP TABLE IF EXISTS `autorzy`;
CREATE TABLE `autorzy` (
  `autor_id` int(10) UNSIGNED NOT NULL,
  `autor` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL DEFAULT ''
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
(103, 'Rothenberg Jess'),
(104, 'Rymkiewicz Jarosław Marek'),
(105, 'Kopaniszyn Izabela'),
(106, 'Włódarczak Wojciech'),
(107, 'De Mello Anthony'),
(108, 'Karp Reba Ann');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

DROP TABLE IF EXISTS `gatunki`;
CREATE TABLE `gatunki` (
  `gatunek_id` int(10) UNSIGNED NOT NULL,
  `gatunek` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Struktura tabeli dla tabeli `klienci`
--

DROP TABLE IF EXISTS `klienci`;
CREATE TABLE `klienci` (
  `klient_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) NOT NULL DEFAULT '',
  `nazwisko` varchar(20) NOT NULL DEFAULT '',
  `adres` varchar(255) NOT NULL DEFAULT '',
  `nr_kontaktowy` varchar(15) NOT NULL DEFAULT '',
  `last_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`klient_id`, `imie`, `nazwisko`, `adres`, `nr_kontaktowy`, `last_update`) VALUES
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

DROP TABLE IF EXISTS `ksiazki`;
CREATE TABLE `ksiazki` (
  `ksiazka_id` int(10) UNSIGNED NOT NULL,
  `tytul` varchar(100) NOT NULL DEFAULT '',
  `opis` text DEFAULT NULL,
  `stron` int(11) DEFAULT NULL,
  `cena` decimal(5,2) DEFAULT NULL,
  `gatunek_id` int(10) UNSIGNED DEFAULT NULL,
  `autor_id` int(10) UNSIGNED DEFAULT NULL,
  `wydawnictwo_id` int(10) UNSIGNED DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`ksiazka_id`, `tytul`, `opis`, `stron`, `cena`, `gatunek_id`, `autor_id`, `wydawnictwo_id`, `last_update`) VALUES
(1, 'Niedokończone opowieści ', 'Fascynujący zbiór historii rozgrywających się od Dawnych Dni Śródziemia po zakończenie Wojny o Pierścień, stanowiących kontynuację Hobbita, Władcy Pierścieni i Silmarillionu.\r\nKsiążka skupia się na Śródziemiu, zawiera barwną opowieść Gandalfa o tym, jak doszło do tego, że wysłał krasnoludów na słynną kolację w Bag End, opis pojawienia się boga morza Ulma przed Tuorem u wybrzeży Beleriandu oraz dokładny opis wojskowej organizacji Jeźdźców Rohanu, a także relację z podróży Czarnych Jeźdźców w poszukiwaniu Pierścienia. Czytelnik znajdzie tu też jedyną ocalałą opowieść o wielowiekowej historii Númenoru sprzed jego zagłady oraz wszystko, co wiadomo o Pięciu Czarodziejach wysłanych przez Valarów do Śródziemia, a także o Widzących Kamieniach znanych jako palantíry oraz o legendzie o Amrothu.\r\nWszystkie te opowieści zostały zebrane przez syna i literackiego spadkobiercę J.R.R. Tolkiena, Christophera Tolkiena, który napisał przedmowę, a także zaopatrzył każdą historię w krótki komentarz, dzięki któremu czytelnik może wypełnić luki w narracji oraz umieścić daną opowieść w kontekście pozostałych dzieł mistrza.', 560, '59.92', 35, 85, 6, '2019-10-02 05:07:06'),
(2, 'Królestwo', 'Witaj w bajkowym Królestwie, w którym technologia pomaga ożywić marzenia!\r\nNajlepsi naukowcy w pocie czoła pracowali nad przywróceniem do życia wymarłych gatunków. Tylko tutaj możesz doświadczyć lotu na wirtualnych smokach albo poznać prawdziwe Czarodziejki! Siedem perfekcyjnych kobiet, które wyszły prosto z laboratorium, zadba o to, abyś wspaniale spędził czas.\r\nAna, jedna z nich, została zaprojektowana tak, aby spełnić każde twoje życzenie. Razem z pozostałymi siostrami jest główną atrakcją parku. Ich zadaniem jest oderwanie gości od ich codziennych problemów.\r\nKiedy jednak Ana spotyka Owena, nowego pracownika, zaczyna doświadczać emocji wykraczających poza jej oprogramowanie. Czy to, co czuje, to... miłość?\r\nWciągająca bajka zmienia się w przerażający koszmar, kiedy Ana zostaje oskarżona o brutalne zabicie Owena. Jej proces to prawdziwy skandal. Ci, którzy kiedyś skandowali jej imię z zachwytem, teraz domagają się rozebrania jej na części.\r\nPoznaj futurystyczny urok dawnych baśni i bajek, który podważy twoją wiarę w to, co tak naprawdę znaczy być człowiekiem.', 352, '23.37', 4, 103, 1, '2019-10-02 05:07:06'),
(3, 'Zbrodnia w efekcie', 'W EFEKCIE doskonale zaostrzonych narzędzi ogrodowych. W EFEKCIE gąszczu odziedziczonej działki. W EFEKCIE szalejącego pędu bambusa. W EFEKCIE uczuć wzgardzonej wielbicielki… Zbyt doskonały kościotrup i rozczłonkowany spadek, bóstwo męskie pełne sadyzmu, latająca czaszka z idealnymi zębami, szalejące emocje na przestrzeni dziesięciolecia, spadkobierczyni o podejrzanej przeszłości i nigdy niespełnione marzenie, by uczłowieczyć faceta. W EFEKCIE wymiar kary bywa dyskusyjny.', 304, '7.47', 34, 20, 1, '2019-10-02 05:07:06'),
(4, 'Klin', 'Młoda, nieszczęśliwie zakochana kobieta siedzi kołkiem w domu, w oczekiwaniu na telefon od NIEGO. Wiadomo - zawsze dzwoni nie ten, kto ma zadzwonić. Tym razem jednak jest przynajmniej ciekawie: po pierwsze omyłkowo wydzwania przestępcza szajka, po drugie - nie do końca omyłkowo młody, przystojny lek na całe zło, czyli Ten Następny. W efekcie powstaje całkiem niezła przygoda.', 216, '21.41', 34, 20, 1, '2019-10-02 05:07:06'),
(5, 'Przebudzenie', 'Mroczna, elektryzująca powieść o tym, co może istnieć po drugiej stronie życia…\r\nW niedużej miejscowości w Nowej Anglii, ponad pół wieku temu, na małego chłopca bawiącego się żołnierzykami pada cień. Jamie Morton podnosi głowę i widzi intrygującego mężczyznę, jak się okazuje, nowego pastora. Charles Jacobs wraz ze swoją piękną żoną odmieni miejscowy kościół. Mężczyźni i chłopcy skrycie podkochują się w pani Jacobs; kobiety i dziewczęta – w tym także matka Jamie’go i jego ukochana siostra Claire – tym samym uczuciem darzą wielebnego Jacobsa. Jednak kiedy rodzinę Jacobsów spotyka tragedia, a charyzmatyczny kaznodzieja wyklina Boga i szydzi z wiary, zostaje wygnany przez zszokowanych parafian.\r\nJamie ma własne demony. Od wielu lat gra na gitarze w zespołach na terenie całego kraju i wiedzie tułaczy żywot rock-and-rollowego muzyka, uciekając od rodzinnej tragedii. Po trzydziestce – uzależniony od heroiny, pozostawiony na pastwę losu, zdesperowany – Jamie ponownie spotyka Charlesa Jacobsa, co ma głębokie konsekwencje dla nich obu. Ich więź przeradza się w pakt, o jakim nawet diabłu się nie śniło, a Jamie odkrywa, że słowo „przebudzenie” ma wiele znaczeń.\r\nTa bogata, niepokojąca powieść prowadzi czytelnika przez pięć dekad do najbardziej przerażającego zakończenia, jakie kiedykolwiek wyszło spod pióra Stephena Kinga. To arcydzieło Kinga, nawiązujące do twórczości takich wybitnych amerykańskich pisarzy jak Frank Norris, Nathaniel Hawthorne i Edgar Allan Poe.', 536, '31.17', 33, 15, 17, '2019-10-02 05:07:06'),
(6, 'Bastion', 'Apokaliptyczny thriller Mistrza Grozy. Przerażająca wizja świata po zagładzie biologicznej.\r\nWystarczy błąd na komputerze w laboratorium Ministerstwa Obrony. Najpierw nadchodzi epidemia. Potem pojawiają się sny…\r\nZaczyna się niewinnie – od zwykłego przeziębienia. Ktoś kichnął, ktoś umarł i nagle Ziemia staje się masowym grobem. Nieliczni, którzy przetrwali, zaczynają mieć wizje wskazujące im drogę. Każdy musi dokonać wyboru i podążyć własną ścieżką.\r\nSerialowa adaptacja najgłośniejszej powieści mistrza grozy z nowym zakończeniem historii\r\nw rolach głównych: James Marsden, Amber Heard, Whoopi Goldberg, Greg Kinnear.', 1088, '44.95', 33, 15, 43, '2019-10-02 05:07:06'),
(7, 'Nocna zmiana', 'Pierwszy i uznany za najlepszy zbiór opowiadań Stephena Kinga, opublikowanych po raz pierwszy w 1978. Zawiera 20 mrożących krew w żyłach opowiadań, nawiązujących do klasyki horroru. Ich bohaterami są ludzie zwyczajni, przeciętni Amerykanie, którzy nagle doświadczają niezwykłych zjawisk. Siedem opowiadań z „Nocnej zmiany” zekranizowano.', 387, '30.60', 28, 15, 43, '2019-10-02 05:07:06'),
(8, 'Mroczna Wieża', 'Na jałowej, spieczonej ziemi, przypominającej planetę po apokaliptycznej zagładzie czy jeden ze światów równoległych, istniejących obok naszego, pozostały tylko ślady dawnej upadłej cywilizacji. Ten złowrogi świat przemierza Roland, ostatni z dumnego klanu rewolwerowców, ścigając człowieka w czerni, który posiadł tajemnicę Wieży - mistycznego miejsca, gdzie być może uda się rozwiązać zagadkę czasu czy przestrzeni. Podczas wędrówki musi stawić czoła opętanej kapłance: spotyka szalonych osadników, gadającego kruka, zamieszkujące podziemia mutanty oraz pochodzącego z Ziemi chłopca, Jake`a.', 272, '31.42', 8, 15, 43, '2019-10-02 05:07:06'),
(9, 'Instytut', 'Jednym z najlepszych autorów kryminałów i horrorów naszych czasów jest Stephen King. Jeśli miałeś okazję czytać jego klasyczne powieści z lat 80. i podobały Ci się one, to książka „Instytut”, która jest najnowszą powieścią Stephena Kinga, z pewnością również przypadnie Ci do gustu. Czym jest tytułowy instytut? Jaki motyw został wykorzystany w tym trzymającym w napięciu horrorze?\r\nInstytut jest miejscem, gdzie sprowadzane są dzieci obdarzone nadnaturalnymi mocami. Agenci instytutu przeczesują miasta w poszukiwaniu nieletnich, którzy mogą okazać się interesujący dla władz placówki. Co dzieje się za jej murami? Dowiesz się, że przeprowadzane są tam tajemnicze eksperymenty.\r\nLuke Ellis jest jednym z tych, którzy w nocy zostali zabrani do ośrodka. Budzi się w pokoju, który jest bliźniaczo podobny do jego własnego, ale nie ma w nim okien. Wkrótce wraz z nim odkryjesz, że w instytucie jest znacznie więcej dzieci. Ich nadnaturalne cechy są tu rozwijane pod okiem trenerów, którzy zrobią wszystko, aby wyszkolić dzieci na nieznających słabości młodych ludzi. Jednak część podopiecznych znika w niewyjaśnionych okolicznościach w drugiej części placówki. Co się z nimi dzieje?\r\nLuke podejmuje się karkołomnej misji. Chce zobaczyć, do jakich eksperymentów dochodzi w instytucie. Pragnie uciec stamtąd i jak najszybciej wezwać pomoc. Czas nagli, a dzieci przebywające w placówce są pilnie strzeżone. Czy Luke okaże się na tyle sprytny, by uratować swoich współtowarzyszy niedoli?\r\nKsiążka „Instytut” Stephena Kinga jest znakomitym horrorem, który zwala z nóg fabułą. Pisarz przemycił do powieści elementy literatury grozy, ale i krytykę systemu amerykańskiej demokracji. Bez reszty wciągnie Cię opowieść, w której nocne koszmary dzieci stają się ich okrutną rzeczywistością.', 672, '42.94', 28, 15, 43, '2019-10-02 05:07:06'),
(10, 'Cicha noc', 'Dziewięcioletnia Emma jest uwielbianą przez widzów dziecięcą aktorką. Mimo młodego wieku gra główną rolę w znanym serialu, a jej życie to piękny hollywoodzki sen.\r\nJednak tragiczny wypadek, w którym ginie mama Emmy, niszczy wszystko. Dziewczynka, niesprawna i dotknięta amnezją, zamieszkuje ze swoją ciotką, Whitney, kobietą bezdzietną, niezależną i całkowicie poświęcającą się karierze.\r\nKiedy w życiu Whitney pojawia się bezbronna, wymagająca opieki siostrzenica, kobieta postanawia zrobić wszystko, aby jej pomóc, choć nie jest pewna, czy starczy jej sił. Nie wie jednak, ile cudów może się zdarzyć, gdy odważymy się otworzyć przed kimś serce.\r\nNajnowsza powieść Danielle Steel przypomina o nieprawdopodobnej sile miłości, która niczym cicha noc po wieczornej burzy potrafi ukoić niespokojne serca.', 352, '5.99', 16, 4, 8, '2019-10-02 05:07:06'),
(11, 'Szczęście w nieszczęściu', 'Ciepła, wzruszająca i mądra książka najbardziej lubianej autorki literatury kobiecej świata z fascynującą bohaterką, której los nie szczędzi wzlotów i upadków.\r\nTo powieść o nieustającym poszukiwaniu miłości, wyzwaniach dla samotnej matki i nie zawsze prostych relacjach z dorosłymi – jakże różnymi córkami (co nie dziwi, skoro mają trzech ojców...).\r\nParyż – stolica miłości i sztuki. Isabelle McAvoy, młoda stażystka w galerii malarstwa zakochuje się bez pamięci w bogatym, znacznie starszym arystokracie. W jego zamku w Normandii przeżywa cudowny sen na jawie. Aż dowiaduje się, że jest w ciąży...\r\nIsabelle wraca do Nowego Jorku, gdzie ma nadzieję znaleźć spokojną stabilizację u boku kolejnego mężczyzny. Drugie rozczarowanie... i druga córka...\r\nGdy za trzecim razem matce dwójki dzieci wydaje się, że los jej wszystko wynagrodził, życie przynosi szokującą zmianę...\r\nMijają lata. Isabelle robi karierę jako ekspertka sztuki. Córki wyrastają na trzy różne kobiety, ale ich więź z matką jest zupełnie wyjątkowa. Tylko czy przetrzyma kolejny cios losu, gdy rodzinie zagrozi sekret z przeszłości? Czy matka znajdzie wsparcie w córkach i szczęście wreszcie zwycięży?', 304, '44.90', 16, 4, 56, '2019-10-02 05:07:06'),
(12, 'Mroczna strona', 'Głęboko poruszająca opowieść o mrocznej stronie miłości.\r\nDzieciństwo Zoe nie należało do łatwych. Tragiczna choroba i śmierć siostry, a później rozwód rodziców odcisnęły na niej niezatarte piętno.\r\nW dorosłym życiu Zoe wysoko podniosła sobie poprzeczkę. Prestiżowe studia, praca na rzecz krzywdzonych dzieci – wszystko po to, by zdobyć miłość i akceptację, których nie dostała w dzieciństwie.\r\nKiedy kobieta zakochuje się i sama rodzi dziecko, pragnie być idealną matką.\r\nWtedy jednak stare rany zaczynają boleć na nowo.\r\nCzy miłość matki ma również swoją mroczną stronę?\r\nI co się dzieje, gdy zaczyna ona przybierać na sile,\r\ntak że nie sposób jej dłużej ignorować?\r\nW swojej najnowszej powieści Danielle Steel odważyła się opowiedzieć historię kobiety, która musi stoczyć walkę z mroczną stroną swojej duszy, zanim będzie za późno.', 352, '39.90', 16, 4, 8, '2019-10-02 05:07:06'),
(13, 'Uwaga, to niebezpieczne', 'Czytając tą książeczkę i omawiając kolejne scenki, rodzice będą mogli w prosty i zrozumiały sposób uświadomić swoim dzieciom, jakie sytuacje życia codziennego mogą być dla ich pociech niebezpieczne i dlaczego.', 30, '17.34', 4, 6, 1, '2019-10-02 05:07:06'),
(14, 'Dynastia Miziołków', 'Miziołki istnieją naprawdę.\r\nOd pierwszego wydania książki minęło ładnych parę lat. Rodzina Miziołków tak bardzo wydoroślała, że nie poznalibyście ich na ulicy. Mały Potwór już dawno nie nosi pieluchy, Kaszydło straciło wszystkie mleczne zęby, Miziołek już nigdy nie będzie musiał pisać klasówek - nauczył się wszystkiego. Na dodatek odkochał się w Beacie i zakochał w całkiem innej dziewczynie. Papiszon nie używa dyskietek (kto z was pamięta, co to takiego?), a Mamiszon, po wielu porażkach, nauczył się piec ciasteczka.\r\nW międzyczasie Dynastia Miziołków była nagradzana, tłumaczona, a nawet weszła do podręczników, co wprawiło w osłupienie całą rodzinę. Wszelkie podobieństwo osób, nazwisk i zdarzeń zamieszczonych w tej książce do prawdziwych jest nieprzypadkowe.', 200, '22.22', 4, 100, 68, '2019-10-02 05:07:06'),
(15, 'Felix, Net i Nika oraz Gang Niewidzialnych Ludzi ', 'Felix, Net i Nika oraz Gang Niewidzialnych Ludzi\r\n\r\nPoznaj bohaterów przezabawnej, bestsellerowej serii literatury młodzieżowej – sięgnij po książkę „Felix, Net i Nika oraz Gang Niewidzialnych Ludzi” autorstwa Rafała Kosika. Wbrew pozorom, to wciągająca lektura nie tylko dla nastolatków, ale i dla dorosłych czytelników!\r\nJeśli po książce Rafała Kosika spodziewasz się drugiego Harry’ego Pottera, możesz być zawiedziony, ponieważ żaden z bohaterów „Felix, Net i Nika oraz Gang Niewidzialnych Ludzi” nie jest czarodziejem i nie włada tajemnymi mocami. To zwykłe dzieciaki z warszawskiego gimnazjum, które mają jednak niezwykłą wprost zdolność do wpadania w kłopoty, ale i wychodzenia z nich przy użyciu różnych przedmiotów – komputerów, sztucznej inteligencji oraz samodzielnie wykonanych wynalazków.\r\nSeria „Felix, Net i Nika” bawi czytelników i jednocześnie promuje pozytywne wartości w sposób łatwy do przyswojenia dla każdego dziecka. To dynamiczna powieść przygodowa, w której świat rzeczywisty miesza się z fantastycznym. Lektura przypadnie do gustu szczególnie przedstawicielom współczesnego pokolenia nastolatków – będą oni mogli utożsamiać się z wyraźnie zarysowanymi bohaterami książki.\r\n\r\nAutor „Felix, Net i Nika oraz Gang Niewidzialnych Ludzi” przekonuje, i to bardzo skutecznie, że warto postępować w życiu zgodnie z zasadami społecznymi. W jaki sposób to robi? Tego dowiesz się z jego książki.', 376, '29.25', 4, 101, 68, '2019-10-02 05:07:06'),
(16, 'Śmieszne wierszyki', NULL, 53, '9.89', 4, 1, 1, '2019-10-02 05:07:06'),
(17, 'Wiersze polityczne', 'Jan Brzechwa w pamięci czytelniczej utożsamiany jest głównie z poezją dla dzieci. Liryki dedykowane odbiorcom dorosłym stanowią jednak znaczną część jego literackiej spuścizny. Pisarz ubolewał, że jego twórczość dla dorosłych nie znalazła w oczach krytyków i czytelników należytego uznania. W prezentowanej publikacji znalazły się wiersze wyselekcjonowane z całości dorobku Brzechwy ze względu na ich tematykę, odnoszącą się do bieżących wydarzeń politycznych, społecznych i kulturalnych. Pochodzą one z następujących zbiorów: Imię wielkości. Wiersze o Józefie Piłsudskim (1938), Palcem w bucie (1947), Pokój zwycięży (1951), Strofy o planie sześcioletnim (1951), Cięte bańki (1952), Wiersze wybrane (1955, 1957,1959), Miejsce dla kpiarza (1967), a także z ostatniego tomiku wydanego już po śmierci poety - Liryka mego życia (1968).', 250, '32.74', 24, 1, 30, '2019-10-02 05:07:06'),
(18, 'Akademia pana Kleksa', 'Wydanie Akademii Pana Kleksa kompletne bez skrótów i cięć w treści. W tym wydaniu znajdziesz odpowiedzi na pytania z podręcznika - pewniak na teście , czyli wskazanie zagadnień, które zwykle pojawiają się w pytaniach z danej lektury we wszelkich testach sprawdzających wiedzę, a także w podręcznikach i na klasówkach. Książka zawiera pełen tekst lektury. Na końcu książki zamieszczono opracowanie, w którym znajduje się bardzo szczegółowe streszczenie oraz drugie skrócone, ułatwiające szybkie przygotowanie się przed lekcją. Opracowanie zawiera ponadto plan wydarzeń, wnikliwie wyjaśnioną problematykę oraz szerokie charakterystyki bohaterów.\r\nAkademia Pana Kleksa Jana Brzechwy to niezwykła opowieść o, wydawałoby się, całkiem zwykłym chłopcu. Adasiowi Niezgódce wszystko wypada z rąk, nic się nie udaje, wciąż są z nim problemy, dlatego rodzice postanawiają wysłać go do Akademii Pana Kleksa. W tej tajemniczej szkole uczy nieprzeciętny Pan Kleks, którego pedagogiczne metody bardzo różnią się od tych spotykanych w zwykłej szkole.\r\n\r\nDzięki nauce w Akademii Adaś odkrywa w sobie talenty i umiejętności, o które się nie podejrzewał. Adaś wraz z kolegami przeżywa fantastyczne przygody! Pan Kleks zaś przede wszystkim chce nauczyć swoich podopiecznych samodzielnego myślenia i to doskonale mu wychodzi.\r\n\r\nPolecamy wydanie z pełnym opracowaniem, dzięki któremu lektura będzie prostsza i bardziej przyjemna!', 160, '29.99', 4, 1, 37, '2019-10-02 05:07:06'),
(19, 'Wiersze Brzechwa dzieciom', 'Przedstawiamy nowe, piękne wydanie klasycznego zbioru wierszy dla dzieci - Brzechwa dzieciom autorstwa Jana Brzechwy. Tego autora nikomu nie trzeba przedstawiać, bo któż nie zna Kaczki-dziwaczki, Koziołeczka, Samochwały czy Kwoki?\r\n\r\nTeraz kolejne pokolenia dzieci mogą poznać te ponadczasowe, bawiące humorem, często zaskakujące zakończeniem utwory i zaprzyjaźnić się z ich bohaterami.\r\n\r\nKsiążka została zilustrowana przez doskonałego grafika Aleksandra Jasińskiego wspaniałymi, pełnymi barw i szczegółów rysunkami, a duży format sprawia, że każda strona to prawdziwa uczta dla oka małego odbiorcy. Zapraszamy do wspólnej z dzieckiem lektury!', 176, '26.35', 4, 1, 50, '2019-10-02 05:07:07'),
(20, 'Zosia i jej zoo. Senna sowa śnieżna', 'Zosia na co dzień mieszka w Azylu Zoologicznym. To wyjątkowe miejsce, w którym zawsze dzieje się coś ekscytującego. Azyl założył dziadek dziewczynki, słynny podróżnik pan Horacy. Horacy jeździ po całym świecie i często spotyka na swej drodze zwierzęta, które potrzebują pomocy i są w niebezpieczeństwie. Uratowane trafiają do Azylu Zoologicznego, gdzie odnajdują nowy dom, przyjaciół i mają wspaniałą opiekę. Zosia kocha wszystkich mieszkańców zoo i uwielbia się nimi zajmować. Ma też pewien niezwykły dar… rozumie mowę zwierząt! Jest to jej sekret.\r\n\r\nW Azylu Zoologicznym przychodzi na świat śliczna sowa śnieżna. Dostaje imię Dzióbek. Pisklak jest bardzo wesoły, towarzyski i… bardzo śpiący. Maluch nie chce spać ani w dzień, ani w nocy, bo woli się bawić i szukać nowych przyjaciół. Zosia ma dla niego pewną niespodziankę, dzięki której nocny ptak będzie ogromnie szczęśliwy.', 80, '19.99', 4, 102, 7, '2019-10-02 05:07:07'),
(21, 'Mity dla dzieci. 20 najpopularniejszych mitów greckich', '\"Mity dla dzieci\" Grzegorza Kasdepke to lektura wprowadzająca najmłodszych czytelników w świat starożytnej Grecji, rozwijająca wyobraźnię dziecka, oryginalna i niezwykle interesująca. Kasdepke przedstawia dzieciom, w sposób niezwykle barwny i przystępny, Olimp – siedzibę bogów greckich, pełną przepychu i uczt, a także Grecję zwykłych śmiertelników, zamieszkiwaną przez ludzi oraz liczne nimfy, centaury i mityczne potwory.\r\nMity uczą, ale i bawią, dzięki niebanalnemu poczuciu humoru autora.', 200, '25.41', 4, 58, 68, '2023-04-30 10:04:59'),
(22, 'Co to znaczy czyli 101 zabawnych historyjek, które pozwolą zrozumieć znaczenie niektórych powiedzeń ', 'Króciutkie i zabawne opowiadania, które składają się na tę książkę, znają już zapewne wszyscy czytelnicy piątkowego dodatku dla dzieci \"Gazety Wyborczej\" – \"Komiksowo\".\r\n\r\nDo wydania tej książki zachęciły nas liczne głosy nauczycieli i rodziców, którzy odczuwali brak tego typu publikacji na polskim rynku.\r\n\r\nGrzegorz Kasdepke – w sposób lekki i pogodny tłumaczy najpopularniejsze związki frazeologiczne, z jakimi na co dzień spotykają się dzieci. Jak zwykle u tego pisarza, dydaktyzm jest przesłonięty poczuciem humoru, dzięki czemu jego opowiadania bawią w równym stopniu najmłodszych czytelników, jak i osoby dorosłe.', 96, '21.07', 4, 58, 68, '2023-04-30 10:06:02'),
(23, 'Wiersze polityczne', 'Przygotowany przez autora wybór jego wierszy obywatelskich - zarówno tych już znanych (np. słynny wiersz „Kiedy się obudziłem, Polski już nie było” z tomu „Ulica Mandelsztama”), jak i zupełnie nowych (napisany w lipcu 2010 roku wiersz „Dla Ignacego Rymkiewicza (na jego pierwsze urodziny)”). Książka opatrzona jest posłowiem pt. „Czego uczy nas Adam Mickiewicz?”, w którym autor – jako historyk literatury XIX wieku - objaśnia poetykę i tradycję polskiej poezji zaangażowanej, w którą sam się – jako poeta – wpisuje.', 60, '14.90', 24, 104, 99, '2023-04-30 10:45:32'),
(24, 'Antyczłowiek. Mroczna strona człowieka', 'Książka \"Antyczłowiek. Mroczna strona człowieka”, to (jak wskazuje jej podtytuł) anatomia ludzkiej manipulacji oraz praktyczny podręcznik dla ofiar zawłaszczenia.\r\nTekst jest lekko napisany, pomimo że porusza trudne tematy. \"Antyczłowiek” jest przewodnikiem po mapach psychiki osób z mrocznej grupy zaburzeń około-narcystycznych. Pozycja papierowa bywa określana przez jej czytelników \"Biblią toksycznych relacji”.\r\nNiniejszym oddajemy w Państwa ręce wersję audio, czytaną przez wokalistkę i lektorkę, Kingę Miśkiewicz.', 530, '40.40', 21, 105, 100, '2023-04-30 11:15:31'),
(25, 'Cicha noc', 'Zatopienie „Scharnhorsta” to jeden z najbardziej dramatycznych epizodów walk o konwoje arktyczne zmierzające do Rosji w czasie drugiej wojny światowej. Najnowsza książka Wojciecha Włódarczaka to zbeletryzowana opowieść o bitwie za Przylądkiem Północnym. „Cicha Noc” pokazuje nam nie tylko wierny prawdzie historycznej przebieg zdarzeń, ale i całą paletę przeżyć uczestników obu stron bitwy, zarówno tych fikcyjnych jak i historycznych postaci, których losy splatają się ze sobą.\r\nAutor pokazuje nam świat pełen sprzecznych emocji swoich bohaterów, gdzie nienawiść splata się z miłością, a przyjaźnie są wystawione na ciężką próbę w obliczu ekstremalnych warunków, gdzie życie i śmierć dzieli tak cienka linia. Dla wielu z nich, tytułowa „Cicha noc” zapada na zawsze... Z około 2000 członków załogi „Scharnhorsta” uratowało się bowiem jedynie 36 ludzi.', 400, '40.13', 9, 106, 101, '2023-04-30 11:26:09'),
(26, 'Hobbit, czyli tam i z powrotem', 'Arcydzieło literatury fantasy, które zaprasza Czytelnika do wkroczenia w baśniowy, przemyślany w najdrobniejszych szczegółach świat.\r\nŚmiałkowie, którzy tak jak hobbit Bilbo Baggins – „istota większa od liliputa, mniejsza jednak od krasnala” – odnajdą w sobie odwagę, wybiorą się na niebezpieczną wędrówkę do strzeżonej przez smoka Smauga Samotnej Góry. A jak wiadomo, ta wyprawa w doborowej kompanii trzynastu krasnoludów i czarodzieja Gandalfa stała się początkiem przełomowych w dziejach Śródziemia wydarzeń, opisanych we „Władcy Pierścieni”. Kto więc wyruszy na spotkanie przygody z pierwszym hobbitem, który oprócz dobroci i miłości do fajkowego ziela, odkrył w sobie „ziarenko dziwactwa”, męstwo i spryt, a potem poczuł magiczną moc Jedynego Pierścienia?', 280, '24.90', 35, 85, 102, '2023-04-30 11:49:24'),
(27, 'Przebudzenie', 'Przebudzenie jest zbiorem rekolekcji wygłoszonych przez Anthony’ego de Mello, indyjskiego jezuitę, mistyka i psychoterapeutę, które zredagował po jego śmierci współpracownik i spadkobierca, J. Francis Stroud.', 264, '28.64', 25, 107, 6, '2023-04-30 11:54:39'),
(28, 'Dziadek do orzechów.', 'Marysia jest uczennicą szkoły baletowej. Codziennie ćwiczy i marzy, aby wystąpić w prawdziwym przedstawieniu w teatrze. Pewnego dnia w szkole są organizowane przesłuchania do „Dziadka do orzechów”, a dziewczynka dostaje rolę! Teraz czeka ją jeszcze więcej ćwiczeń i pracy, a potem premiera. Czy wszystko przebiegnie zgodnie z planem?', 72, '10.24', 4, 75, 107, '2023-04-30 14:06:58'),
(29, 'Encyklopedia uzdrawiania Edgara Cayce\'a', 'Tę książkę powinien kazdy posiadać szczególnie w obecnych czasach, gdzie strach z powodu C19 opanował świat. A w encyklopedii bardzo ważne aspekty na temat zdrowia, jego utrzymania jak i wyzdrowienia a przede wszystkim profilaktyka. W książce wykorzystano dziewięć tysięcy zarejestrowanych odczytów, aby stworzyć na ich podstawie encyklopedię uzdrawiania, zawierającą opisy niemal dwustu chorób.', 250, '39.00', 7, 108, 103, '2023-04-30 14:08:57'),
(30, 'Edison. O wielkim wynalazcy. Fakty.', 'Thomas Edison był ogromnie ciekawy świata. Od dziecka przeprowadzał wiele eksperymentów, zadawał mnóstwo pytań i szukał odpowiedzi. Książka Ewy Nowak to opowieść o jednym z najbardziej znanych i twórczych wynalazców na świecie. I prawdziwa gratka dla wszystkich małych odkrywców!', 64, '9.24', 4, 75, 107, '2023-04-30 14:10:49'),
(31, 'Nasza pani supermenka', 'Nie wszyscy uczniowie mają szczęście – niektórych uczy pani Nudzińska, najnudniejsza osoba w całej szkole. Nie zasnąć na jej lekcji to wielka sztuka. Jednak po wakacjach w klasie zjawia się nowa nauczycielka, a uczniów czeka wielka niespodzianka – a właściwie cała seria dziwacznych niespodzianek!\r\nPołykam strony to trzeci poziom serii „Czytam sobie” przeznaczony dla dzieci, które już czytają samodzielnie. Duża czcionka ułatwia czytanie, a słowa zaznaczone gwiazdką są wyjaśnione w alfabetycznym słowniczku na końcu książki. Czarno-białe ilustracje i przewaga ilościowa tekstu nad ilustracjami dają poczucie obcowania z prawdziwą książką. \r\nForma książek zgodna jest z zaleceniami metodyków.', 64, '9.52', 4, 75, 107, '2023-04-30 14:13:04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwa`
--

DROP TABLE IF EXISTS `wydawnictwa`;
CREATE TABLE `wydawnictwa` (
  `wydawnictwo_id` int(10) UNSIGNED NOT NULL,
  `wydawnictwo` varchar(100) NOT NULL DEFAULT '',
  `Siedziba` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `wydawnictwa`
--

INSERT INTO `wydawnictwa` (`wydawnictwo_id`, `wydawnictwo`, `Siedziba`) VALUES
(1, 'Olesiejuk', 'Ożarów Mazowiecki'),
(2, 'Egmont', 'Warszawa'),
(3, 'PWN', 'Warszawa'),
(4, 'Helion', 'Gliwice'),
(5, 'Wolters Kluwer', 'Gdańsk'),
(6, 'Zysk I S-Ka', 'Poznań'),
(7, 'Zielona Sowa', 'Warszawa'),
(8, 'Znak', 'Kraków'),
(9, 'Bellona', 'Warszawa'),
(10, 'Wilga', 'Warszawa'),
(11, 'Skrzat', 'Kraków'),
(12, 'Novae Res Wydawnictwo Innowacyjne', 'Gdynia'),
(13, 'Harmonia', 'Gdańsk'),
(14, 'Muza', 'Warszawa'),
(15, 'Impuls', 'Kraków'),
(16, 'Aksjomat', 'Kraków'),
(17, 'Prószyński i S-ka', 'Warszawa'),
(18, 'Difin', 'Warszawa'),
(19, 'SCHOLAR', 'Warszawa'),
(20, 'Napoleon V', 'Grójec'),
(21, 'Uniwersytet Marii Curie-Skłodowskiej', 'Lublin'),
(22, 'Adam Marszałek', 'Toruń'),
(23, 'REBIS', 'Poznań'),
(24, 'Uniwersytet Warszawski', 'Warszawa'),
(25, 'Ameet', 'Łódź'),
(26, 'CeDeWu', 'Warszawa'),
(27, 'Jedność', 'Kielce'),
(28, 'Literackie', 'Kraków'),
(29, 'Universitas', 'Kraków'),
(30, 'Uniwersytet Łódzki', 'Łódź'),
(31, 'Sonia Draga', 'Katowice'),
(32, 'PZWL', 'Warszawa'),
(33, 'WUJ', 'Kraków'),
(34, 'C.H.Beck', 'Warszawa'),
(35, 'Pascal', 'Bielsko-Biała'),
(36, 'Edgard', 'Warszawa'),
(37, 'Dragon', 'Bielsko-Biała'),
(38, 'Media Rodzina', 'Poznań'),
(39, 'Poligraf', 'Wrocław'),
(40, 'SBM', 'Warszawa'),
(41, 'Greg', 'Kraków'),
(42, 'Literat', 'Międzyrzecz'),
(43, 'Albatros', 'Warszawa'),
(44, 'Media Service Zawada', 'Warszawa'),
(45, 'WAM', 'Kraków'),
(46, 'Siedmioróg', 'Wrocław'),
(47, 'Czarne', 'Wołowiec'),
(48, 'Czarna Owca', 'Warszawa'),
(49, 'RM', 'Warszawa'),
(50, 'Nasza Księgarnia', 'Warszawa'),
(51, 'Aspra JR F.H. W.A.B. Uniwersytet Mikołaja Kopernika', 'Toruń'),
(52, 'Edipresse', 'Warszawa'),
(53, 'Fenix', 'Bełchatów'),
(54, 'LektorKlett', 'Poznań'),
(55, 'LTW', 'Dziekanów Leśny'),
(56, 'Amber', 'Warszawa'),
(57, 'ExpressMap', 'Warszawa'),
(58, 'Świat Książki', 'Warszawa'),
(59, 'Debit', 'Katowice'),
(60, 'Studio Astropsychologii', 'Białystok'),
(61, 'Agora', 'Warszawa'),
(62, 'eSPe', 'Kraków'),
(63, 'Arti', 'Warszawa'),
(64, 'Dolnośląskie', 'Wrocław'),
(65, 'Wydawnictwo M', 'Kraków'),
(66, 'Papilon', 'Poznań'),
(67, 'Jaguar', 'Warszawa'),
(68, 'Literatura', 'Łódź'),
(69, 'Urban & Partner', 'Wrocław'),
(70, 'Plan', 'Jelenia Góra'),
(71, 'Ibis', 'Żychlin'),
(72, 'Czwarta Strona', 'Poznań'),
(73, 'Freytag & Berndt', 'Łódź'),
(74, 'Psychoskok', 'Konin'),
(75, 'Diecezjalne', 'Sandomierz'),
(76, 'Filia', 'Poznań'),
(77, 'Fabryka Słów', 'Warszawa'),
(78, 'Burda Książki', 'Wrocław'),
(79, 'Liwona', 'Warszawa'),
(80, 'Colgraf/Pasja', 'Inowrocław'),
(81, 'Św. Wojciech', 'Poznań'),
(82, 'Edipresse Książki', 'Warszawa'),
(83, 'Dialog', 'Warszawa'),
(84, 'KOS', 'Katowice'),
(85, 'Uniwersytet im. Adama Mickiewicza w Poznaniu', 'Poznań'),
(86, 'Marginesy', 'Warszawa'),
(87, 'Kobiece', 'Białystok'),
(88, 'Bernardinum', 'Pelplin'),
(89, 'PWE Polskie Wydawnictwo Ekonomiczne', 'Warszawa'),
(90, 'Rozpisani.pl', 'Białystok'),
(91, 'Bezdroża', 'Gliwice'),
(92, 'Arkady', 'Warszawa'),
(93, 'AWM Morex', 'Raszyn'),
(94, 'Esprit', 'Kraków'),
(95, 'Martel', 'Kalisz'),
(96, 'Galaktyka', 'Łódź'),
(97, 'Vocatio', 'Warszawa'),
(98, 'Księży Młyn', 'Łódź'),
(99, 'Wydawnictwo Sic!', 'Warszawa'),
(100, 'Apontamentos Ancestrais LDA', 'Warszawa'),
(101, 'Fundacja Historia.pl', 'Gdańsk'),
(102, 'Wydawnictwo Iskry', 'Warszawa'),
(103, 'Dom Wydawniczy Limbus', 'Bydgoszcz'),
(104, 'Dom Wydawniczy Margrafsen', 'Bydgoszcz'),
(105, 'Pejzaż', 'Bydgoszcz'),
(106, 'Uniwersytet Kazimierza Wielkiego', 'Bydgoszcz'),
(107, 'Harper Collins Polska', 'Warszawa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

DROP TABLE IF EXISTS `wypozyczenia`;
CREATE TABLE `wypozyczenia` (
  `wypozyczenia_id` int(10) UNSIGNED NOT NULL,
  `klient_id` int(10) UNSIGNED NOT NULL,
  `ksiazka_id` int(10) UNSIGNED NOT NULL,
  `data_wypozyczenia` datetime NOT NULL,
  `data_oddania` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
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
  MODIFY `autor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `gatunek_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `klient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `ksiazka_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT dla tabeli `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  MODIFY `wydawnictwo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

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
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klienci` (`klient_id`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`ksiazka_id`) REFERENCES `ksiazki` (`ksiazka_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
