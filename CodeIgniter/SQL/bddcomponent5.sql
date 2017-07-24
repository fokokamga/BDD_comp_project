SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `component` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `component` ;

-- -----------------------------------------------------
-- Table `component`.`Composant`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Composant` (
  `code_thav` VARCHAR(10) NOT NULL ,
  `Etat` VARCHAR(45) NOT NULL ,
  `Marquage` VARCHAR(45) NOT NULL ,
  `REP_TOPO` VARCHAR(45) NOT NULL ,
  `GENERIQUE` VARCHAR(45) NOT NULL ,
  `FABRICANT` INT NOT NULL ,
  `REFERENCE_FABRICANT` VARCHAR(45) NOT NULL ,
  `DATE_CODE` DATE NOT NULL ,
  `CODE_SAP` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`code_thav`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.` Enveloppe`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Enveloppe` (
  `N_Enveloppe` INT NOT NULL AUTO_INCREMENT ,
  `TBU_EMS` VARCHAR(45) NOT NULL ,
  `Date_Saisie` DATE NOT NULL ,
  `DATE_DEPOSE` DATE NOT NULL ,
  `LIEUX_DEPOSE` VARCHAR(45) NOT NULL ,
  `CONTACT` VARCHAR(45) NOT NULL ,
  `STADE_DEPOSE` VARCHAR(45) NOT NULL ,
  ` Anomalie` LONGTEXT NOT NULL ,
  `COMMENTAIRES` LONGTEXT NOT NULL ,
  `N_CER` VARCHAR(45) NOT NULL ,
  `TEMP` VARCHAR(45) NOT NULL ,
  `Saisie` VARCHAR(45) NOT NULL ,
  `N_CR` VARCHAR(45) NOT NULL ,
  `CONFIRME` VARCHAR(45) NOT NULL ,
  `CAUSE` VARCHAR(45) NOT NULL ,
  `NOM_SRU` VARCHAR(45) NOT NULL ,
  `PN_SRU` VARCHAR(45) NOT NULL ,
  `SN_SRU` VARCHAR(45) NOT NULL ,
  `NOM_LRU` VARCHAR(45) NOT NULL ,
  `PN_LRU` VARCHAR(45) NOT NULL ,
  `SN_LRU` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`N_Enveloppe`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`CodesFabricants`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`CodesFabricants` (
  `id_codefab` INT NOT NULL AUTO_INCREMENT ,
  `ref_sxt` VARCHAR(45) NOT NULL ,
  `numero` VARCHAR(45) NOT NULL ,
  `code_sap` INT NOT NULL ,
  `famille` VARCHAR(10) NOT NULL ,
  `sous-famille` VARCHAR(10) NOT NULL ,
  `historique` VARCHAR(45) NOT NULL ,
  `méthode_Ouverture` VARCHAR(45) NOT NULL ,
  `méthode_Expertise` VARCHAR(45) NOT NULL ,
  `knohau_Hook` INT NOT NULL ,
  PRIMARY KEY (`id_codefab`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`EXPERTISE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`EXPERTISE` (
  `Ordre_exp` INT NOT NULL AUTO_INCREMENT ,
  `ic` VARCHAR(45) NOT NULL ,
  `date_enreg` DATE NOT NULL ,
  `elec` VARCHAR(45) NOT NULL ,
  `Visuelle` VARCHAR(45) NOT NULL ,
  `Ouverture` VARCHAR(45) NOT NULL ,
  `date_fin` DATE NOT NULL ,
  `Num` INT NOT NULL ,
  `Constat` LONGTEXT NOT NULL ,
  `Duree` INT NOT NULL ,
  `Notes` MEDIUMTEXT NOT NULL ,
  PRIMARY KEY (`Ordre_exp`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`EMS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`EMS` (
  `id_EMS` INT NOT NULL AUTO_INCREMENT ,
  `Nom_EMS` VARCHAR(40) NOT NULL ,
  PRIMARY KEY (`id_EMS`) )
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
  PRIMARY KEY (`id_user`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Suivi_DPA`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Suivi_DPA` (
  `index_suivi` INT NOT NULL AUTO_INCREMENT ,
  `refClient` VARCHAR(45) NOT NULL ,
  `refIDC` VARCHAR(45) NOT NULL ,
  `date_délai` DATE NOT NULL ,
  `date_demande` DATE NOT NULL ,
  `date_devis` DATE NOT NULL ,
  `date_acceptation` DATE NOT NULL ,
  `datereception` DATE NOT NULL ,
  `date_réponse_orale` DATE NOT NULL ,
  `date_rapport` DATE NOT NULL ,
  PRIMARY KEY (`index_suivi`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`APPAREILS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`APPAREILS` (
  `id_appareil` INT NOT NULL AUTO_INCREMENT ,
  `Nom_app` VARCHAR(45) NOT NULL ,
  `Reference_app` VARCHAR(45) NOT NULL ,
  `Code_Trescal` VARCHAR(45) NOT NULL ,
  `Date_validation` DATETIME NOT NULL ,
  `description` TEXT NOT NULL ,
  `fabricant_app` VARCHAR(45) NOT NULL ,
  `date_fin_validation` DATE NOT NULL ,
  `n_immobilisation` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id_appareil`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`RPS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`RPS` (
  `id_RPS` INT NOT NULL AUTO_INCREMENT ,
  `produit` VARCHAR(30) NOT NULL ,
  `NomRPS` VARCHAR(30) NOT NULL ,
  `EOTP` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`id_RPS`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Produits`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Produits` (
  `id_produit` INT NOT NULL AUTO_INCREMENT ,
  `Référence` VARCHAR(30) NOT NULL ,
  `Désignation` VARCHAR(30) NOT NULL ,
  `PROGRAMME` VARCHAR(30) NOT NULL ,
  `Domaine` VARCHAR(45) NOT NULL ,
  `Activité` VARCHAR(45) NOT NULL ,
  `CPP` VARCHAR(45) NOT NULL ,
  `EBC` VARCHAR(45) NOT NULL ,
  `TMI` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id_produit`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Nature_panne`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Nature_panne` (
  `idNature_panne` INT NOT NULL AUTO_INCREMENT ,
  `temperature` ENUM('component_bdd','A_froid','A_chaud') NOT NULL ,
  `Vibration` TINYINT(1) NOT NULL ,
  `CAUSE` LONGTEXT NOT NULL ,
  `freq_panne` ENUM('Permanente','Intermittente') NOT NULL ,
  PRIMARY KEY (`idNature_panne`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Examen_visuel`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Examen_visuel` (
  `idExamen_visuel` INT NOT NULL AUTO_INCREMENT ,
  `Nothing_comp` TINYINT(1) NOT NULL ,
  `Other_comp` TINYINT(1) NOT NULL ,
  `comment_comp` MEDIUMTEXT NOT NULL ,
  `nothing_Brasure` TINYINT(1) NOT NULL ,
  `other_Brasure` TINYINT(1) NOT NULL ,
  `comment_brasure` MEDIUMTEXT NOT NULL ,
  `nothing_env` TINYINT(1) NOT NULL ,
  `other_env` TINYINT(1) NOT NULL ,
  `comment_env` MEDIUMTEXT NOT NULL ,
  PRIMARY KEY (`idExamen_visuel`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`Phase_Detection`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`Phase_Detection` (
  `idPhase_Detection` INT NOT NULL AUTO_INCREMENT ,
  `Autre_Precisionphasedetect` MEDIUMTEXT NOT NULL ,
  `deverminage` ENUM('avant_dv','en_cours_dv','Apres_dv') NOT NULL ,
  `typdetect` ENUM('avionnage','exploitation') NOT NULL ,
  PRIMARY KEY (`idPhase_Detection`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `component`.`ExpertiseExt`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `component`.`ExpertiseExt` (
  `ordre` INT NOT NULL ,
  `CodeLabo` VARCHAR(45) NOT NULL ,
  `DateDepart` DATE NOT NULL ,
  `DateReponse` DATE NOT NULL ,
  `Fabricant` VARCHAR(45) NOT NULL ,
  `Conclusions` VARCHAR(45) NOT NULL ,
  `RefRapExt` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`ordre`) )
ENGINE = InnoDB;

USE `component` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
