DROP DATABASE IF EXISTS `Entrance_Exam`;
CREATE DATABASE `Entrance_Exam`;

USE `Entrance_Exam`;

DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
    Department_ID TINYINT UNSIGNED AUTO_INCREMENT,
    Department_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Department_ID)
);

DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position` (
    Position_ID TINYINT UNSIGNED AUTO_INCREMENT,
    Position_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Position_ID)
);

DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
    Account_ID INT UNSIGNED AUTO_INCREMENT,
    Email VARCHAR(255),
    User_name VARCHAR(255) NOT NULL,
    Full_name NVARCHAR(255) NOT NULL,
    Create_Date DATE NOT NULL,
    Department_ID TINYINT UNSIGNED NOT NULL,
    Position_ID TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (Account_ID),
    FOREIGN KEY (Department_ID)
        REFERENCES Department (Department_ID),
    FOREIGN KEY (Position_ID)
        REFERENCES `Position` (Position_ID)
);

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
    Group_ID TINYINT UNSIGNED AUTO_INCREMENT,
    Group_Name NVARCHAR(255) NOT NULL UNIQUE,
    Creator_ID INT UNSIGNED NOT NULL,
    Create_Date DATE NOT NULL,
    PRIMARY KEY (Group_ID)
);

DROP TABLE IF EXISTS `Group_Account`;
CREATE TABLE `Group_Account` (
    Group_ID TINYINT UNSIGNED NOT NULL,
    Account_ID INT UNSIGNED NOT NULL,
    Join_Date DATE NOT NULL,
    FOREIGN KEY (Group_ID)
        REFERENCES `Group` (Group_ID),
    FOREIGN KEY (Account_ID)
        REFERENCES `Account` (Account_ID)
);

DROP TABLE IF EXISTS `Type_Question`;
CREATE TABLE `Type_Question` (
    Type_ID TINYINT UNSIGNED AUTO_INCREMENT,
    Type_Name ENUM('Essay', 'Multiple-Choice'),
    PRIMARY KEY (Type_ID)
);

DROP TABLE IF EXISTS `CategoryQuestion`;
CREATE TABLE `CategoryQuestion` (
    Category_ID INT UNSIGNED AUTO_INCREMENT,
    Category_Name VARCHAR(255),
    PRIMARY KEY (Category_ID)
);

DROP TABLE IF EXISTS `Question`;
CREATE TABLE `Question` (
    Question_ID INT UNSIGNED AUTO_INCREMENT,
    Content NVARCHAR(255) NOT NULL UNIQUE,
    Category_ID INT UNSIGNED NOT NULL,
    Type_ID TINYINT UNSIGNED NOT NULL,
    Creator_ID INT UNSIGNED NOT NULL,
    Create_Date DATE NOT NULL,
    PRIMARY KEY (Question_ID),
    FOREIGN KEY (Category_ID)
        REFERENCES `CategoryQuestion` (Category_ID),
    FOREIGN KEY (Type_ID)
        REFERENCES `Type_Question` (Type_ID)
);

DROP TABLE IF EXISTS `Answer`;
CREATE TABLE `Answer` (
    Answer_ID INT UNSIGNED AUTO_INCREMENT,
    Content NVARCHAR(255) NOT NULL,
    Question_ID INT UNSIGNED NOT NULL,
    Is_Correct ENUM('True', 'False') NOT NULL,
    PRIMARY KEY (Answer_ID),
    FOREIGN KEY (Question_ID)
        REFERENCES `Question` (Question_ID)
);

DROP TABLE IF EXISTS `Exam`;
CREATE TABLE `Exam` (
    Exam_ID INT UNSIGNED AUTO_INCREMENT,
    `Code` CHAR(4) NOT NULL,
    Title NVARCHAR(255) NOT NULL,
    Category_ID INT UNSIGNED NOT NULL,
    Duration TINYINT UNSIGNED,
    Creator_ID INT UNSIGNED NOT NULL,
    Create_Date DATE NOT NULL,
    PRIMARY KEY (Exam_ID),
    FOREIGN KEY (Category_ID)
        REFERENCES `CategoryQuestion` (Category_ID)
);

DROP TABLE IF EXISTS `Exam_Question`;
CREATE TABLE `Exam_Question` (
    Exam_ID INT UNSIGNED NOT NULL,
    Question_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY (Exam_ID)
        REFERENCES `Exam` (Exam_ID),
    FOREIGN KEY (Question_ID)
        REFERENCES `Question` (Question_ID)
);

