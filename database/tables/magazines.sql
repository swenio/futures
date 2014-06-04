-- -----------------------------------------------------
-- Table `swen`.`magazines`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `swen`.`magazines` ;

CREATE  TABLE IF NOT EXISTS `swen`.`magazines` (
  `magazineId` INT NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(250) NULL ,
  `description` TEXT NULL ,
  `releaseDate` DATETIME NULL ,
  `summary` TEXT NULL ,
  `users_userId` INT NOT NULL ,
  PRIMARY KEY (`magazineId`) ,
  INDEX `fk_magazines_users_idx` (`users_userId` ASC) ,
  CONSTRAINT `fk_magazines_users`
    FOREIGN KEY (`users_userId` )
    REFERENCES `swen`.`users` (`userId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
