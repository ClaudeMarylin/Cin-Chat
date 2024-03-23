-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 23 mars 2024 à 15:25
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinechat`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `IDA` int(11) NOT NULL,
  `ETATCIVIL` varchar(128) NOT NULL,
  `NATIONALITE` varchar(128) NOT NULL,
  `DESCRIPTION` varchar(256) NOT NULL,
  `DATEDEBUT` date NOT NULL,
  `PRIXOBTENUE` varchar(128) NOT NULL,
  `ROLE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `IDE` int(11) NOT NULL,
  `NOM` varchar(128) NOT NULL,
  `DATE` date NOT NULL,
  `DESCRIPTION` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `IDC` int(11) NOT NULL,
  `VISA` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `IDC` int(11) NOT NULL,
  `NOM` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `concerner`
--

CREATE TABLE `concerner` (
  `VISA` varchar(128) NOT NULL,
  `IDS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `donner`
--

CREATE TABLE `donner` (
  `IDU` int(11) NOT NULL,
  `VISA` varchar(128) NOT NULL,
  `NOTE` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `VISA` varchar(128) NOT NULL,
  `IDR` int(11) NOT NULL,
  `TITRE` varchar(128) NOT NULL,
  `DUREE` time NOT NULL,
  `DATE` date NOT NULL,
  `VERSION` varchar(128) NOT NULL,
  `GENRE` varchar(128) NOT NULL,
  `SYNOPSIS` varchar(256) NOT NULL,
  `NOTE` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE `jouer` (
  `IDA` int(11) NOT NULL,
  `VISA` varchar(128) NOT NULL,
  `ROLE` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `IDM` int(4) NOT NULL,
  `IDP` int(11) NOT NULL,
  `NOM` char(32) NOT NULL,
  `ALT_TEXT` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `IDP` int(11) NOT NULL,
  `IDU` int(11) NOT NULL,
  `IDS` int(11) NOT NULL,
  `TITRE` varchar(128) NOT NULL,
  `CONTENU` char(32) NOT NULL,
  `DATECREATION` char(32) NOT NULL,
  `DATEMODIF` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `IDR` int(11) NOT NULL,
  `ETATCIVIL` varchar(128) NOT NULL,
  `NATIONALITE` varchar(128) NOT NULL,
  `DESCRIPTION` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `IDR` int(4) NOT NULL,
  `IDU` int(11) NOT NULL,
  `IDP` int(11) NOT NULL,
  `CONTENU` varchar(255) NOT NULL,
  `DATECREATION` char(32) NOT NULL,
  `DATEMODIF` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `IDS` int(11) NOT NULL,
  `IDE` int(11) NOT NULL,
  `TITRE` varchar(128) NOT NULL,
  `SOUSTITRE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IDU` int(11) NOT NULL,
  `LOGIN` varchar(128) NOT NULL,
  `MDP` varchar(128) NOT NULL,
  `NOM` char(32) NOT NULL,
  `PRENOM` char(32) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `ADRESSE` varchar(128) NOT NULL,
  `NUM` int(11) NOT NULL,
  `NIVEAU` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IDU`, `LOGIN`, `MDP`, `NOM`, `PRENOM`, `EMAIL`, `ADRESSE`, `NUM`, `NIVEAU`) VALUES
(1, 'Akyo', '6sdwetr4', 'Bouzidi', 'Yanis', 'yanisbouzidi00@gmail.com', '38 quater avenue du président Wilson', 782722094, 1),
(2, 'azertyuiopL', 'AZERTYUIOP', 'azertyuiopN', 'azertyuiopP', 'azertyuiopA@gmail.com', 'azertyuiopAd', 605994050, 1),
(3, 'JohnSmiath123', 'JohnSmith', 'John', 'Smith', 'exemple@gmail.com', '12 avenue des champs élysées', 605040302, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`IDA`);

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`IDE`);

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`IDC`,`VISA`),
  ADD KEY `I_FK_APPARTIENT_CATEGORIE` (`IDC`),
  ADD KEY `I_FK_APPARTIENT_FILM` (`VISA`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`IDC`);

--
-- Index pour la table `concerner`
--
ALTER TABLE `concerner`
  ADD PRIMARY KEY (`VISA`,`IDS`),
  ADD KEY `I_FK_CONCERNER_FILM` (`VISA`),
  ADD KEY `I_FK_CONCERNER_SUJET` (`IDS`);

--
-- Index pour la table `donner`
--
ALTER TABLE `donner`
  ADD PRIMARY KEY (`IDU`,`VISA`),
  ADD KEY `I_FK_DONNER_UTILISATEUR` (`IDU`),
  ADD KEY `I_FK_DONNER_FILM` (`VISA`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`VISA`),
  ADD KEY `I_FK_FILM_REALISATEUR` (`IDR`);

--
-- Index pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`IDA`,`VISA`),
  ADD KEY `I_FK_JOUER_ACTEUR` (`IDA`),
  ADD KEY `I_FK_JOUER_FILM` (`VISA`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`IDM`),
  ADD KEY `I_FK_MEDIA_POST` (`IDP`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`IDP`),
  ADD KEY `I_FK_POST_UTILISATEUR` (`IDU`),
  ADD KEY `I_FK_POST_SUJET` (`IDS`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`IDR`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`IDR`),
  ADD KEY `I_FK_REPONSE_UTILISATEUR` (`IDU`),
  ADD KEY `I_FK_REPONSE_POST` (`IDP`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`IDS`),
  ADD KEY `I_FK_SUJET_ACTUALITE` (`IDE`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IDU`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `IDA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `IDE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `IDC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `IDM` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `IDP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `IDR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `IDR` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `IDS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IDU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `FK_APPARTIENT_CATEGORIE` FOREIGN KEY (`IDC`) REFERENCES `categorie` (`IDC`),
  ADD CONSTRAINT `FK_APPARTIENT_FILM` FOREIGN KEY (`VISA`) REFERENCES `film` (`VISA`);

--
-- Contraintes pour la table `concerner`
--
ALTER TABLE `concerner`
  ADD CONSTRAINT `FK_CONCERNER_FILM` FOREIGN KEY (`VISA`) REFERENCES `film` (`VISA`),
  ADD CONSTRAINT `FK_CONCERNER_SUJET` FOREIGN KEY (`IDS`) REFERENCES `sujet` (`IDS`);

--
-- Contraintes pour la table `donner`
--
ALTER TABLE `donner`
  ADD CONSTRAINT `FK_DONNER_FILM` FOREIGN KEY (`VISA`) REFERENCES `film` (`VISA`),
  ADD CONSTRAINT `FK_DONNER_UTILISATEUR` FOREIGN KEY (`IDU`) REFERENCES `utilisateur` (`IDU`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_FILM_REALISATEUR` FOREIGN KEY (`IDR`) REFERENCES `realisateur` (`IDR`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `FK_JOUER_ACTEUR` FOREIGN KEY (`IDA`) REFERENCES `acteur` (`IDA`),
  ADD CONSTRAINT `FK_JOUER_FILM` FOREIGN KEY (`VISA`) REFERENCES `film` (`VISA`);

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_MEDIA_POST` FOREIGN KEY (`IDP`) REFERENCES `post` (`IDP`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_POST_SUJET` FOREIGN KEY (`IDS`) REFERENCES `sujet` (`IDS`),
  ADD CONSTRAINT `FK_POST_UTILISATEUR` FOREIGN KEY (`IDU`) REFERENCES `utilisateur` (`IDU`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `FK_REPONSE_POST` FOREIGN KEY (`IDP`) REFERENCES `post` (`IDP`),
  ADD CONSTRAINT `FK_REPONSE_UTILISATEUR` FOREIGN KEY (`IDU`) REFERENCES `utilisateur` (`IDU`);

--
-- Contraintes pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD CONSTRAINT `FK_SUJET_ACTUALITE` FOREIGN KEY (`IDE`) REFERENCES `actualite` (`IDE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
