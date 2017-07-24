-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 03 Juillet 2017 à 17:02
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `component_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `appareils`
--

CREATE TABLE IF NOT EXISTS `appareils` (
  `id_appareil` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_app` varchar(45) DEFAULT NULL,
  `Reference_app` varchar(45) DEFAULT NULL,
  `Code_Trescal` varchar(45) DEFAULT NULL,
  `Date_validation` datetime DEFAULT NULL,
  `description` text,
  `fabricant_app` varchar(45) DEFAULT NULL,
  `date_fin_validation` date DEFAULT NULL,
  `n°immobilisation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_appareil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `appareils_has_expertise`
--

CREATE TABLE IF NOT EXISTS `appareils_has_expertise` (
  `APPAREILS_id_appareil` int(11) NOT NULL,
  `EXPERTISE_Ordre_exp` int(11) NOT NULL,
  PRIMARY KEY (`APPAREILS_id_appareil`,`EXPERTISE_Ordre_exp`),
  KEY `fk_APPAREILS_has_EXPERTISE_EXPERTISE1_idx` (`EXPERTISE_Ordre_exp`),
  KEY `fk_APPAREILS_has_EXPERTISE_APPAREILS1_idx` (`APPAREILS_id_appareil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `codesfabricants`
--

CREATE TABLE IF NOT EXISTS `codesfabricants` (
  `id_codefab` int(11) NOT NULL AUTO_INCREMENT,
  `ref_sxt` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `code_sap` int(11) DEFAULT NULL,
  `famille` varchar(10) DEFAULT NULL,
  `sous-famille` varchar(10) DEFAULT NULL,
  `historique` varchar(45) DEFAULT NULL,
  `méthode_Ouverture` varchar(45) DEFAULT NULL,
  `méthode_Expertise` varchar(45) DEFAULT NULL,
  `knohau_Hook` int(11) DEFAULT NULL,
  `Composant_code_thav` varchar(10) NOT NULL,
  PRIMARY KEY (`id_codefab`),
  KEY `fk_CodesFabricants_Composant1_idx` (`Composant_code_thav`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `composant`
--

CREATE TABLE IF NOT EXISTS `composant` (
  `code_thav` varchar(10) NOT NULL,
  `Etat` varchar(45) DEFAULT NULL,
  `Marquage` varchar(45) DEFAULT NULL,
  `REP_TOPO` varchar(45) DEFAULT NULL,
  `GENERIQUE` varchar(45) DEFAULT NULL,
  `FABRICANT` int(11) DEFAULT NULL,
  `REFERENCE_FABRICANT` varchar(45) DEFAULT NULL,
  `DATE_CODE` date DEFAULT NULL,
  `CODE_SAP` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`code_thav`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ems`
--

CREATE TABLE IF NOT EXISTS `ems` (
  `id_EMS` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_EMS` varchar(40) DEFAULT NULL,
  ` Enveloppe_N° Enveloppe` int(11) NOT NULL,
  ` Enveloppe_composant_id_composant` int(11) NOT NULL,
  ` Enveloppe_composant_CodesFabricants_Numéro` int(11) NOT NULL,
  ` Enveloppe_composant_Suivi Soustraitance TBU_index_suivi` int(11) NOT NULL,
  ` Enveloppe_SRU_id_SRU` int(11) NOT NULL,
  ` Enveloppe_Nature_panne_idNature_panne` int(11) NOT NULL,
  ` Enveloppe_Examen_visuel_idExamen_visuel` int(11) NOT NULL,
  ` Enveloppe_Phase_Detection_idPhase_Detection` int(11) NOT NULL,
  PRIMARY KEY (`id_EMS`),
  KEY `fk_EMS_ Enveloppe1_idx` (` Enveloppe_N° Enveloppe`,` Enveloppe_composant_id_composant`,` Enveloppe_composant_CodesFabricants_Numéro`,` Enveloppe_composant_Suivi Soustraitance TBU_index_suivi`,` Enveloppe_SRU_id_SRU`,` Enveloppe_Nature_panne_idNature_panne`,` Enveloppe_Examen_visuel_idExamen_visuel`,` Enveloppe_Phase_Detection_idPhase_Detection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table ` enveloppe`
--

CREATE TABLE IF NOT EXISTS ` enveloppe` (
  `N_Enveloppe` int(11) NOT NULL AUTO_INCREMENT,
  `TBU_EMS` varchar(45) DEFAULT NULL,
  `Date_Saisie` date DEFAULT NULL,
  `DATE_DEPOSE` date DEFAULT NULL,
  `LIEUX_DEPOSE` varchar(45) DEFAULT NULL,
  `CONTACT` varchar(45) DEFAULT NULL,
  `STADE_DEPOSE` varchar(45) DEFAULT NULL,
  ` Anomalie` longtext,
  `COMMENTAIRES` longtext,
  `N_CER` varchar(45) DEFAULT NULL,
  `TEMP` varchar(45) DEFAULT NULL,
  `Saisie` varchar(45) DEFAULT NULL,
  `N_CR` varchar(45) DEFAULT NULL,
  `CONFIRME` varchar(45) DEFAULT NULL,
  `CAUSE` varchar(45) DEFAULT NULL,
  `NOM_SRU` varchar(45) DEFAULT NULL,
  `PN_SRU` varchar(45) DEFAULT NULL,
  `SN_SRU` varchar(45) DEFAULT NULL,
  `NOM_LRU` varchar(45) DEFAULT NULL,
  `PN_LRU` varchar(45) DEFAULT NULL,
  `SN_LRU` varchar(45) DEFAULT NULL,
  `DEC_EXP` tinyint(1) NOT NULL,
  `Phase_Detection_idPhase_Detection1` int(11) NOT NULL,
  `Examen_visuel_idExamen_visuel1` int(11) NOT NULL,
  `Nature_panne_idNature_panne1` int(11) NOT NULL,
  `Composant_code_thav` varchar(10) NOT NULL,
  `Composant_CodesFabricants_Numéro` int(11) NOT NULL,
  `Composant_Suivi Soustraitance TBU_index_suivi` int(11) NOT NULL,
  PRIMARY KEY (`N_Enveloppe`),
  KEY `fk_ Enveloppe_Phase_Detection1_idx` (`Phase_Detection_idPhase_Detection1`),
  KEY `fk_ Enveloppe_Examen_visuel1_idx` (`Examen_visuel_idExamen_visuel1`),
  KEY `fk_ Enveloppe_Nature_panne1_idx` (`Nature_panne_idNature_panne1`),
  KEY `fk_ Enveloppe_Composant1_idx` (`Composant_code_thav`,`Composant_CodesFabricants_Numéro`,`Composant_Suivi Soustraitance TBU_index_suivi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `examen_visuel`
--

CREATE TABLE IF NOT EXISTS `examen_visuel` (
  `idExamen_visuel` int(11) NOT NULL AUTO_INCREMENT,
  `Nothing_comp` tinyint(1) DEFAULT NULL,
  `Other_comp` tinyint(1) DEFAULT NULL,
  `comment_comp` mediumtext,
  `nothing_Brasure` tinyint(1) DEFAULT NULL,
  `other_Brasure` tinyint(1) DEFAULT NULL,
  `comment_brasure` mediumtext,
  `nothing_env` tinyint(1) DEFAULT NULL,
  `other_env` tinyint(1) DEFAULT NULL,
  `comment_env` mediumtext,
  PRIMARY KEY (`idExamen_visuel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `expertise`
--

CREATE TABLE IF NOT EXISTS `expertise` (
  `Ordre_exp` int(11) NOT NULL AUTO_INCREMENT,
  `ic` varchar(45) DEFAULT NULL,
  `date_enreg` date DEFAULT NULL,
  `elec` varchar(45) DEFAULT NULL,
  `Visuelle` varchar(45) DEFAULT NULL,
  `Ouverture` varchar(45) DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `N°` int(11) DEFAULT NULL,
  `Constat` longtext,
  `Durée` int(11) DEFAULT NULL,
  `Notes` mediumtext,
  PRIMARY KEY (`Ordre_exp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `expertiseext`
--

CREATE TABLE IF NOT EXISTS `expertiseext` (
  `ordre` int(11) NOT NULL,
  `CodeLabo` varchar(45) DEFAULT NULL,
  `DateDepart` date DEFAULT NULL,
  `DateReponse` date DEFAULT NULL,
  `Fabricant` varchar(45) DEFAULT NULL,
  `Conclusions` varchar(45) DEFAULT NULL,
  `RefRapExt` varchar(45) DEFAULT NULL,
  ` Enveloppe_N° Enveloppe` int(11) NOT NULL,
  ` Enveloppe_composant_id_composant` int(11) NOT NULL,
  ` Enveloppe_composant_CodesFabricants_Numéro` int(11) NOT NULL,
  ` Enveloppe_composant_Suivi Soustraitance TBU_index_suivi` int(11) NOT NULL,
  ` Enveloppe_SRU_id_SRU` int(11) NOT NULL,
  ` Enveloppe_Nature_panne_idNature_panne` int(11) NOT NULL,
  ` Enveloppe_Examen_visuel_idExamen_visuel` int(11) NOT NULL,
  ` Enveloppe_Phase_Detection_idPhase_Detection` int(11) NOT NULL,
  PRIMARY KEY (`ordre`),
  KEY `fk_ExpertiseExt_ Enveloppe1_idx` (` Enveloppe_N° Enveloppe`,` Enveloppe_composant_id_composant`,` Enveloppe_composant_CodesFabricants_Numéro`,` Enveloppe_composant_Suivi Soustraitance TBU_index_suivi`,` Enveloppe_SRU_id_SRU`,` Enveloppe_Nature_panne_idNature_panne`,` Enveloppe_Examen_visuel_idExamen_visuel`,` Enveloppe_Phase_Detection_idPhase_Detection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nature_panne`
--

CREATE TABLE IF NOT EXISTS `nature_panne` (
  `idNature_panne` int(11) NOT NULL AUTO_INCREMENT,
  `Permanente` tinyint(1) NOT NULL,
  `A_lambiante` tinyint(1) NOT NULL,
  `A_froid` tinyint(1) NOT NULL,
  `A_chaud` tinyint(1) NOT NULL,
  `Vibration` tinyint(1) NOT NULL,
  `Intermittente` tinyint(1) NOT NULL,
  `CAUSE` longtext,
  PRIMARY KEY (`idNature_panne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `phase_detection`
--

CREATE TABLE IF NOT EXISTS `phase_detection` (
  `idPhase_Detection` int(11) NOT NULL AUTO_INCREMENT,
  `avant_dv` tinyint(1) NOT NULL,
  `en_cours_dv` tinyint(1) NOT NULL,
  `Apres_dv` tinyint(1) NOT NULL,
  `avionnage` tinyint(1) NOT NULL,
  `exploitation` tinyint(1) NOT NULL,
  `Autre_Precisionphasedetect` mediumtext,
  PRIMARY KEY (`idPhase_Detection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `Référence` varchar(30) DEFAULT NULL,
  `Désignation` varchar(30) DEFAULT NULL,
  `PROGRAMME` varchar(30) DEFAULT NULL,
  `Domaine` varchar(45) DEFAULT NULL,
  `Activité` varchar(45) DEFAULT NULL,
  `CPP` varchar(45) DEFAULT NULL,
  `EBC` varchar(45) DEFAULT NULL,
  `TMI` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `rps`
--

CREATE TABLE IF NOT EXISTS `rps` (
  `id_RPS` int(11) NOT NULL AUTO_INCREMENT,
  `produit` varchar(30) DEFAULT NULL,
  `NomRPS` varchar(30) DEFAULT NULL,
  `EOTP` varchar(30) DEFAULT NULL,
  ` Enveloppe_N° Enveloppe` int(11) NOT NULL,
  ` Enveloppe_composant_id_composant` int(11) NOT NULL,
  ` Enveloppe_composant_CodesFabricants_Numéro` int(11) NOT NULL,
  ` Enveloppe_composant_Suivi Soustraitance TBU_index_suivi` int(11) NOT NULL,
  ` Enveloppe_SRU_id_SRU` int(11) NOT NULL,
  ` Enveloppe_Nature_panne_idNature_panne` int(11) NOT NULL,
  ` Enveloppe_Examen_visuel_idExamen_visuel` int(11) NOT NULL,
  ` Enveloppe_Phase_Detection_idPhase_Detection` int(11) NOT NULL,
  `EXPERTISE_Ordre_exp` int(11) NOT NULL,
  `Produits_id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_RPS`),
  KEY `fk_RPS_ Enveloppe1_idx` (` Enveloppe_N° Enveloppe`,` Enveloppe_composant_id_composant`,` Enveloppe_composant_CodesFabricants_Numéro`,` Enveloppe_composant_Suivi Soustraitance TBU_index_suivi`,` Enveloppe_SRU_id_SRU`,` Enveloppe_Nature_panne_idNature_panne`,` Enveloppe_Examen_visuel_idExamen_visuel`,` Enveloppe_Phase_Detection_idPhase_Detection`),
  KEY `fk_RPS_EXPERTISE1_idx` (`EXPERTISE_Ordre_exp`),
  KEY `fk_RPS_Produits1_idx` (`Produits_id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `suivi dpa`
--

CREATE TABLE IF NOT EXISTS `suivi dpa` (
  `index_suivi` int(11) NOT NULL AUTO_INCREMENT,
  `refClient` varchar(45) DEFAULT NULL,
  `refIDC` varchar(45) DEFAULT NULL,
  `date_délai` date DEFAULT NULL,
  `date_demande` date DEFAULT NULL,
  `date_devis` date DEFAULT NULL,
  `date_acceptation` date DEFAULT NULL,
  `dateréception` date DEFAULT NULL,
  `date_réponse_orale` date DEFAULT NULL,
  `date_rapport` date DEFAULT NULL,
  `Composant_code_thav` varchar(10) NOT NULL,
  PRIMARY KEY (`index_suivi`),
  KEY `fk_Suivi DPA_Composant1_idx` (`Composant_code_thav`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Dem` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `Service_Dem` varchar(45) DEFAULT NULL,
  `Tel_Dem` int(11) DEFAULT NULL,
  `fonction` varchar(45) DEFAULT NULL COMMENT 'Ingiénieur composant, technicien...',
  `N°TGI` int(11) DEFAULT NULL,
  `Mot_de_passe` varchar(45) DEFAULT NULL,
  `Privilege` varchar(45) DEFAULT NULL,
  `RPS_id_RPS` int(11) NOT NULL,
  `RPS_Produits_id_produit` int(11) NOT NULL,
  `RPS_EXPERTISE_id_expertise` int(11) NOT NULL,
  `RPS_LRU_id_LRU` int(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `fk_Utilisateur_RPS1_idx` (`RPS_id_RPS`,`RPS_Produits_id_produit`,`RPS_EXPERTISE_id_expertise`,`RPS_LRU_id_LRU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appareils_has_expertise`
--
ALTER TABLE `appareils_has_expertise`
  ADD CONSTRAINT `fk_APPAREILS_has_EXPERTISE_APPAREILS1` FOREIGN KEY (`APPAREILS_id_appareil`) REFERENCES `appareils` (`id_appareil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_APPAREILS_has_EXPERTISE_EXPERTISE1` FOREIGN KEY (`EXPERTISE_Ordre_exp`) REFERENCES `expertise` (`Ordre_exp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `codesfabricants`
--
ALTER TABLE `codesfabricants`
  ADD CONSTRAINT `fk_CodesFabricants_Composant1` FOREIGN KEY (`Composant_code_thav`) REFERENCES `composant` (`code_thav`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `ems`
--
ALTER TABLE `ems`
  ADD CONSTRAINT `fk_EMS_ Enveloppe1` FOREIGN KEY (` Enveloppe_N° Enveloppe`) REFERENCES ` enveloppe` (`N_Enveloppe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table ` enveloppe`
--
ALTER TABLE ` enveloppe`
  ADD CONSTRAINT `fk_ Enveloppe_Composant1` FOREIGN KEY (`Composant_code_thav`) REFERENCES `composant` (`code_thav`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ Enveloppe_Examen_visuel1` FOREIGN KEY (`Examen_visuel_idExamen_visuel1`) REFERENCES `examen_visuel` (`idExamen_visuel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ Enveloppe_Nature_panne1` FOREIGN KEY (`Nature_panne_idNature_panne1`) REFERENCES `nature_panne` (`idNature_panne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ Enveloppe_Phase_Detection1` FOREIGN KEY (`Phase_Detection_idPhase_Detection1`) REFERENCES `phase_detection` (`idPhase_Detection`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `expertiseext`
--
ALTER TABLE `expertiseext`
  ADD CONSTRAINT `fk_ExpertiseExt_ Enveloppe1` FOREIGN KEY (` Enveloppe_N° Enveloppe`) REFERENCES ` enveloppe` (`N_Enveloppe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `rps`
--
ALTER TABLE `rps`
  ADD CONSTRAINT `fk_RPS_ Enveloppe1` FOREIGN KEY (` Enveloppe_N° Enveloppe`) REFERENCES ` enveloppe` (`N_Enveloppe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RPS_EXPERTISE1` FOREIGN KEY (`EXPERTISE_Ordre_exp`) REFERENCES `expertise` (`Ordre_exp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RPS_Produits1` FOREIGN KEY (`Produits_id_produit`) REFERENCES `produits` (`id_produit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `suivi dpa`
--
ALTER TABLE `suivi dpa`
  ADD CONSTRAINT `fk_Suivi DPA_Composant1` FOREIGN KEY (`Composant_code_thav`) REFERENCES `composant` (`code_thav`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `fk_Utilisateur_RPS1` FOREIGN KEY (`RPS_id_RPS`) REFERENCES `rps` (`id_RPS`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
