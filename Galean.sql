SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `galean` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `galean`;

-- -----------------------------------------------------
-- Table `galean`.`Companies`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Companies` (
  `companyId` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(80) NULL ,
  `email` VARCHAR(80) NULL ,
  `address` VARCHAR(150) NULL ,
  `telephone` VARCHAR(13) NULL ,
  `description` VARCHAR(150) NULL ,
  `registeredDate` DATETIME NULL ,
  PRIMARY KEY (`companyId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Users`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Users` (
  `userId` INT NOT NULL AUTO_INCREMENT ,
  `fullName` VARCHAR(45) NULL ,
  `password` VARCHAR(100) NULL ,
  `email` VARCHAR(80) NULL ,
  `registeredDate` DATETIME NULL ,
  `status` BOOLEAN NULL ,
  `companyId` INT NULL ,
  PRIMARY KEY (`userId`) ,
  INDEX `fk_Usuario_Empresa` (`companyId` ASC) ,
  CONSTRAINT `fk_Usuario_Empresa`
    FOREIGN KEY (`companyId` )
    REFERENCES `galean`.`Companies` (`companyId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`UserSections`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`UserSections` (
  `userSectionId` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `email` VARCHAR(80) NULL ,
  `company` VARCHAR(90) NULL ,
  PRIMARY KEY (`userSectionId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Messages`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Messages` (
  `messageId` INT NOT NULL AUTO_INCREMENT ,
  `transmitter` VARCHAR(80) NULL ,
  `receiver` VARCHAR(80) NULL ,
  `subject` VARCHAR(80) NULL ,
  `body` VARCHAR(200) NULL ,
  `date` DATETIME NULL ,
  `status` BOOLEAN NULL ,
  `userSectionId` INT NULL ,
  PRIMARY KEY (`messageId`) ,
  INDEX `fk_Mensaje_Clientes` (`userSectionId` ASC) ,
  CONSTRAINT `fk_Mensaje_Clientes`
    FOREIGN KEY (`userSectionId` )
    REFERENCES `galean`.`UserSections` (`userSectionId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Sections`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Sections` (
  `sectionId` INT NOT NULL ,
  `date` DATETIME NULL ,
  `conversation` BLOB NULL ,
  `userId` INT NULL ,
  `userSectionId` INT NULL ,
  PRIMARY KEY (`sectionId`) ,
  INDEX `fk_Secciones_Usuario` (`userId` ASC) ,
  INDEX `fk_Secciones_UsarioSecciones` (`userSectionId` ASC) ,
  CONSTRAINT `fk_Secciones_Usuario`
    FOREIGN KEY (`userId` )
    REFERENCES `galean`.`Users` (`userId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Secciones_UsarioSecciones`
    FOREIGN KEY (`userSectionId` )
    REFERENCES `galean`.`UserSections` (`userSectionId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Cases`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Cases` (
  `caseId` INT NOT NULL AUTO_INCREMENT ,
  `description` VARCHAR(250) NULL ,
  `notes` VARCHAR(250) NULL ,
  `status` VARCHAR(40) NULL ,
  `solution` VARCHAR(250) NULL ,
  `sectionId` INT NULL ,
  PRIMARY KEY (`caseId`) ,
  INDEX `fk_Caso_Secciones` (`sectionId` ASC) ,
  CONSTRAINT `fk_Caso_Secciones`
    FOREIGN KEY (`sectionId` )
    REFERENCES `galean`.`Sections` (`sectionId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `galean`;

-- -----------------------------------------------------
-- Data for table `galean`.`UserSections`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
INSERT INTO `UserSections` (`userSectionId`, `name`, `email`, `company`) VALUES (1, 'Generico', '', '');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
