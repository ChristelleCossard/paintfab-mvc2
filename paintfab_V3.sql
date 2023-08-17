-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : lun. 24 avr. 2023 à 18:50
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `paintfab`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `Famille` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `Famille`) VALUES
(1, 'adjuvant beton'),
(2, 'preparation des surfaces'),
(3, 'nettoyage'),
(4, 'etancheite'),
(5, 'revetement speciaux'),
(6, 'colle'),
(7, 'produits pour metaux'),
(8, 'produits bois'),
(9, 'produits maconnerie');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `image`) VALUES
(1, 1, 'cocoactiv', 'description a venir', '1-produit1.jpg'),
(2, 2, 'cocomousse', 'description de ce produit à venir', '1-produit1.jpg'),
(3, 6, 'cococolle', 'description de ce produit à venir', '1-produit1.jpg'),
(4, 9, 'cocofaçade', 'description de ce produit à venir', NULL),
(5, 8, 'cocolasure', 'description de ce produit à venir', NULL),
(6, 8, 'cocovernis', 'description de ce produit à venir', NULL),
(7, 8, 'cocopeintbois', 'description de ce produit à venir', NULL),
(8, 4, 'cocobitume', 'description de ce produit à venir', NULL),
(9, 4, 'cocohydrofuge', 'description de ce produit à venir', NULL),
(10, 2, 'cococonverti', 'description de ce produit à venir', NULL),
(11, 1, 'cocoplastifiant', 'description de ce produit à venir', NULL),
(12, 7, 'cocolaquesat', 'description de ce produit à venir', NULL),
(13, 7, 'cocomatmétal', 'description de ce produit à venir', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `role`) VALUES
(7, 'coco@test.com', '$2y$10$0H5ANXRIxV4n.p/zDB1QJeTtflFMbSrCyG.EMrYUCc3j6RY356uKe', 'christelle', 'coco', 'client'),
(8, 'admin@coco.com', '$2y$10$RLOOYkojLTZNEGYluSZAxeaTgEylfL0JsjLUMcFA20TxJMHIXVyBy', 'admin', 'admin', 'admin'),
(9, 'coco@coco.com', '$2y$10$sXIkYsp9W3Idbt4seZUE3eZeLjMvF/3xg7ypP/APj/7ho5a76jQfS', 'coco', 'coconame', 'client'),
(10, 'coco3@coco.com', '$2y$10$jDlKXMKZAanob.3/J0KiJOZs4HLrK92joiFTdW6ZAN7xfDaMqhlB6', 'coco3', 'coco3', 'client'),
(11, 'coco4@coco.com', '$2y$10$GG801c1nGMAMS1Q1ULw7KeEBJGr7AshS26kkzNLVGuuS5u8bCSJ0u', 'coco4', 'coco4', 'client');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;