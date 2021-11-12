-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 12 nov. 2021 à 12:39
-- Version du serveur :  5.7.11
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_smartphone`
--

-- --------------------------------------------------------

create DATABASE if not EXISTS db_smartphoneTest;

--
-- Structure de la table `t_brand`
--


CREATE TABLE `t_brand` (
  `idBrand` int(11) NOT NULL,
  `braName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_brand`
--

INSERT INTO `t_brand` (`idBrand`, `braName`) VALUES
(1, 'Vivo'),
(2, 'Google'),
(3, 'Apple'),
(4, 'Samsung'),
(5, 'OnePlus'),
(6, 'Myphone'),
(7, 'FairPhone'),
(8, 'Nokia'),
(9, 'Xiaomi'),
(10, 'Wiko'),
(11, 'Sony'),
(12, 'Motorola'),
(13, 'Realme'),
(14, 'Oppo'),
(15, 'ASUS');

-- --------------------------------------------------------

--
-- Structure de la table `t_constructor`
--

CREATE TABLE `t_constructor` (
  `idConstructor` int(11) NOT NULL,
  `conName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_constructor`
--

INSERT INTO `t_constructor` (`idConstructor`, `conName`) VALUES
(1, 'Apple'),
(2, 'Asus'),
(3, 'Fairphone'),
(4, 'Google'),
(5, 'Lenovo'),
(6, 'inconnu'),
(7, 'Nokia'),
(8, 'Oppo'),
(9, 'Samsung'),
(10, 'Sony'),
(11, 'Wiko'),
(12, 'Xiaomi');

-- --------------------------------------------------------

--
-- Structure de la table `t_historical`
--

CREATE TABLE `t_historical` (
  `idHistorical` int(11) NOT NULL,
  `hisDate` date NOT NULL,
  `hisPrice` float NOT NULL,
  `idSmartphone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_historical`
--

INSERT INTO `t_historical` (`idHistorical`, `hisDate`, `hisPrice`, `idSmartphone`) VALUES
(1, '2021-08-28', 179, 1),
(2, '2021-09-22', 199, 1),
(3, '2021-10-06', 189, 1),
(4, '2021-08-27', 271, 2),
(5, '2021-09-09', 274, 2),
(6, '2021-10-02', 279, 2),
(7, '2021-08-09', 199, 3),
(8, '2021-09-04', 269, 3),
(9, '2021-10-05', 269, 3),
(10, '2021-08-06', 705, 4),
(11, '2021-09-23', 689, 4),
(12, '2021-10-08', 711, 4),
(13, '2021-08-20', 437, 5),
(14, '2021-09-20', 429, 5),
(15, '2021-10-06', 433, 5),
(16, '2021-08-28', 414, 6),
(17, '2021-09-23', 400, 6),
(18, '2021-10-07', 379, 6),
(19, '2021-08-09', 592, 7),
(20, '2021-09-23', 569, 7),
(21, '2021-10-07', 600, 7),
(22, '2021-08-10', 829, 8),
(23, '2021-09-10', 819, 8),
(24, '2021-10-07', 824, 8),
(25, '2021-08-11', 1164, 9),
(26, '2021-09-16', 1092, 9),
(27, '2021-10-10', 1229, 9),
(28, '2021-08-29', 1069, 10),
(29, '2021-09-21', 1036, 10),
(30, '2021-10-08', 1005, 10),
(31, '2021-08-23', 672, 11),
(32, '2021-09-21', 651, 11),
(33, '2021-09-19', 664, 11),
(34, '2021-08-24', 1299, 12),
(35, '2021-09-24', 1299, 12),
(36, '2021-10-23', 1299, 12),
(37, '2021-08-16', 794, 13),
(38, '2021-09-22', 799, 13),
(39, '2021-10-05', 794, 13),
(40, '2021-08-13', 1244, 14),
(41, '2021-09-07', 1249, 14),
(42, '2021-10-06', 1132, 14),
(43, '2021-08-19', 276, 15),
(44, '2021-09-08', 273, 15),
(45, '2021-10-05', 272, 15),
(46, '2021-08-12', 476, 16),
(47, '2021-09-12', 462, 16),
(48, '2021-10-06', 469, 16),
(49, '2021-08-29', 424, 17),
(50, '2021-09-16', 424, 17),
(51, '2021-10-07', 423, 17),
(52, '2021-08-21', 502, 18),
(53, '2021-09-22', 485, 18),
(54, '2021-10-07', 504, 18),
(55, '2021-08-18', 911, 19),
(56, '2021-09-19', 897, 19),
(57, '2021-10-08', 897, 19),
(58, '2021-08-11', 397, 20),
(59, '2021-09-08', 397, 20),
(60, '2021-10-07', 408, 20),
(61, '2021-08-11', 689, 21),
(62, '2021-09-11', 689, 21),
(63, '2021-10-05', 728, 21),
(64, '2021-08-24', 302, 22),
(65, '2021-09-12', 290, 22),
(66, '2021-10-06', 303, 22),
(67, '2021-08-15', 241, 23),
(68, '2021-09-10', 240, 23),
(69, '2021-10-10', 241, 23),
(70, '2021-08-14', 984, 24),
(71, '2021-09-12', 993, 24),
(72, '2021-10-10', 984, 24),
(73, '2021-08-11', 156, 25),
(74, '2021-09-15', 163, 25),
(75, '2021-10-13', 142, 25),
(76, '2021-08-10', 175, 26),
(77, '2021-09-10', 159, 26),
(78, '2021-10-10', 177, 26),
(79, '2021-08-08', 645, 27),
(80, '2021-09-07', 645, 27),
(81, '2021-10-23', 645, 27),
(82, '2021-08-16', 478, 28),
(83, '2021-09-16', 469, 28),
(84, '2021-10-08', 444, 28),
(85, '2021-08-07', 78, 29),
(86, '2021-09-08', 76, 29),
(87, '2021-10-05', 79, 29),
(88, '2021-08-10', 333, 30),
(89, '2021-09-10', 273, 30),
(90, '2021-10-10', 294, 30);

-- --------------------------------------------------------

--
-- Structure de la table `t_os`
--

CREATE TABLE `t_os` (
  `idOs` int(11) NOT NULL,
  `osName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_os`
--

INSERT INTO `t_os` (`idOs`, `osName`) VALUES
(1, 'Android'),
(2, 'IOS'),
(3, 'ColorOS');

-- --------------------------------------------------------

--
-- Structure de la table `t_smartphone`
--

CREATE TABLE `t_smartphone` (
  `idSmartphone` int(11) NOT NULL,
  `smaName` varchar(50) NOT NULL,
  `smaLink` varchar(400) NOT NULL,
  `smaSize` float NOT NULL,
  `smaResolutionX` int(11) NOT NULL,
  `smaResolutionY` int(11) NOT NULL,
  `smaReleaseDate` date NOT NULL,
  `smaNbCore` int(11) NOT NULL,
  `smaRAM` int(11) NOT NULL,
  `smaFrequency` float NOT NULL,
  `smaAutonomy` time NOT NULL,
  `idBrand` int(11) NOT NULL,
  `idOs` int(11) NOT NULL,
  `idConstructor` int(11) NOT NULL,
  `smaPath` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_smartphone`
--

INSERT INTO `t_smartphone` (`idSmartphone`, `smaName`, `smaLink`, `smaSize`, `smaResolutionX`, `smaResolutionY`, `smaReleaseDate`, `smaNbCore`, `smaRAM`, `smaFrequency`, `smaAutonomy`, `idBrand`, `idOs`, `idConstructor`, `smaPath`) VALUES
(1, '5.4 midnight sun', 'https://www.digitec.ch/fr/s1/product/nokia-54-midnight-sun-4128gb-128go-or-double-sim-4g-telephones-portables-16450882?supplier=406802', 6.39, 720, 1560, '2021-04-08', 8, 4, 1.9, '13:35:00', 8, 1, 8, 'nokia.webp'),
(2, '8 Pro', 'https://www.digitec.ch/fr/s1/product/realme-8-pro-8gb-128go-noir-infini-640-double-sim-108mpx-4g-telephones-portables-15629985', 6.4, 2400, 1080, '2021-03-24', 8, 8, 2.3, '24:00:00', 13, 1, 12, 'realMe8pro.webp'),
(3, 'A91', 'https://www.brack.ch/oppo-a91-128gb-blazing-blue-1047508?utm_source=google&utm_medium=cpc&utm_campaign=%21cc-pssh%21l-d%21e-g%21t-pla%21k1-it%21z-it_multimedia_channable&utm_term=&adgroup_id=95297775786&ad_type=pla&prod_id=1047508&campaign_id=9422718872&gclid=EAIaIQobChMIqc2Y0pTR8gIVQz2tBh0B_wnYEAQYAyABEgKgJvD_BwE', 6.4, 2400, 1080, '2019-12-01', 8, 8, 2.1, '48:00:00', 14, 3, 11, 'A91.webp'),
(4, 'Edge20 Pro', 'https://www.digitec.ch/fr/s1/product/motorola-edge20-pro-256go-midnight-blue-670-double-sim-108mpx-5g-telephones-portables-16358486', 6.7, 2400, 1080, '2021-07-29', 8, 12, 2.2, '18:36:00', 12, 1, 9, 'edge20Pro.webp'),
(5, 'Fairphone 3+', 'https://www.digitec.ch/fr/s1/product/fairphone-3-64go-noir-565-double-sim-sd-48mpx-4g-telephones-portables-13501483', 5.65, 2160, 1080, '2020-09-13', 8, 4, 1.8, '14:29:00', 7, 1, 8, 'fairphone3Plus.webp'),
(6, 'galaxy A52s', 'https://www.digitec.ch/fr/s1/product/samsung-galaxy-a52s-128go-awesome-violet-650-double-sim-hybride-64mpx-5g-telephones-portables-16478182', 6.5, 2400, 1080, '2021-08-17', 8, 6, 2.07, '22:30:00', 4, 1, 4, 'galaxyA52.webp'),
(7, 'Galaxy S20 FE', 'https://www.digitec.ch/fr/s1/product/samsung-galaxy-s20-fe-snapdragon-128go-cloud-navy-650-double-sim-hybride-12mpx-4g-telephones-portabl-15822622?supplier=406802', 6.5, 2400, 1080, '2021-04-19', 8, 6, 2.16, '16:00:00', 4, 1, 5, 'galaxyS20.webp'),
(8, 'Galaxy S21 Phantom Gray, 6.20', 'https://www.digitec.ch/fr/s1/product/samsung-galaxy-s21-256go-gris-fantome-620-double-sim-12mpx-5g-telephones-portables-14568435?supplier=406802', 6.2, 2400, 1080, '2021-01-29', 8, 8, 2.9, '08:57:00', 4, 1, 11, 'galaxyS21.webp'),
(9, 'Galaxy s21 Ultra Snadragon', 'https://www.digitec.ch/fr/s1/product/samsung-galaxy-s21-ultra-snapdragon-512go-argent-fantome-680-double-sim-108mpx-5g-telephones-portabl-14638220', 6.8, 3200, 1440, '2021-01-29', 8, 16, 2.9, '14:20:00', 4, 1, 12, 'galaxyS21Utlra.webp'),
(10, 'Galaxy Z Flip3', 'https://www.digitec.ch/fr/s1/product/samsung-galaxy-z-flip3-5g-256go-phantom-black-670-sim-esim-12mpx-5g-telephones-portables-16329365', 6.7, 2640, 1080, '2021-08-27', 8, 8, 2.84, '09:48:00', 4, 1, 12, 'ZFlip3.webp'),
(11, 'HAMMER Explorer PRO', 'https://www.digitec.ch/fr/s1/product/myphone-hammer-explorer-pro-57-zoll-dual-sim-android-100-usb-typ-a-128go-noir-argent-double-sim-4g-t-16470829', 5.7, 720, 1440, '2019-10-01', 8, 6, 2, '08:30:00', 6, 1, 7, 'hammer.webp'),
(12, 'Iphone 11 pro', 'https://www.digitec.ch/fr/s1/product/apple-iphone-11-pro-256go-silver-580-sim-esim-12mpx-4g-telephones-portables-11873399', 5.8, 2436, 1125, '2019-09-19', 6, 4, 2.08, '18:00:00', 3, 2, 4, 'iphone11Pro.webp'),
(13, 'IPhone 12', 'https://www.digitec.ch/fr/s1/product/apple-iphone-12-pro-max-256-go-graphite-670-sim-esim-12-mpx-5g-telephones-portables-14008809', 6.1, 2532, 1170, '2020-10-23', 6, 4, 2.23, '13:00:00', 3, 2, 8, 'iphone12Pro.webp'),
(14, 'iPhone 12 Pro Max', 'https://www.digitec.ch/fr/s1/product/apple-iphone-12-128go-blanc-610-sim-esim-12mpx-5g-telephones-portables-14008907', 6.7, 2778, 1284, '2020-11-13', 6, 6, 3.1, '30:00:00', 3, 2, 9, 'iphone12ProMax.webp'),
(15, 'Mi 10 lite 5G', 'https://www.digitec.ch/fr/s1/product/xiaomi-mi-10-lite-5g-128-go-cosmic-grey-657-double-sim-48-mpx-5g-telephones-portables-13306391', 6.57, 1080, 2400, '2020-10-01', 8, 6, 2.4, '20:06:00', 9, 1, 8, '10Lite5g.webp'),
(16, 'Mi 10T pro', 'https://www.digitec.ch/fr/s1/product/xiaomi-mi-10t-pro-256go-cosmic-black-667-double-sim-108mpx-5g-telephones-portables-13884912', 6.67, 180, 2340, '2020-10-01', 8, 8, 2.16, '22:25:00', 9, 1, 8, 'MI10TPro.webp'),
(17, 'Nord 2', 'https://www.digitec.ch/fr/s1/product/oneplus-nord-2-8gb-128go-gray-sierra-643-double-sim-50mpx-5g-telephones-portables-16218581', 6.43, 1080, 2400, '2021-07-27', 8, 8, 2.35, '19:53:00', 5, 1, 6, 'onePlusNord2.webp'),
(18, 'onePlus 8T', 'https://www.digitec.ch/fr/s1/product/oneplus-8t-8gb-128-go-lunar-silver-655-double-sim-48-mpx-5g-telephones-portables-14009160', 6.55, 2400, 1880, '2020-10-20', 8, 8, 2.84, '36:00:00', 5, 1, 9, 'OnePlus8T.webp'),
(19, 'onePlus 9 pro', 'https://www.digitec.ch/fr/s1/product/oneplus-9-pro-12gb-256go-noir-stellaire-670-double-sim-48mpx-5g-telephones-portables-15250409', 6.7, 3216, 1440, '2021-03-30', 8, 12, 2.84, '14:59:00', 5, 1, 9, 'onePlus9Pro.webp'),
(20, 'Pixel 4a', 'https://www.digitec.ch/fr/s1/product/google-pixel-4a-128go-just-black-580-sim-simple-1220mpx-4g-telephones-portables-13515715?supplier=406802', 5.81, 2340, 1080, '2020-10-15', 8, 6, 1.9, '24:00:00', 2, 1, 3, 'googlePixel4a.webp'),
(21, 'Pixel 5', 'https://www.digitec.ch/fr/s1/product/google-pixel-5-128go-just-black-6-sim-simple-12mpx-5g-telephones-portables-13905009', 6, 2340, 1080, '2020-11-05', 8, 8, 2.38, '18:26:00', 2, 1, 1, 'googlePixel5.webp'),
(22, 'Redmi note 10 Pro', 'https://www.digitec.ch/fr/s1/product/xiaomi-redmi-note-10-pro-128go-onyx-gray-667-double-sim-108mpx-4g-telephones-portables-15653925?supplier=406802', 6.67, 2400, 1080, '2021-03-22', 8, 6, 1.92, '16:15:00', 9, 1, 8, 'Redminote10Pro.webp'),
(23, 'Redmi note 10s', 'https://www.digitec.ch/fr/s1/product/xiaomi-redmi-note-10s-128-gb-onyx-gray-gris-3g-4g-2g-telephones-portables-16497555', 6.43, 2400, 1080, '2021-03-22', 8, 6, 2.05, '17:25:00', 9, 1, 1, 'RedmiNote10S.webp'),
(24, 'ROG phone 5', 'https://www.digitec.ch/fr/s1/product/asus-rog-phone-5-16gb-256go-phantom-black-678-double-sim-64mpx-5g-telephones-portables-15009374', 6.78, 1080, 2448, '2021-03-18', 8, 16, 2.84, '19:25:00', 15, 1, 12, 'ROGphone5.webp'),
(25, 'SIM phone C21', 'https://www.digitec.ch/fr/s1/product/realme-sim-phone-c21-64go-noir-croix-noire-double-sim-4g-telephones-portables-16509858?supplier=4867603', 6.5, 720, 1600, '2021-03-05', 8, 4, 2.3, '36:00:00', 13, 1, 1, 'SIMphoneC21.webp'),
(26, 'View 5 plus ', 'https://www.digitec.ch/fr/s1/product/wiko-view5-plus-128go-aurora-blue-655-double-sim-sd-48mpx-4g-telephones-portables-13745669', 6.55, 720, 1600, '2020-09-02', 8, 4, 2.3, '36:00:00', 10, 1, 9, 'view5Plus.webp'),
(27, 'X50 Pro', 'https://www.digitec.ch/fr/s1/product/realme-x50-pro-256go-rouge-rouille-644-sim-simple-64mpx-5g-telephones-portables-13258678', 6.44, 2400, 1880, '2020-05-29', 8, 12, 2.84, '19:11:00', 13, 1, 8, 'X50Pro.webp'),
(28, 'Xperai 10 III', 'https://www.digitec.ch/fr/s1/product/sony-xperia-10-iii-128go-noir-6-double-sim-hybride-12mpx-5g-telephones-portables-15760907', 6, 1080, 2520, '2021-06-21', 8, 6, 2.12, '17:53:00', 11, 1, 8, 'Xperia10.webp'),
(29, 'Y60', 'https://www.digitec.ch/fr/s1/product/wiko-y60-16go-bleu-fonce-545-double-sim-hybride-5mpx-4g-telephones-portables-11136618', 5.45, 960, 720, '2019-05-08', 4, 1, 1.3, '15:00:00', 10, 1, 8, 'Y60.webp'),
(30, 'Y72 5G', 'https://www.digitec.ch/fr/s1/product/vivo-y72-5g-v2041-graphite-black-telephones-portables-16481771', 6.58, 2408, 1080, '2021-03-22', 8, 8, 2.05, '40:00:00', 1, 1, 2, 'VivoY72.webp');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_brand`
--
ALTER TABLE `t_brand`
  ADD PRIMARY KEY (`idBrand`),
  ADD UNIQUE KEY `IDt_brand_IND` (`idBrand`),
  ADD KEY `FKt_brand_IND` (`idBrand`);

--
-- Index pour la table `t_constructor`
--
ALTER TABLE `t_constructor`
  ADD PRIMARY KEY (`idConstructor`),
  ADD UNIQUE KEY `IDt_constructor_IND` (`idConstructor`),
  ADD KEY `FKt_constructor_IND` (`idConstructor`);

--
-- Index pour la table `t_historical`
--
ALTER TABLE `t_historical`
  ADD PRIMARY KEY (`idHistorical`),
  ADD KEY `fk_idSmartphone_fk` (`idSmartphone`);

--
-- Index pour la table `t_os`
--
ALTER TABLE `t_os`
  ADD PRIMARY KEY (`idOs`),
  ADD UNIQUE KEY `IDt_os_IND` (`idOs`),
  ADD KEY `FKt_os_IND` (`idOs`);

--
-- Index pour la table `t_smartphone`
--
ALTER TABLE `t_smartphone`
  ADD PRIMARY KEY (`idSmartphone`),
  ADD UNIQUE KEY `IDt_smartphone_IND` (`idSmartphone`),
  ADD KEY `FKt_os_FK` (`idOs`),
  ADD KEY `FKt_constructor_FK` (`idConstructor`),
  ADD KEY `FKt_brand_FK` (`idBrand`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_brand`
--
ALTER TABLE `t_brand`
  MODIFY `idBrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `t_constructor`
--
ALTER TABLE `t_constructor`
  MODIFY `idConstructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `t_historical`
--
ALTER TABLE `t_historical`
  MODIFY `idHistorical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `t_os`
--
ALTER TABLE `t_os`
  MODIFY `idOs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_smartphone`
--
ALTER TABLE `t_smartphone`
  MODIFY `idSmartphone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_historical`
--
ALTER TABLE `t_historical`
  ADD CONSTRAINT `fk_idSmartphone_fk` FOREIGN KEY (`idSmartphone`) REFERENCES `t_smartphone` (`idSmartphone`);

--
-- Contraintes pour la table `t_smartphone`
--
ALTER TABLE `t_smartphone`
  ADD CONSTRAINT `FKt_brand_FK` FOREIGN KEY (`idBrand`) REFERENCES `t_brand` (`idBrand`),
  ADD CONSTRAINT `FKt_constructor_FK` FOREIGN KEY (`idConstructor`) REFERENCES `t_constructor` (`idConstructor`),
  ADD CONSTRAINT `FKt_os_FK` FOREIGN KEY (`idOs`) REFERENCES `t_os` (`idOs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
