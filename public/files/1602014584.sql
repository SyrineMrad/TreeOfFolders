-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 10 juil. 2019 à 16:20
-- Version du serveur :  8.0.15
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `MSSports`
--

-- --------------------------------------------------------

--
-- Structure de la table `creneaux_network`
--

CREATE TABLE `creneaux_network` (
  `id` bigint(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `network_id` int(255) DEFAULT NULL,
  `heure` int(2) DEFAULT NULL,
  `minute` int(2) DEFAULT NULL,
  `default` int(1) NOT NULL DEFAULT '0',
  `complex_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `creneaux_network`
--

INSERT INTO `creneaux_network` (`id`, `user_id`, `network_id`, `heure`, `minute`, `default`, `complex_id`) VALUES
(1, 7, NULL, 0, 30, 1, NULL),
(2, 7, NULL, 0, 45, 1, NULL),
(3, 7, NULL, 1, 0, 1, NULL),
(4, 7, NULL, 1, 30, 1, NULL),
(5, 7, NULL, 2, 0, 1, NULL),
(6, 7, NULL, 2, 30, 1, NULL),
(7, 7, NULL, 3, 0, 1, NULL),
(8, 7, NULL, 4, 0, 1, NULL),
(9, 7, NULL, 4, 30, 1, NULL),
(11, 7, NULL, 0, 40, 0, 10),
(12, 7, NULL, 0, 10, 1, 10),
(13, 7, NULL, 0, 20, 1, NULL),
(14, 25371, 5, 0, 40, 1, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `creneaux_network`
--
ALTER TABLE `creneaux_network`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `creneaux_network`
--
ALTER TABLE `creneaux_network`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
