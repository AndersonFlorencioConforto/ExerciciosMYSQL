-- MySQL Script generated by MySQL Workbench
-- Tue Feb 16 20:22:39 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_ecommerce
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `db_ecommerce` ;

-- -----------------------------------------------------
-- Table `db_ecommerce`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `areaExterna` VARCHAR(45) NOT NULL,
  `areaInterna` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE INDEX `idtb_categoria_UNIQUE` (`id_categoria` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`tb_usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nomeCompleto` VARCHAR(80) NOT NULL,
  `nomeUsuario` VARCHAR(45) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `cpf` BIGINT(11) NOT NULL,
  `tb_categoria_id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE INDEX `idtb_usuario_UNIQUE` (`id_usuario` ASC) VISIBLE,
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  INDEX `fk_tb_usuario_tb_categoria1_idx` (`tb_categoria_id_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_usuario_tb_categoria1`
    FOREIGN KEY (`tb_categoria_id_categoria`)
    REFERENCES `db_ecommerce`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_ecommerce`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`tb_produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `nomeProduto` VARCHAR(50) NOT NULL,
  `descricaoProduto` VARCHAR(1000) NOT NULL,
  `precoProduto` DOUBLE NOT NULL,
  `quantidade` INT NULL,
  `imagemProduto` BLOB NOT NULL,
  `avalicaoProduto` VARCHAR(1000) NULL,
  `fk2_id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_produto`),
  UNIQUE INDEX `idtb_produto_UNIQUE` (`id_produto` ASC) VISIBLE,
  INDEX `fk_tb_produto_tb_categoria_idx` (`fk2_id_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`fk2_id_categoria`)
    REFERENCES `db_ecommerce`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
