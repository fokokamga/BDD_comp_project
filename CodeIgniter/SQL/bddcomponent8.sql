-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 12 Juillet 2017 à 13:56
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `component`
--

-- --------------------------------------------------------

--
-- Structure de la table `appareils`
--

CREATE TABLE IF NOT EXISTS `appareils` (
  `id_appareil` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_app` varchar(45) NOT NULL,
  `Reference_app` varchar(45) NOT NULL,
  `Code_Trescal` varchar(45) NOT NULL,
  `Date_validation` datetime NOT NULL,
  `description` text NOT NULL,
  `fabricant_app` varchar(45) NOT NULL,
  `date_fin_validation` date NOT NULL,
  `n_immobilisation` varchar(45) NOT NULL,
  PRIMARY KEY (`id_appareil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `appareil_expertise`
--

CREATE TABLE IF NOT EXISTS `appareil_expertise` (
  `id_appareil` int(11) NOT NULL,
  `Ordre_exp` int(11) NOT NULL,
  KEY `id_appareil` (`id_appareil`,`Ordre_exp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `codesfabricants`
--

CREATE TABLE IF NOT EXISTS `codesfabricants` (
  `id_codefab` int(11) NOT NULL AUTO_INCREMENT,
  `ref_sxt` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `code_sap` int(11) NOT NULL,
  `famille` varchar(10) NOT NULL,
  `sous-famille` varchar(10) NOT NULL,
  `historique` varchar(45) NOT NULL,
  `méthode_Ouverture` varchar(45) NOT NULL,
  `méthode_Expertise` varchar(45) NOT NULL,
  `knohau_Hook` int(11) NOT NULL,
  `code_thav` int(11) NOT NULL,
  PRIMARY KEY (`id_codefab`),
  KEY `code_thav` (`code_thav`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `codesfabricants`
--

INSERT INTO `codesfabricants` (`id_codefab`, `ref_sxt`, `numero`, `code_sap`, `famille`, `sous-famille`, `historique`, `méthode_Ouverture`, `méthode_Expertise`, `knohau_Hook`, `code_thav`) VALUES
(1, '', '', 0, '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `composant`
--

CREATE TABLE IF NOT EXISTS `composant` (
  `code_thav` int(10) NOT NULL AUTO_INCREMENT,
  `Etat` varchar(45) NOT NULL,
  `Marquage` varchar(45) NOT NULL,
  `REP_TOPO` varchar(45) NOT NULL,
  `GENERIQUE` varchar(45) NOT NULL,
  `FABRICANT` int(11) NOT NULL,
  `REFERENCE_FABRICANT` varchar(45) NOT NULL,
  `DATE_CODE` date NOT NULL,
  `CODE_SAP` varchar(15) NOT NULL,
  `id_env` int(11) NOT NULL,
  PRIMARY KEY (`code_thav`),
  KEY `id_env` (`id_env`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `composant`
--

INSERT INTO `composant` (`code_thav`, `Etat`, `Marquage`, `REP_TOPO`, `GENERIQUE`, `FABRICANT`, `REFERENCE_FABRICANT`, `DATE_CODE`, `CODE_SAP`, `id_env`) VALUES
(1, '', '', '', '', 0, '', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ems`
--

CREATE TABLE IF NOT EXISTS `ems` (
  `id_EMS` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_EMS` varchar(40) NOT NULL,
  `id_env` int(11) NOT NULL,
  PRIMARY KEY (`id_EMS`),
  KEY `id_env` (`id_env`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `enveloppe`
--

CREATE TABLE IF NOT EXISTS `enveloppe` (
  `id_env` int(11) NOT NULL AUTO_INCREMENT,
  `N_Enveloppe` int(255) NOT NULL DEFAULT '450000',
  `TBU_EMS` varchar(45) NOT NULL,
  `Date_Saisie` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_DEPOSE` date NOT NULL,
  `LIEUX_DEPOSE` varchar(45) NOT NULL,
  `COMMENTAIRES` longtext NOT NULL,
  `N_CER` varchar(45) NOT NULL,
  `N_CR` varchar(45) NOT NULL,
  `PN_SRU` varchar(45) NOT NULL,
  `SN_SRU` varchar(45) NOT NULL,
  `PN_LRU` varchar(45) NOT NULL,
  `SN_LRU` varchar(45) NOT NULL,
  `DEC_EXP` enum('oui','non') NOT NULL,
  `N_eSupport` int(50) NOT NULL,
  PRIMARY KEY (`id_env`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `enveloppe`
--

INSERT INTO `enveloppe` (`id_env`, `N_Enveloppe`, `TBU_EMS`, `Date_Saisie`, `DATE_DEPOSE`, `LIEUX_DEPOSE`, `COMMENTAIRES`, `N_CER`, `N_CR`, `PN_SRU`, `SN_SRU`, `PN_LRU`, `SN_LRU`, `DEC_EXP`, `N_eSupport`) VALUES
(1, 450000, '', '2017-07-12 10:49:23', '2017-07-10', 'INTHWE', '', '2561', '', '', '', '', '', 'oui', 0),
(2, 450000, '', '2017-07-12 10:50:20', '2017-07-10', 'INTHWE', '', '2561', '', '', '', '', '', 'oui', 0);

-- --------------------------------------------------------

--
-- Structure de la table `examen_visuel`
--

CREATE TABLE IF NOT EXISTS `examen_visuel` (
  `idExamen_visuel` int(11) NOT NULL AUTO_INCREMENT,
  `Nothing_comp` set('Nothing','Other') NOT NULL,
  `comment_comp` mediumtext NOT NULL,
  `nothing_Brasure` set('Nothing','Other') NOT NULL,
  `comment_brasure` mediumtext NOT NULL,
  `nothing_env` set('Nothing','Other') NOT NULL,
  `comment_env` mediumtext NOT NULL,
  `id_env` int(11) NOT NULL,
  PRIMARY KEY (`idExamen_visuel`),
  KEY `id_env` (`id_env`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `examen_visuel`
--

INSERT INTO `examen_visuel` (`idExamen_visuel`, `Nothing_comp`, `comment_comp`, `nothing_Brasure`, `comment_brasure`, `nothing_env`, `comment_env`, `id_env`) VALUES
(1, 'Nothing', '', 'Nothing', '', 'Nothing', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `expertise`
--

CREATE TABLE IF NOT EXISTS `expertise` (
  `Ordre_exp` int(11) NOT NULL AUTO_INCREMENT,
  `ic` varchar(45) NOT NULL,
  `date_enreg` date NOT NULL,
  `elec` varchar(45) NOT NULL,
  `Visuelle` varchar(45) NOT NULL,
  `Ouverture` varchar(45) NOT NULL,
  `date_fin` date NOT NULL,
  `Num` int(11) NOT NULL,
  `Constat` longtext NOT NULL,
  `Duree` int(11) NOT NULL,
  `Notes` mediumtext NOT NULL,
  PRIMARY KEY (`Ordre_exp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `expertiseext`
--

CREATE TABLE IF NOT EXISTS `expertiseext` (
  `ordre` int(11) NOT NULL,
  `CodeLabo` varchar(45) NOT NULL,
  `DateDepart` date NOT NULL,
  `DateReponse` date NOT NULL,
  `Fabricant` varchar(45) NOT NULL,
  `Conclusions` varchar(45) NOT NULL,
  `RefRapExt` varchar(45) NOT NULL,
  `id_env` int(11) NOT NULL,
  PRIMARY KEY (`ordre`),
  KEY `id_env` (`id_env`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nature_panne`
--

CREATE TABLE IF NOT EXISTS `nature_panne` (
  `idNature_panne` int(11) NOT NULL AUTO_INCREMENT,
  `temperature` set('A l ambiante/Room','A froid/Cold','A chaud/Hot') NOT NULL,
  `Vibration` enum('','Oui','Non') NOT NULL,
  `CAUSE` longtext NOT NULL,
  `freq_panne` set('Permanente/Permanent','Intermittente/Occasional') NOT NULL,
  `id_env` int(11) NOT NULL,
  PRIMARY KEY (`idNature_panne`),
  KEY `id_env` (`id_env`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `nature_panne`
--

INSERT INTO `nature_panne` (`idNature_panne`, `temperature`, `Vibration`, `CAUSE`, `freq_panne`, `id_env`) VALUES
(1, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `phase_detection`
--

CREATE TABLE IF NOT EXISTS `phase_detection` (
  `idPhase_Detection` int(11) NOT NULL AUTO_INCREMENT,
  `Autre_Precisionphasedetect` mediumtext NOT NULL,
  `deverminage` set('Avant déverminage/Before Burn In',' En cours de déverminage/During Burn In','Après déverminage/After Burn In') NOT NULL,
  `typdetect` set('Avionnage','Exploitation/In Service') NOT NULL,
  `id_env` int(11) NOT NULL,
  PRIMARY KEY (`idPhase_Detection`),
  KEY `id_env` (`id_env`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `phase_detection`
--

INSERT INTO `phase_detection` (`idPhase_Detection`, `Autre_Precisionphasedetect`, `deverminage`, `typdetect`, `id_env`) VALUES
(1, '', 'Après déverminage/After Burn In', 'Avionnage', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `Référence` varchar(30) NOT NULL,
  `Désignation` varchar(30) NOT NULL,
  `PROGRAMME` varchar(30) NOT NULL,
  `Domaine` varchar(45) NOT NULL,
  `Activité` varchar(45) NOT NULL,
  `CPP` varchar(45) NOT NULL,
  `EBC` varchar(45) NOT NULL,
  `TMI` varchar(45) NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `Référence`, `Désignation`, `PROGRAMME`, `Domaine`, `Activité`, `CPP`, `EBC`, `TMI`) VALUES
(1, '', '', 'AIRBUS', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `rps`
--

CREATE TABLE IF NOT EXISTS `rps` (
  `id_RPS` int(11) NOT NULL AUTO_INCREMENT,
  `produit` varchar(30) NOT NULL,
  `NomRPS` varchar(30) NOT NULL,
  `EOTP` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `Ordre_exp` int(11) NOT NULL,
  PRIMARY KEY (`id_RPS`),
  KEY `id_user` (`id_user`),
  KEY `id_produit` (`id_produit`),
  KEY `Ordre_exp` (`Ordre_exp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `rps`
--

INSERT INTO `rps` (`id_RPS`, `produit`, `NomRPS`, `EOTP`, `id_user`, `id_produit`, `Ordre_exp`) VALUES
(1, '', 'SUY LOIC', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `suivi_dpa`
--

CREATE TABLE IF NOT EXISTS `suivi_dpa` (
  `index_suivi` int(11) NOT NULL AUTO_INCREMENT,
  `refClient` varchar(45) NOT NULL,
  `refIDC` varchar(45) NOT NULL,
  `date_délai` date NOT NULL,
  `date_demande` date NOT NULL,
  `date_devis` date NOT NULL,
  `date_acceptation` date NOT NULL,
  `datereception` date NOT NULL,
  `date_réponse_orale` date NOT NULL,
  `date_rapport` date NOT NULL,
  `code_thav` int(11) NOT NULL,
  PRIMARY KEY (`index_suivi`),
  KEY `code_thav` (`code_thav`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Dem` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `Service_Dem` varchar(45) NOT NULL,
  `Tel_Dem` int(11) NOT NULL,
  `fonction` varchar(45) NOT NULL COMMENT 'Ingiénieur composant, technicien...',
  `N_TGI` varchar(11) NOT NULL,
  `Mot_de_passe` varchar(45) NOT NULL,
  `Privilege` varchar(45) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `Nom_Dem`, `prenom`, `Service_Dem`, `Tel_Dem`, `fonction`, `N_TGI`, `Mot_de_passe`, `Privilege`) VALUES
(1, 'GOUPILLEAU', '', '', 251419135, '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
