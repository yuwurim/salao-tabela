-- MySQL Script generated by MySQL Workbench
-- Fri Feb 24 08:38:28 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`salao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salao` (
  `salao_id` INT NOT NULL,
  `salao_nome` VARCHAR(64),
  `salao_endereco` VARCHAR(64),
  `salao_telefone` INT,
  `salao_email` VARCHAR(64),
  PRIMARY KEY (`salao_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`servico` (
  `servico_id` INT NOT NULL,
  `servico_nome` VARCHAR(64),
  `servico_valor` VARCHAR(12),
  `fk_salao_id` INT NOT NULL,
  PRIMARY KEY (`servico_id`),
  INDEX `fk_servico_salao_idx` (`fk_salao_id` ASC) VISIBLE,
  CONSTRAINT `fk_servico_salao`
    FOREIGN KEY (`fk_salao_id`)
    REFERENCES `mydb`.`salao` (`salao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into salao (salao_id, salao_nome, salao_endereco, salao_telefone, salao_email) values 
(1, 'Cabelos Hair', 'Copacabana, RJ', 4702-8456, 'salaodamarilda@hotmail.com'),
(2, 'Salão da Mel', 'Cotia, SP', 4611-9895, 'salaodamel@hotmail.com');

select * from salao;

insert into salao (salao_id, salao_nome, salao_endereco, salao_telefone, salao_email) values 
(3, 'Beleza da Hora', 'Vargem Grande, SP', 4611-4845, 'belezatime@hotmail.com'),
(4, 'Beleza&Cia', 'Caucaia do Alto, SP', 4611-6632, 'salaocaucaia@hotmail.com'),
(5, 'BeautySyle', 'Itapevi, SP', 4035-8765, 'beautystyle@hotmail.com');

update salao 
set salao_telefone = 02147028456 where salao_id=1; 

update salao set salao_telefone = 1146119895 where salao_id = 2;
update salao set salao_telefone = 1146114845 where salao_id = 3;
update salao set salao_telefone = 1146116632 where salao_id = 4;
update salao set salao_telefone = 1140358765 where salao_id = 5;

insert into servico (servico_id, servico_nome, servico_valor, fk_salao_id) values 
(1, 'Corte de unha', '10.00', 1),
(2, 'Corte de cabelo', '30.00', 1),
(3, 'Esmaltação', '45.00', 1);

select * from servico;

insert into servico (servico_id, servico_nome, servico_valor, fk_salao_id) values 
(4, 'Corte de unha', '100.00', 2),
(5, 'Corte de cabelo', '130.00', 2),
(6, 'Esmaltação', '245.00', 2),
(7, 'Corte de unha', '410.00', 3),
(8, 'Corte de cabelo', '200.00', 3),
(9, 'Esmaltação', '45.00', 3),
(10, 'Corte de unha', '20.00', 4),
(11, 'Corte de cabelo', '90.00', 4),
(12, 'Esmaltação', '50.00', 4),
(13, 'Corte de unha', '20.00', 5),
(14, 'Corte de cabelo', '70.00', 5),
(15, 'Esmaltação', '145.00', 5);

select * from servico;
