-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Apr 2024 um 14:03
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be21_cr6_bigeventsmanuelhirschbeck`
--
CREATE DATABASE IF NOT EXISTS `be21_cr6_bigeventsmanuelhirschbeck` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be21_cr6_bigeventsmanuelhirschbeck`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240420122630', '2024-04-20 14:29:03', 34);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `capacity` decimal(10,0) NOT NULL,
  `contact_email` varchar(150) NOT NULL,
  `contact_phone` decimal(15,0) NOT NULL,
  `event_address` varchar(200) NOT NULL,
  `event_url` varchar(250) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date_time`, `description`, `image`, `capacity`, `contact_email`, `contact_phone`, `event_address`, `event_url`, `type`) VALUES
(1, '36th ASICS Austrian Women\'s Run 2024', '2024-05-26 09:00:00', '35 years of the Austrian Women\'s Run - on the 5 km or 10 km course, women and girls of all ages and fitness levels will be at the start. Together they will celebrate strength, stamina and shared female solidarity on May 26, 2024 in the green Vienna Prater. Start: Prater Hauptallee, height Pierre-de-Coubertin-Platz Finish: at the Ernst Happel Stadium', 'https://events.wien.info/media/full/frauenlauf_1.jpg', 100000, 'service@frauenlauf.at', 6602224896, 'Prater, 1020 Wien', 'https://www.oesterreichischer-frauenlauf.at/de', 'Sport'),
(4, 'A1 Beach Pro Vienna 2024', '2024-07-09 10:00:00', 'From July 9 to 14, 2024, the A1 Beach Pro Vienna will welcome the world\'s best beach stars to Heumarkt in the heart of Vienna. Shortly before the Olympic Games in Paris, the best beach volleyball players will get another chance to put their skills to the test on the sand.', 'https://events.wien.info/media/full/Beahvolleyball.jpg', 48, 'beachpro@beachvolleyball.at', 650221586, 'Lothringerstraße 22 1030 Wien', 'www.beachvolleyball.at', 'Sport'),
(5, 'Film Festival at Vienna\'s Rathausplatz', '2024-06-29 23:00:00', 'Film Festival at Vienna\'s Rathausplatz', 'https://events.wien.info/media/full/Film_Festival_Rathausplatz.jpg', 50000, 'filmfestival@rathausplatz.at', 664271220, 'Rathausplatz, 1010 Wien', 'www.filmfestival-rathausplatz.at', 'Movie'),
(6, 'Vienna Shorts 2024 - International Short Film Festival', '2024-05-28 20:15:00', 'The 21st edition of Vienna Shorts, the international short film festival in Vienna, will take place in Viennese cinemas from May 28 to June 2, 2024.', 'https://events.wien.info/media/full/Vienna_Shorts_2024_1920x1080px-300dpi.jpg', 100, 'contact@viennashorts.com', 6991202256, 'Mariahilfer Str. 57, 1060 Wien', 'www.viennashorts.com', 'Movie'),
(7, 'Wiener Symphoniker', '2024-04-28 11:00:00', 'Wiener Symphoniker \nHan-Na Chang, conductor\n\nBomsori Kim, violin\n\nGioachino Rossini: Overture to \"Guillaume Tell\nMax Bruch: Concerto for Violin and Orchestra in G minor op. 26\nAntonín Dvořák: Symphony No. 9 in E minor op. 95 \"From the New World', 'https://events.wien.info/media/full/KHGrosserSaalNeu.jpg', 500, 'ticket@konzerthaus.at', 1242002, 'Grosser Saal Lothringerstraße 20 1030 Wien', 'www.konzerthaus.at', 'Music'),
(8, 'Beisl concerts of the Wiener Symphoniker', '2024-04-30 18:30:00', 'In the second edition of the Beisl Concerts, ensembles from the Wiener Symphoniker perform in pubs, restaurants and shops in the Servitenviertel and once again present themselves in a cosy atmosphere - without tails, but with lots of music! From 18:30 - admission free!', 'https://events.wien.info/media/full/Beisl-Konzerte_der_Wiener_Symphoniker_c_David_Payr.jpg', 100, 'contact@wienersymphoniker.at', 1505589, 'Porzellangasse 19, 1090 Wien', 'www.wienersymphoniker.at', 'Music');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
