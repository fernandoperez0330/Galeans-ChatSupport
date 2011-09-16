SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `galean` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `galean`;

-- -----------------------------------------------------
-- Table `galean`.`Empresa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Empresa` (
  `idEmpresa` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(80) NULL ,
  `correo` VARCHAR(80) NULL ,
  `dirrecion` VARCHAR(150) NULL ,
  `telefono` VARCHAR(13) NULL ,
  `descripcion` VARCHAR(150) NULL ,
  `fechaRegistro` DATETIME NULL ,
  PRIMARY KEY (`idEmpresa`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `nombreCompleto` VARCHAR(45) NULL ,
  `clave` VARCHAR(100) NULL ,
  `correo` VARCHAR(80) NULL ,
  `fechaRegistro` DATETIME NULL ,
  `estatus` BOOLEAN NULL ,
  `Empresa_idEmpresa` INT NULL ,
  PRIMARY KEY (`idUsuario`) ,
  INDEX `fk_Usuario_Empresa` (`Empresa_idEmpresa` ASC) ,
  CONSTRAINT `fk_Usuario_Empresa`
    FOREIGN KEY (`Empresa_idEmpresa` )
    REFERENCES `galean`.`Empresa` (`idEmpresa` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`UsarioSeccion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`UsarioSeccion` (
  `idUsuarioSeccion` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `correo` VARCHAR(13) NULL ,
  `empresa` VARCHAR(13) NULL ,
  PRIMARY KEY (`idUsuarioSeccion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Mensaje`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Mensaje` (
  `idMensaje` INT NOT NULL AUTO_INCREMENT ,
  `emisor` VARCHAR(80) NULL ,
  `destinatario` VARCHAR(80) NULL ,
  `asunto` VARCHAR(80) NULL ,
  `cuerpo` VARCHAR(200) NULL ,
  `fecha` DATETIME NULL ,
  `estatus` BOOLEAN NULL ,
  `Clientes_idClientes` INT NULL ,
  PRIMARY KEY (`idMensaje`) ,
  INDEX `fk_Mensaje_Clientes` (`Clientes_idClientes` ASC) ,
  CONSTRAINT `fk_Mensaje_Clientes`
    FOREIGN KEY (`Clientes_idClientes` )
    REFERENCES `galean`.`UsarioSeccion` (`idUsuarioSeccion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Seccion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Seccion` (
  `idSeccion` INT NOT NULL ,
  `fecha` DATETIME NULL ,
  `conversacion` BLOB NULL ,
  `Usuario_idUsuario` INT NULL ,
  `UsarioSecciones_idClientes` INT NULL ,
  PRIMARY KEY (`idSeccion`) ,
  INDEX `fk_Secciones_Usuario` (`Usuario_idUsuario` ASC) ,
  INDEX `fk_Secciones_UsarioSecciones` (`UsarioSecciones_idClientes` ASC) ,
  CONSTRAINT `fk_Secciones_Usuario`
    FOREIGN KEY (`Usuario_idUsuario` )
    REFERENCES `galean`.`Usuario` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Secciones_UsarioSecciones`
    FOREIGN KEY (`UsarioSecciones_idClientes` )
    REFERENCES `galean`.`UsarioSeccion` (`idUsuarioSeccion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `galean`.`Caso`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `galean`.`Caso` (
  `idCaso` INT NOT NULL AUTO_INCREMENT ,
  `descripcion` VARCHAR(250) NULL ,
  `notas` VARCHAR(250) NULL ,
  `estado` VARCHAR(40) NULL ,
  `solucion` VARCHAR(250) NULL ,
  `Secciones_idSecciones` INT NULL ,
  PRIMARY KEY (`idCaso`) ,
  INDEX `fk_Caso_Secciones` (`Secciones_idSecciones` ASC) ,
  CONSTRAINT `fk_Caso_Secciones`
    FOREIGN KEY (`Secciones_idSecciones` )
    REFERENCES `galean`.`Seccion` (`idSeccion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `galean`;

-- -----------------------------------------------------
-- Data for table `galean`.`UsarioSeccion`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
INSERT INTO `UsarioSeccion` (`idUsuarioSeccion`, `nombre`, `correo`, `empresa`) VALUES (1, 'Generico', '', '');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
