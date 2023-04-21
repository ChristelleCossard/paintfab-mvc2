
'id', 'category_id','name', 'description','image' 
--
-- Structure de la table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ingredients` text NOT NULL,
  `instructions` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
--
-- Déchargement des données de la table `products`
--

INSERT INTO 'products' ('id', 'category_id','name', 'description','image' ) VALUES
(1,1,'cocoactiv','description de ce produit à venir', '1-produit1.jpg'),
(2,2, 'cocomousse','description de ce produit à venir', '1-produit1.jpg'),
(3,6, 'cococolle', 'description de ce produit à venir', '1-produit1.jpg'),
(4,9, 'cocofaçade','description de ce produit à venir', NULL),
(5,8, 'cocolasure','description de ce produit à venir', NULL),
(6,8, 'cocovernis', 'description de ce produit à venir', NULL),
(7,8, 'cocopeintbois','description de ce produit à venir', NULL),
(8,4, 'cocobitume','description de ce produit à venir', NULL),
(9,4, 'cocohydrofuge', 'description de ce produit à venir', NULL),
(10,2, 'cococonverti','description de ce produit à venir', NULL),
(11,1, 'cocoplastifiant','description de ce produit à venir', NULL),
(12,7, 'cocolaquesat', 'description de ce produit à venir', NULL),
(13,7, 'cocomatmétal','description de ce produit à venir', NULL),
(14,9, 'cocomatint','description de ce produit à venir', NULL),
(15,9, 'cocosol', 'description de ce produit à venir', NULL),
(16,9, 'cocoenduit','description de ce produit à venir', NULL),

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
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


--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);


