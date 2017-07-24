SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `Component_BDD` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Component_BDD` ;

-- -----------------------------------------------------
-- Table `Component_BDD`.`CodesFabricants`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`CodesFabricants` (
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
-- Table `Component_BDD`.`Suivi_DPA`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`Suivi_DPA` (
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
-- Table `Component_BDD`.`Composant`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`Composant` (
  `code_thav` VARCHAR(10) NOT NULL ,
  `Etat` VARCHAR(45) NULL ,
  `Marquage` VARCHAR(45) NULL ,
  `REP_TOPO` VARCHAR(45) NULL ,
  `GENERIQUE` VARCHAR(45) NULL ,
  `FABRICANT` INT NULL ,
  `REFERENCE_FABRICANT` VARCHAR(45) NULL ,
  `DATE_CODE` DATE NULL ,
  `CODE_SAP` VARCHAR(15) NULL ,
  `CodesFabricants_id_codefab` INT NOT NULL ,
  `Suivi_DPA_index_suivi` INT NOT NULL ,
  PRIMARY KEY (`code_thav`) ,
  INDEX `fk_Composant_CodesFabricants1_idx` (`CodesFabricants_id_codefab` ASC) ,
  INDEX `fk_Composant_Suivi_DPA1_idx` (`Suivi_DPA_index_suivi` ASC) ,
  CONSTRAINT `fk_Composant_CodesFabricants1`
    FOREIGN KEY (`CodesFabricants_id_codefab` )
    REFERENCES `Component_BDD`.`CodesFabricants` (`id_codefab` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Composant_Suivi_DPA1`
    FOREIGN KEY (`Suivi_DPA_index_suivi` )
    REFERENCES `Component_BDD`.`Suivi_DPA` (`index_suivi` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Component_BDD`.`Phase_Detection`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`Phase_Detection` (
  `idPhase_Detection` INT NOT NULL AUTO_INCREMENT ,
  `avant_dv` TINYINT(1) NULL ,
  `en_cours_dv` TINYINT(1) NULL ,
  `Apres_dv` TINYINT(1) NULL ,
  `avionnage` TINYINT(1) NULL ,
  `exploitation` TINYINT(1) NULL ,
  `Autre_Precisionphasedetect` MEDIUMTEXT NULL ,
  PRIMARY KEY (`idPhase_Detection`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Component_BDD`.`Examen_visuel`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`Examen_visuel` (
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
-- Table `Component_BDD`.`Nature_panne`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`Nature_panne` (
  `idNature_panne` INT NOT NULL AUTO_INCREMENT ,
  `Permanente` TINYINT(1) NULL ,
  `A_lambiante` TINYINT(1) NULL ,
  `A_froid` TINYINT(1) NULL ,
  `A_chaud` TINYINT(1) NULL ,
  `Vibration` TINYINT(1) NULL ,
  `Intermittente` TINYINT(1) NULL ,
  `CAUSE` LONGTEXT NULL ,
  PRIMARY KEY (`idNature_panne`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Component_BDD`.`ExpertiseExt`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`ExpertiseExt` (
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
-- Table `Component_BDD`.` Enveloppe`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.` Enveloppe` (
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
  `Composant_code_thav` VARCHAR(10) NOT NULL ,
  `Phase_Detection_idPhase_Detection` INT NOT NULL ,
  `Examen_visuel_idExamen_visuel` INT NOT NULL ,
  `Nature_panne_idNature_panne` INT NOT NULL ,
  `ExpertiseExt_ordre` INT NOT NULL ,
  PRIMARY KEY (`N_Enveloppe`) ,
  INDEX `fk_ Enveloppe_Composant1_idx` (`Composant_code_thav` ASC) ,
  INDEX `fk_ Enveloppe_Phase_Detection1_idx` (`Phase_Detection_idPhase_Detection` ASC) ,
  INDEX `fk_ Enveloppe_Examen_visuel1_idx` (`Examen_visuel_idExamen_visuel` ASC) ,
  INDEX `fk_ Enveloppe_Nature_panne1_idx` (`Nature_panne_idNature_panne` ASC) ,
  INDEX `fk_ Enveloppe_ExpertiseExt1_idx` (`ExpertiseExt_ordre` ASC) ,
  CONSTRAINT `fk_ Enveloppe_Composant1`
    FOREIGN KEY (`Composant_code_thav` )
    REFERENCES `Component_BDD`.`Composant` (`code_thav` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_Phase_Detection1`
    FOREIGN KEY (`Phase_Detection_idPhase_Detection` )
    REFERENCES `Component_BDD`.`Phase_Detection` (`idPhase_Detection` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_Examen_visuel1`
    FOREIGN KEY (`Examen_visuel_idExamen_visuel` )
    REFERENCES `Component_BDD`.`Examen_visuel` (`idExamen_visuel` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_Nature_panne1`
    FOREIGN KEY (`Nature_panne_idNature_panne` )
    REFERENCES `Component_BDD`.`Nature_panne` (`idNature_panne` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ Enveloppe_ExpertiseExt1`
    FOREIGN KEY (`ExpertiseExt_ordre` )
    REFERENCES `Component_BDD`.`ExpertiseExt` (`ordre` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Component_BDD`.`EXPERTISE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`EXPERTISE` (
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
-- Table `Component_BDD`.`EMS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`EMS` (
  `id_EMS` INT NOT NULL AUTO_INCREMENT ,
  `Nom_EMS` VARCHAR(40) NULL ,
  ` Enveloppe_N° Enveloppe` INT NOT NULL ,
  PRIMARY KEY (`id_EMS`) ,
  INDEX `fk_EMS_ Enveloppe1_idx` (` Enveloppe_N° Enveloppe` ASC) ,
  CONSTRAINT `fk_EMS_ Enveloppe1`
    FOREIGN KEY (` Enveloppe_N° Enveloppe` )
    REFERENCES `Component_BDD`.` Enveloppe` (`N_Enveloppe` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Component_BDD`.`Produits`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`Produits` (
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
-- Table `Component_BDD`.`RPS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`RPS` (
  `id_RPS` INT NOT NULL AUTO_INCREMENT ,
  `produit` VARCHAR(30) NULL ,
  `NomRPS` VARCHAR(30) NULL ,
  `EOTP` VARCHAR(30) NULL ,
  ` Enveloppe_N° Enveloppe` INT NOT NULL ,
  `EXPERTISE_Ordre_exp` INT NOT NULL ,
  `Produits_id_produit` INT NOT NULL ,
  PRIMARY KEY (`id_RPS`) ,
  INDEX `fk_RPS_ Enveloppe1_idx` (` Enveloppe_N° Enveloppe` ASC) ,
  INDEX `fk_RPS_EXPERTISE1_idx` (`EXPERTISE_Ordre_exp` ASC) ,
  INDEX `fk_RPS_Produits1_idx` (`Produits_id_produit` ASC) ,
  CONSTRAINT `fk_RPS_ Enveloppe1`
    FOREIGN KEY (` Enveloppe_N° Enveloppe` )
    REFERENCES `Component_BDD`.` Enveloppe` (`N_Enveloppe` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RPS_EXPERTISE1`
    FOREIGN KEY (`EXPERTISE_Ordre_exp` )
    REFERENCES `Component_BDD`.`EXPERTISE` (`Ordre_exp` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RPS_Produits1`
    FOREIGN KEY (`Produits_id_produit` )
    REFERENCES `Component_BDD`.`Produits` (`id_produit` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Component_BDD`.`Utilisateur`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`Utilisateur` (
  `id_user` INT NOT NULL AUTO_INCREMENT ,
  `Nom_Dem` VARCHAR(45) NULL ,
  `prenom` VARCHAR(45) NULL ,
  `Service_Dem` VARCHAR(45) NULL ,
  `Tel_Dem` INT NULL ,
  `fonction` VARCHAR(45) NULL COMMENT 'Ingiénieur composant, technicien...' ,
  `N_TGI` INT NULL ,
  `Mot_de_passe` VARCHAR(45) NULL ,
  `Privilege` VARCHAR(45) NULL ,
  `RPS_id_RPS` INT NOT NULL ,
  PRIMARY KEY (`id_user`) ,
  INDEX `fk_Utilisateur_RPS1_idx` (`RPS_id_RPS` ASC) ,
  CONSTRAINT `fk_Utilisateur_RPS1`
    FOREIGN KEY (`RPS_id_RPS` )
    REFERENCES `Component_BDD`.`RPS` (`id_RPS` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Component_BDD`.`APPAREILS`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`APPAREILS` (
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
-- Table `Component_BDD`.`APPAREILS_has_EXPERTISE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `Component_BDD`.`APPAREILS_has_EXPERTISE` (
  `APPAREILS_id_appareil` INT NOT NULL ,
  `EXPERTISE_Ordre_exp` INT NOT NULL ,
  INDEX `fk_APPAREILS_has_EXPERTISE_EXPERTISE1_idx` (`EXPERTISE_Ordre_exp` ASC) ,
  INDEX `fk_APPAREILS_has_EXPERTISE_APPAREILS1_idx` (`APPAREILS_id_appareil` ASC) ,
  CONSTRAINT `fk_APPAREILS_has_EXPERTISE_APPAREILS1`
    FOREIGN KEY (`APPAREILS_id_appareil` )
    REFERENCES `Component_BDD`.`APPAREILS` (`id_appareil` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_APPAREILS_has_EXPERTISE_EXPERTISE1`
    FOREIGN KEY (`EXPERTISE_Ordre_exp` )
    REFERENCES `Component_BDD`.`EXPERTISE` (`Ordre_exp` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `Component_BDD` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
