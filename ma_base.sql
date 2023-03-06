-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 02 déc. 2022 à 09:19
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ma_base`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

DROP TABLE IF EXISTS `bien`;
CREATE TABLE IF NOT EXISTS `bien` (
  `voie` varchar(50) NOT NULL,
  `total_piece` int(11) NOT NULL,
  `surface_local` int(11) NOT NULL,
  `id_bien` float NOT NULL,
  `surface_carrez` double NOT NULL,
  `type_local` varchar(50) NOT NULL,
  `id_codedep_codecommune` varchar(50) NOT NULL,
  `no_voie` int(11) NOT NULL,
  `type_voie` varchar(50) NOT NULL,
  PRIMARY KEY (`id_bien`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

DROP TABLE IF EXISTS `commune`;
CREATE TABLE IF NOT EXISTS `commune` (
  `id_codedep_codecommune` float NOT NULL,
  `code_departement` int(11) NOT NULL,
  `code_commune` int(11) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `dep_nom` varchar(50) NOT NULL,
  `nom_commune` varchar(50) NOT NULL,
  PRIMARY KEY (`id_codedep_codecommune`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `population`
--

DROP TABLE IF EXISTS `population`;
CREATE TABLE IF NOT EXISTS `population` (
  `od_pop` float NOT NULL,
  `PTOT` int(11) NOT NULL,
  `PCAP` int(11) NOT NULL,
  `PMUN` int(11) NOT NULL,
  PRIMARY KEY (`od_pop`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `id_reg` float NOT NULL,
  `reg_nom` varchar(50) NOT NULL,
  `reg_code` int(11) NOT NULL,
  `reg_code_old` int(11) NOT NULL,
  `reg_old_nom` varchar(50) NOT NULL,
  `reg_grp` varchar(50) NOT NULL,
  `reg_id_old` int(11) NOT NULL,
  PRIMARY KEY (`id_reg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `id_vente` int(11) NOT NULL,
  `id_bien` int(11) NOT NULL,
  `date_vente` date NOT NULL,
  `valeur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
