-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Hôte : 
-- Généré le : mar. 11 avr. 2023 à 10:14
-- Version du serveur : 5.7.38-log
-- Version de PHP : 7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `
--

-- --------------------------------------------------------

--
-- Structure de la table `etre_composee`
--

CREATE TABLE `etre_composee` (
  `op` int(11) NOT NULL,
  `code_mp` int(11) NOT NULL,
  `pourcentage` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etre_composee`
--

INSERT INTO `etre_composee` (`op`, `code_mp`, `pourcentage`) VALUES
(1001, 19, '88.00'),
(1001, 50, '12.00'),
(1002, 19, '50.00'),
(1002, 48, '50.00'),
(1003, 6, '0.50'),
(1003, 19, '52.20'),
(1003, 35, '3.80'),
(1003, 56, '3.50'),
(1004, 4, '0.30'),
(1004, 6, '0.30'),
(1004, 19, '9.40'),
(1004, 63, '90.00'),
(1005, 7, '0.20'),
(1005, 9, '4.50'),
(1005, 25, '39.00'),
(1005, 30, '0.05'),
(1005, 33, '17.65'),
(1005, 34, '4.00'),
(1005, 44, '1.73'),
(1005, 45, '6.37'),
(1005, 57, '26.50'),
(1006, 3, '38.00'),
(1006, 18, '0.50'),
(1006, 19, '4.70'),
(1006, 35, '0.80'),
(1006, 49, '56.00'),
(1007, 18, '1.50'),
(1007, 19, '31.50'),
(1007, 22, '67.00'),
(1008, 1, '0.08'),
(1008, 6, '0.10'),
(1008, 7, '1.00'),
(1008, 15, '1.00'),
(1008, 27, '11.36'),
(1008, 31, '0.35'),
(1008, 33, '7.59'),
(1008, 52, '0.40'),
(1008, 58, '52.25'),
(1008, 60, '1.94'),
(1009, 3, '35.30'),
(1009, 18, '0.50'),
(1009, 19, '11.00'),
(1009, 35, '0.20'),
(1009, 49, '53.00'),
(1010, 2, '10.00'),
(1010, 19, '90.00'),
(1011, 10, '6.00'),
(1011, 14, '56.00'),
(1011, 19, '29.00'),
(1011, 21, '9.00');

-- --------------------------------------------------------

--
-- Structure de la table `fabrication`
--

CREATE TABLE `fabrication` (
  `op` int(11) NOT NULL,
  `Teinte` varchar(50) DEFAULT NULL,
  `Aspect` varchar(50) DEFAULT NULL,
  `Date_fab` date DEFAULT NULL,
  `Quantite_fab` decimal(12,2) DEFAULT NULL,
  `Code_pf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fabrication`
--

INSERT INTO `fabrication` (`op`, `Teinte`, `Aspect`, `Date_fab`, `Quantite_fab`, `Code_pf`) VALUES
(1001, 'incolore', 'fluide', '2004-03-15', '25.00', 1),
(1002, 'incolore', 'fluide', '2004-03-15', '25.00', 2),
(1003, 'incolore', 'satiné', '2004-03-15', '50.00', 5),
(1004, 'incolore', 'brillant', '2004-03-16', '100.00', 6),
(1005, 'champagne', 'mat', '2004-03-17', '200.00', 4),
(1006, 'incolore', 'fluide', '2004-04-06', '30.00', 3),
(1007, 'laiteux', 'fluide', '2004-04-08', '10.00', 6),
(1008, 'gris clair', 'satiné', '2004-04-15', '400.00', 12),
(1009, 'laiteux', 'fluide', '2004-04-19', '100.00', 11),
(1010, 'incolore', 'fluide', '2004-04-22', '100.00', 9),
(1011, 'noir', 'mat', '2004-05-03', '100.00', 8),
(1012, 'gris-bleu', 'satiné', '2004-05-11', '200.00', 15),
(1013, 'blanc', 'mat', '2004-05-25', '200.00', 16),
(1014, 'blanc', 'mat', '2004-05-27', '300.00', 14),
(1015, 'gris', 'mat', '2004-06-01', '200.00', 13),
(1016, 'blanc', 'satiné', '2004-06-07', '100.00', 7),
(1017, 'incolore', 'satiné', '2004-06-08', '100.00', 5),
(1018, 'incolore', 'brillant', '2004-06-08', '100.00', 6),
(1019, 'blanc', 'satiné', '2004-06-14', '200.00', 7),
(1020, 'champagne', 'mat', '2004-06-17', '300.00', 4),
(1021, 'incolore', 'fluide', '2004-06-21', '50.00', 2),
(1022, 'chène moyen', 'satiné', '2004-06-21', '50.00', 5),
(1023, 'incolore', 'fluide', '2004-06-22', '25.00', 1),
(1024, 'laiteux', 'fluide', '2004-06-22', '25.00', 11),
(1025, 'blanc', 'mat', '2004-06-28', '300.00', 4),
(1026, 'incolore', 'fluide', '2004-06-29', '100.00', 9),
(1027, 'blanc', 'mat', '2004-07-01', '200.00', 14),
(1028, 'gris', 'mat', '2004-07-05', '200.00', 13),
(1029, 'blanc', 'satiné', '2004-07-06', '300.00', 12),
(1030, 'noir', 'satiné', '2004-07-06', '50.00', 12);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `Code_fo` int(11) NOT NULL,
  `fonction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`Code_fo`, `fonction`) VALUES
(1, 'additif'),
(2, 'antifeu'),
(3, 'charge'),
(4, 'decapant'),
(5, 'epaississant'),
(6, 'fongicide'),
(7, 'impermeabilisant'),
(8, 'pigment-colorant'),
(9, 'resine'),
(10, 'siccatif'),
(11, 'solvant');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `Code_f` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Adresse_rue` varchar(255) DEFAULT NULL,
  `Code_postal` char(5) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`Code_f`, `Nom`, `Adresse_rue`, `Code_postal`, `Ville`) VALUES
(1, 'Adriss', 'NULL', 'NULL', 'NULL'),
(2, 'Bourrigeaud', 'NULL', 'NULL', 'NULL'),
(3, 'Brenntag Ardennes', 'NULL', 'NULL', 'NULL'),
(4, 'Brenntag Spécialités', 'NULL', 'NULL', 'NULL'),
(5, 'Buckmann', 'NULL', 'NULL', 'NULL'),
(6, 'Byk Chemie', 'NULL', 'NULL', 'NULL'),
(7, 'Chimiray', 'NULL', 'NULL', 'NULL'),
(8, 'Lambert Rivière', 'NULL', 'NULL', 'NULL'),
(9, 'Phagogène', 'NULL', 'NULL', 'NULL'),
(10, 'Univar', 'NULL', 'NULL', 'NULL'),
(11, 'SPCI', 'NULL', 'NULL', 'NULL'),
(12, 'Tego', 'NULL', 'NULL', 'NULL'),
(13, 'Thor', 'NULL', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Structure de la table `matiere_premiere`
--

CREATE TABLE `matiere_premiere` (
  `Code_mp` int(11) NOT NULL,
  `Nom_commercial` varchar(255) DEFAULT NULL,
  `Nature_chimique` varchar(255) DEFAULT NULL,
  `Tarif_au_kilo` decimal(12,2) DEFAULT NULL,
  `Date_tarif` date DEFAULT NULL,
  `stock` decimal(12,2) DEFAULT NULL,
  `Date_stock` date DEFAULT NULL,
  `Securite` varchar(50) DEFAULT NULL,
  `Code_fo` int(11) NOT NULL,
  `Code_f` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matiere_premiere`
--

INSERT INTO `matiere_premiere` (`Code_mp`, `Nom_commercial`, `Nature_chimique`, `Tarif_au_kilo`, `Date_tarif`, `stock`, `Date_stock`, `Securite`, `Code_fo`, `Code_f`) VALUES
(1, 'Alcool isopropylique', 'alcool isopropylique ', '3.00', '2004-06-01', '50.00', '2004-06-01', 'NULL', 11, 1),
(2, 'Baysilone SK', 'méthylsiliconate de potassium', '3.00', '2004-06-01', '50.00', '2004-06-01', 'NULL', 7, 1),
(3, 'Base E 8%', 'base neutralisante', '3.00', '2004-06-01', '50.00', '2004-06-01', 'NULL', 1, 1),
(4, 'Acticide FI', 'NULL', '3.00', '2004-06-01', '50.00', '2004-06-01', 'NULL', 6, 1),
(5, 'Butrol 9102M', 'métaborate de calcium', '3.00', '2004-06-01', '50.00', '2004-06-01', 'NULL', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit_fini`
--

CREATE TABLE `produit_fini` (
  `code_pf` int(11) NOT NULL,
  `produit_fini` varchar(50) DEFAULT NULL,
  `code_t` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit_fini`
--

INSERT INTO `produit_fini` (`code_pf`, `produit_fini`, `code_t`) VALUES
(1, 'cocoactiv', 1),
(2, 'cocomousse', 2),
(3, 'cococolle', 6),
(4, 'cocofaçade', 9),
(5, 'cocolasure', 8),
(6, 'cocovernis', 8),
(7, 'cocopeintbois', 8),
(8, 'cocobitume', 4),
(9, 'cocohydrofuge', 4),
(10, 'cococonverti', 2),
(11, 'cocoplastifiant', 1),
(12, 'cocolaquesat', 7),
(13, 'cocomatmétal', 7),
(14, 'cocomatint', 9),
(15, 'cocosol', 9),
(16, 'cocoenduit', 9);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `Code_t` int(11) NOT NULL,
  `Famille` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`Code_t`, `Famille`) VALUES
(1, 'adjuvant beton'),
(2, 'preparation des surfaces'),
(3, 'nettoyage'),
(4, 'etancheite'),
(5, 'revetement speciaux'),
(6, 'colle'),
(7, 'produits pour metaux'),
(8, 'produits bois'),
(9, 'produits maconnerie');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etre_composee`
--
ALTER TABLE `etre_composee`
  ADD PRIMARY KEY (`op`,`code_mp`);

--
-- Index pour la table `fabrication`
--
ALTER TABLE `fabrication`
  ADD PRIMARY KEY (`op`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`Code_fo`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`Code_f`);

--
-- Index pour la table `matiere_premiere`
--
ALTER TABLE `matiere_premiere`
  ADD PRIMARY KEY (`Code_mp`);

--
-- Index pour la table `produit_fini`
--
ALTER TABLE `produit_fini`
  ADD PRIMARY KEY (`code_pf`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Code_t`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
