SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `component` ;
USE `component` ;

-- -----------------------------------------------------
-- Table `component`.`appareils`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`appareils` (
  `id_appareil` INT(11) NOT NULL AUTO_INCREMENT ,
  `Nom_app` VARCHAR(45) NOT NULL ,
  `Reference_app` VARCHAR(45) NOT NULL ,
  `Code_Trescal` VARCHAR(45) NOT NULL ,
  `Date_validation` DATETIME NOT NULL ,
  `description` TEXT NOT NULL ,
  `fabricant_app` VARCHAR(45) NOT NULL ,
  `date_fin_validation` DATE NOT NULL ,
  `n_immobilisation` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id_appareil`) )
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`enveloppe`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`enveloppe` (
  `id_env` INT(11) NOT NULL AUTO_INCREMENT ,
  `N_Enveloppe` INT(255) NOT NULL DEFAULT '450000' ,
  `TBU_EMS` VARCHAR(45) NOT NULL ,
  `Date_Saisie` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `DATE_DEPOSE` DATE NOT NULL ,
  `LIEUX_DEPOSE` VARCHAR(45) NOT NULL ,
  `COMMENTAIRES` LONGTEXT NOT NULL ,
  `N_CER` VARCHAR(45) NOT NULL ,
  `N_CR` VARCHAR(45) NOT NULL ,
  `PN_SRU` VARCHAR(45) NOT NULL ,
  `SN_SRU` VARCHAR(45) NOT NULL ,
  `PN_LRU` VARCHAR(45) NOT NULL ,
  `SN_LRU` VARCHAR(45) NOT NULL ,
  `DEC_EXP` ENUM('oui','non') NOT NULL ,
  `N_eSupport` INT(50) NOT NULL ,
  PRIMARY KEY (`id_env`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`composant`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`composant` (
  `code_thav` INT(10) NOT NULL AUTO_INCREMENT ,
  `Etat` VARCHAR(45) NOT NULL ,
  `Marquage` VARCHAR(45) NOT NULL ,
  `REP_TOPO` VARCHAR(45) NOT NULL ,
  `GENERIQUE` VARCHAR(45) NOT NULL ,
  `FABRICANT` INT(11) NOT NULL ,
  `REFERENCE_FABRICANT` VARCHAR(45) NOT NULL ,
  `DATE_CODE` DATE NOT NULL ,
  `CODE_SAP` VARCHAR(15) NOT NULL ,
  `enveloppe_id_env` INT(11) NOT NULL ,
  PRIMARY KEY (`code_thav`) ,
  INDEX `fk_composant_enveloppe1_idx` (`enveloppe_id_env` ASC) ,
  CONSTRAINT `fk_composant_enveloppe1`
    FOREIGN KEY (`enveloppe_id_env` )
    REFERENCES `component`.`enveloppe` (`id_env` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`codesfabricants`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`codesfabricants` (
  `id_codefab` INT(11) NOT NULL AUTO_INCREMENT ,
  `ref_sxt` VARCHAR(45) NOT NULL ,
  `numero` VARCHAR(45) NOT NULL ,
  `code_sap` INT(11) NOT NULL ,
  `famille` VARCHAR(10) NOT NULL ,
  `sous-famille` VARCHAR(10) NOT NULL ,
  `historique` VARCHAR(45) NOT NULL ,
  `méthode_Ouverture` VARCHAR(45) NOT NULL ,
  `méthode_Expertise` VARCHAR(45) NOT NULL ,
  `knohau_Hook` INT(11) NOT NULL ,
  `composant_code_thav` INT(10) NOT NULL ,
  PRIMARY KEY (`id_codefab`) ,
  INDEX `fk_codesfabricants_composant1_idx` (`composant_code_thav` ASC) ,
  CONSTRAINT `fk_codesfabricants_composant1`
    FOREIGN KEY (`composant_code_thav` )
    REFERENCES `component`.`composant` (`code_thav` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`ems`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`ems` (
  `id_EMS` INT(11) NOT NULL AUTO_INCREMENT ,
  `Nom_EMS` VARCHAR(40) NOT NULL ,
  `enveloppe_id_env` INT(11) NOT NULL ,
  PRIMARY KEY (`id_EMS`) ,
  INDEX `fk_ems_enveloppe1_idx` (`enveloppe_id_env` ASC) ,
  CONSTRAINT `fk_ems_enveloppe1`
    FOREIGN KEY (`enveloppe_id_env` )
    REFERENCES `component`.`enveloppe` (`id_env` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`examen_visuel`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`examen_visuel` (
  `idExamen_visuel` INT(11) NOT NULL AUTO_INCREMENT ,
  `Nothing_comp` SET('Nothing','Other') NOT NULL ,
  `comment_comp` MEDIUMTEXT NOT NULL ,
  `nothing_Brasure` SET('Nothing','Other') NOT NULL ,
  `comment_brasure` MEDIUMTEXT NOT NULL ,
  `nothing_env` SET('Nothing','Other') NOT NULL ,
  `comment_env` MEDIUMTEXT NOT NULL ,
  `enveloppe_id_env` INT(11) NOT NULL ,
  PRIMARY KEY (`idExamen_visuel`) ,
  INDEX `fk_examen_visuel_enveloppe1_idx` (`enveloppe_id_env` ASC) ,
  CONSTRAINT `fk_examen_visuel_enveloppe1`
    FOREIGN KEY (`enveloppe_id_env` )
    REFERENCES `component`.`enveloppe` (`id_env` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`expertise`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`expertise` (
  `Ordre_exp` INT(11) NOT NULL AUTO_INCREMENT ,
  `ic` VARCHAR(45) NOT NULL ,
  `date_enreg` DATE NOT NULL ,
  `elec` VARCHAR(45) NOT NULL ,
  `Visuelle` VARCHAR(45) NOT NULL ,
  `Ouverture` VARCHAR(45) NOT NULL ,
  `date_fin` DATE NOT NULL ,
  `Num` INT(11) NOT NULL ,
  `Constat` LONGTEXT NOT NULL ,
  `Duree` INT(11) NOT NULL ,
  `Notes` MEDIUMTEXT NOT NULL ,
  PRIMARY KEY (`Ordre_exp`) )
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`expertiseext`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`expertiseext` (
  `ordre` INT(11) NOT NULL ,
  `CodeLabo` VARCHAR(45) NOT NULL ,
  `DateDepart` DATE NOT NULL ,
  `DateReponse` DATE NOT NULL ,
  `Fabricant` VARCHAR(45) NOT NULL ,
  `Conclusions` VARCHAR(45) NOT NULL ,
  `RefRapExt` VARCHAR(45) NOT NULL ,
  `enveloppe_id_env` INT(11) NOT NULL ,
  PRIMARY KEY (`ordre`) ,
  INDEX `fk_expertiseext_enveloppe1_idx` (`enveloppe_id_env` ASC) ,
  CONSTRAINT `fk_expertiseext_enveloppe1`
    FOREIGN KEY (`enveloppe_id_env` )
    REFERENCES `component`.`enveloppe` (`id_env` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`nature_panne`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`nature_panne` (
  `idNature_panne` INT(11) NOT NULL AUTO_INCREMENT ,
  `temperature` SET('A l ambiante/Room','A froid/Cold','A chaud/Hot') NOT NULL ,
  `Vibration` ENUM('','Oui','Non') NOT NULL ,
  `CAUSE` LONGTEXT NOT NULL ,
  `freq_panne` SET('Permanente/Permanent','Intermittente/Occasional') NOT NULL ,
  `enveloppe_id_env` INT(11) NOT NULL ,
  PRIMARY KEY (`idNature_panne`) ,
  INDEX `fk_nature_panne_enveloppe1_idx` (`enveloppe_id_env` ASC) ,
  CONSTRAINT `fk_nature_panne_enveloppe1`
    FOREIGN KEY (`enveloppe_id_env` )
    REFERENCES `component`.`enveloppe` (`id_env` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`phase_detection`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`phase_detection` (
  `idPhase_Detection` INT(11) NOT NULL AUTO_INCREMENT ,
  `Autre_Precisionphasedetect` MEDIUMTEXT NOT NULL ,
  `deverminage` SET('Avant déverminage/Before Burn In',' En cours de déverminage/During Burn In','Après déverminage/After Burn In') NOT NULL ,
  `typdetect` SET('Avionnage','Exploitation/In Service') NOT NULL ,
  `enveloppe_id_env` INT(11) NOT NULL ,
  PRIMARY KEY (`idPhase_Detection`) ,
  INDEX `fk_phase_detection_enveloppe_idx` (`enveloppe_id_env` ASC) ,
  CONSTRAINT `fk_phase_detection_enveloppe`
    FOREIGN KEY (`enveloppe_id_env` )
    REFERENCES `component`.`enveloppe` (`id_env` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`produits`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`produits` (
  `id_produit` INT(11) NOT NULL AUTO_INCREMENT ,
  `Référence` VARCHAR(30) NOT NULL ,
  `Désignation` VARCHAR(30) NOT NULL ,
  `PROGRAMME` VARCHAR(30) NOT NULL ,
  `Domaine` VARCHAR(45) NOT NULL ,
  `Activité` VARCHAR(45) NOT NULL ,
  `CPP` VARCHAR(45) NOT NULL ,
  `EBC` VARCHAR(45) NOT NULL ,
  `TMI` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id_produit`) )
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`utilisateur`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`utilisateur` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT ,
  `Nom_Dem` VARCHAR(45) NOT NULL ,
  `prenom` VARCHAR(45) NOT NULL ,
  `Service_Dem` VARCHAR(45) NOT NULL ,
  `Tel_Dem` INT(11) NOT NULL ,
  `fonction` VARCHAR(45) NOT NULL COMMENT 'Ingiénieur composant, technicien...' ,
  `N_TGI` VARCHAR(11) NOT NULL ,
  `Mot_de_passe` VARCHAR(45) NOT NULL ,
  `Privilege` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id_user`) )
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`rps`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`rps` (
  `id_RPS` INT(11) NOT NULL AUTO_INCREMENT ,
  `produit` VARCHAR(30) NOT NULL ,
  `NomRPS` VARCHAR(30) NOT NULL ,
  `EOTP` VARCHAR(30) NOT NULL ,
  `produits_id_produit` INT(11) NOT NULL ,
  `enveloppe_id_env` INT(11) NOT NULL ,
  `utilisateur_id_user` INT(11) NOT NULL ,
  `expertise_Ordre_exp` INT(11) NOT NULL ,
  PRIMARY KEY (`id_RPS`) ,
  INDEX `fk_rps_produits1_idx` (`produits_id_produit` ASC) ,
  INDEX `fk_rps_enveloppe1_idx` (`enveloppe_id_env` ASC) ,
  INDEX `fk_rps_utilisateur1_idx` (`utilisateur_id_user` ASC) ,
  INDEX `fk_rps_expertise1_idx` (`expertise_Ordre_exp` ASC) ,
  CONSTRAINT `fk_rps_produits1`
    FOREIGN KEY (`produits_id_produit` )
    REFERENCES `component`.`produits` (`id_produit` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rps_enveloppe1`
    FOREIGN KEY (`enveloppe_id_env` )
    REFERENCES `component`.`enveloppe` (`id_env` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rps_utilisateur1`
    FOREIGN KEY (`utilisateur_id_user` )
    REFERENCES `component`.`utilisateur` (`id_user` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rps_expertise1`
    FOREIGN KEY (`expertise_Ordre_exp` )
    REFERENCES `component`.`expertise` (`Ordre_exp` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`suivi_dpa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`suivi_dpa` (
  `index_suivi` INT(11) NOT NULL AUTO_INCREMENT ,
  `refClient` VARCHAR(45) NOT NULL ,
  `refIDC` VARCHAR(45) NOT NULL ,
  `date_délai` DATE NOT NULL ,
  `date_demande` DATE NOT NULL ,
  `date_devis` DATE NOT NULL ,
  `date_acceptation` DATE NOT NULL ,
  `datereception` DATE NOT NULL ,
  `date_réponse_orale` DATE NOT NULL ,
  `date_rapport` DATE NOT NULL ,
  `composant_code_thav` INT(10) NOT NULL ,
  PRIMARY KEY (`index_suivi`) ,
  INDEX `fk_suivi_dpa_composant1_idx` (`composant_code_thav` ASC) ,
  CONSTRAINT `fk_suivi_dpa_composant1`
    FOREIGN KEY (`composant_code_thav` )
    REFERENCES `component`.`composant` (`code_thav` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `component`.`appareils_has_expertise`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`appareils_has_expertise` (
  `appareils_id_appareil` INT(11) NOT NULL ,
  `expertise_Ordre_exp` INT(11) NOT NULL ,
  INDEX `fk_appareils_has_expertise_expertise1_idx` (`expertise_Ordre_exp` ASC) ,
  INDEX `fk_appareils_has_expertise_appareils1_idx` (`appareils_id_appareil` ASC) ,
  CONSTRAINT `fk_appareils_has_expertise_appareils1`
    FOREIGN KEY (`appareils_id_appareil` )
    REFERENCES `component`.`appareils` (`id_appareil` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_appareils_has_expertise_expertise1`
    FOREIGN KEY (`expertise_Ordre_exp` )
    REFERENCES `component`.`expertise` (`Ordre_exp` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `component` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
