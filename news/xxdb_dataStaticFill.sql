/* masterfunkerscriptV3 bereinigt für python fire */
CREATE TABLE `db65152`.`tab_10` ( `10_id` INT(1) NOT NULL , `10_unit` INT(2) NOT NULL , 
    PRIMARY KEY (`10_id`)) ENGINE = InnoDB COMMENT = 'tab_unit - enthält alle Einheiten der Euro Münzen'; -- online PRIMARY KEY (`10_id`)) - bei allen tabellen

    /* INSERT tab_nennwert - tab_10 START */
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 1, 1 );
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 2, 2 );
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 3, 5 );
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 4, 10 );
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 5, 20 );
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 6, 50 );
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 7, 1 );
        INSERT INTO tab_10 ( `10_id`, `10_unit` ) VALUES ( 8, 2 );
    /* INSERT tab_nennwert - tab_10 ENDE */




CREATE TABLE `db65152`.`tab_20` ( `20_id` INT(1) NOT NULL , `20_wahrung` VARCHAR(5) NOT NULL ,
    PRIMARY KEY (`20_id`)) ENGINE = InnoDB COMMENT = 'tab_wahrung';

    /* INSERT tab_wahrung - tab_20 START */
        INSERT INTO tab_20 ( `20_id`, `20_wahrung` ) VALUES ( 1, "Cent" );
        INSERT INTO tab_20 ( `20_id`, `20_wahrung` ) VALUES ( 2, "Euro" );
    /* INSERT tab_wahrung - tab_20 ENDE */




CREATE TABLE `db65152`.`tab_30` ( `30_id` INT(2) NOT NULL , `30_land` VARCHAR(50) NOT NULL ,
    PRIMARY KEY (`30_id`)) ENGINE = InnoDB COMMENT = 'tab_land';

    /* INSERT tab_land - tab_30 START */
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 1, "Belgien" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 2, "Bulgarien" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 3, "Dänemark" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 4, "Deutschland" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 5, "Estland" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 6, "Finnland" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 7, "Frankreich" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 8, "Griechenland" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 9, "Irland" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 10, "Italien" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 11, "Kroatien" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 12, "Lettland" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 13, "Litauen" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 14, "Luxemburg" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 15, "Malta" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 16, "Niederlande" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 17, "Österreich" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 18, "Polen" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 19, "Portugal" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 20, "Rumänien" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 21, "Schweden" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 22, "Slowakei" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 23, "Slowenien" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 24, "Spanien" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 25, "Tschechische Republik" );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 26, "Ungarn " );
        INSERT INTO tab_30 ( `30_id`, `30_land` ) VALUES ( 27, "Zypern" );
    /* INSERT tab_land - tab_30 ENDE */





CREATE TABLE `db65152`.`tab_40` ( `40_id` INT(4) NOT NULL , `40_year` INT(4) NOT NULL , 
    PRIMARY KEY (`40_id`)) ENGINE = InnoDB COMMENT = 'tab_year';
-- CREATE TABLE `db65152`.`tab_40` ( `40_id` INT(2) NOT NULL AUTO_INCREMENT , `40_year` VARCHAR(50) NOT NULL , PRIMARY KEY (`40_id`(1))) ENGINE = InnoDB;

    /* INSERT tab_land - tab_40 START */
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 1999, 1999 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2000, 2000 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2001, 2001 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2002, 2002 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2003, 2003 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2004, 2004 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2005, 2005 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2006, 2006 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2007, 2007 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2008, 2008 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2009, 2009 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2010, 2010 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2011, 2011 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2012, 2012 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2013, 2013 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2014, 2014 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2015, 2015 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2016, 2016 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2017, 2017 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2018, 2018 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2019, 2019 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2020, 2020 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2021, 2021 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2022, 2022 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2023, 2023 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2024, 2024 );
        INSERT INTO tab_40 ( `40_id`, `40_year` ) VALUES ( 2025, 2025 );
        /* Ai, autoinkrement - eintrag mit 0 nicht möglich setzt auf 1, fehler dann 2mal - 1 vorhanden, ohne Ai geht 0 als id */
        /* nim statt id 0,1,2... die jahreszahlen leichter bei späteren weiter arbeiten */
    /* INSERT tab_land - tab_40 ENDE */



-- tab_produce START
DROP TABLE IF EXISTS `tab_50`;
CREATE TABLE `db65152`.`tab_50` ( `50_id` INT(1) NOT NULL , `50_produce` VARCHAR(3) NOT NULL , `50_proDescribe` VARCHAR(200) NOT NULL , 
    PRIMARY KEY (`50_id`)) ENGINE = InnoDB COMMENT = 'tab_produce, Prägestätte';

    /* INSERT tab_wahrung - tab_50 START */
        INSERT INTO tab_50 ( `50_id`, `50_produce`, `50_proDescribe` ) VALUES ( 1, "A", "Staatliche Münze Berlin (seit1750)" );
        INSERT INTO tab_50 ( `50_id`, `50_produce`, `50_proDescribe` ) VALUES ( 2, "D", "Bayrisches Hauptmünzenamt Münzen" );
        INSERT INTO tab_50 ( `50_id`, `50_produce`, `50_proDescribe` ) VALUES ( 3, "F", "Staatliche Münze Stuttgart" );
        INSERT INTO tab_50 ( `50_id`, `50_produce`, `50_proDescribe` ) VALUES ( 4, "G", "Staatliche Münze Karlsruhe" );
        INSERT INTO tab_50 ( `50_id`, `50_produce`, `50_proDescribe` ) VALUES ( 5, "J", "Hamburgische Münze" );
    /* INSERT tab_wahrung - tab_50 ENDE */




-- tab_confuse START - mit BLOB
/*
DROP TABLE IF EXISTS `tab_60`;
CREATE TABLE `db65152`.`tab_60` ( `60_id` INT(3) NOT NULL AUTO_INCREMENT , `60_imgFrond` BLOB NULL , `60_imgBack` BLOB NULL , `60_edge` VARCHAR(100) NULL , `60_describe` VARCHAR(200) NULL , `60_value` INT(6) NULL , `60_mKey` VARCHAR(10) NULL , 
    `60_unit` INT(2) NOT NULL, `60_wahrung` VARCHAR(5) NOT NULL, `60_land` VARCHAR(50) NOT NULL, 
    `60_year` INT(4) NOT NULL, `60_produce` VARCHAR(1) NOT NULL, `60_pollution` VARCHAR(2) NOT NULL,
    PRIMARY KEY (`60_id`)) ENGINE = InnoDB COMMENT = 'tab_confuse, weiteres, wird tabelle summary';
*/



-- zum testen START
DROP TABLE IF EXISTS `tab_60`;
CREATE TABLE `db65152`.`tab_60` ( `60_id` INT(3) NOT NULL AUTO_INCREMENT , `60_imgFrond` VARCHAR(100) NULL , `60_imgBack` BLOB NULL , `60_edge` VARCHAR(100) NULL , `60_describe` VARCHAR(200) NULL , `60_value` INT(6) NULL , `60_mKey` VARCHAR(10) NULL , 
    `60_unit` INT(2) NULL, `60_wahrung` VARCHAR(5) NULL, `60_land` VARCHAR(50) NULL, 
    `60_year` INT(4) NULL, `60_produce` VARCHAR(1) NULL, `60_pollution` VARCHAR(2) NULL,
    PRIMARY KEY (`60_id`)) ENGINE = InnoDB COMMENT = 'tab_confuse, weiteres, wird tabelle summary';
-- zum testen ENDE

/* INSERT tab_confuse - tab_60 START
    INSERT INTO tab_60 (`60_imgFrond`, 
                        `60_imgBack`, 
                        `60_edge`, 
                        `60_describe`, 
                        `60_value`, 
                        `60_mKey`, 
                        `60_unit`, 
                        `60_wahrung`, 
                        `60_land`, 
                        `60_year`, 
                        `60_produce`, 
                        `60_pollution` ) VALUES (   "60_imgFrond-blob", 
                                                    "60_imgBack-blob", 
                                                    "60_edge-varchar(100)", 
                                                    "60_describe-varchar(200)", 
                                                    175000, 
                                                    "60_mKey-varchar(10)", 
                                                    2, 
                                                    "Euro", 
                                                    "Niederlande", 
                                                    1999, 
                                                    "A", 
                                                    "SS" 
                                                );
*/
        -- template eineZeile - INSERT INTO tab_60 (`60_imgFrond`, `60_imgBack`, `60_edge`, `60_describe`, `60_value`, `60_mKey`, `60_unit`, `60_wahrung`, `60_land`, `60_year`, `60_produce`, `60_pollution`) VALUES ("60_imgFrond-blob", "60_imgBack-blob", "60_edge-varchar(100)", "60_describe-varchar(200)", 175000, "60_mKey-varchar(10)", 2, "Euro", "Niederlande", 1999, "A", "SS");
        -- template mehrZeilerr, übersichtlicher        
        -- 60_id, wech wegen Ai
        -- 60_mKey zusammen gesetzt aus - unit, wahrung, land, jahr, stätte und 60_id (eindeutig ident)
    /* INSERT tab_confuse - tab_60 ENDE */
-- tab_confuse ENDE




-- tab__pollution START
CREATE TABLE `db65152`.`tab_70` ( `70_id` INT(1) NOT NULL , `70_pollDescribe` VARCHAR(2) NOT NULL , `70_key` VARCHAR(10) NOT NULL , `70_exactDescribe` VARCHAR(200) NOT NULL , 
    PRIMARY KEY (`70_id`)) ENGINE = InnoDB COMMENT = 'tab_pollution, Erhaltungsgrad';

    /* INSERT tab_confuse - tab_70 START */
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (1, "polierte Platte", "PP" );
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (2, "Spiegelglanz", "SP" );
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (3, "Stempelglanz", "ST" );
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (4, "vorzüglich", "VZ" );
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (5, "sehr schön", "SS" );
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (6, "schön", "S" );
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (7, "sehr gut", "SG" );
        INSERT INTO tab_70 ( `70_id`, `70_pollDescribe`, `70_key` ) VALUES (8, "gut", "G" );
    /* INSERT tab_confuse - tab_70 ENDE */
-- tab__pollution ENDE
