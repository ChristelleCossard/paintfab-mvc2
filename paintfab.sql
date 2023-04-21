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

