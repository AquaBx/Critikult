-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2023 at 04:04 PM
-- Server version: 8.0.32
-- PHP Version: 8.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `critikult`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int UNSIGNED NOT NULL,
  `titre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contenu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` tinyint NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_redacteur` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `note`, `date_creation`, `date_modification`, `id_redacteur`, `id_jeu`) VALUES
(1, 'GTA V : un jeu vidéo qui fait rêver', 'Grand Theft Auto V, communément appelé GTA V, est un jeu vidéo d\'action-aventure développé par Rockstar North et publié par Rockstar Games. Sorti en 2013, il s\'agit du cinquième opus de la série Grand Theft Auto.\r\nDans GTA V, les joueurs incarnent trois personnages principaux : Michael, Franklin et Trevor. Les joueurs peuvent passer d\'un personnage à l\'autre à tout moment, ce qui leur permet de voir l\'histoire de différents points de vue. Les personnages ont des compétences et des traits de personnalité uniques, ce qui ajoute de la profondeur à l\'histoire et permet aux joueurs de s\'immerger dans le monde de GTA V.\r\nL\'un des aspects les plus impressionnants de GTA V est sa carte massive et détaillée. La ville de Los Santos, qui est basée sur Los Angeles, est incroyablement détaillée et offre de nombreux lieux intéressants à explorer. Les joueurs peuvent se promener dans les quartiers riches et pauvres de la ville, ainsi que dans les zones rurales environnantes.\r\nLes missions principales de GTA V sont bien conçues et offrent une variété de défis intéressants. Les joueurs doivent accomplir une série de tâches, qui incluent souvent des poursuites en voiture, des braquages et des fusillades. Les missions secondaires sont également amusantes et offrent de nombreuses heures de jeu supplémentaires.\r\nLe multijoueur de GTA V, appelé GTA Online, est également très amusant et offre une grande variété de modes de jeu. Les joueurs peuvent travailler ensemble pour accomplir des missions, rivaliser dans des courses de voitures, ou simplement se battre dans des arènes de combat.\r\nMalgré toutes ses qualités, il y a quelques problèmes mineurs avec GTA V. La conduite peut être un peu difficile, en particulier à haute vitesse, et certains des contrôles de jeu ne sont pas aussi intuitifs qu\'ils pourraient l\'être. De plus, le jeu peut parfois être un peu répétitif, en particulier si vous jouez pendant de longues périodes.\r\nEn fin de compte, GTA V est un excellent jeu qui offre de nombreuses heures de plaisir et d\'aventure. Sa carte massive et détaillée, ses personnages uniques et son gameplay solide en font un titre incontournable pour tous les fans de jeux vidéo d\'action-aventure. Bien que certains problèmes mineurs puissent gêner les joueurs, ils ne gâchent pas l\'expérience de jeu dans son ensemble. Je lui donne une note de 5/5.\r\n', 5, '2023-04-14 14:02:53', '2023-04-14 14:12:12', 7, 1),
(2, 'Cyberpunk 2077 : un jeu immersif qui a su se relever après un départ difficile', 'Sorti en décembre 2020, Cyberpunk 2077 a suscité beaucoup d\'attentes chez les joueurs. Avec son univers cyberpunk dystopique, ses personnages charismatiques et ses graphismes à couper le souffle, le jeu promettait d\'être un véritable chef-d\'œuvre du genre. Cependant, dès sa sortie, il a été victime de nombreux bugs, de problèmes de performance et de nombreux autres défauts qui ont entaché son expérience de jeu.\r\nLe jeu a été largement critiqué pour ces défauts et a été retiré de la vente sur plusieurs plateformes. Les joueurs ont été frustrés et déçus, et certains ont même demandé un remboursement. Malgré cela, les développeurs de CD Projekt Red n\'ont pas abandonné et ont travaillé sans relâche pour résoudre les problèmes et améliorer le jeu.\r\nDepuis sa sortie, Cyberpunk 2077 a bénéficié de plusieurs mises à jour importantes qui ont corrigé la plupart des problèmes rencontrés par les joueurs. Les développeurs ont également été transparents sur l\'état du jeu et ont présenté des excuses sincères pour les erreurs commises. Grâce à ces efforts, le jeu est devenu beaucoup plus stable et offre désormais une expérience de jeu immersive et captivante.\r\nMalgré son départ difficile, Cyberpunk 2077 est un jeu qui mérite vraiment l\'attention des joueurs. Son histoire complexe et ses personnages mémorables en font une expérience unique et passionnante. Les graphismes sont incroyables et les détails de l\'environnement sont époustouflants. De plus, la ville de Night City est vraiment impressionnante, avec ses nombreux quartiers et zones à explorer.\r\nAinsi, malgré un début chaotique, Cyberpunk 2077 mérite une note de 4/5. Les mises à jour ont permis de stabiliser le jeu et les joueurs peuvent maintenant profiter pleinement de l\'expérience de jeu qu\'il offre. Si vous êtes fan de science-fiction, de cyberpunk ou simplement de jeux vidéo, Cyberpunk 2077 est un titre à ne pas manquer.', 4, '2023-04-14 14:06:02', '2023-04-14 14:06:02', 7, 2),
(3, 'League of Legends : un jeu de stratégie en équipe', 'League of Legends est un jeu de stratégie en équipe qui se joue en ligne avec plus de 140 champions différents. Le jeu se déroule dans un univers fantastique, où les joueurs s’affrontent dans des parties en 5 contre 5 sur différentes cartes. Le but du jeu est de détruire le bâtiment principal de l’équipe adverse, appelé le Nexus, tout en protégeant le sien. Pour cela, les joueurs doivent choisir leur champion parmi plusieurs catégories, comme les combattants, les tireurs, les mages ou les supports. Chaque champion possède des compétences uniques et un style de jeu propre. Les joueurs doivent coopérer avec leurs coéquipiers, gérer leurs ressources, améliorer leurs objets et leurs sorts, et prendre des décisions stratégiques pour remporter la victoire. Le jeu propose plusieurs modes de jeu, comme la Faille de l’invocateur, le mode le plus populaire, où les joueurs doivent détruire trois tours et un inhibiteur sur chaque voie avant d’atteindre le Nexus ennemi ; l’ARAM, un mode aléatoire où les joueurs s’affrontent sur une seule voie; ou Teamfight Tactics, un mode inspiré du genre auto-battler, où les joueurs doivent composer une équipe de champions et les placer sur un échiquier. \r\nLe jeu souffre cependant de nombreux problèmes qui gâchent l’expérience des joueurs. Le jeu est en effet très répétitif, avec des parties qui se ressemblent toutes et qui durent trop longtemps. Le jeu est également très déséquilibré, avec des champions trop puissants ou trop faibles, des objets trop chers ou trop efficaces, et des runes trop complexes ou trop simplistes. Le jeu est aussi très frustrant, avec une communauté toxique et négative, qui insulte, harcèle ou abandonne les parties sans raison. Le jeu est enfin très buggé, avec des problèmes de client, de serveur, de connexion ou de performance. De ce fait, nous ne pouvons pas donner la note maximale à ce jeu qui mérite, selon nous, quelques améliorations. ', 3, '2023-04-14 14:06:45', '2023-04-14 14:06:45', 7, 3),
(4, 'Battlefield 1: un FPS immersif et spectaculaire', 'Battlefield 1 est un FPS qui se déroule pendant la Première Guerre mondiale. Le jeu propose une campagne solo qui suit les aventures de différents personnages à travers le monde, ainsi qu’un mode multijoueur qui oppose jusqu’à 64 joueurs sur des cartes variées. Le jeu se veut réaliste et immersif, avec des environnements destructibles, des conditions météorologiques changeantes et des véhicules historiques. Le jeu impressionne par sa qualité graphique, sonore et narrative, qui plonge le joueur dans l’horreur et la beauté de la guerre. Le jeu est également très dynamique et varié, avec des missions qui proposent des situations et des objectifs différents, et qui demandent au joueur de s’adapter et de coopérer avec ses alliés. \r\nLe jeu offre aussi un large choix de véhicules, qui permettent au joueur de prendre le contrôle de chars, d’avions, de bateaux ou de chevaux. Les véhicules ont chacun leurs caractéristiques, leurs armes et leurs places disponibles. Les véhicules peuvent être endommagés ou détruits par les tirs ennemis ou par l’environnement. Le joueur peut choisir son véhicule lors de son apparition, ou en trouver sur le champ de bataille. \r\nLe jeu offre aussi un mode multijoueur en ligne, nommé Battlefield 1 Révolution, qui inclut quatre extensions qui enrichissent le contenu du jeu avec de nouvelles cartes, de nouvelles armes et de nouveaux modes de jeu. Battlefield 1 est un FPS immersif et spectaculaire, qui mérite son succès et son statut de référence du genre FPS. ', 4, '2023-04-14 14:07:21', '2023-04-14 14:07:21', 7, 4),
(6, 'FIFA 23 : Un jeu jeu pire que le précédent', 'FIFA 23, le dernier opus de la célèbre franchise de jeux vidéo de football, a été lancé il y a quelques mois et a déçu de nombreux joueurs. Bien qu\'il y ait eu des améliorations graphiques mineures, le jeu a été critiqué pour son manque d\'innovation et de nouveaux contenus.\r\nL\'une des plaintes les plus fréquentes concerne le mode carrière, qui n\'a pas été mis à jour de manière significative depuis plusieurs années. Les joueurs se plaignent que les choix de carrière sont limités, que les transferts ne sont pas réalistes et que l\'IA est toujours aussi basique. Il semble que EA Sports n\'ait pas pris la peine de mettre à jour ce mode de jeu crucial, préférant se concentrer sur les aspects plus rentables du jeu, tels que les microtransactions et les modes en ligne.\r\nDe plus, les joueurs ont également été déçus par le mode Ultimate Team, qui est depuis longtemps une source de controverse pour les microtransactions qui sont souvent nécessaires pour progresser dans le jeu. Malgré les promesses de changements pour cette année, les joueurs ont découvert que le mode était encore plus centré sur les microtransactions que jamais auparavant. De nombreux joueurs ont également signalé des problèmes de connexion en ligne, ce qui a nui à l\'expérience de jeu globale.\r\nEnfin, la jouabilité elle-même a également été critiquée. Les joueurs se plaignent que le jeu est devenu trop scripté, avec des actions préprogrammées qui limitent la créativité et le réalisme. Les gardiens de but sont également considérés comme peu réactifs, ce qui a conduit à des scores irréalistes et à une frustration accrue.\r\nDans l\'ensemble, FIFA 23 est un jeu qui a laissé de nombreux joueurs insatisfaits. Bien qu\'il y ait eu des améliorations graphiques mineures, le manque d\'innovation et de nouveaux contenus, ainsi que les problèmes de microtransactions, de connexion en ligne et de jouabilité limitent considérablement l\'expérience globale du joueur. Les fans de la franchise espèrent que les développeurs prendront en compte ces critiques et travailleront à améliorer le jeu dans les prochaines mises à jour et versions. ', 2, '2023-04-14 14:09:54', '2023-04-14 14:09:54', 7, 5),
(7, 'Overwatch 2 : Les attentes élevées et la note moyenne. Que peut-on espérer de la suite ?', 'Overwatch 2, la suite très attendue du populaire jeu de tir en équipe, a finalement été annoncée par Blizzard Entertainment. Avec de nouvelles fonctionnalités, de nouveaux héros et des modes de jeu mis à jour, Overwatch 2 promet d\'être une expérience de jeu captivante pour les fans de longue date et les nouveaux venus.\r\nCependant, malgré les attentes élevées pour ce jeu, la note actuelle d\'Overwatch 2 est de 4 sur 5. Cette note peut sembler moyenne pour un jeu aussi populaire, mais il y a plusieurs raisons pour lesquelles cela pourrait être le cas.\r\nTout d\'abord, Overwatch 2 n\'est pas encore sorti et cette note pourrait être basée sur les informations et les démonstrations disponibles jusqu\'à présent. Les critiques peuvent être réservées jusqu\'à ce qu\'ils aient eu une chance de jouer au jeu complet.\r\nDe plus, Overwatch 2 est une suite d\'un jeu déjà très populaire, il peut être difficile de répondre aux attentes élevées des fans. Certains joueurs peuvent être déçus si le jeu ne répond pas à toutes leurs attentes, même s\'il est de haute qualité en général.\r\nEnfin, la note de 4/5 ne signifie pas nécessairement que le jeu est mauvais. De nombreux jeux notés 4/5 sont encore des expériences de jeu très agréables. La note peut simplement indiquer que le jeu n\'est pas parfait et qu\'il y a place à l\'amélioration.\r\nEn fin de compte, il est important de garder à l\'esprit que la note actuelle d\'Overwatch 2 n\'est qu\'une estimation et que la qualité du jeu peut être bien meilleure que cela. Les fans peuvent avoir hâte de voir les améliorations apportées par la suite, et voir si cela suffira à répondre à leurs attentes élevées.', 3, '2023-04-14 14:11:25', '2023-04-14 14:12:03', 7, 6),
(8, 'F1 2022 : Un jeu de course qui manque de finesse', 'F1 2022 est le dernier jeu de course de la franchise F1 développé par Codemasters. Malheureusement, malgré une présentation visuelle impressionnante et une sélection de voitures et de pistes complète, le jeu souffre de plusieurs défauts qui limitent son attrait pour les fans de course.\r\nLa première chose qui frappe en jouant à F1 2022 est la qualité des graphismes et de l\'audio. Les voitures sont magnifiquement modélisées et les effets sonores de haute qualité ajoutent une touche de réalisme à l\'ensemble du jeu. Cependant, il est vite clair que la qualité visuelle et sonore ne suffit pas à compenser les défauts fondamentaux du gameplay.\r\nTout d\'abord, la jouabilité de F1 2022 est extrêmement difficile. Les voitures semblent manquer de précision et de réactivité, ce qui rend la conduite peu intuitive et difficile à maîtriser. Les collisions avec d\'autres voitures et avec les murs sont souvent frustrantes et il est difficile d\'identifier la cause des accidents. Le manque de sensibilité des commandes et des mouvements de la voiture peut également rendre les courses ennuyeuses, surtout lorsqu\'il est difficile de sortir de situations difficiles.\r\nDe plus, F1 2022 souffre d\'un manque de modes de jeu intéressants. Bien qu\'il y ait plusieurs modes disponibles, y compris un mode carrière, le manque de profondeur et de personnalisation est décevant. Les joueurs sont limités dans leurs choix et les options de personnalisation sont limitées. Les défis sont souvent répétitifs et le manque de diversité des pistes rend les courses peu stimulantes.\r\nEnfin, les options multijoueurs en ligne sont également médiocres. Les temps de chargement longs et les problèmes de connexion font que les courses en ligne peuvent être décevantes, même si le jeu dispose de fonctionnalités intéressantes telles que le mode \"Classement\" qui permet aux joueurs de rivaliser avec d\'autres joueurs en ligne.\r\nEn conclusion, bien que F1 2022 ait des qualités esthétiques impressionnantes, le jeu manque de finesse dans sa jouabilité, sa profondeur et ses modes de jeu. En raison de ces défauts, la note de ce jeu serait de 3/5. Les fans de la franchise peuvent être déçus par cette nouvelle version, mais les nouveaux joueurs peuvent y trouver un jeu amusant pour passer le temps.', 3, '2023-04-14 14:13:23', '2023-04-14 14:13:23', 7, 7),
(9, 'Euro Truck Simulator 2 : un jeu de simulation de conduite de camion avec un mode multijoueur passionnant', 'Euro Truck Simulator 2 est un jeu vidéo de simulation de conduite de camion développé et publié par SCS Software en 2012. Depuis lors, il a connu de nombreuses mises à jour et est devenu l\'un des jeux de simulation de conduite de camion les plus populaires sur PC. Dans cet article, nous allons examiner les différentes facettes du jeu et expliquer pourquoi nous lui attribuons une note de 4 sur 5.\r\nTout d\'abord, le gameplay d\'Euro Truck Simulator 2 est très réaliste. Les camions sont modélisés avec un grand souci du détail, et chaque partie du camion est contrôlable, ce qui signifie que le joueur doit être attentif à tous les aspects de la conduite du camion. Les routes sont également très bien conçues et offrent un défi pour les joueurs qui cherchent à perfectionner leur conduite. Les joueurs peuvent également personnaliser leurs camions, ce qui ajoute une touche de personnalisation au jeu.\r\nEnsuite, la variété des missions disponibles dans Euro Truck Simulator 2 est impressionnante. Les joueurs peuvent transporter une grande variété de marchandises, allant des animaux vivants aux produits pétroliers, ce qui ajoute une certaine variété au jeu. Les missions sont également bien conçues, avec des objectifs clairs et des récompenses appropriées pour les joueurs qui les accomplissent avec succès.\r\nLe jeu propose également un mode multijoueur, qui permet aux joueurs de collaborer avec d\'autres joueurs pour effectuer des livraisons ou de participer à des compétitions. Cela ajoute une autre dimension au jeu, car les joueurs peuvent interagir avec d\'autres joueurs en ligne et travailler ensemble pour atteindre des objectifs communs. \r\nCependant, le jeu a quelques inconvénients mineurs. Tout d\'abord, la vitesse du jeu peut sembler un peu lente pour certains joueurs, car il s\'agit avant tout d\'un jeu de simulation de conduite de camion, ce qui signifie que le joueur doit conduire le camion conformément aux lois et règles de la circulation. De plus, certains joueurs peuvent trouver le jeu répétitif à long terme, car la plupart des missions consistent à conduire un camion d\'un point A à un point B.\r\nEn conclusion, Euro Truck Simulator 2 est un excellent jeu de simulation de conduite de camion avec un gameplay réaliste et varié. Bien qu\'il puisse sembler un peu lent pour certains joueurs, le jeu offre suffisamment de variété pour garder les joueurs intéressés. Avec sa grande communauté de joueurs en ligne et son mode multijoueur, Euro Truck Simulator 2 est un jeu qui mérite une note de 4 sur 5.', 4, '2023-04-14 14:15:45', '2023-04-14 14:15:45', 7, 9),
(10, 'Minecraft : Pourquoi sa version Java est supérieure à sa version Bedrock ?', 'Minecraft est un jeu vidéo de construction, de survie et d\'aventure qui a été créé en 2011 par Mojang Studios. Depuis sa sortie, il est devenu l\'un des jeux les plus populaires de tous les temps, avec plus de 200 millions de copies vendues dans le monde entier. Le jeu est disponible sur plusieurs plateformes, dont PC, Xbox, PlayStation, Nintendo Switch, iOS et Android.\r\nLa version Java de Minecraft est considérée par beaucoup de joueurs comme étant la version la plus magnifique. Cette version est jouable sur PC et permet aux joueurs de profiter de toutes les fonctionnalités de base du jeu, ainsi que des mods créés par la communauté de joueurs. La version Java permet également aux joueurs de personnaliser leur expérience de jeu en modifiant les textures, les sons, les mods et bien plus encore.\r\nEn revanche, la version Bedrock de Minecraft est souvent critiquée pour être inférieure à la version Java. La version Bedrock est destinée aux appareils mobiles, à la Xbox et à la Nintendo Switch, et permet aux joueurs de jouer ensemble sur des plates-formes différentes. Cependant, les fonctionnalités de base sont limitées par rapport à la version Java, et les mods ne sont pas pris en charge.\r\nBien que la version Bedrock soit vendue avec la version Java, il est conseillé de jouer sur la version Java pour une expérience de jeu plus complète et plus immersive. La version Java permet aux joueurs de personnaliser leur expérience de jeu en ajoutant des mods, des packs de textures et des shaders, offrant une expérience visuelle et sonore époustouflante.\r\nEn conclusion, Minecraft est un jeu qui a su capturer l\'imagination de millions de joueurs à travers le monde. Bien que la version Bedrock offre une expérience de jeu pratique pour les joueurs mobiles, la version Java est la version la plus complète et la plus immersive du jeu. Les joueurs qui cherchent à plonger dans le monde de Minecraft devraient opter pour la version Java pour profiter pleinement de tout ce que ce jeu a à offrir.', 4, '2023-04-14 14:16:26', '2023-04-14 14:16:26', 7, 10),
(11, 'Trackmania : un jeu de course addictif et compétitif', 'Trackmania est un jeu de course qui a été développé par Nadeo et édité par Ubisoft. Depuis sa première version en 2003, le jeu a connu de nombreux changements et améliorations, ce qui en fait l\'un des jeux de course les plus populaires de tous les temps.\r\nLe gameplay de Trackmania est simple mais addictif : les joueurs doivent piloter des voitures à grande vitesse sur des pistes conçues de manière créative. La plupart des pistes comportent des virages serrés, des sauts et des obstacles, ce qui en fait un défi stimulant pour les joueurs de tous niveaux.\r\nLe jeu propose trois modes de jeu principaux : Solo, Multijoueur et Éditeur. Dans le mode Solo, les joueurs peuvent s\'entraîner sur des pistes pour améliorer leur temps et leur classement mondial. Le mode Multijoueur permet aux joueurs de concourir contre d\'autres joueurs en ligne dans des courses rapides et compétitives. Enfin, le mode Éditeur permet aux joueurs de créer leurs propres pistes et de les partager avec la communauté.\r\nL\'un des points forts de Trackmania est sa communauté active et passionnée. Les joueurs peuvent rejoindre des clans, participer à des tournois et partager leurs créations de pistes avec d\'autres joueurs. Cela donne au jeu une grande durée de vie et une grande variété de contenu.\r\nEn termes de graphismes, Trackmania est très réussi. Les voitures sont bien modélisées et les environnements sont détaillés et colorés. La bande-son est également excellente, avec une musique électronique entraînante qui accompagne parfaitement les courses à grande vitesse.\r\nCependant, le jeu a aussi quelques défauts. Par exemple, le jeu manque d\'un mode histoire ou d\'une campagne solo, ce qui peut décourager les joueurs qui préfèrent un jeu avec une histoire linéaire. De plus, les pistes peuvent parfois être frustrantes et difficiles à maîtriser, ce qui peut être décourageant pour les joueurs débutants.\r\nEn conclusion, Trackmania est un jeu de course solide qui offre une expérience de jeu addictive et amusante. Malgré quelques défauts mineurs, le jeu est très bien conçu, avec des graphismes impressionnants et une excellente bande-son. Si vous êtes un fan de jeux de course ou si vous cherchez un jeu stimulant et compétitif, alors Trackmania est un choix sûr. Je lui attribue donc une note de 4/5. ', 4, '2023-04-14 14:16:52', '2023-04-14 14:16:52', 7, 11),
(12, 'Red Dead Redemption 2 : Une expérience immersive du far ouest américain', 'Red Dead Redemption 2 est un jeu d\'action-aventure immersif qui se déroule dans un monde ouvert captivant. Développé par Rockstar Games, le jeu offre une expérience de jeu exceptionnelle avec des graphismes époustouflants, une bande-son fantastique et une histoire émotionnelle et bien développée.\r\nLe joueur incarne Arthur Morgan, un hors-la-loi dans l\'Ouest américain au tournant du XXe siècle. L\'histoire est captivante et les personnages sont bien développés, ce qui permet au joueur de s\'immerger pleinement dans l\'univers du jeu.\r\nLe gameplay est fluide et le monde ouvert offre une grande variété d\'activités, allant de la chasse et de la pêche à la conduite de trains et au braquage de banques. Les interactions avec les personnages non-joueurs sont également très bien conçues et ajoutent une dimension supplémentaire à l\'expérience de jeu.\r\nLe seul point négatif que je peux noter est que le jeu peut parfois sembler un peu lent, en particulier lors des déplacements sur de longues distances. Cependant, cela ne devrait pas gâcher l\'expérience globale.\r\nDans l\'ensemble, Red Dead Redemption 2 est un jeu incroyablement bien conçu qui offre une expérience de jeu immersive et divertissante. Je lui donne une note de 5/5.', 5, '2023-04-14 14:17:35', '2023-04-14 14:17:35', 7, 12),
(13, 'Wild Animal Sports Day : le jeu de sports animalier qui va vous faire rugir de plaisir !', 'Wild Animal Sports Day est un jeu vidéo sportif palpitant qui ne manquera pas de conquérir le cœur des amoureux des animaux et des passionnés de sport. Le jeu, développé par l\'équipe de WildWorks, est disponible sur différentes plateformes, notamment Windows, Mac et Nintendo Switch.\r\nLe jeu se déroule dans un monde où les animaux sont les stars du spectacle. Les joueurs peuvent choisir leur personnage animal préféré et participer à une variété d\'événements sportifs, y compris la course, le saut, la natation, et plus encore. Le jeu est simple et les commandes sont faciles à comprendre.\r\nL\'un des aspects les plus impressionnants de Wild Animal Sports Day est le niveau de détail apporté à la création du monde du jeu. Chaque personnage a une personnalité et un design uniques, et les environnements sont richement détaillés et immersifs. L\'attention portée aux détails est particulièrement évidente dans la conception sonore du jeu, qui comprend des sons d\'animaux réalistes et une musique de fond entraînante.\r\nLe mode multijoueur est une autre caractéristique marquante du jeu. Les joueurs peuvent s\'affronter en mode multijoueur local ou participer à des tournois en ligne et se mesurer à des joueurs du monde entier. Le mode multijoueur ajoute une couche supplémentaire d\'excitation au jeu et garantit que les joueurs ne s\'ennuieront jamais.\r\nDans l\'ensemble, Wild Animal Sports Day est un jeu fantastique qui vous procurera des heures de divertissement. Son gameplay simple mais addictif, son univers immersif et son mode multijoueur impressionnant en font un jeu incontournable pour tous ceux qui aiment les jeux de sport ou les animaux. Avec une note de 4/5, Wild Animal Sports Day est un jeu qui mérite d\'être découvert.', 4, '2023-04-14 14:18:11', '2023-04-14 14:18:11', 7, 13),
(14, 'Wild Animal Racing : une course délirante à travers des environnements exotiques', 'Wild Animal Racing est un jeu de course de karting développé par le studio anglais Wild Games Studio. Sorti en 2016, il est disponible sur PC et sur consoles. Dans ce jeu, les joueurs peuvent choisir parmi une variété d\'animaux sauvages et prendre part à des courses délirantes à travers des environnements exotiques.\r\nLe gameplay de Wild Animal Racing est simple et intuitif. Les joueurs doivent diriger leur animal sur la piste, éviter les obstacles et collecter des power-ups pour gagner de la vitesse et dépasser leurs adversaires. Les commandes sont réactives et faciles à prendre en main, ce qui rend le jeu accessible à tous les joueurs, qu\'ils soient débutants ou expérimentés.\r\nLe jeu propose également plusieurs modes de jeu différents. Le mode histoire permet aux joueurs de débloquer de nouveaux personnages et circuits en remportant des courses. Le mode multijoueur permet à jusqu\'à huit joueurs de s\'affronter en ligne ou en local, offrant ainsi des heures de plaisir à partager entre amis.\r\nGraphiquement, Wild Animal Racing est un jeu agréable à regarder. Les environnements sont riches en détails et colorés, tandis que les animaux sont bien modélisés et animés avec fluidité. La bande sonore est également de qualité, avec des musiques entraînantes qui ajoutent à l\'ambiance du jeu.\r\nMalgré ses qualités, Wild Animal Racing n\'est pas exempt de défauts. Certaines courses peuvent être un peu répétitives et manquer de variété, tandis que les power-ups ne sont pas toujours équilibrés, donnant parfois un avantage trop important à certains joueurs.\r\nCependant, dans l\'ensemble, Wild Animal Racing est un jeu de course amusant et divertissant qui plaira aux joueurs de tous âges. Avec ses commandes simples, ses modes de jeu variés et ses graphismes attrayants, il offre une expérience de jeu accessible et divertissante. C\'est pourquoi je lui attribue une note de 4/5.', 4, '2023-04-14 14:18:42', '2023-04-14 14:18:42', 7, 14),
(15, 'LINK : The Face of Evil - Un jeu vidéo catastrophique qui déçoit les fans de Zelda', 'LINK : The face evil est un jeu, initialement publié en 1993 pour le système Philips CD-i. Il est souvent considéré comme l\'un des pires jeux vidéo jamais créés, avec une note moyenne de 2,8/10 sur Metacritic.\r\nLe jeu suit les aventures de Link, le héros de la série de jeux “The Legend of Zelda\", alors qu\'il se bat contre une force maléfique connue sous le nom de Ganon. Malheureusement, le gameplay du jeu est extrêmement pauvre et les graphismes sont de très mauvaise qualité, même pour l\'époque.\r\nEn ce qui concerne la jouabilité, le jeu est très difficile à contrôler. Les commandes sont mal calibrées et la réactivité est très lente. Les mouvements de Link sont saccadés et imprécis, ce qui rend les combats très frustrants. De plus, les niveaux sont conçus de manière confuse et la progression est souvent illogique, ce qui peut amener les joueurs à se perdre facilement. \r\nLe jeu souffre également de nombreux problèmes techniques. Les temps de chargement sont très longs et le jeu est sujet à des bugs et des plantages fréquents. De plus, la bande-son est de très mauvaise qualité et les dialogues sont mal doublés. L\'ensemble du jeu manque de polissage et semble avoir été bâclé.\r\nEnfin, les graphismes sont très pauvres, même pour l\'époque. Les personnages sont mal animés et les textures sont floues et peu détaillées. Les décors manquent de variété et les couleurs sont fades et ternes.\r\nEn conclusion, \"LINK: The Face of Evil\" est un jeu vidéo très médiocre qui souffre de nombreux problèmes de gameplay, de technique et de graphismes. Il est difficile de recommander ce jeu à qui que ce soit, même aux fans de la série \"The Legend of Zelda\". Sa note attribuée de 1/5 reflète donc bien sa qualité décevante. ', 1, '2023-04-14 14:19:08', '2023-04-14 14:19:08', 7, 15),
(16, 'Plumber don’t wear ties : Une expérience de jeu oubliable', 'Plumber Don\'t Wear Ties est un jeu vidéo sorti en 1994 sur la console 3DO. Il a été développé par Kirin Entertainment et publié par Interactive Girls Club. Le jeu est une combinaison d\'un film interactif et d\'un jeu d\'aventure point-and-click. Malgré son succès, le jeu a été critiqué pour sa qualité médiocre et son manque de jouabilité.\r\nL\'intrigue du jeu tourne autour d\'un plombier nommé John qui essaie de gagner l\'affection d\'une femme nommée Jane. L\'histoire du jeu est remplie de clichés et de stéréotypes, et les personnages sont unidimensionnels et inintéressants. Les dialogues sont mal écrits et souvent absurdes.\r\nLe gameplay de Plumber Don\'t Wear Ties consiste à sélectionner des options de dialogue et à cliquer sur des objets dans les environnements du jeu. Les énigmes du jeu sont simplistes et peu stimulantes, et le joueur n\'a que très peu d\'influence sur le jeu.\r\nL\'un des plus gros défauts du jeu est son graphisme. Le jeu présente des graphismes 3D mal rendus et des séquences vidéo granuleuses. Les graphismes du jeu sont non seulement peu attrayants, mais ils rendent également difficile la compréhension de ce qui se passe à l\'écran.\r\nUn autre problème du jeu est son manque de rejouabilité. Le jeu n\'a qu\'une seule fin possible, et les options de dialogue n\'ont pas d\'incidence significative sur l\'histoire. Une fois que le joueur a terminé le jeu, il n\'y a guère de raison d\'y rejouer.\r\nEn conclusion, Plumber Don\'t Wear Ties est un jeu qui présente de nombreux défauts. Ses graphismes de mauvaise qualité, son histoire inintéressante, son gameplay simpliste et son manque de rejouabilité en font une expérience oubliable. Bien qu\'il puisse avoir une certaine valeur nostalgique pour les fans de jeux vidéo des années 90, ce n\'est pas un jeu que je recommanderais à quiconque recherche une expérience de jeu de qualité. Par conséquent, je lui attribue la note de 2/5 , pour avoir essayé. ', 2, '2023-04-14 14:19:44', '2023-04-14 14:19:44', 7, 16);

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `contenu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` tinyint UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_jeu` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int UNSIGNED NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'Jeux d\'action'),
(2, 'Jeux d\'aventure'),
(3, 'Jeux de rôle (RPG)'),
(4, 'Jeux de simulation'),
(5, 'Jeux de sport'),
(6, 'Jeux de course'),
(7, 'Jeux de tir à la première personne (FPS)'),
(8, 'Jeux de tir à la troisième personne (TPS)'),
(9, 'Jeux de puzzle'),
(10, 'Jeux de plateforme'),
(11, 'Jeux de combat'),
(12, 'Jeux musicaux'),
(13, 'Jeux de survie'),
(14, 'Jeux de gestion'),
(15, 'Jeux de construction'),
(16, 'Jeux de rythme'),
(17, 'Jeux en réalité virtuelle (VR)'),
(18, 'Jeux en ligne massivement multijoueur (MMO)'),
(19, 'Jeux d\'horreur'),
(20, 'Jeu de stratégie'),
(21, 'Jeu de bataille en arène en ligne (MOBA)');

-- --------------------------------------------------------

--
-- Table structure for table `est_categorise`
--

CREATE TABLE `est_categorise` (
  `id_categorie` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `est_categorise`
--

INSERT INTO `est_categorise` (`id_categorie`, `id_jeu`) VALUES
(1, 1),
(8, 1),
(1, 2),
(7, 2),
(20, 3),
(21, 3),
(1, 4),
(7, 4),
(18, 4),
(4, 5),
(5, 5),
(1, 6),
(7, 6),
(21, 6),
(4, 7),
(5, 7),
(6, 7),
(17, 7),
(4, 9),
(14, 9),
(17, 9),
(2, 10),
(13, 10),
(15, 10),
(6, 11),
(18, 11),
(1, 12),
(2, 12),
(8, 12),
(5, 13),
(6, 14),
(2, 15),
(10, 15),
(4, 16),
(9, 16);

-- --------------------------------------------------------

--
-- Table structure for table `est_supporte`
--

CREATE TABLE `est_supporte` (
  `id_support` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `est_supporte`
--

INSERT INTO `est_supporte` (`id_support`, `id_jeu`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(1, 2),
(3, 2),
(4, 2),
(6, 2),
(7, 2),
(1, 3),
(1, 4),
(3, 4),
(4, 4),
(6, 4),
(7, 4),
(1, 5),
(3, 5),
(4, 5),
(6, 5),
(7, 5),
(9, 5),
(1, 6),
(4, 6),
(7, 6),
(9, 6),
(1, 7),
(3, 7),
(4, 7),
(6, 7),
(7, 7),
(1, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(9, 10),
(1, 12),
(3, 12),
(4, 12),
(6, 12),
(7, 12),
(1, 13),
(1, 14),
(8, 15),
(1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_image` int UNSIGNED NOT NULL,
  `id_jeu` int UNSIGNED NOT NULL,
  `chemin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jeu`
--

CREATE TABLE `jeu` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `date_sortie` date NOT NULL,
  `synopsis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `couverture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jeu`
--

INSERT INTO `jeu` (`id`, `nom`, `prix`, `date_sortie`, `synopsis`, `couverture`) VALUES
(1, 'Grand Theft Auto V', 39.99, '2013-09-17', 'GTA V est un jeu d’action-aventure qui se déroule dans la ville fictive de Los Santos et ses environs, inspirés de Los Angeles et de la Californie du Sud. Le jeu suit les péripéties de trois criminels très différents : Michael, un ancien braqueur qui vit sous protection des témoins ; Trevor, un psychopathe instable et violent ; et Franklin, un jeune arnaqueur qui cherche à s’élever dans le milieu. Les trois protagonistes vont s’associer pour réaliser une série de braquages spectaculaires et dangereux, tout en étant poursuivis par la police, les gangs et d’autres ennemis. Le jeu propose également un mode multijoueur en ligne, GTA Online, où les joueurs peuvent créer leur propre personnage et participer à diverses activités criminelles ou coopératives.', '/images/couvertures/1.jpg'),
(2, 'Cyberpunk 2077', 39.99, '2020-09-10', 'Cyberpunk 2077 est un jeu vidéo d’action-RPG en vue à la première personne développé par CD Projekt Red et publié par CD Projekt. Le jeu se déroule dans un monde ouvert futuriste et dystopique nommé Night City, inspiré de la Californie du Sud et de la culture cyberpunk. Le joueur incarne V, un mercenaire personnalisable qui peut acquérir des compétences en piratage et en mécanique, ainsi que des options de combat au corps à corps et à distance. L’histoire principale suit la quête de V pour obtenir un implant cybernétique unique qui est la clé de l’immortalité, mais qui menace de le transformer en une copie d’une célébrité décédée que seul lui peut voir. V devra collaborer avec cette personnalité pour se libérer de son emprise et sauver sa vie. Le jeu propose également un mode multijoueur en ligne, Cyberpunk Online, où les joueurs peuvent créer leur propre personnage et participer à diverses activités criminelles ou coopératives.', '/images/couvertures/2.jpg'),
(3, 'League of Legends', 0.00, '2009-09-27', 'League of Legends est un jeu vidéo de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS. Le jeu propose plusieurs modes de jeu, mais le plus populaire est la Faille de l’invocateur, où deux équipes de cinq joueurs s’affrontent en temps réel dans des parties d’une durée d’environ une demi-heure. Chaque joueur contrôle un personnage appelé champion, parmi les plus de 150 disponibles, qui possède des compétences uniques et un style de jeu propre. Le but du jeu est de détruire le Nexus ennemi, une structure située au centre de la base adverse. Pour cela, les joueurs doivent coopérer avec leur équipe, gagner de l’expérience et de l’or, acheter des objets et affronter les champions et les sbires ennemis. League of Legends est un jeu très populaire et compétitif, qui dispose d’une scène e-sportive internationale et d’un univers étendu.', '/images/couvertures/3.jpg'),
(4, 'Battlefield 1', 9.99, '2016-10-21', 'Battlefield 1 est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 21 octobre 2016 sur PlayStation 4, Windows et Xbox One. C’est le dixième opus de la série Battlefield et le premier à se dérouler pendant la Première Guerre mondiale. Le jeu propose un mode solo composé de plusieurs histoires inspirées de faits réels, où le joueur incarne différents personnages dans diverses situations de combat. Le jeu propose également un mode multijoueur en ligne qui supporte jusqu’à 64 joueurs. Le joueur peut utiliser des armes, des véhicules et des chevaux de l’époque, ainsi que profiter des environnements destructibles et de la personnalisation des armes. Battlefield 1 a reçu des critiques positives de la part des critiques, qui ont apprécié son cadre historique, ses campagnes solo, ses modes multijoueur, ses graphismes et son design sonore.', '/images/couvertures/4.jpg'),
(5, 'FIFA 23', 37.89, '2022-09-27', 'FIFA 23 est un jeu vidéo de simulation de football développé par EA Vancouver et édité par Electronic Arts, sorti le 30 septembre 2022 sur plusieurs plateformes. C’est le 30e volet de la série FIFA et le premier à intégrer la technologie HyperMotion2 de nouvelle génération, qui permet d’améliorer le réalisme du gameplay et des animations. Le jeu propose plusieurs modes de jeu, dont le mode FIFA Ultimate Team, où les joueurs peuvent créer leur propre équipe avec des cartes de joueurs, le mode Clubs Pro, où les joueurs peuvent créer leur propre avatar et rejoindre des clubs en ligne, et le mode Carrière, où les joueurs peuvent gérer leur club ou leur joueur. Le jeu inclut également les clubs féminins, la FIFA World Cup 2022 et les licences officielles de nombreuses compétitions nationales et internationales.', '/images/couvertures/5.jpg'),
(6, 'Overwatch 2', 39.99, '2022-10-04', 'Overwatch 2 est un jeu vidéo de tir en vue subjective multijoueur développé et édité par Blizzard Entertainment, sorti en accès anticipé et free-to-play le 4 octobre 2022 sur plusieurs plateformes. C’est une suite et un remplacement du jeu Overwatch sorti en 2016, qui propose un univers partagé pour les modes joueur contre joueur (PvP) tout en introduisant des modes coopératifs persistants. Le jeu propose plus de 30 héros uniques, répartis en trois classes : dégâts, soutien et tank. Chaque héros dispose de compétences et d’un style de jeu propres. Le jeu propose également un mode histoire, qui permet d’approfondir l’univers et les personnages du jeu à travers des missions scénarisées. Overwatch 2 a fusionné avec Overwatch à sa sortie, permettant aux joueurs des deux jeux de jouer ensemble et de conserver leur progression et leurs éléments cosmétiques.', '/images/couvertures/6.jpg'),
(7, 'F1 2022', 59.99, '2022-06-28', 'F1 2022 est un jeu vidéo de simulation de course automobile développé par Codemasters et édité par Electronic Arts, sorti le 18 février 2022 sur plusieurs plateformes. C’est le 14e volet de la série F1 et le premier à intégrer les nouvelles règles techniques et sportives de la saison 2022 de Formule 1. Le jeu propose plusieurs modes de jeu, dont le mode Carrière, où les joueurs peuvent créer leur propre pilote et rejoindre une écurie, le mode My Team, où les joueurs peuvent créer leur propre écurie et la gérer, et le mode Braking Point, qui est une suite du mode histoire introduit dans F1 2021. Le jeu inclut également les 23 circuits du calendrier officiel de la saison 2022, dont le nouveau circuit de Miami. Le jeu propose aussi un système d’arrêts aux stands, de tours de mise en grille et d’autres éléments qui visent à renforcer l’immersion et le réalisme du jeu.', '/images/couvertures/7.jpg'),
(9, 'Euro Truck simulator 2', 19.99, '2012-10-19', 'Euro Truck Simulator 2 est un jeu vidéo de simulation de conduite de camions développé par SCS Software et sorti en 2012 sur Windows, Linux et Mac OS. Le jeu propose au joueur de se mettre dans la peau d’un routier qui doit effectuer des livraisons de marchandises dans diverses villes d’Europe. Le jeu inclut 64 villes réparties entre 12 pays, ainsi que 7 licences officielles de camions (Scania, Renault, Volvo, Daf, Iveco, MAN et Mercedes-Benz). Le joueur peut personnaliser son camion, gérer son entreprise de transport, recruter des chauffeurs et améliorer ses compétences. Le jeu offre également un mode multijoueur en ligne et un mode histoire appelé Braking Point. Euro Truck Simulator 2 est considéré comme l’un des meilleurs jeux de simulation de camions sur le marché.', '/images/couvertures/9.jpg'),
(10, 'Minecraft', 24.49, '2009-05-17', 'Minecraft est un jeu vidéo de type bac à sable développé par Mojang Studios et sorti en 2009 sur Windows, Mac OS et Linux. Le jeu permet au joueur de créer et d’explorer un monde généré aléatoirement, composé de blocs cubiques qu’il peut déplacer et transformer à sa guise. Le jeu propose deux modes principaux : le mode survie, où le joueur doit collecter des ressources, se nourrir, se protéger des monstres et construire des abris ; et le mode créatif, où le joueur dispose d’une liberté totale pour réaliser ses propres créations. Le jeu propose également un mode multijoueur en ligne, où le joueur peut rejoindre des serveurs créés par d’autres joueurs ou créer le sien. Minecraft Java Edition est la version originale du jeu, qui bénéficie de mises à jour régulières et qui offre la possibilité d’utiliser des mods et des packs de textures pour personnaliser son expérience de jeu.', '/images/couvertures/10.jpg'),
(11, 'Trackmania', 0.00, '2020-07-01', 'Trackmania est un jeu vidéo de course arcade développé par Nadeo et édité par Ubisoft, sorti le 1er juillet 2020 sur PC. Le jeu est une refonte du jeu Trackmania Nations sorti en 2006, qui propose un seul environnement : le Stadium. Le jeu permet au joueur de contrôler une voiture de type Formule 1 et de parcourir des pistes aux designs variés et spectaculaires, en essayant de réaliser le meilleur temps possible et de remporter des médailles. Le jeu propose également un éditeur de pistes, un mode multijoueur en ligne et un système d’abonnement pour accéder à des fonctionnalités supplémentaires.', '/images/couvertures/11.jpg'),
(12, 'Red dead redemption II', 69.99, '2018-10-26', 'Red Dead Redemption 2 est un jeu vidéo d’action-aventure en monde ouvert développé et édité par Rockstar Games, sorti en 2018 sur PlayStation 4, Xbox One, Windows et Stadia. Le jeu est le troisième opus de la série Red Dead et une préquelle du jeu Red Dead Redemption sorti en 2010. Le jeu se déroule en 1899 dans une représentation fictive des États-Unis à l’époque du Far West. Le joueur incarne Arthur Morgan, un hors-la-loi membre du gang de Dutch van der Linde, qui doit faire face au déclin du monde sauvage tout en essayant de survivre face aux forces de l’ordre, aux gangs rivaux et à d’autres ennemis. Le jeu propose des éléments de tir, de braquage, de chasse, d’équitation, d’interaction avec les personnages non-joueurs et de maintien du niveau d’honneur du personnage à travers ses choix et ses actions. Le jeu dispose également d’un mode multijoueur en ligne nommé Red Dead Online, qui permet à 32 joueurs de participer à divers modes de jeu coopératifs et compétitifs. Red Dead Redemption 2 a reçu un accueil critique très positif, saluant son scénario, ses personnages, son monde ouvert, ses graphismes, sa musique et son niveau de détail. Il a également battu plusieurs records et réalisé le deuxième meilleur lancement de l’histoire du divertissement, générant 725 millions de dollars de ventes lors de son premier week-end et dépassant les ventes totales de Red Dead Redemption en deux semaines.', '/images/couvertures/12.jpg'),
(13, 'Wild Animal Sports Day', 4.99, '2018-08-31', 'Wild Animal Sports Day est un jeu vidéo de sport humoristique développé par Paul Bird et sorti en 2018 sur PC. Le jeu propose huit épreuves sportives dans lesquelles le joueur peut contrôler un animal sauvage parmi six disponibles : lion, éléphant, zèbre, rhinocéros, girafe et hippopotame. Les épreuves sont : le tennis, le saut de haies, les fléchettes, le plongeon, le ski, le saut à la perche, le trampoline et la gymnastique rythmique. Le jeu met à l’épreuve l’habileté, les réflexes et la mémoire du joueur, qui doit affronter les autres animaux et surtout le redoutable roi crocodile. Le jeu propose également un mode multijoueur local jusqu’à quatre joueurs. Wild Animal Sports Day est un jeu décalé et amusant, qui reprend le style graphique et l’humour de Wild Animal Racing du même développeur.', '/images/couvertures/13.jpg'),
(14, 'Wild Animal Racing', 3.99, '2016-03-07', 'Wild Animal Racing est un jeu vidéo de course humoristique développé par Paul Bird et sorti en 2016 sur PC. Le jeu propose six animaux sauvages à choisir : lion, éléphant, zèbre, girafe, rhinocéros et hippopotame. Le joueur peut les faire participer à des courses de kart sur 15 circuits différents, avec des armes comiques à utiliser contre les adversaires. Le jeu propose également un mode multijoueur local jusqu’à quatre joueurs ou en ligne avec des amis Steam. Wild Animal Racing est un jeu décalé et amusant, qui reprend le style graphique et l’humour de Wild Animal Sports Day du même développeur.', '/images/couvertures/14.jpg'),
(15, 'LINK : The face evil', 35.99, '1993-10-10', 'Link : The Faces of Evil est un jeu vidéo d’action-aventure sorti en 1993 sur Philips CD-i. Le jeu est un spin-off de la série The Legend of Zelda, mais il n’est pas développé par Nintendo. Le jeu suit les aventures de Link, qui doit sauver l’île de Koridai des griffes de Ganon et de ses lieutenants maléfiques. Le jeu se présente comme un mélange entre un jeu de plates-formes et un jeu de combat, avec des graphismes en 2D et des cinématiques animées. Le jeu est connu pour son doublage médiocre, son gameplay rigide et son scénario ridicule. Il est considéré comme l’un des pires jeux de la série Zelda et l’un des pires jeux vidéo de tous les temps.', '/images/couvertures/15.jpg'),
(16, 'Plumber don\'t wear ties', 29.95, '1994-01-01', 'Plumber don’t wear ties est un jeu vidéo de type film interactif sorti en 1994 sur 3DO et Windows. Le jeu est une comédie romantique pour adultes, qui met en scène John, un plombier, et Jane, une femme à la recherche d’un emploi. Le joueur doit faire des choix qui influencent le déroulement de l’histoire et la relation entre les deux personnages. Le jeu se présente comme une succession de photos fixes doublées par des acteurs, avec un narrateur qui commente les actions du joueur. Le jeu est connu pour sa qualité technique médiocre, son scénario absurde, son humour douteux et son contenu sexuel. Il est considéré comme l’un des pires jeux vidéo de tous les temps.', '/images/couvertures/16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id_support` int UNSIGNED NOT NULL,
  `nom` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id_support`, `nom`) VALUES
(1, 'PC'),
(2, 'PS3'),
(3, 'PS4'),
(4, 'PS5'),
(5, 'Xbox 360'),
(6, 'Xbox One'),
(7, 'Xbox series X/S'),
(8, 'CD-i'),
(9, 'Switch');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `privilege` enum('visiteur','membre','rédacteur','administrateur') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'visiteur',
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date NOT NULL,
  `pdp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_jeu` (`id_jeu`),
  ADD KEY `fk_id_jeu_article` (`id_jeu`),
  ADD KEY `fk_id_redac_article` (`id_redacteur`);

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_jeu`,`id_user`),
  ADD KEY `fk_id_user_avis` (`id_user`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `est_categorise`
--
ALTER TABLE `est_categorise`
  ADD PRIMARY KEY (`id_categorie`,`id_jeu`),
  ADD KEY `fk_id_jeu_est_categorise` (`id_jeu`);

--
-- Indexes for table `est_supporte`
--
ALTER TABLE `est_supporte`
  ADD PRIMARY KEY (`id_support`,`id_jeu`),
  ADD KEY `fk_id_jeu_est_supporte` (`id_jeu`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `fk_id_jeu_image` (`id_jeu`);

--
-- Indexes for table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id_support`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id_support` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_id_jeu_article` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_redac_article` FOREIGN KEY (`id_redacteur`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `fk_id_jeu_avis` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_user_avis` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `est_categorise`
--
ALTER TABLE `est_categorise`
  ADD CONSTRAINT `fk_id_categorie_est_categorise` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_jeu_est_categorise` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `est_supporte`
--
ALTER TABLE `est_supporte`
  ADD CONSTRAINT `fk_id_jeu_est_supporte` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_id_support_est_supporte` FOREIGN KEY (`id_support`) REFERENCES `support` (`id_support`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_id_jeu_image` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
