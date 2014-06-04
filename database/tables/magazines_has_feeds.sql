-- -----------------------------------------------------
-- Table `swen`.`magazines_has_feeds`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `swen`.`magazines_has_feeds` ;

CREATE  TABLE IF NOT EXISTS `swen`.`magazines_has_feeds` (
  `magazines_magazineId` INT NOT NULL ,
  `feeds_feedId` INT NOT NULL ,
  PRIMARY KEY (`magazines_magazineId`, `feeds_feedId`) ,
  INDEX `fk_magazines_has_feeds_feeds1_idx` (`feeds_feedId` ASC) ,
  INDEX `fk_magazines_has_feeds_magazines1_idx` (`magazines_magazineId` ASC) ,
  CONSTRAINT `fk_magazines_has_feeds_magazines1`
    FOREIGN KEY (`magazines_magazineId` )
    REFERENCES `swen`.`magazines` (`magazineId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_magazines_has_feeds_feeds1`
    FOREIGN KEY (`feeds_feedId` )
    REFERENCES `swen`.`feeds` (`feedId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
