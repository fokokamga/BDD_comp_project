-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 10 juil. 2017 à 08:47
-- Version du serveur :  10.1.24-MariaDB
-- Version de PHP :  7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `component`
--

-- --------------------------------------------------------

--
-- Structure de la table `appareils`
--

CREATE TABLE `appareils` (
  `id_appareil` int(11) NOT NULL,
  `Nom_app` varchar(45) NOT NULL,
  `Reference_app` varchar(45) NOT NULL,
  `Code_Trescal` varchar(45) NOT NULL,
  `Date_validation` datetime NOT NULL,
  `description` text NOT NULL,
  `fabricant_app` varchar(45) NOT NULL,
  `date_fin_validation` date NOT NULL,
  `n_immobilisation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `codesfabricants`
--

CREATE TABLE `codesfabricants` (
  `id_codefab` int(11) NOT NULL,
  `ref_sxt` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `code_sap` int(11) NOT NULL,
  `famille` varchar(10) NOT NULL,
  `sous-famille` varchar(10) NOT NULL,
  `historique` varchar(45) NOT NULL,
  `méthode_Ouverture` varchar(45) NOT NULL,
  `méthode_Expertise` varchar(45) NOT NULL,
  `knohau_Hook` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `codesfabricants`
--

INSERT INTO `codesfabricants` (`id_codefab`, `ref_sxt`, `numero`, `code_sap`, `famille`, `sous-famille`, `historique`, `méthode_Ouverture`, `méthode_Expertise`, `knohau_Hook`) VALUES
(1, 'DHJD', '', 0, '', '', '', '', '', 0),
(2, 'DHJD', '', 0, '', '', '', '', '', 0),
(3, 'DHJD', '', 0, '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `composant`
--

CREATE TABLE `composant` (
  `code_thav` int(10) NOT NULL,
  `Etat` varchar(45) NOT NULL,
  `Marquage` varchar(45) NOT NULL,
  `REP_TOPO` varchar(45) NOT NULL,
  `GENERIQUE` varchar(45) NOT NULL,
  `FABRICANT` int(11) NOT NULL,
  `REFERENCE_FABRICANT` varchar(45) NOT NULL,
  `DATE_CODE` date NOT NULL,
  `CODE_SAP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `composant`
--

INSERT INTO `composant` (`code_thav`, `Etat`, `Marquage`, `REP_TOPO`, `GENERIQUE`, `FABRICANT`, `REFERENCE_FABRICANT`, `DATE_CODE`, `CODE_SAP`) VALUES
(1, '', '', '52752', '', 757, '5257', '0000-00-00', ''),
(2, '', '', '52752', '', 0, '5257', '0000-00-00', ''),
(3, '', '', '52752', '', 0, '5257', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Structure de la table `ems`
--

CREATE TABLE `ems` (
  `id_EMS` int(11) NOT NULL,
  `Nom_EMS` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enveloppe`
--

CREATE TABLE `enveloppe` (
  `id_env` int(11) NOT NULL,
  `N_Enveloppe` varchar(255) NOT NULL,
  `TBU_EMS` varchar(45) NOT NULL,
  `Date_Saisie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_DEPOSE` date NOT NULL,
  `LIEUX_DEPOSE` varchar(45) NOT NULL,
  `CONTACT` varchar(45) NOT NULL,
  `STADE_DEPOSE` varchar(45) NOT NULL,
  `COMMENTAIRES` longtext NOT NULL,
  `N_CER` varchar(45) NOT NULL,
  `TEMP` varchar(45) NOT NULL,
  `Saisie` varchar(45) NOT NULL,
  `N_CR` varchar(45) NOT NULL,
  `CONFIRME` varchar(45) NOT NULL,
  `PN_SRU` varchar(45) NOT NULL,
  `SN_SRU` varchar(45) NOT NULL,
  `PN_LRU` varchar(45) NOT NULL,
  `SN_LRU` varchar(45) NOT NULL,
  `DEC_EXP` enum('oui','non') NOT NULL,
  `N_eSupport` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enveloppe`
--

INSERT INTO `enveloppe` (`id_env`, `N_Enveloppe`, `TBU_EMS`, `Date_Saisie`, `DATE_DEPOSE`, `LIEUX_DEPOSE`, `CONTACT`, `STADE_DEPOSE`, `COMMENTAIRES`, `N_CER`, `TEMP`, `Saisie`, `N_CR`, `CONFIRME`, `PN_SRU`, `SN_SRU`, `PN_LRU`, `SN_LRU`, `DEC_EXP`, `N_eSupport`) VALUES
(1, '', '', '0000-00-00 00:00:00', '0000-00-00', 'LETH', '', '', 'lkgkjhkghjkghj', '75GH', '', '', '4523452', '', 'FFFNGF', '4542575', 'DFGH', '4524', 'oui', 0),
(2, '475754', '', '0000-00-00 00:00:00', '0000-00-00', 'LETH', '', '', 'xcfc', '75GH', '', '', '75757757', '', 'FFFNGF', '4542575', 'DFGH', '4524', 'non', 74574),
(3, '475754', '', '2017-07-09 21:44:01', '0000-00-00', 'vbvcv', '', '', 'fghndgfhnd', '75GH', '', '', '57527752', '', 'FFFNGF', '4542575', 'DFGH', '4524', 'oui', 74574);

-- --------------------------------------------------------

--
-- Structure de la table `examen_visuel`
--

CREATE TABLE `examen_visuel` (
  `idExamen_visuel` int(11) NOT NULL,
  `Nothing_comp` set('Nothing','Other') NOT NULL,
  `comment_comp` mediumtext NOT NULL,
  `nothing_Brasure` set('Nothing','Other') NOT NULL,
  `comment_brasure` mediumtext NOT NULL,
  `nothing_env` set('Nothing','Other') NOT NULL,
  `comment_env` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `examen_visuel`
--

INSERT INTO `examen_visuel` (`idExamen_visuel`, `Nothing_comp`, `comment_comp`, `nothing_Brasure`, `comment_brasure`, `nothing_env`, `comment_env`) VALUES
(1, 'Other', 'jgkjkhjk', 'Other', 'jklgjklgjkl', 'Nothing', 'gjkljkl'),
(2, 'Nothing', 'gfdhghfjgj', 'Other', 'ghghfhjdh', 'Other', 'cgjg'),
(3, 'Other', 'hdnhgngh', 'Nothing', 'ndghngdhng', 'Nothing', 'dhndgfdhngfh');

-- --------------------------------------------------------

--
-- Structure de la table `expertise`
--

CREATE TABLE `expertise` (
  `Ordre_exp` int(11) NOT NULL,
  `ic` varchar(45) NOT NULL,
  `date_enreg` date NOT NULL,
  `elec` varchar(45) NOT NULL,
  `Visuelle` varchar(45) NOT NULL,
  `Ouverture` varchar(45) NOT NULL,
  `date_fin` date NOT NULL,
  `Num` int(11) NOT NULL,
  `Constat` longtext NOT NULL,
  `Duree` int(11) NOT NULL,
  `Notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `expertiseext`
--

CREATE TABLE `expertiseext` (
  `ordre` int(11) NOT NULL,
  `CodeLabo` varchar(45) NOT NULL,
  `DateDepart` date NOT NULL,
  `DateReponse` date NOT NULL,
  `Fabricant` varchar(45) NOT NULL,
  `Conclusions` varchar(45) NOT NULL,
  `RefRapExt` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nature_panne`
--

CREATE TABLE `nature_panne` (
  `idNature_panne` int(11) NOT NULL,
  `temperature` set('A l ambiante/Room','A froid/Cold','A chaud/Hot') NOT NULL,
  `Vibration` enum('Oui','Non') NOT NULL,
  `CAUSE` longtext NOT NULL,
  `freq_panne` set('Permanente/Permanent','Intermittente/Occasional') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nature_panne`
--

INSERT INTO `nature_panne` (`idNature_panne`, `temperature`, `Vibration`, `CAUSE`, `freq_panne`) VALUES
(1, 'A l ambiante/Room', '', 'jgklgjkgljk', 'Intermittente/Occasional'),
(2, 'A froid/Cold', 'Oui', 'gfghfjghjf', 'Permanente/Permanent'),
(3, 'A froid/Cold', 'Oui', 'djgfhjdghjdghjd', 'Intermittente/Occasional');

-- --------------------------------------------------------

--
-- Structure de la table `phase_detection`
--

CREATE TABLE `phase_detection` (
  `idPhase_Detection` int(11) NOT NULL,
  `Autre_Precisionphasedetect` mediumtext NOT NULL,
  `deverminage` set('Avant déverminage/Before Burn In',' En cours de déverminage/During Burn In','Après déverminage/After Burn In') NOT NULL,
  `typdetect` set('Avionnage','Exploitation/In Service') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phase_detection`
--

INSERT INTO `phase_detection` (`idPhase_Detection`, `Autre_Precisionphasedetect`, `deverminage`, `typdetect`) VALUES
(1, 'gjgkljklj', 'Avant déverminage/Before Burn In', 'Avionnage'),
(2, 'gjfhjfghjf', 'Avant déverminage/Before Burn In', 'Avionnage'),
(3, 'fdjfghjdfhdjf', 'Avant déverminage/Before Burn In', 'Avionnage');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(11) NOT NULL,
  `Référence` varchar(30) NOT NULL,
  `Désignation` varchar(30) NOT NULL,
  `PROGRAMME` varchar(30) NOT NULL,
  `Domaine` varchar(45) NOT NULL,
  `Activité` varchar(45) NOT NULL,
  `CPP` varchar(45) NOT NULL,
  `EBC` varchar(45) NOT NULL,
  `TMI` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `Référence`, `Désignation`, `PROGRAMME`, `Domaine`, `Activité`, `CPP`, `EBC`, `TMI`) VALUES
(1, '', '', 'AIRBUS', '', '', '', '', ''),
(2, '', '', 'AIRBUS', '', '', '', '', ''),
(3, '', '', 'AIRBUS', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `rps`
--

CREATE TABLE `rps` (
  `id_RPS` int(11) NOT NULL,
  `produit` varchar(30) NOT NULL,
  `NomRPS` varchar(30) NOT NULL,
  `EOTP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rps`
--

INSERT INTO `rps` (`id_RPS`, `produit`, `NomRPS`, `EOTP`) VALUES
(1, '', 'FLORIN', ''),
(2, '', 'FLORIN', ''),
(3, '', 'FLORIN', '');

-- --------------------------------------------------------

--
-- Structure de la table `suivi_dpa`
--

CREATE TABLE `suivi_dpa` (
  `index_suivi` int(11) NOT NULL,
  `refClient` varchar(45) NOT NULL,
  `refIDC` varchar(45) NOT NULL,
  `date_délai` date NOT NULL,
  `date_demande` date NOT NULL,
  `date_devis` date NOT NULL,
  `date_acceptation` date NOT NULL,
  `datereception` date NOT NULL,
  `date_réponse_orale` date NOT NULL,
  `date_rapport` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `Nom_Dem` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `Service_Dem` varchar(45) DEFAULT NULL,
  `Tel_Dem` int(11) DEFAULT NULL,
  `fonction` varchar(45) DEFAULT NULL COMMENT 'Ingiénieur composant, technicien...',
  `N_TGI` int(11) DEFAULT NULL,
  `Mot_de_passe` varchar(45) DEFAULT NULL,
  `Privilege` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `Nom_Dem`, `prenom`, `Service_Dem`, `Tel_Dem`, `fonction`, `N_TGI`, `Mot_de_passe`, `Privilege`) VALUES
(1, 'FLORIN FOKO KAMGA', NULL, NULL, 625943704, NULL, NULL, NULL, NULL),
(2, 'JEANNE MATIEDJE TAWA', NULL, NULL, 650082989, NULL, NULL, NULL, NULL),
(3, 'ANNE PATRICIA NGANDEU NGOUTCHEU', NULL, NULL, 745275, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appareils`
--
ALTER TABLE `appareils`
  ADD PRIMARY KEY (`id_appareil`);

--
-- Index pour la table `codesfabricants`
--
ALTER TABLE `codesfabricants`
  ADD PRIMARY KEY (`id_codefab`);

--
-- Index pour la table `composant`
--
ALTER TABLE `composant`
  ADD PRIMARY KEY (`code_thav`);

--
-- Index pour la table `ems`
--
ALTER TABLE `ems`
  ADD PRIMARY KEY (`id_EMS`);

--
-- Index pour la table `enveloppe`
--
ALTER TABLE `enveloppe`
  ADD PRIMARY KEY (`id_env`);

--
-- Index pour la table `examen_visuel`
--
ALTER TABLE `examen_visuel`
  ADD PRIMARY KEY (`idExamen_visuel`);

--
-- Index pour la table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`Ordre_exp`);

--
-- Index pour la table `expertiseext`
--
ALTER TABLE `expertiseext`
  ADD PRIMARY KEY (`ordre`);

--
-- Index pour la table `nature_panne`
--
ALTER TABLE `nature_panne`
  ADD PRIMARY KEY (`idNature_panne`);

--
-- Index pour la table `phase_detection`
--
ALTER TABLE `phase_detection`
  ADD PRIMARY KEY (`idPhase_Detection`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `rps`
--
ALTER TABLE `rps`
  ADD PRIMARY KEY (`id_RPS`);

--
-- Index pour la table `suivi_dpa`
--
ALTER TABLE `suivi_dpa`
  ADD PRIMARY KEY (`index_suivi`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appareils`
--
ALTER TABLE `appareils`
  MODIFY `id_appareil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `codesfabricants`
--
ALTER TABLE `codesfabricants`
  MODIFY `id_codefab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `composant`
--
ALTER TABLE `composant`
  MODIFY `code_thav` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ems`
--
ALTER TABLE `ems`
  MODIFY `id_EMS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `enveloppe`
--
ALTER TABLE `enveloppe`
  MODIFY `id_env` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `examen_visuel`
--
ALTER TABLE `examen_visuel`
  MODIFY `idExamen_visuel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `Ordre_exp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `nature_panne`
--
ALTER TABLE `nature_panne`
  MODIFY `idNature_panne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `phase_detection`
--
ALTER TABLE `phase_detection`
  MODIFY `idPhase_Detection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `rps`
--
ALTER TABLE `rps`
  MODIFY `id_RPS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `suivi_dpa`
--
ALTER TABLE `suivi_dpa`
  MODIFY `index_suivi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
