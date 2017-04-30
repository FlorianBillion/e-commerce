-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 30 Avril 2017 à 15:57
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'test', 'test', 'test@orange.fr', 'test@orange.fr', 1, NULL, '$2y$13$ZDMOoM1B5GFsK0v21/4Zpe0Eb41Q7kxRdHTu/Wkl7FVgHgmCet9lq', '2017-04-30 15:36:05', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `categorie` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `photo`, `price`, `categorie`) VALUES
(2, 'Bushnell Jumelles', 'Optique-Type de machine : Jumelles de vision nocturne avec un grossissement de 4x et une lentille d\'objectif de 50 mm', 'https://images-na.ssl-images-amazon.com/images/I/71OJZ8yyRPL._SL1500_.jpg', 527.82, 'Optique'),
(3, 'Support TV en verre ', 'MMT 1100 mm Support TV en verre Transparent Chrome Argent jambe pour 81,3 cm à 127 cm écrans LCD LED Smart TV', 'https://images-na.ssl-images-amazon.com/images/I/61icRp83BKL._SL1364_.jpg', 89, 'Meuble'),
(4, 'Bqeel Android TV', 'Processeur Amlogic S905X : Processeur plutôt puissant S905X doté de 4 cœurs 64bit (cadencé a 2Ghz), et d\'un processeur graphique ARM Mali-450. Full Quad core, 2.0GHz fréquence ultra -haute (DVFS) pour un fonctionnement plus rapide et stable.<br>Elle tourne sous Android 6.0 Marshmallow , dispose de 1GO de ram DDR3 et la mémoire ROM de 8 Gb avec une réelle fluidité des actions que nous allons réalisé.<br>Côté connectique : 2 Ports USB 2.0, un port MicroSDXC (64 Go max conseillé), un port ethernet, une sortie optique, une sortie audio / vidéo Jack 3,5mm et le Wifi en b/g/n. <br>Compatible avec le 4K l\'ultra HD : ces puces supportent les vidéos aux formats H265/HEVC et la 4K, et en plus les 4K VP9 et HDR par rapport à la puce S905 normale OTA : Elle fournit OTA (Over The Air) unique update service qui promet de renouveler les derniers addons et la version de firmware à temps. Vous pouvez facilement mettre à jour la version du micro logiciel.', 'https://images-na.ssl-images-amazon.com/images/I/61FTAJLzczL._SL1500_.jpg', 39.99, 'Home Cinema'),
(5, 'Canon EOS 1300D', 'Canon EOS 1300D / Rebel T6 / KISS X80 18-55 / 3.5-5.6 EF-S IS II Appareils Photo Numériques 18.7 Mpix Noir', 'https://images-na.ssl-images-amazon.com/images/I/81LFMrgSq0L._SL1500_.jpg', 380, 'Photo'),
(6, 'Batterie Externe', 'Kinps® Batterie Externe10000mAh Double USB de Secours Chargeur Portable avec LED Power Bank Output Intelligent pour iPhone, iPad et Les Appareils Android(Argent)', 'https://images-na.ssl-images-amazon.com/images/I/7137HDlUjrL._SL1500_.jpg', 11.99, 'Accessoires'),
(7, 'Armée tactique Vest', 'Cs Champ Swat Tactical Army Vest Vest extérieure Cs Jeu Vest cosplay de Counter Strike Jeu Vest-322', 'https://images-na.ssl-images-amazon.com/images/I/71NFJKaqYEL._SL1200_.jpg', 43.85, 'Vêtement'),
(8, 'Mysj 12 Côtés', 'Creative Anti-anxiété Cube Soulager le Stress Jouet Pour Adultes Et Enfants', 'https://images-na.ssl-images-amazon.com/images/I/51EnOxwy6UL._SL1001_.jpg', 15.99, 'Jouet'),
(9, 'Fidget Cube', 'Objet révolutionnaire de Soulagement stress/anxiété', 'https://images-na.ssl-images-amazon.com/images/I/61XAfds9a4L._SL1428_.jpg', 9.58, 'Jouet'),
(10, 'Hand Spinner', 'Widget Focus Jouet EDC Poche Triangle Desktoy Cadeau en Plastique pour Adultes, Enfants', 'https://images-na.ssl-images-amazon.com/images/I/61flZ1uYQLL._SL1000_.jpg', 4.99, 'Jouet'),
(11, 'Support en Bois', 'Repliques Presentoir Katana Epee Sabre 16 places', 'https://images-na.ssl-images-amazon.com/images/I/41K9cxYIMzL._SY355_.jpg', 59.9, 'Epées');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
