CREATE DATABASE dbms2_sudip;

CREATE TABLE `dbms2_sudip`.`student` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `program` VARCHAR(45) NULL,
  `contact_number` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL);
CREATE TABLE `dbms2_sudip`.`teacher` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `subject` VARCHAR(45) NULL,
  `contact_number` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL);
  
ALTER TABLE `dbms2_sudip`.`teacher` 
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC);

ALTER TABLE `dbms2_sudip`.`teacher` 
CHANGE COLUMN `contact_number` `contact_number` VARCHAR(45) NOT NULL ;

ALTER TABLE `dbms2_sudip`.`student` 
CHANGE COLUMN `address` `address` VARCHAR(45) NOT NULL ;

ALTER TABLE `dbms2_sudip`.`teacher` 
ADD PRIMARY KEY (`id`);

ALTER TABLE `dbms2_sudip`.`student` 
ADD PRIMARY KEY (`id`);

ALTER TABLE `dbms2_sudip`.`student` 
CHANGE COLUMN `address` `address` VARCHAR(45) NOT NULL DEFAULT 'Ekantakuna' ;

ALTER TABLE `dbms2_sudip`.`teacher` 
DROP PRIMARY KEY;

ALTER TABLE `dbms2_sudip`.`teacher` 
CHANGE COLUMN `id` `id` INT NULL ;
categories

