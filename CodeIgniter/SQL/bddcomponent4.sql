SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `component` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `component` ;

-- -----------------------------------------------------
-- Table `component`.`CodesFabricants`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`CodesFabricants` (
  `id_codefab` INT NOT NULL AUTO_INCREMENT ,
  `ref_sxt` VARCHAR(45) NULL ,
  `numero` VARCHAR(45) NULL ,
  `code_sap` INT NULL ,
  `famille` VARCHAR(10) NULL ,
  `sous-famille` VARCHAR(10) NULL ,
  `historique` VARCHAR(45) NULL ,
  `méthode_Ouverture` VARCHAR(45) NULL ,
  `méthode_Expertise` VARCHAR(45) NULL ,
  `knohau_Hook` INT NULL ,
  PRIMARY KEY (`id_codefab`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Suivi_DPA`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Suivi_DPA` (
  `index_suivi` INT NOT NULL AUTO_INCREMENT ,
  `refClient` VARCHAR(45) NULL ,
  `refIDC` VARCHAR(45) NULL ,
  `date_délai` DATE NULL ,
  `date_demande` DATE NULL ,
  `date_devis` DATE NULL ,
  `date_acceptation` DATE NULL ,
  `datereception` DATE NULL ,
  `date_réponse_orale` DATE NULL ,
  `date_rapport` DATE NULL ,
  PRIMARY KEY (`index_suivi`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Composant`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Composant` (
  `code_thav` VARCHAR(10) NOT NULL ,
  `Etat` VARCHAR(45) NULL ,
  `Marquage` VARCHAR(45) NULL ,
  `REP_TOPO` VARCHAR(45) NULL ,
  `GENERIQUE` VARCHAR(45) NULL ,
  `FABRICANT` INT NULL ,
  `REFERENCE_FABRICANT` VARCHAR(45) NULL ,
  `DATE_CODE` DATE NULL ,
  `CODE_SAP` VARCHAR(15) NULL ,
  `id_codefab` INT NOT NULL ,
  `index_suivi` INT NOT NULL ,
  PRIMARY KEY (`code_thav`) ,
  INDEX `fk_Composant_CodesFabricants1_idx` (`id_codefab` ASC) ,
  INDEX `fk_Composant_Suivi_DPA1_idx` (`index_suivi` ASC) ,
  CONSTRAINT `fk_Composant_CodesFabricants1`
    FOREIGN KEY (`id_codefab` )
    REFERENCES `component`.`CodesFabricants` (`id_codefab` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Composant_Suivi_DPA1`
    FOREIGN KEY (`index_suivi` )
    REFERENCES `component`.`Suivi_DPA` (`index_suivi` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Phase_Detection`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Phase_Detection` (
  `idPhase_Detection` INT NOT NULL AUTO_INCREMENT ,
  `Autre_Precisionphasedetect` MEDIUMTEXT NULL ,
  `deverminage` ENUM('avant_dv','en_cours_dv','Apres_dv') NULL ,
  `typdetect` ENUM('avionnage','exploitation') NULL ,
  PRIMARY KEY (`idPhase_Detection`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Examen_visuel`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Examen_visuel` (
  `idExamen_visuel` INT NOT NULL AUTO_INCREMENT ,
  `Nothing_comp` TINYINT(1) NULL ,
  `Other_comp` TINYINT(1) NULL ,
  `comment_comp` MEDIUMTEXT NULL ,
  `nothing_Brasure` TINYINT(1) NULL ,
  `other_Brasure` TINYINT(1) NULL ,
  `comment_brasure` MEDIUMTEXT NULL ,
  `nothing_env` TINYINT(1) NULL ,
  `other_env` TINYINT(1) NULL ,
  `comment_env` MEDIUMTEXT NULL ,
  PRIMARY KEY (`idExamen_visuel`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Nature_panne`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Nature_panne` (
  `idNature_panne` INT NOT NULL AUTO_INCREMENT ,
  `temperature` ENUM('component_bdd','A_froid','A_chaud') NULL ,
  `Vibration` TINYINT(1) NULL ,
  `CAUSE` LONGTEXT NULL ,
  `freq_panne` ENUM('Permanente','Intermittente') NULL ,
  PRIMARY KEY (`idNature_panne`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`ExpertiseExt`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`ExpertiseExt` (
  `ordre` INT NOT NULL ,
  `CodeLabo` VARCHAR(45) NULL ,
  `DateDepart` DATE NULL ,
  `DateReponse` DATE NULL ,
  `Fabricant` VARCHAR(45) NULL ,
  `Conclusions` VARCHAR(45) NULL ,
  `RefRapExt` VARCHAR(45) NULL ,
  PRIMARY KEY (`ordre`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.` Enveloppe`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.` Enveloppe` (
  `N_Enveloppe` INT NOT NULL AUTO_INCREMENT ,
  `TBU_EMS` VARCHAR(45) NULL ,
  `Date_Saisie` DATE NULL ,
  `DATE_DEPOSE` DATE NULL ,
  `LIEUX_DEPOSE` VARCHAR(45) NULL ,
  `CONTACT` VARCHAR(45) NULL ,
  `STADE_DEPOSE` VARCHAR(45) NULL ,
  ` Anomalie` LONGTEXT NULL ,
  `COMMENTAIRES` LONGTEXT NULL ,
  `N_CER` VARCHAR(45) NULL ,
  `TEMP` VARCHAR(45) NULL ,
  `Saisie` VARCHAR(45) NULL ,
  `N_CR` VARCHAR(45) NULL ,
  `CONFIRME` VARCHAR(45) NULL ,
  `CAUSE` VARCHAR(45) NULL ,
  `NOM_SRU` VARCHAR(45) NULL ,
  `PN_SRU` VARCHAR(45) NULL ,
  `SN_SRU` VARCHAR(45) NULL ,
  `NOM_LRU` VARCHAR(45) NULL ,
  `PN_LRU` VARCHAR(45) NULL ,
  `SN_LRU` VARCHAR(45) NULL ,
  `code_thav` VARCHAR(10) NOT NULL ,
  `idPhase_Detection` INT NOT NULL ,
  `idExamen_visuel` INT NOT NULL ,
  `idNature_panne` INT NOT NULL ,
  `ordre` INT NOT NULL ,
  PRIMARY KEY (`N_Enveloppe`) ,
  INDEX `fk_ Enveloppe_Composant1_idx` (`code_thav` ASC) ,
  INDEX `fk_ Enveloppe_Phase_Detection1_idx` (`idPhase_Detection` ASC) ,
  INDEX `fk_ Enveloppe_Examen_visuel1_idx` (`idExamen_visuel` ASC) ,
  INDEX `fk_ Enveloppe_Nature_panne1_idx` (`idNature_panne` ASC) ,
  INDEX `fk_ Enveloppe_ExpertiseExt1_idx` (`ordre` ASC) ,
  CONSTRAINT `fk_ Enveloppe_Composant1`
    FOREIGN KEY (`code_thav` )
    REFERENCES `component`.`Composant` (`code_thav` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_Phase_Detection1`
    FOREIGN KEY (`idPhase_Detection` )
    REFERENCES `component`.`Phase_Detection` (`idPhase_Detection` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_Examen_visuel1`
    FOREIGN KEY (`idExamen_visuel` )
    REFERENCES `component`.`Examen_visuel` (`idExamen_visuel` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_Nature_panne1`
    FOREIGN KEY (`idNature_panne` )
    REFERENCES `component`.`Nature_panne` (`idNature_panne` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_ExpertiseExt1`
    FOREIGN KEY (`ordre` )
    REFERENCES `component`.`ExpertiseExt` (`ordre` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`EXPERTISE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`EXPERTISE` (
  `Ordre_exp` INT NOT NULL AUTO_INCREMENT ,
  `ic` VARCHAR(45) NULL ,
  `date_enreg` DATE NULL ,
  `elec` VARCHAR(45) NULL ,
  `Visuelle` VARCHAR(45) NULL ,
  `Ouverture` VARCHAR(45) NULL ,
  `date_fin` DATE NULL ,
  `Num` INT NULL ,
  `Constat` LONGTEXT NULL ,
  `Duree` INT NULL ,
  `Notes` MEDIUMTEXT NULL ,
  PRIMARY KEY (`Ordre_exp`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`EMS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`EMS` (
  `id_EMS` INT NOT NULL AUTO_INCREMENT ,
  `Nom_EMS` VARCHAR(40) ,
  `N_Enveloppe` INT NOT  ,
  PRIMARY KEY (`id_EMS`) ,
  INDEX `fk_EMS_ Enveloppe1_idx` (`N_Enveloppe` ASC) ,
  CONSTRAINT `fk_EMS_ Enveloppe1`
    FOREIGN KEY (`N_Enveloppe` )
    REFERENCES `component`.` Enveloppe` (`N_Enveloppe` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Produits`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Produits` (
  `id_produit` INT NOT NULL AUTO_INCREMENT ,
  `Référence` VARCHAR(30) NULL ,
  `Désignation` VARCHAR(30) NULL ,
  `PROGRAMME` VARCHAR(30) NULL ,
  `Domaine` VARCHAR(45) NULL ,
  `Activité` VARCHAR(45) NULL ,
  `CPP` VARCHAR(45) NULL ,
  `EBC` VARCHAR(45) NULL ,
  `TMI` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_produit`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`RPS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`RPS` (
  `id_RPS` INT NOT NULL AUTO_INCREMENT ,
  `produit` VARCHAR(30) NULL ,
  `NomRPS` VARCHAR(30) NULL ,
  `EOTP` VARCHAR(30) NULL ,
  `N_Enveloppe` INT NOT NULL ,
  `Ordre_exp` INT NOT NULL ,
  `id_produit` INT NOT NULL ,
  PRIMARY KEY (`id_RPS`) ,
  INDEX `fk_RPS_ Enveloppe1_idx` (`N_Enveloppe` ASC) ,
  INDEX `fk_RPS_EXPERTISE1_idx` (`Ordre_exp` ASC) ,
  INDEX `fk_RPS_Produits1_idx` (`id_produit` ASC) ,
  CONSTRAINT `fk_RPS_ Enveloppe1`
    FOREIGN KEY (`N_Enveloppe` )
    REFERENCES `component`.` Enveloppe` (`N_Enveloppe` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RPS_EXPERTISE1`
    FOREIGN KEY (`Ordre_exp` )
    REFERENCES `component`.`EXPERTISE` (`Ordre_exp` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RPS_Produits1`
    FOREIGN KEY (`id_produit` )
    REFERENCES `component`.`Produits` (`id_produit` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Utilisateur`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Utilisateur` (
  `id_user` INT NOT NULL AUTO_INCREMENT ,
  `Nom_Dem` VARCHAR(45) NULL ,
  `prenom` VARCHAR(45) NULL ,
  `Service_Dem` VARCHAR(45) NULL ,
  `Tel_Dem` INT NULL ,
  `fonction` VARCHAR(45) NULL COMMENT 'Ingiénieur composant, technicien...' ,
  `N_TGI` INT NULL ,
  `Mot_de_passe` VARCHAR(45) NULL ,
  `Privilege` VARCHAR(45) NULL ,
  `id_RPS` INT NOT NULL ,
  PRIMARY KEY (`id_user`) ,
  INDEX `fk_Utilisateur_RPS1_idx` (`id_RPS` ASC) ,
  CONSTRAINT `fk_Utilisateur_RPS1`
    FOREIGN KEY (`id_RPS` )
    REFERENCES `component`.`RPS` (`id_RPS` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`APPAREILS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`APPAREILS` (
  `id_appareil` INT NOT NULL AUTO_INCREMENT ,
  `Nom_app` VARCHAR(45) NULL ,
  `Reference_app` VARCHAR(45) NULL ,
  `Code_Trescal` VARCHAR(45) NULL ,
  `Date_validation` DATETIME NULL ,
  `description` TEXT NULL ,
  `fabricant_app` VARCHAR(45) NULL ,
  `date_fin_validation` DATE NULL ,
  `n_immobilisation` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_appareil`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`APPAREILS_has_EXPERTISE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`APPAREILS_has_EXPERTISE` (
  `id_appareil` INT NOT NULL ,
  `Ordre_exp` INT NOT NULL ,
  INDEX `fk_APPAREILS_has_EXPERTISE_EXPERTISE1_idx` (`Ordre_exp` ASC) ,
  INDEX `fk_APPAREILS_has_EXPERTISE_APPAREILS1_idx` (`id_appareil` ASC) ,
  CONSTRAINT `fk_APPAREILS_has_EXPERTISE_APPAREILS1`
    FOREIGN KEY (`id_appareil` )
    REFERENCES `component`.`APPAREILS` (`id_appareil` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_APPAREILS_has_EXPERTISE_EXPERTISE1`
    FOREIGN KEY (`Ordre_exp` )
    REFERENCES `component`.`EXPERTISE` (`Ordre_exp` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `component` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
