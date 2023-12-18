

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `top14`
--

-- --------------------------------------------------------

--
-- Structure de la table `Equipe`
--

CREATE TABLE `Equipe` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Equipe`
--

INSERT INTO `Equipe` (`id`, `nom`, `ville`) VALUES
(1, 'Stade Toulousain', 'Toulouse'),
(2, 'ASM Clermont Auvergne', 'Clermont-Ferrand'),
(3, 'Racing 92', 'Paris'),
(4, 'Montpellier Hérault Rugby', 'Montpellier'),
(5, 'Stade Rochelais', 'La Rochelle'),
(6, 'Castres Olympique', 'Castres'),
(7, 'Union Bordeaux Bègles', 'Bordeaux'),
(8, 'RC Toulonnais', 'Toulon'),
(9, 'Stade Français Paris', 'Paris'),
(10, 'Section Paloise', 'Pau'),
(11, 'Brive', 'Brive-la-Gaillarde'),
(12, 'Aviron Bayonnais', 'Bayonne'),
(13, 'Lyon OU', 'Lyon'),
(14, 'Grenoble', 'Grenoble');

-- --------------------------------------------------------

--
-- Structure de la table `Joueur`
--

CREATE TABLE `Joueur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `equipe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Joueur`
--

INSERT INTO `Joueur` (`id`, `nom`, `prenom`, `age`, `position`, `equipe_id`) VALUES
(1, 'Lopez', 'Camille', 28, 'Demi d\'ouverture', 2),
(2, 'Parra', 'Morgan', 28, 'Demi de mêlée', 2),
(3, 'Abendanon', 'Nick', 30, 'Arrière', 2),
(4, 'Fofana', 'Wesley', 29, 'Centre', 2),
(5, 'Nakaitaci', 'Noa', 26, 'Ailier', 2),
(6, 'Vahaamahina', 'Sébastien', 25, 'Deuxième ligne', 2),
(7, 'Yato', 'Peceli', 24, 'Troisième ligne', 2),
(8, 'Chouly', 'Damien', 31, 'Troisième ligne', 2),
(9, 'Lamerat', 'Rémi', 26, 'Centre', 2),
(10, 'Kayser', 'Benjamin', 32, 'Talonneur', 2),
(11, 'Zirakashvili', 'Davit', 33, 'Pilier', 2),
(12, 'Spedding', 'Scott', 31, 'Arrière', 2),
(13, 'Lapandry', 'Alexandre', 28, 'Troisième ligne', 2),
(14, 'Strettle', 'David', 33, 'Ailier', 2),
(15, 'Slater', 'Flip', 32, 'Deuxième ligne', 2),
(16, 'Fickou', 'Gaël', 23, 'Centre', 1),
(17, 'Huget', 'Yoann', 30, 'Ailier', 1),
(18, 'Médard', 'Maxime', 31, 'Arrière', 1),
(19, 'Doussain', 'Jean-Marc', 25, 'Demi d\'ouverture', 1),
(20, 'Bezy', 'Sébastien', 25, 'Demi de mêlée', 1),
(21, 'Tekori', 'Joe', 34, 'Deuxième ligne', 1),
(22, 'Dusautoir', 'Thierry', 35, 'Troisième ligne', 1),
(23, 'Maestri', 'Yoann', 29, 'Deuxième ligne', 1),
(24, 'Picamoles', 'Louis', 31, 'Troisième ligne', 1),
(25, 'Marchand', 'Julien', 22, 'Talonneur', 1),
(26, 'Baille', 'Cyril', 24, 'Pilier', 1),
(27, 'Aldegheri', 'Dorian', 23, 'Pilier', 1),
(28, 'Cros', 'François', 23, 'Troisième ligne', 1),
(29, 'Gray', 'Richie', 28, 'Deuxième ligne', 1),
(30, 'Fritz', 'Florian', 33, 'Centre', 1),
(31, 'Carter', 'Dan', 35, 'Demi d\'ouverture', 3),
(32, 'Imhoff', 'Juan', 29, 'Ailier', 3),
(33, 'Dulin', 'Brice', 27, 'Arrière', 3),
(34, 'Machenaud', 'Maxime', 28, 'Demi de mêlée', 3),
(35, 'Laulala', 'Casey', 35, 'Centre', 3),
(36, 'Thomas', 'Teddy', 23, 'Ailier', 3),
(37, 'Nyanga', 'Yannick', 33, 'Troisième ligne', 3),
(38, 'Ben Arous', 'Eddy', 27, 'Pilier', 3),
(39, 'Szarzewski', 'Dimitri', 34, 'Talonneur', 3),
(40, 'Charteris', 'Luke', 33, 'Deuxième ligne', 3),
(41, 'Tameifuna', 'Ben', 26, 'Pilier', 3),
(42, 'Nakarawa', 'Leone', 29, 'Deuxième ligne', 3),
(43, 'Vakatawa', 'Virimi', 25, 'Centre', 3),
(44, 'Dambielle', 'Jérôme', 37, 'Demi d\'ouverture', 3),
(45, 'Claassen', 'Antonie', 32, 'Troisième ligne', 3),
(46, 'Nadolo', 'Nemani', 29, 'Ailier', 4),
(47, 'Cruden', 'Aaron', 28, 'Demi d\'ouverture', 4),
(48, 'Steyn', 'Francois', 30, 'Centre', 4),
(49, 'Serfontein', 'Jan', 24, 'Centre', 4),
(50, 'Paillaugue', 'Benoit', 30, 'Demi de mêlée', 4),
(51, 'Du Plessis', 'Bismarck', 33, 'Talonneur', 4),
(52, 'Ouedraogo', 'Fulgence', 30, 'Troisième ligne', 4),
(53, 'Du Plessis', 'Jannie', 34, 'Pilier', 4),
(54, 'Jacquelin', 'Henry', 22, 'Arrière', 4),
(55, 'Galletier', 'Kelian', 25, 'Troisième ligne', 4),
(56, 'Willemse', 'Paul', 24, 'Deuxième ligne', 4),
(57, 'Nariashvili', 'Mikheil', 27, 'Pilier', 4),
(58, 'Bardy', 'Alexandre', 32, 'Troisième ligne', 4),
(59, 'Fall', 'Benjamin', 28, 'Ailier', 4),
(60, 'Van Rensburg', 'Nicolaas', 27, 'Deuxième ligne', 4),
(61, 'Sinclair', 'Gregory', 28, 'Arrière', 5),
(62, 'Aguillon', 'Pierre', 29, 'Centre', 5),
(63, 'Lacroix', 'Gabriel', 23, 'Ailier', 5),
(64, 'Botia', 'Levani', 28, 'Centre', 5),
(65, 'Murimurivalu', 'Kini', 27, 'Arrière', 5),
(66, 'Eaton', 'Jason', 34, 'Deuxième ligne', 5),
(67, 'Gourdon', 'Kevin', 27, 'Troisième ligne', 5),
(68, 'Vito', 'Victor', 30, 'Troisième ligne', 5),
(69, 'Bourgarit', 'Pierre', 21, 'Talonneur', 5),
(70, 'Priso', 'Dany', 23, 'Pilier', 5),
(71, 'Atonio', 'Uini', 27, 'Pilier', 5),
(72, 'Qovu', 'Jone', 32, 'Deuxième ligne', 5),
(73, 'Retière', 'Arthur', 21, 'Demi de mêlée', 5),
(74, 'Holmes', 'Brock', 25, 'Demi d\'ouverture', 5),
(75, 'Doumayrou', 'Geoffrey', 29, 'Centre', 5),
(76, 'Dumora', 'Julien', 25, 'Arrière', 6),
(77, 'Combezou', 'Thomas', 29, 'Centre', 6),
(78, 'Ebersohn', 'Robert', 28, 'Centre', 6),
(79, 'Smith', 'David', 30, 'Ailier', 6),
(80, 'Kockott', 'Rory', 31, 'Demi de mêlée', 6),
(81, 'Urdapilleta', 'Benjamin', 31, 'Demi d\'ouverture', 6),
(82, 'Capo Ortega', 'Rodrigo', 36, 'Deuxième ligne', 6),
(83, 'Jelonch', 'Anthony', 22, 'Troisième ligne', 6),
(84, 'Vaipulu', 'Alex', 27, 'Troisième ligne', 6),
(85, 'Rallier', 'Julien', 30, 'Talonneur', 6),
(86, 'Tichit', 'Antoine', 24, 'Pilier', 6),
(87, 'Kotze', 'Daniel', 31, 'Pilier', 6),
(88, 'Mafi', 'Steve', 27, 'Deuxième ligne', 6),
(89, 'Caminati', 'Julien', 28, 'Ailier', 6),
(90, 'Grosso', 'Rémy', 28, 'Ailier', 6),
(91, 'Lonca', 'Romain', 25, 'Arrière', 7),
(92, 'Dubie', 'Jean-Baptiste', 27, 'Centre', 7),
(93, 'Radradra', 'Semi', 25, 'Ailier', 7),
(94, 'Connor', 'Blair', 29, 'Ailier', 7),
(95, 'Serin', 'Baptiste', 23, 'Demi de mêlée', 7),
(96, 'Hickey', 'Simon', 28, 'Demi d\'ouverture', 7),
(97, 'Marais', 'Jandre', 29, 'Deuxième ligne', 7),
(98, 'Goujon', 'Loann', 24, 'Troisième ligne', 7),
(99, 'Tauleigne', 'Marco', 24, 'Troisième ligne', 7),
(100, 'Pelissie', 'Adrien', 27, 'Talonneur', 7),
(101, 'Poirot', 'Jefferson', 25, 'Pilier', 7),
(102, 'Cobilas', 'Vadim', 34, 'Pilier', 7),
(103, 'Cazeaux', 'Cyril', 23, 'Deuxième ligne', 7),
(104, 'Ravai', 'Peni', 28, 'Pilier', 7),
(105, 'Fusier', 'Geoffrey', 26, 'Arrière', 7),
(106, 'Bonneval', 'Hugo', 27, 'Arrière', 8),
(107, 'Bastareaud', 'Mathieu', 29, 'Centre', 8),
(108, 'Nonu', 'Ma\'a', 35, 'Centre', 8),
(109, 'Tuisova', 'Josua', 23, 'Ailier', 8),
(110, 'Escande', 'Eric', 25, 'Demi de mêlée', 8),
(111, 'Belleau', 'Anthony', 21, 'Demi d\'ouverture', 8),
(112, 'Kruger', 'Juandre', 32, 'Deuxième ligne', 8),
(113, 'Vermeulen', 'Duane', 31, 'Troisième ligne', 8),
(114, 'Fernandez Lobbe', 'Juan Martin', 36, 'Troisième ligne', 8),
(115, 'Guirado', 'Guilhem', 31, 'Talonneur', 8),
(116, 'Chiocci', 'Xavier', 27, 'Pilier', 8),
(117, 'Van der Merwe', 'Marcel', 27, 'Deuxième ligne', 8),
(118, 'Gorgodze', 'Mamuka', 33, 'Deuxième ligne', 8),
(119, 'Ashton', 'Chris', 30, 'Ailier', 8),
(120, 'Trinh-Duc', 'François', 31, 'Demi d\'ouverture', 8),
(121, 'Bonneval', 'Hugo', 27, 'Arrière', 9),
(122, 'Danty', 'Jonathan', 25, 'Centre', 9),
(123, 'Fickou', 'Gael', 23, 'Centre', 9),
(124, 'Vuidarvuwalu', 'Waisea', 27, 'Ailier', 9),
(125, 'Coville', 'Arthur', 24, 'Demi de mêlée', 9),
(126, 'Plisson', 'Jules', 25, 'Demi d\'ouverture', 9),
(127, 'Gabrillagues', 'Paul', 24, 'Deuxième ligne', 9),
(128, 'Ross', 'Hugh', 28, 'Troisième ligne', 9),
(129, 'Macalou', 'Sekou', 23, 'Troisième ligne', 9),
(130, 'Sempéré', 'Laurent', 33, 'Talonneur', 9),
(131, 'Slimani', 'Rabah', 28, 'Pilier', 9),
(132, 'Pyle', 'Hugh', 29, 'Deuxième ligne', 9),
(133, 'Nayacalevu', 'Waisea', 27, 'Centre', 9),
(134, 'Hamdaoui', 'Kylan', 22, 'Arrière', 9),
(135, 'Steyn', 'Morné', 33, 'Demi d\'ouverture', 9),
(136, 'Malié', 'Charly', 26, 'Arrière', 10),
(137, 'Votu', 'Watisoni', 32, 'Ailier', 10),
(138, 'Smith', 'Conrad', 36, 'Centre', 10),
(139, 'Fumat', 'Florian', 30, 'Centre', 10),
(140, 'Daubagna', 'Thibault', 25, 'Demi de mêlée', 10),
(141, 'Slade', 'Colin', 26, 'Demi d\'ouverture', 10),
(142, 'Ramsay', 'Daniel', 33, 'Deuxième ligne', 10),
(143, 'Dougall', 'Sean', 28, 'Troisième ligne', 10),
(144, 'Armitage', 'Steffon', 32, 'Troisième ligne', 10),
(145, 'Barka', 'Quentin', 23, 'Talonneur', 10),
(146, 'Adriaanse', 'Lourens', 29, 'Pilier', 10),
(147, 'Metz', 'Fabrice', 28, 'Deuxième ligne', 10),
(148, 'Halai', 'Frank', 29, 'Ailier', 10),
(149, 'Taylor', 'Tom', 28, 'Centre', 10),
(150, 'Mowen', 'Ben', 32, 'Troisième ligne', 10),
(151, 'Lapeyre', 'Benjamin', 31, 'Arrière', 11),
(152, 'Namy', 'Arnaud', 27, 'Centre', 11),
(153, 'Mignardi', 'Thomas', 30, 'Centre', 11),
(154, 'Ngwenya', 'Taku', 32, 'Ailier', 11),
(155, 'Marques', 'Samuel', 26, 'Demi de mêlée', 11),
(156, 'Germain', 'Gaëtan', 28, 'Demi d\'ouverture', 11),
(157, 'Uys', 'Johann', 29, 'Deuxième ligne', 11),
(158, 'Hirèche', 'Saïd', 32, 'Troisième ligne', 11),
(159, 'Sanconnie', 'Fabien', 23, 'Troisième ligne', 11),
(160, 'Acquier', 'Guillaume', 26, 'Talonneur', 11),
(161, 'Jourdain', 'Kevin', 32, 'Pilier', 11),
(162, 'Snyman', 'Peet', 30, 'Deuxième ligne', 11),
(163, 'Hauman', 'Romain', 26, 'Ailier', 11),
(164, 'Laranjeira', 'Thomas', 22, 'Arrière', 11),
(165, 'Le Devedec', 'Julien', 29, 'Deuxième ligne', 11),
(166, 'Bustos Moyano', 'Martin', 32, 'Arrière', 12),
(167, 'Tisseron', 'Pierre', 22, 'Centre', 12),
(168, 'Laveau', 'Kylan', 21, 'Ailier', 12),
(169, 'O’Connor', 'Adam', 27, 'Ailier', 12),
(170, 'Du Plessis', 'Carel', 24, 'Demi de mêlée', 12),
(171, 'Barthélémy', 'Thibault', 22, 'Demi d\'ouverture', 12),
(172, 'Oulai', 'Dion', 23, 'Deuxième ligne', 12),
(173, 'Battut', 'Jean', 32, 'Troisième ligne', 12),
(174, 'Monribot', 'Jean', 31, 'Troisième ligne', 12),
(175, 'Van Jaarsveld', 'Torsten', 31, 'Talonneur', 12),
(176, 'Iguiniz', 'Aretz', 34, 'Pilier', 12),
(177, 'Taofifénua', 'Romain', 27, 'Deuxième ligne', 12),
(178, 'Héguy', 'Gregory', 30, 'Talonneur', 12),
(179, 'Whitford', 'Matt', 25, 'Arrière', 12),
(180, 'Taele', 'Pelo', 26, 'Deuxième ligne', 12),
(181, 'Arnold', 'Toby', 28, 'Arrière', 13),
(182, 'Regard', 'Théo', 25, 'Centre', 13),
(183, 'Wulf', 'Rudi', 34, 'Ailier', 13),
(184, 'Palisson', 'Alexis', 30, 'Ailier', 13),
(185, 'Couilloud', 'Baptiste', 21, 'Demi de mêlée', 13),
(186, 'Harris', 'Mike', 29, 'Demi d\'ouverture', 13),
(187, 'Paulo', 'Félix', 30, 'Deuxième ligne', 13),
(188, 'Goujon', 'Loann', 28, 'Troisième ligne', 13),
(189, 'Puricelli', 'Julien', 35, 'Troisième ligne', 13),
(190, 'Ivaldi', 'Mickaël', 27, 'Talonneur', 13),
(191, 'Clément', 'Raphael', 31, 'Pilier', 13),
(192, 'Van der Merwe', 'Franco', 34, 'Deuxième ligne', 13),
(193, 'Mignot', 'Kévin', 30, 'Centre', 13),
(194, 'Paea', 'Napolioni', 30, 'Centre', 13),
(195, 'Fearns', 'Carl', 28, 'Troisième ligne', 13),
(196, 'Bosch', 'Gio', 23, 'Arrière', 14),
(197, 'Nordi', 'Mamadou', 27, 'Centre', 14),
(198, 'Estebanez', 'Fabrice', 36, 'Centre', 14),
(199, 'Dupont', 'Xavier', 30, 'Ailier', 14),
(200, 'Saseras', 'Lilian', 23, 'Demi de mêlée', 14),
(201, 'Selponi', 'Adrien', 24, 'Demi d\'ouverture', 14),
(202, 'Muldowney', 'Aly', 34, 'Deuxième ligne', 14),
(203, 'Setephano', 'Steven', 32, 'Troisième ligne', 14),
(204, 'Ancely', 'Loïc', 25, 'Troisième ligne', 14),
(205, 'Casey', 'Étienne', 25, 'Talonneur', 14),
(206, 'Van Rensburg', 'Jannie', 31, 'Pilier', 14),
(207, 'Uys', 'Rynhardt', 27, 'Deuxième ligne', 14),
(208, 'Rhule', 'Raymond', 24, 'Ailier', 14),
(209, 'Cordin', 'Gervais', 22, 'Arrière', 14),
(210, 'Ostrikov', 'Andrei', 30, 'Deuxième ligne', 14);

-- --------------------------------------------------------

--
-- Structure de la table `MatchRugby`
--

CREATE TABLE `MatchRugby` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `equipe_domicile_id` int(11) NOT NULL,
  `equipe_exterieur_id` int(11) NOT NULL,
  `score_domicile` int(11) DEFAULT NULL,
  `score_exterieur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `MatchRugby`
--

INSERT INTO `MatchRugby` (`id`, `date`, `equipe_domicile_id`, `equipe_exterieur_id`, `score_domicile`, `score_exterieur`) VALUES
(1, '2016-08-20', 1, 2, 20, 25),
(2, '2016-08-20', 3, 4, 15, 18),
(3, '2016-08-20', 5, 6, 30, 12),
(4, '2016-08-20', 7, 8, 21, 29),
(5, '2016-08-20', 9, 10, 33, 17),
(6, '2016-08-20', 11, 12, 22, 24),
(7, '2016-08-20', 13, 14, 28, 16),
(8, '2016-08-27', 2, 1, 27, 20),
(9, '2016-08-27', 4, 3, 19, 13),
(10, '2016-08-27', 6, 5, 22, 30),
(11, '2016-08-27', 8, 7, 35, 18),
(12, '2016-08-27', 10, 9, 23, 30),
(13, '2016-08-27', 12, 11, 26, 21),
(14, '2016-08-27', 14, 13, 10, 32);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Equipe`
--
ALTER TABLE `Equipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Joueur`
--
ALTER TABLE `Joueur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipe_id` (`equipe_id`);

--
-- Index pour la table `MatchRugby`
--
ALTER TABLE `MatchRugby`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipe_domicile_id` (`equipe_domicile_id`),
  ADD KEY `equipe_exterieur_id` (`equipe_exterieur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Equipe`
--
ALTER TABLE `Equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `Joueur`
--
ALTER TABLE `Joueur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT pour la table `MatchRugby`
--
ALTER TABLE `MatchRugby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Joueur`
--
ALTER TABLE `Joueur`
  ADD CONSTRAINT `Joueur_ibfk_1` FOREIGN KEY (`equipe_id`) REFERENCES `Equipe` (`id`);

--
-- Contraintes pour la table `MatchRugby`
--
ALTER TABLE `MatchRugby`
  ADD CONSTRAINT `MatchRugby_ibfk_1` FOREIGN KEY (`equipe_domicile_id`) REFERENCES `Equipe` (`id`),
  ADD CONSTRAINT `MatchRugby_ibfk_2` FOREIGN KEY (`equipe_exterieur_id`) REFERENCES `Equipe` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
