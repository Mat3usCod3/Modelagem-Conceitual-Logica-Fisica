-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Controle
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Controle
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Controle` DEFAULT CHARACTER SET utf8 ;
USE `Controle` ;

-- -----------------------------------------------------
-- Table `Controle`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Controle`.`Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `rg` VARCHAR(45) NOT NULL,
  `cnh` VARCHAR(45) NOT NULL,
  `veiculo` VARCHAR(45) NOT NULL,
  `placa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Controle`.`Endereco_Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Controle`.`Endereco_Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rua` VARCHAR(60) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `codigo_cliente` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_c_idx` (`codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_c`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `Controle`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Controle`.`Fato_Alocacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Controle`.`Fato_Alocacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `placa_reboque` VARCHAR(45) NOT NULL,
  `data_alocacao` DATE NOT NULL,
  `hora_alocacao` TIME NOT NULL,
  `data_entrega` DATE NOT NULL,
  `hora_entrega` TIME NOT NULL,
  `numero_diaria` INT NOT NULL,
  `valor_diaria` DECIMAL(8) NOT NULL,
  `codigo_cliente` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cc_idx` (`codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_cc`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `Controle`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
