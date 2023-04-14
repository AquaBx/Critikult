-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 14 avr. 2023 à 10:53
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `critikult`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int UNSIGNED NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `contenu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `note` tinyint NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_redacteur` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `contenu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `note` tinyint UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_jeu` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int UNSIGNED NOT NULL,
  `nom` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Structure de la table `est_categorise`
--

CREATE TABLE `est_categorise` (
  `id_categorie` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Structure de la table `est_supporte`
--

CREATE TABLE `est_supporte` (
  `id_support` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id_image` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL,
  `chemin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `date_sortie` date NOT NULL,
  `synopsis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `couverture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id`, `nom`, `prix`, `date_sortie`, `synopsis`, `couverture`) VALUES
(1, 'Grand Theft Auto V', '39.99', '2013-09-17', 'GTA V est un jeu d’action-aventure qui se déroule dans la ville fictive de Los Santos et ses environs, inspirés de Los Angeles et de la Californie du Sud. Le jeu suit les péripéties de trois criminels très différents : Michael, un ancien braqueur qui vit sous protection des témoins ; Trevor, un psychopathe instable et violent ; et Franklin, un jeune arnaqueur qui cherche à s’élever dans le milieu. Les trois protagonistes vont s’associer pour réaliser une série de braquages spectaculaires et dangereux, tout en étant poursuivis par la police, les gangs et d’autres ennemis. Le jeu propose également un mode multijoueur en ligne, GTA Online, où les joueurs peuvent créer leur propre personnage et participer à diverses activités criminelles ou coopératives.', '/images/couvertures/1.jpg'),
(2, 'Cyberpunk 2077', '39.99', '2020-09-10', 'Cyberpunk 2077 est un jeu vidéo d’action-RPG en vue à la première personne développé par CD Projekt Red et publié par CD Projekt. Le jeu se déroule dans un monde ouvert futuriste et dystopique nommé Night City, inspiré de la Californie du Sud et de la culture cyberpunk. Le joueur incarne V, un mercenaire personnalisable qui peut acquérir des compétences en piratage et en mécanique, ainsi que des options de combat au corps à corps et à distance. L’histoire principale suit la quête de V pour obtenir un implant cybernétique unique qui est la clé de l’immortalité, mais qui menace de le transformer en une copie d’une célébrité décédée que seul lui peut voir. V devra collaborer avec cette personnalité pour se libérer de son emprise et sauver sa vie. Le jeu propose également un mode multijoueur en ligne, Cyberpunk Online, où les joueurs peuvent créer leur propre personnage et participer à diverses activités criminelles ou coopératives.', '/images/couvertures/2.jpg'),
(3, 'League of Legends', '0.00', '2009-09-27', 'League of Legends est un jeu vidéo de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS. Le jeu propose plusieurs modes de jeu, mais le plus populaire est la Faille de l’invocateur, où deux équipes de cinq joueurs s’affrontent en temps réel dans des parties d’une durée d’environ une demi-heure. Chaque joueur contrôle un personnage appelé champion, parmi les plus de 150 disponibles, qui possède des compétences uniques et un style de jeu propre. Le but du jeu est de détruire le Nexus ennemi, une structure située au centre de la base adverse. Pour cela, les joueurs doivent coopérer avec leur équipe, gagner de l’expérience et de l’or, acheter des objets et affronter les champions et les sbires ennemis. League of Legends est un jeu très populaire et compétitif, qui dispose d’une scène e-sportive internationale et d’un univers étendu.', '/images/couvertures/3.jpg'),
(4, 'Battlefield 1', '9.99', '2016-10-21', 'Battlefield 1 est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 21 octobre 2016 sur PlayStation 4, Windows et Xbox One. C’est le dixième opus de la série Battlefield et le premier à se dérouler pendant la Première Guerre mondiale. Le jeu propose un mode solo composé de plusieurs histoires inspirées de faits réels, où le joueur incarne différents personnages dans diverses situations de combat. Le jeu propose également un mode multijoueur en ligne qui supporte jusqu’à 64 joueurs. Le joueur peut utiliser des armes, des véhicules et des chevaux de l’époque, ainsi que profiter des environnements destructibles et de la personnalisation des armes. Battlefield 1 a reçu des critiques positives de la part des critiques, qui ont apprécié son cadre historique, ses campagnes solo, ses modes multijoueur, ses graphismes et son design sonore.', '/images/couvertures/4.jpg'),
(5, 'FIFA 23', '37.89', '2022-09-27', 'FIFA 23 est un jeu vidéo de simulation de football développé par EA Vancouver et édité par Electronic Arts, sorti le 30 septembre 2022 sur plusieurs plateformes. C’est le 30e volet de la série FIFA et le premier à intégrer la technologie HyperMotion2 de nouvelle génération, qui permet d’améliorer le réalisme du gameplay et des animations. Le jeu propose plusieurs modes de jeu, dont le mode FIFA Ultimate Team, où les joueurs peuvent créer leur propre équipe avec des cartes de joueurs, le mode Clubs Pro, où les joueurs peuvent créer leur propre avatar et rejoindre des clubs en ligne, et le mode Carrière, où les joueurs peuvent gérer leur club ou leur joueur. Le jeu inclut également les clubs féminins, la FIFA World Cup 2022 et les licences officielles de nombreuses compétitions nationales et internationales.', '/images/couvertures/5.jpg'),
(6, 'Overwatch 2', '39.99', '2022-10-04', 'Overwatch 2 est un jeu vidéo de tir en vue subjective multijoueur développé et édité par Blizzard Entertainment, sorti en accès anticipé et free-to-play le 4 octobre 2022 sur plusieurs plateformes. C’est une suite et un remplacement du jeu Overwatch sorti en 2016, qui propose un univers partagé pour les modes joueur contre joueur (PvP) tout en introduisant des modes coopératifs persistants. Le jeu propose plus de 30 héros uniques, répartis en trois classes : dégâts, soutien et tank. Chaque héros dispose de compétences et d’un style de jeu propres. Le jeu propose également un mode histoire, qui permet d’approfondir l’univers et les personnages du jeu à travers des missions scénarisées. Overwatch 2 a fusionné avec Overwatch à sa sortie, permettant aux joueurs des deux jeux de jouer ensemble et de conserver leur progression et leurs éléments cosmétiques.', '/images/couvertures/6.jpg'),
(7, 'F1 2022', '59.99', '2022-06-28', 'F1 2022 est un jeu vidéo de simulation de course automobile développé par Codemasters et édité par Electronic Arts, sorti le 18 février 2022 sur plusieurs plateformes. C’est le 14e volet de la série F1 et le premier à intégrer les nouvelles règles techniques et sportives de la saison 2022 de Formule 1. Le jeu propose plusieurs modes de jeu, dont le mode Carrière, où les joueurs peuvent créer leur propre pilote et rejoindre une écurie, le mode My Team, où les joueurs peuvent créer leur propre écurie et la gérer, et le mode Braking Point, qui est une suite du mode histoire introduit dans F1 2021. Le jeu inclut également les 23 circuits du calendrier officiel de la saison 2022, dont le nouveau circuit de Miami. Le jeu propose aussi un système d’arrêts aux stands, de tours de mise en grille et d’autres éléments qui visent à renforcer l’immersion et le réalisme du jeu.', '/images/couvertures/7.jpg'),
(9, 'Euro Truck simulator 2', '19.99', '2012-10-19', 'Euro Truck Simulator 2 est un jeu vidéo de simulation de conduite de camions développé par SCS Software et sorti en 2012 sur Windows, Linux et Mac OS. Le jeu propose au joueur de se mettre dans la peau d’un routier qui doit effectuer des livraisons de marchandises dans diverses villes d’Europe. Le jeu inclut 64 villes réparties entre 12 pays, ainsi que 7 licences officielles de camions (Scania, Renault, Volvo, Daf, Iveco, MAN et Mercedes-Benz). Le joueur peut personnaliser son camion, gérer son entreprise de transport, recruter des chauffeurs et améliorer ses compétences. Le jeu offre également un mode multijoueur en ligne et un mode histoire appelé Braking Point. Euro Truck Simulator 2 est considéré comme l’un des meilleurs jeux de simulation de camions sur le marché.', '/images/couvertures/9.jpg'),
(10, 'Minecraft', '24.49', '2009-05-17', 'Minecraft est un jeu vidéo de type bac à sable développé par Mojang Studios et sorti en 2009 sur Windows, Mac OS et Linux. Le jeu permet au joueur de créer et d’explorer un monde généré aléatoirement, composé de blocs cubiques qu’il peut déplacer et transformer à sa guise. Le jeu propose deux modes principaux : le mode survie, où le joueur doit collecter des ressources, se nourrir, se protéger des monstres et construire des abris ; et le mode créatif, où le joueur dispose d’une liberté totale pour réaliser ses propres créations. Le jeu propose également un mode multijoueur en ligne, où le joueur peut rejoindre des serveurs créés par d’autres joueurs ou créer le sien. Minecraft Java Edition est la version originale du jeu, qui bénéficie de mises à jour régulières et qui offre la possibilité d’utiliser des mods et des packs de textures pour personnaliser son expérience de jeu.', '/images/couvertures/10.jpg'),
(11, 'Trackmania', '0.00', '2020-07-01', 'Trackmania est un jeu vidéo de course arcade développé par Nadeo et édité par Ubisoft, sorti le 1er juillet 2020 sur PC. Le jeu est une refonte du jeu Trackmania Nations sorti en 2006, qui propose un seul environnement : le Stadium. Le jeu permet au joueur de contrôler une voiture de type Formule 1 et de parcourir des pistes aux designs variés et spectaculaires, en essayant de réaliser le meilleur temps possible et de remporter des médailles. Le jeu propose également un éditeur de pistes, un mode multijoueur en ligne et un système d’abonnement pour accéder à des fonctionnalités supplémentaires.', '/images/couvertures/11.jpg'),
(12, 'Red dead redemption II', '69.99', '2018-10-26', 'Red Dead Redemption 2 est un jeu vidéo d’action-aventure en monde ouvert développé et édité par Rockstar Games, sorti en 2018 sur PlayStation 4, Xbox One, Windows et Stadia. Le jeu est le troisième opus de la série Red Dead et une préquelle du jeu Red Dead Redemption sorti en 2010. Le jeu se déroule en 1899 dans une représentation fictive des États-Unis à l’époque du Far West. Le joueur incarne Arthur Morgan, un hors-la-loi membre du gang de Dutch van der Linde, qui doit faire face au déclin du monde sauvage tout en essayant de survivre face aux forces de l’ordre, aux gangs rivaux et à d’autres ennemis. Le jeu propose des éléments de tir, de braquage, de chasse, d’équitation, d’interaction avec les personnages non-joueurs et de maintien du niveau d’honneur du personnage à travers ses choix et ses actions. Le jeu dispose également d’un mode multijoueur en ligne nommé Red Dead Online, qui permet à 32 joueurs de participer à divers modes de jeu coopératifs et compétitifs. Red Dead Redemption 2 a reçu un accueil critique très positif, saluant son scénario, ses personnages, son monde ouvert, ses graphismes, sa musique et son niveau de détail. Il a également battu plusieurs records et réalisé le deuxième meilleur lancement de l’histoire du divertissement, générant 725 millions de dollars de ventes lors de son premier week-end et dépassant les ventes totales de Red Dead Redemption en deux semaines.', '/images/couvertures/12.jpg'),
(13, 'Wild Animal Sports Day', '4.99', '2018-08-31', 'Wild Animal Sports Day est un jeu vidéo de sport humoristique développé par Paul Bird et sorti en 2018 sur PC. Le jeu propose huit épreuves sportives dans lesquelles le joueur peut contrôler un animal sauvage parmi six disponibles : lion, éléphant, zèbre, rhinocéros, girafe et hippopotame. Les épreuves sont : le tennis, le saut de haies, les fléchettes, le plongeon, le ski, le saut à la perche, le trampoline et la gymnastique rythmique. Le jeu met à l’épreuve l’habileté, les réflexes et la mémoire du joueur, qui doit affronter les autres animaux et surtout le redoutable roi crocodile. Le jeu propose également un mode multijoueur local jusqu’à quatre joueurs. Wild Animal Sports Day est un jeu décalé et amusant, qui reprend le style graphique et l’humour de Wild Animal Racing du même développeur.', '/images/couvertures/13.jpg'),
(14, 'Wild Animal Racing', '3.99', '2016-03-07', 'Wild Animal Racing est un jeu vidéo de course humoristique développé par Paul Bird et sorti en 2016 sur PC. Le jeu propose six animaux sauvages à choisir : lion, éléphant, zèbre, girafe, rhinocéros et hippopotame. Le joueur peut les faire participer à des courses de kart sur 15 circuits différents, avec des armes comiques à utiliser contre les adversaires. Le jeu propose également un mode multijoueur local jusqu’à quatre joueurs ou en ligne avec des amis Steam. Wild Animal Racing est un jeu décalé et amusant, qui reprend le style graphique et l’humour de Wild Animal Sports Day du même développeur.', '/images/couvertures/14.jpg'),
(15, 'LINK : The face evil', '35.99', '1993-10-10', 'Link : The Faces of Evil est un jeu vidéo d’action-aventure sorti en 1993 sur Philips CD-i. Le jeu est un spin-off de la série The Legend of Zelda, mais il n’est pas développé par Nintendo. Le jeu suit les aventures de Link, qui doit sauver l’île de Koridai des griffes de Ganon et de ses lieutenants maléfiques. Le jeu se présente comme un mélange entre un jeu de plates-formes et un jeu de combat, avec des graphismes en 2D et des cinématiques animées. Le jeu est connu pour son doublage médiocre, son gameplay rigide et son scénario ridicule. Il est considéré comme l’un des pires jeux de la série Zelda et l’un des pires jeux vidéo de tous les temps.', '/images/couvertures/15.jpg'),
(16, 'Plumber don\'t wear ties', '29.95', '1994-01-01', 'Plumber don’t wear ties est un jeu vidéo de type film interactif sorti en 1994 sur 3DO et Windows. Le jeu est une comédie romantique pour adultes, qui met en scène John, un plombier, et Jane, une femme à la recherche d’un emploi. Le joueur doit faire des choix qui influencent le déroulement de l’histoire et la relation entre les deux personnages. Le jeu se présente comme une succession de photos fixes doublées par des acteurs, avec un narrateur qui commente les actions du joueur. Le jeu est connu pour sa qualité technique médiocre, son scénario absurde, son humour douteux et son contenu sexuel. Il est considéré comme l’un des pires jeux vidéo de tous les temps.', '/images/couvertures/16.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

CREATE TABLE `support` (
  `id_support` int UNSIGNED NOT NULL,
  `nom` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `password` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `privilege` enum('visiteur','membre','rédacteur','administrateur') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL DEFAULT 'visiteur',
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `birthday` date NOT NULL,
  `pdp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `privilege`, `nom`, `prenom`, `email`, `birthday`, `pdp`, `date_creation`, `date_last_login`) VALUES
(1, 'aquabx', 'b4cdfcefa29a87565bf8f39db520586e12ff8d7f6a0572b442602887807b80c291fee1cf03a77382322e20242415247ae6f8e7d9303c1d4143f43644f4f12339', 'visiteur', 'Chauvel', 'Tom', 'tom.chauvel@hotmail.com', '2003-05-19', NULL, '2023-04-14 06:44:36', '2023-04-14 06:44:36'),
(7, 'jebornert', '8d28021a5218365e1c35fdc63fabdf6dd2c5cb7d457fb3f16633c9e5321e2d5371b79eb6bc3512583ff160c16983bb81b5919d1915f2fb793d7939f169b93ba4', 'visiteur', 'BORNERT', 'Jean-Eudes', 'jebornert1910@gmail.com', '2003-10-19', NULL, '2023-04-14 07:26:39', '2023-04-14 07:26:39'),
(8, 'alicia35', 'e3593b7f8916e155f0d63ac05399629d26c55e79f0c88df7f10b6eb3c9352acd8fb470da4f5d0134ae2dfa313fb8858f6e719b29b08cd4d0a4e1fbca755fed65', 'visiteur', 'Dupont', 'Alice', 'alicedupont@bonjour.fr', '2002-07-13', NULL, '2023-04-14 07:31:26', '2023-04-14 07:31:26'),
(9, 'maxou78', 'ac360e72aaeb99b6c0a4d4949c37d9bec72fbb4fd026cf07335046914744b1131e0506e728a648b582092da7dca66f52c7352fa6109ab7bab943506c2e0865f9', 'visiteur', 'Lavoie', 'Maxime', 'maxlavoie@bonjour.fr', '1993-05-12', NULL, '2023-04-14 07:32:19', '2023-04-14 07:32:19'),
(10, 'vivia324', 'cb0d81f1d5d3b5f9050a424d66d34678988bc54f5c00aa5da1a0d435698e0cc7aa6ddccae260dc12f832346b77612e78513f76b29357371756b536043babd7ee', 'visiteur', 'Martinez', 'Olivia', 'olimarti@bonjour.fr', '1997-07-13', NULL, '2023-04-14 07:33:07', '2023-04-14 07:33:07'),
(11, 'williamounet', 'dfb25509968d01c103df3e96c4b44df3b766b3d7257029368519dc61a56a23d5e4f88a33329da6931f27c78450ec7f99c2bffd52a22c5b66eaea40c40a9beecb', 'visiteur', 'Kim', 'William', 'willidupont@bonjour.fr', '1997-12-16', NULL, '2023-04-14 07:34:12', '2023-04-14 07:34:12'),
(12, 'sophiezette', 'a9cdc10dc6a2537868769aa9b5887277b0b2ebdfc76e0c1c64eaaa2e1d4bddc513169e4210fb91a9c8cf90bfa4f8386dcbde248f42a1f8edb074b41027225b5e', 'visiteur', 'Bélanger', 'Sophie', 'sophiebelanger@bonjour.fr', '2000-08-07', NULL, '2023-04-14 07:36:07', '2023-04-14 07:36:07'),
(13, 'lucosss5', '21e6f6a20086bcca8ce6f81cca74d9e51a70ea2af80c2615c4acd0cb4024e5db5d69d1d0b5c2b81fd56490c0bdc2e001039b0a01f2f14250a776cca7c4b70f39', 'visiteur', 'Dubois', 'Lucas', 'lucasdudu@bonjour.fr', '2001-08-04', NULL, '2023-04-14 07:37:27', '2023-04-14 07:37:27'),
(14, 'tremblezGueux', '95f482dc4bc6368b8e9a8f2b6aea1dd7ec1c77a5789a205b08c2ab54526d01d28b65c39d828cb30f018580de38c1378ca65d7c89843e86d428eb8d4925e9dc82', 'visiteur', 'Tremblay', 'Nathan', 'nathantremblay@bonjour.fr', '1999-11-14', NULL, '2023-04-14 07:39:14', '2023-04-14 07:39:14'),
(15, 'BoucherPereEnFils', '121695808a23a54e03fde4797a30efb33395e9890e6affac3cea2880dd6f62f9085e6fdcdba74ee61a082225b8ec431e9c99b2535230996a9d9a8089b54311f9', 'visiteur', 'Boucher', 'Adam', 'adamboucher@bonjour.fr', '1995-02-13', NULL, '2023-04-14 07:40:24', '2023-04-14 07:40:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_id_jeu_article` (`id_jeu`),
  ADD KEY `fk_id_redac_article` (`id_redacteur`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_jeu`,`id_user`),
  ADD KEY `fk_id_user_avis` (`id_user`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `est_categorise`
--
ALTER TABLE `est_categorise`
  ADD PRIMARY KEY (`id_categorie`,`id_jeu`),
  ADD KEY `fk_id_jeu_est_categorise` (`id_jeu`);

--
-- Index pour la table `est_supporte`
--
ALTER TABLE `est_supporte`
  ADD PRIMARY KEY (`id_support`,`id_jeu`),
  ADD KEY `fk_id_jeu_est_supporte` (`id_jeu`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `fk_id_jeu_image` (`id_jeu`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id_support`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `support`
--
ALTER TABLE `support`
  MODIFY `id_support` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_id_jeu_article` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_redac_article` FOREIGN KEY (`id_redacteur`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `fk_id_jeu_avis` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_user_avis` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `est_categorise`
--
ALTER TABLE `est_categorise`
  ADD CONSTRAINT `fk_id_categorie_est_categorise` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_jeu_est_categorise` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `est_supporte`
--
ALTER TABLE `est_supporte`
  ADD CONSTRAINT `fk_id_jeu_est_supporte` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_support_est_supporte` FOREIGN KEY (`id_support`) REFERENCES `support` (`id_support`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_id_jeu_image` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
