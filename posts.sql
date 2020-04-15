-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 14 avr. 2020 à 22:19
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP : 7.1.33-11+ubuntu18.04.1+deb.sury.org+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `chapo` varchar(200) NOT NULL,
  `contenu` longtext NOT NULL,
  `date_pub` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_maj` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id_post`, `titre`, `chapo`, `contenu`, `date_pub`, `date_maj`) VALUES
(1, 'Immotivée', 'La joie immotivée est la plus invincible, parce qu’elle est...', 'La joie immotivée est la plus invincible, parce qu’elle est une fleur éclatante, mais sans racines : c’est une joie qui n’est en rien captive d’un bonheur ponctuel, elle ne dépend pas du sacro-saint schéma des effets et des causes. Le vent l’apporte, le premier souffle la fera disparaître. Mais, tout le temps de sa présence, elle rayonne d’une lueur inégalée.\r\n \r\n\r\n', '2020-04-14 19:08:08', '2020-04-14 19:08:08'),
(2, 'À notre porte', 'Le printemps est à notre porte ;\r\nLes oiseaux célèbrent déjà', 'Le printemps est à notre porte ;\r\nLes oiseaux célèbrent déjà\r\nCe renouveau qui nous emporte\r\nEt nous inspire tant de joie.\r\n \r\nLe printemps frappe à notre cœur\r\nAvec ses sourires, ses pleurs ;\r\nEn fines larmes sur l\'asphalte\r\nOu frais soleil dans les hauteurs.\r\n \r\nÀ l\'abri sous les feuilles mortes\r\nLes plantes deviennent plus fortes\r\nEt se lancent à la conquête\r\nDe l\'espace et de la lumière.\r\n', '2020-04-14 19:08:08', '2020-04-14 19:08:08'),
(3, 'Jacques Brel, l\'immortel Grand Jacques', 'En ces temps confinés, où j\'ai enfin le temps de rester...', 'En ces temps confinés, où j\'ai enfin le temps de rester un peu chez moi et de me consacrer aux mille et une choses que je n\'ai jamais le temps de faire, j\'ai enfin eu le loisir de me pencher sur les deux émissions suivantes dont j\'avais précieusement archivé les liens.\r\nIl s\'agit de deux documentaires sur Brel, l\'un visuel sur YouTube:\r\n\r\n \r\nl\'autre audio, sur France Culture, qui consiste en une émission regroupant une série de trois entretiens avec le chanteur, en 1967:\r\n \r\nLes deux sont des merveilles.\r\nCelui sur YouTube est une mine d\'infos. Quant à l\'émission de France Culture, quel régal d\'entendre la voix de Brel, tant de temps après sa mort, son phrasé, son accent... et ses idées! La technologie a parfois du bon...\r\n \r\nJ\'ai découvert Brel à 11 ans, le 9 octobre 1978, à l\'occasion... d\'une interrogation écrite de phonétique. En effet, à ce moment-là, on apprenait encore l\'alphabet phonétique en cours de français. Cette interro, prévue depuis une dizaine de jours, nous terrifiait tous. La professeure de français, une toute petite femme merveilleuse avec un long rideau de cheveux noirs, dont l\'accent auscitain roulait les rrrr, nous donna un poème à traduire. Enfin, cela avait l\'air d\'un poème, avec organisation en strophes, titre en haut, nom en bas... J\'en connaissais déjà beaucoup, des poèmes, et me suis dit que si je mettais en français le titre et l\'auteur, je pourrais sans doute retranscrire de mémoire, et m\'éviter la fastidieuse traduction phonétique / français qui m\'attendait. Manque de chance, je tombais sur un texte inconnu, par un gars dont je ne connaissais que le nom. Je savais que mon père l\'écoutait. un truc de vieux, quoi. Le Plat Pays, d\'un certain Jacques Brel. \r\nJe me tapais l\'interro, et fut conquise. Par ce texte, je découvrais une poésie insoupçonnée encore.\r\nEn sortant du collège, je montais dans la voiture paternelle. Mon père alluma la radio: \"Nous apprenons à l\'instant la mort de Jacques Brel...\" Interloquée, je murmurais que c\'étais l\'auteur du texte de l\'interro. Je ressentis un vide immense. RTL passa en boucle sa musique pendant le 24 heures suivantes. Et moi, en tailleur dans ma chambre, j\'absorbais cette musique, ces paroles, ce phrasé, cet accent.\r\nJe chipai le disque du paternel, qui se rendit compte que je l\'écoutais bien plus que lui et ne me le réclama pas.\r\nAux Noëls et aux anniversaires qui suivirent, je demandais à la famille tous les albums de Brel. Mon peu d\'argent de poche aidant, je fus bientôt à la tête d\'une discographie complète, qui tournait sur ma platine à longueur de temps. Je me sentais happée par sa façon si particulière de parler des gens, de l\'amour, de la désillusion... \r\nDepuis, Brel a fait partie de tous les moments de ma vie. C\'est un ravissement toujours renouvelé de l\'écouter, de le lire ou même de le réciter dans les soirées poétiques. Ses textes ourlés, ciselés, quel bonheur!\r\n \r\nVoilà; petit moment de nostalgie devant ces deux documents, à voir et écouter avec délice.', '2020-04-14 19:09:51', '2020-04-14 19:09:51'),
(4, 'AU JARDIN DU LUXEMBOURG', 'Au jardin du Luxembourg j\'ai recueilli un cœur qui jouait du tambour caché sous une fleur', '\r\nAu jardin du Luxembourg\r\n\r\nj\'ai recueilli un cœur\r\n\r\nqui jouait du tambour\r\n\r\ncaché sous une fleur\r\n\r\n \r\n\r\nJ\'ai recueilli un cœur\r\n\r\ndans sa jupe légère\r\n\r\ncaché sous une fleur\r\n\r\nelle jouait les bergères\r\n\r\n \r\n\r\nDans sa jupe légère\r\n\r\nelle séchait ses larmes\r\n\r\nelle jouait les bergères\r\n\r\naux revers de ses drames\r\n\r\n \r\n\r\nElle séchait ses larmes\r\n\r\ndans le doux vent d\'avril\r\n\r\naux revers de ses drames\r\n\r\ndécouvrant tous ses fils\r\n\r\n \r\n\r\nDans le doux vent d\'avril\r\n\r\nlorsque je me fis tendre\r\n\r\ndécouvrant tous ses fils\r\n\r\nelle me laissa la prendre\r\n\r\n \r\n\r\nLorsque je me fis tendre\r\n\r\nelle m\'offrit sa main\r\n\r\nelle me laissa la prendre\r\n\r\nsans penser à demain\r\n\r\n \r\n\r\nElle m\'offrit sa main\r\n\r\nje lui donnais mon cœur\r\n\r\nsans penser à demain\r\n\r\nenivré par les fleurs\r\n\r\n \r\n\r\nJe lui donnais mon cœur\r\n\r\nen prenant ce chemin\r\n\r\nenivré par les fleurs\r\n\r\nje ne sentais plus rien\r\n\r\n \r\n\r\nEn prenant ce chemin\r\n\r\nmon cœur fit du tambour\r\n\r\npour son rire carmin\r\n\r\nau jardin du Luxembourg.', '2020-04-14 19:09:51', '2020-04-14 19:10:16');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
