-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 09 déc. 2020 à 17:21
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Zoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `Animaux`
--

CREATE TABLE `Animaux` (
  `id` int(10) UNSIGNED NOT NULL,
  `race` int(10) UNSIGNED NOT NULL,
  `date_nais` date DEFAULT NULL,
  `sexe` enum('M','F') DEFAULT NULL,
  `pseudo` varchar(40) NOT NULL,
  `commentaire` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Animaux`
--

INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(1, 1, '2016-02-23', '', 'Canigou', 'Oreille lacérée');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(2, 1, '2002-11-02', 'M', 'Pluto', 'Mordille beaucoup');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(3, 1, '1995-09-05', 'F', 'Missie', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(4, 1, '2003-02-27', 'M', 'Waouf', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(5, 1, '2016-03-17', '', 'Bill', 'Dernière portée de Barjotte');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(6, 1, '2016-03-17', '', 'Sed', 'Dernière portée de Barjotte');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(7, 1, '2003-06-01', 'F', 'Barjotte', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(8, 1, '2016-03-17', '', 'Nonoss', 'Dernière portée de Barjotte');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(9, 2, '2006-03-09', 'F', 'Miaou', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(10, 2, '2009-06-27', 'F', 'Minette', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(11, 2, '2007-12-22', 'M', 'Lourd', 'Aime les calins');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(12, 2, '2016-03-03', '', 'Petio', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(13, 2, '2000-02-23', 'M', 'Siestas', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(14, 3, '2016-01-21', '', 'Sharky', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(15, 3, '1983-05-27', 'M', 'Mordeur', 'Il peut être dangereux');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(16, 3, '2016-02-04', '', 'Bronzé', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(17, 4, '1950-04-20', 'F', 'Caline', 'Manque une patte');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(18, 4, '1996-08-21', 'F', 'Justy', 'Carapace endommagée');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(19, 4, '2010-03-08', 'F', 'Lizzie', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(20, 4, '2002-09-10', 'M', 'Lucky', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(21, 5, '2016-02-20', 'F', 'Bobonne', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(22, 5, '1953-05-19', 'M', 'Maouss', 'Défense cassée');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(23, 5, '1985-04-23', 'F', 'Matrone', 'Maman de Léa et Courreur');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(24, 5, '2016-04-20', '', 'Courreur', 'Petit mais court vite');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(25, 5, '2016-04-06', 'F', 'Léa', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(26, 6, '2011-01-11', 'F', 'Héléna', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(27, 6, '1979-04-24', 'M', 'Marco', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(28, 6, '2016-03-12', '', 'Finaud', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(29, 6, '1970-05-05', 'M', 'Molosse', 'Entaille sur le flanc droit');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(30, 7, '1997-03-14', 'M', 'Grand', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(31, 7, '2004-01-29', 'M', 'Fin', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(32, 7, '2009-06-28', 'F', 'Grande', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(33, 7, '2008-11-15', 'F', 'Élancée', 'Boite');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(34, 8, '2004-10-11', 'M', 'Pato', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(35, 8, '1988-11-08', 'F', 'Baronne', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(36, 9, '2016-02-18', 'M', 'Dixon', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(37, 9, '1999-04-05', 'M', 'Seigneur', 'Male alpha');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(38, 9, '2006-02-24', 'M', 'Vengeur', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(39, 9, '2016-04-09', '', 'Noiraud', 'Frère ou sœur de Blanco');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(40, 9, '2016-04-09', '', 'Blanco', 'Frère ou sœur de Noiraud');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(41, 9, '2012-06-07', 'F', 'Belle', 'Femelle alpha');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(42, 10, '1997-06-15', 'M', 'Chef', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(43, 10, '2015-04-21', 'M', 'Pongo', 'Fratrie avec Parker et Fraisa');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(44, 10, '2015-04-21', 'M', 'Parker', 'Fratrie avec Pongo et Fraisa');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(45, 10, '2015-04-21', 'F', 'Fraisa', 'Fratrie avec Pongo et Parker');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(46, 10, '2016-02-23', '', 'Vif', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(47, 10, '2006-07-14', 'F', 'Mam', 'NULL');
INSERT INTO `Animaux` (`id`, `race`, `date_nais`, `sexe`, `pseudo`, `commentaire`) VALUES(48, 10, '2015-09-27', 'F', 'Séverine', 'NULL');

-- --------------------------------------------------------

--
-- Structure de la table `Enclos`
--

CREATE TABLE `Enclos` (
  `zone` char(3) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `capacite` smallint(6) DEFAULT NULL,
  `taille` smallint(6) DEFAULT NULL,
  `eau` tinyint(1) DEFAULT NULL,
  `responsable` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Enclos`
--

INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('A01', 'La savane', 45, 26500, 0, 3);
INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('A02', 'Les bois', 50, 15750, 1, 6);
INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('A03', 'La foret enchantée', 30, 8600, 0, 7);
INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('B01', 'Bassin 1', 10, 450, 1, 5);
INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('B02', 'Bassin 2', 20, 780, 1, 4);
INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('C01', 'Montagne', 35, 12700, 0, 6);
INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('DIR', 'Locaux de la direction', 0, 120, 0, 1);
INSERT INTO `Enclos` (`zone`, `nom`, `capacite`, `taille`, `eau`, `responsable`) VALUES('SOI', 'Local de soin', 8, 250, 0, 9);

-- --------------------------------------------------------

--
-- Structure de la table `Loc_animaux`
--

CREATE TABLE `Loc_animaux` (
  `id` int(10) UNSIGNED NOT NULL,
  `animal` int(10) UNSIGNED NOT NULL,
  `enclos` char(3) DEFAULT NULL,
  `date_arrivee` date NOT NULL,
  `date_sortie` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Loc_animaux`
--

INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(2, 1, 'A03', '2016-02-23', '2016-04-13');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(3, 1, 'SOI', '2016-04-13', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(4, 2, 'A03', '2002-11-02', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(5, 3, 'A03', '1995-09-05', '2007-11-14');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(6, 3, 'SOI', '2007-11-14', '2007-11-24');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(7, 3, 'A03', '2007-11-24', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(8, 4, 'A03', '2003-02-27', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(9, 5, 'A03', '2016-03-17', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(10, 6, 'A03', '2016-03-17', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(11, 7, 'A03', '2003-06-01', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(12, 8, 'A03', '2016-03-17', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(13, 9, 'A02', '2006-03-09', '2010-10-10');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(14, 9, 'A03', '2010-10-10', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(15, 10, 'A02', '2009-06-27', '2010-10-10');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(16, 10, 'A03', '2010-10-10', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(17, 11, 'A02', '2007-12-22', '2010-10-10');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(18, 11, 'A03', '2010-10-10', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(19, 12, 'A03', '2016-03-03', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(20, 13, 'A02', '2000-02-23', '2010-10-10');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(21, 13, 'A03', '2010-10-10', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(22, 14, 'B01', '2016-01-21', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(23, 15, 'B02', '1983-05-27', '1990-02-23');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(24, 15, 'B01', '1990-02-23', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(25, 16, 'B01', '2016-02-04', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(26, 17, 'A02', '1980-03-13', '2000-12-08');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(27, 17, 'SOI', '2000-12-08', '2001-02-15');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(28, 17, 'A02', '2001-02-15', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(29, 18, 'A02', '1980-03-13', '2016-04-20');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(30, 18, 'SOI', '2016-04-20', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(31, 19, 'A02', '2010-03-08', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(32, 20, 'A02', '2002-09-10', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(33, 21, 'A01', '2016-02-20', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(34, 22, 'A01', '1980-03-13', '1990-07-17');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(35, 22, 'SOI', '1990-07-17', '1990-08-28');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(36, 22, 'A01', '1990-08-28', '2013-09-06');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(37, 22, 'SOI', '2013-09-06', '2013-10-01');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(38, 22, 'A01', '2013-10-01', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(39, 23, 'A01', '1985-04-23', '1989-11-25');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(40, 23, 'SOI', '1989-11-25', '1989-12-13');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(41, 23, 'A01', '1989-12-13', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(42, 24, 'A01', '2016-04-20', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(43, 25, 'A01', '2016-04-06', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(44, 26, 'B02', '2011-01-11', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(45, 27, 'B02', '1990-02-23', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(46, 28, 'B02', '2016-03-12', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(47, 29, 'B02', '1990-02-23', '2016-03-25');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(48, 29, 'SOI', '2016-03-25', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(49, 30, 'A01', '1997-03-14', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(50, 31, 'A01', '2004-01-29', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(51, 32, 'A01', '2009-06-28', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(52, 33, 'A01', '2008-11-15', '2012-08-22');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(53, 33, 'SOI', '2012-08-22', '2012-09-28');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(54, 33, 'A01', '2012-09-28', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(55, 34, 'C01', '2004-10-11', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(56, 35, 'C01', '1988-11-08', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(57, 36, 'A02', '2016-02-18', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(58, 37, 'A02', '1999-04-05', '2004-10-26');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(59, 37, 'SOI', '2004-10-26', '2004-11-05');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(60, 37, 'A02', '2004-11-05', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(61, 38, 'A02', '2006-02-24', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(62, 39, 'A02', '2016-04-09', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(63, 40, 'A02', '2016-04-09', '2016-04-17');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(64, 40, 'SOI', '2016-04-17', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(65, 41, 'A02', '2012-06-07', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(66, 42, 'B02', '1997-06-15', '2007-03-17');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(67, 42, 'SOI', '2007-03-17', '2007-03-25');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(68, 42, 'B02', '2007-03-25', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(69, 43, 'B02', '2015-04-21', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(70, 44, 'B02', '2015-04-21', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(71, 45, 'B02', '2015-04-21', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(72, 46, 'B02', '2016-02-23', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(73, 47, 'B02', '2006-07-14', '0000-00-00');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(74, 48, 'SOI', '2015-09-27', '2016-04-17');
INSERT INTO `Loc_animaux` (`id`, `animal`, `enclos`, `date_arrivee`, `date_sortie`) VALUES(75, 48, 'SOI', '2016-04-17', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `Personnels`
--

CREATE TABLE `Personnels` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `date_nais` date DEFAULT NULL,
  `sexe` enum('M','F') NOT NULL,
  `fonction` varchar(30) NOT NULL,
  `salaire` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Personnels`
--

INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(1, 'Park', 'Bob', '1966-10-21', 'M', 'Directeur', '12512.50');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(2, 'Park', 'Hélène', '1970-04-07', 'F', 'Secrétaire', '8984.23');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(3, 'Sauvadet', 'Paul', '1981-05-17', 'M', 'Gardien', '2675.50');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(4, 'Remon', 'Gérard', '1986-11-09', 'M', 'Gardien', '2356.45');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(5, 'Denton', 'Luc', '1971-11-07', 'M', 'Gardien', '3215.00');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(6, 'Denton', 'Michelle', '1974-06-23', 'F', 'Gardien', '3075.00');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(7, 'Park', 'Cindy', '1995-07-07', 'F', 'Gardien', '1970.89');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(8, 'Park', 'Marc', '1994-01-17', 'M', 'Soigneur', '7502.10');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(9, 'Moineau', 'Pauline', '1980-05-02', 'F', 'Soigneur', '10541.25');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(10, 'Gretan', 'Ulysse', '1990-03-21', 'M', 'Soigneur', '8153.12');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(11, 'Martin', 'Antoine', '1995-07-11', 'M', 'Livreur', '1950.60');
INSERT INTO `Personnels` (`id`, `nom`, `prenom`, `date_nais`, `sexe`, `fonction`, `salaire`) VALUES(12, 'Griffit', 'Mélanie', '1996-04-03', 'F', 'Livreur', '1950.60');

-- --------------------------------------------------------

--
-- Structure de la table `Races`
--

CREATE TABLE `Races` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(60) NOT NULL,
  `type_food` enum('Carnivore','Herbivore','Omnivore') NOT NULL,
  `aquatique` tinyint(1) NOT NULL,
  `duree_vie` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Races`
--

INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(1, 'Chien', 'Omnivore', 0, 14);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(2, 'Chat', 'Omnivore', 0, 15);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(3, 'Requin', 'Carnivore', 1, 55);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(4, 'Tortue', 'Herbivore', 0, 60);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(5, 'Éléphant', 'Herbivore', 0, 60);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(6, 'Dauphin', 'Carnivore', 1, 40);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(7, 'Girafe', 'Herbivore', 0, 15);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(8, 'Ours', 'Omnivore', 0, 30);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(9, 'Loup', 'Carnivore', 0, 14);
INSERT INTO `Races` (`id`, `nom`, `type_food`, `aquatique`, `duree_vie`) VALUES(10, 'Pingouin', 'Carnivore', 1, 20);

-- --------------------------------------------------------

--
-- Structure de la table `Soigneurs`
--

CREATE TABLE `Soigneurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `pers` int(10) UNSIGNED NOT NULL,
  `race` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Soigneurs`
--

INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(1, 1, 1);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(2, 1, 2);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(3, 1, 4);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(4, 3, 5);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(5, 3, 7);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(6, 4, 10);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(7, 6, 9);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(8, 6, 4);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(9, 7, 2);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(10, 8, 1);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(11, 8, 2);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(12, 8, 10);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(13, 9, 1);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(14, 9, 2);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(15, 9, 5);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(16, 9, 7);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(17, 9, 8);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(18, 10, 1);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(19, 10, 2);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(20, 10, 3);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(21, 10, 4);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(22, 10, 6);
INSERT INTO `Soigneurs` (`id`, `pers`, `race`) VALUES(23, 10, 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Animaux`
--
ALTER TABLE `Animaux`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Animaux` 
  ADD CONSTRAINT fk_race FOREIGN KEY (race) REFERENCES Races(id);
--
-- Index pour la table `Enclos`
--
ALTER TABLE `Enclos`
  ADD PRIMARY KEY (`zone`);

ALTER TABLE `Enclos` 
  ADD CONSTRAINT fk_resp FOREIGN KEY (responsable) REFERENCES Personnels(id);
--
-- Index pour la table `Loc_animaux`
--
ALTER TABLE `Loc_animaux`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Loc_animaux` 
  ADD CONSTRAINT fk_animal FOREIGN KEY (animal) REFERENCES Animaux(id);
  
ALTER TABLE `Loc_animaux` 
  ADD CONSTRAINT fk_enclos FOREIGN KEY (enclos) REFERENCES Enclos(zone);
--
-- Index pour la table `Personnels`
--
ALTER TABLE `Personnels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Races`
--
ALTER TABLE `Races`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Soigneurs`
--
ALTER TABLE `Soigneurs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Soigneurs` 
  ADD CONSTRAINT fk_pers FOREIGN KEY (pers) REFERENCES Personnels(id);

ALTER TABLE `Soigneurs` 
  ADD CONSTRAINT fk_soin_race FOREIGN KEY (race) REFERENCES Races(id);
  
--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Animaux`
--
ALTER TABLE `Animaux`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `Loc_animaux`
--
ALTER TABLE `Loc_animaux`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT pour la table `Personnels`
--
ALTER TABLE `Personnels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `Races`
--
ALTER TABLE `Races`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `Soigneurs`
--
ALTER TABLE `Soigneurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
