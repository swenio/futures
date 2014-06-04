-- -----------------------------------------------------
-- Table `swen`.`feeds`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `swen`.`feeds` ;

CREATE  TABLE IF NOT EXISTS `swen`.`feeds` (
  `feedId` INT NOT NULL AUTO_INCREMENT ,
  `url` VARCHAR(250) NULL ,
  `title` VARCHAR(250) NULL ,
  PRIMARY KEY (`feedId`) )
ENGINE = InnoDB;
