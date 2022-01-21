-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 21 jan. 2022 à 13:30
-- Version du serveur :  5.7.36-cll-lve
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bcateepr_doli549`
--

-- --------------------------------------------------------

--
-- Structure de la table `llx_c_regions`
--

CREATE TABLE `llx_c_regions` (
  `rowid` int(11) NOT NULL,
  `code_region` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `llx_c_regions`
--

INSERT INTO `llx_c_regions` (`rowid`, `code_region`, `fk_pays`, `cheflieu`, `tncc`, `nom`, `active`) VALUES
(3, 1, 13, NULL, NULL, 'Adrar', 1),
(4, 2, 13, NULL, NULL, 'Chlef', 1),
(5, 3, 13, NULL, NULL, 'Laghouat', 1),
(6, 4, 13, NULL, NULL, 'Oum El Bouaghi', 1),
(7, 5, 13, NULL, NULL, 'Batna', 1),
(9, 7, 13, NULL, NULL, 'Biskra', 1),
(11, 9, 13, NULL, NULL, 'Blida', 1),
(12, 10, 13, NULL, NULL, 'Bouira', 1),
(13, 11, 13, NULL, NULL, 'Tamanrasset', 1),
(15, 13, 13, NULL, NULL, 'Tlemcen', 1),
(16, 14, 13, NULL, NULL, 'Tiaret', 1),
(17, 15, 13, NULL, NULL, 'Tizi Ouzou', 1),
(18, 16, 13, NULL, NULL, 'Alger', 1),
(19, 17, 13, NULL, NULL, 'Djelfa', 1),
(20, 18, 13, NULL, NULL, 'Jijel', 1),
(23, 21, 13, NULL, NULL, 'Skikda', 1),
(25, 23, 13, NULL, NULL, 'Annaba', 1),
(26, 24, 13, NULL, NULL, 'Guelma', 1),
(27, 25, 13, NULL, NULL, 'Constantine', 1),
(29, 27, 13, NULL, NULL, 'Mostaganem', 1),
(30, 28, 13, NULL, NULL, 'M\'Sila', 1),
(31, 29, 13, NULL, NULL, 'Mascara', 1),
(32, 30, 13, NULL, NULL, 'Ouargla', 1),
(33, 31, 13, NULL, NULL, 'Oran', 1),
(34, 32, 13, NULL, NULL, 'El Bayadh', 1),
(35, 33, 13, NULL, NULL, 'Illizi', 1),
(36, 34, 13, NULL, NULL, 'Bordj Bou Arreridj', 1),
(38, 36, 13, NULL, NULL, 'El Tarf', 1),
(39, 37, 13, NULL, NULL, 'Tindouf', 1),
(40, 38, 13, NULL, NULL, 'Tissemsilt', 1),
(41, 39, 13, NULL, NULL, 'El Oued', 1),
(42, 40, 13, NULL, NULL, 'Khenchela', 1),
(43, 41, 13, NULL, NULL, 'Souk Ahras', 1),
(44, 42, 13, NULL, NULL, 'Tipaza', 1),
(45, 43, 13, NULL, NULL, 'Mila', 1),
(50, 48, 13, NULL, NULL, 'Relizane', 1),
(51, 49, 13, NULL, NULL, 'Timimoun', 1),
(52, 50, 13, NULL, NULL, 'Bordj Badji Mokhtar', 1),
(53, 51, 13, NULL, NULL, 'Ouled Djellal', 1),
(55, 53, 13, NULL, NULL, 'In Salah', 1),
(56, 54, 13, NULL, NULL, 'In Guezzam', 1),
(57, 55, 13, NULL, NULL, 'Touggourt', 1),
(58, 56, 13, NULL, NULL, 'Djanet', 1),
(59, 57, 13, NULL, NULL, 'El Meghaier', 1),
(60, 58, 13, NULL, NULL, 'El Menia', 1),
(62, 6, 13, NULL, NULL, 'Bejaia', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_code_region` (`code_region`),
  ADD KEY `idx_c_regions_fk_pays` (`fk_pays`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  ADD CONSTRAINT `fk_c_regions_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `llx_c_country` (`rowid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
