DROP DATABASE IF EXISTS `Fresher`;
CREATE DATABASE `Fresher`;

USE `Fresher`;

DROP TABLE IF EXISTS `Trainee`;
CREATE TABLE `Trainee` (
	Trainee_ID INT AUTO_INCREMENT,
    Full_Name VARCHAR(255),
    Birth_Day DATE,
    Gender ENUM('male', 'female', 'unknow'),
	ET_IQ INT(20) UNSIGNED,
    ET_GMATH INT(20) UNSIGNED,
    ET_ENGLISH INT(50) UNSIGNED,
    Training_Class VARCHAR(255),
    Evaluation_Notes VARCHAR(255),
    PRIMARY KEY (Trainee_ID)
);

ALTER TABLE Trainee
ADD COLUMN `VTI_Account` VARCHAR(255) NOT NULL UNIQUE;

DROP TABLE IF EXISTS `Excercise2`;
CREATE TABLE `Excercise2` (
	`ID` INT UNSIGNED AUTO_INCREMENT,
    `Name` VARCHAR(255),
    `Code` CHAR(5),
    `ModifiedDate` DATETIME,
    PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS `Excercise3`;
CREATE TABLE `Excercise3` (
	`ID` INT UNSIGNED AUTO_INCREMENT,
    `Name` VARCHAR(255),
    `BirthDate` DATE,
    `Gender` TINYINT,
    `IsDeleteFlag` ENUM('0', '1'),
    PRIMARY KEY (`ID`)
);


