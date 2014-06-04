-- -----------------------------------------------------
-- Table `swen`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `swen`.`users` ;

CREATE  TABLE IF NOT EXISTS `swen`.`users` (
  `userId` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(255) NULL ,
  `password` VARCHAR(500) NULL ,
  `expire` DATE NULL ,
  `salt` VARCHAR(250) NULL ,
  PRIMARY KEY (`userId`) ,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) )
ENGINE = InnoDB;
