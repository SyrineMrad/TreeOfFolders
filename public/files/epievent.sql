-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2020 at 11:23 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epievent`
--

-- --------------------------------------------------------

--
-- Table structure for table `epievent`
--

DROP TABLE IF EXISTS `epievent`;
CREATE TABLE IF NOT EXISTS `epievent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C33602B53DA5256D` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `epievent`
--

INSERT INTO `epievent` (`id`, `nom`, `lieu`, `description`, `date`, `image_id`) VALUES
(13, 'Nuit d\'Info', 'Epi', 'Nuit d\'Info', '2019-12-05', 2),
(16, 'Séminaire Big Data', 'Epi sousse', 'Séminaire Big Data', '2019-12-12', 5);

-- --------------------------------------------------------

--
-- Table structure for table `epi_client`
--

DROP TABLE IF EXISTS `epi_client`;
CREATE TABLE IF NOT EXISTS `epi_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numtel` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4858E3AFFD02F13` (`evenement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `epi_client`
--

INSERT INTO `epi_client` (`id`, `nom`, `prenom`, `numtel`, `evenement_id`) VALUES
(2, 'farjallah', 'karim', 55345617, 13),
(3, 'goddi', 'firas', 55000000, 13),
(6, 'hammouda', 'jawher', 55213654, 16),
(8, 'test', 'test', 555555, 13),
(9, 'gfgffgfg', 'fgfgf', 4554545, 16),
(10, 'frigui', 'amira', 96403104, 16);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `url`, `alt`) VALUES
(2, 'c', 'c'),
(5, 'c', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191207143921', '2019-12-07 14:39:43'),
('20191208210725', '2019-12-08 21:07:48'),
('20191208211025', '2019-12-08 21:10:37'),
('20191208221224', '2019-12-08 22:12:36'),
('20191208221951', '2019-12-08 22:20:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `epievent`
--
ALTER TABLE `epievent`
  ADD CONSTRAINT `FK_C33602B53DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Constraints for table `epi_client`
--
ALTER TABLE `epi_client`
  ADD CONSTRAINT `FK_4858E3AFFD02F13` FOREIGN KEY (`evenement_id`) REFERENCES `epievent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
