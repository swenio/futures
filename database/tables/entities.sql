-- -----------------------------------------------------
-- Table `swen`.`entities`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `swen`.`entities` ;

CREATE  TABLE IF NOT EXISTS `swen`.`entities` (
  `entryId` INT NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(250) NULL ,
  `feeds_feedId` INT NOT NULL ,
  PRIMARY KEY (`entryId`) ,
  INDEX `fk_entities_feeds1_idx` (`feeds_feedId` ASC) ,
  CONSTRAINT `fk_entities_feeds1`
    FOREIGN KEY (`feeds_feedId` )
    REFERENCES `swen`.`feeds` (`feedId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
