DROP DATABASE IF EXISTS `Entrance_Exam`;
CREATE DATABASE `Entrance_Exam`;

USE `Entrance_Exam`;

DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
	Department_ID INT AUTO_INCREMENT,
    Department_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Department_ID)
);

DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position` (
	Position_ID INT AUTO_INCREMENT,
    Position_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Position_ID)
);

DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
	Account_ID INT AUTO_INCREMENT,
    Email VARCHAR(255),
    User_name VARCHAR(255),
    Full_name VARCHAR(255) NOT NULL,
    Create_Date DATE,
    Department_ID INT NOT NULL,
    Position_ID INT NOT NULL,
    PRIMARY KEY (Account_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
    FOREIGN KEY (Position_ID) REFERENCES `Position`(Position_ID)
);

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
	Group_ID INT AUTO_INCREMENT,
    Group_Name VARCHAR(255) NOT NULL UNIQUE,
    Creator_ID INT NOT NULL,
    Create_Date DATE NOT NULL,
    PRIMARY KEY (Group_ID)
);

DROP TABLE IF EXISTS `Group_Account`;
CREATE TABLE `Group_Account` (
	Group_ID INT NOT NULL,
    Account_ID INT NOT NULL,
    Join_Date DATE NOT NULL,
    FOREIGN KEY (Group_ID) REFERENCES `Group`(Group_ID),
    FOREIGN KEY (Account_ID) REFERENCES `Account`(Account_ID)
);

DROP TABLE IF EXISTS `Type_Question`;
CREATE TABLE `Type_Question` (
	Type_ID INT AUTO_INCREMENT,
    Type_Name ENUM('Essay', 'Multiple-Choice'),
    PRIMARY KEY (Type_ID)
);

DROP TABLE IF EXISTS `CategoryQuestion`;
CREATE TABLE `CategoryQuestion` (
	Category_ID INT AUTO_INCREMENT,
    Category_Name VARCHAR(255),
    PRIMARY KEY (Category_ID)
);

DROP TABLE IF EXISTS `Question`;
CREATE TABLE `Question` (
	Question_ID INT AUTO_INCREMENT,
    Content VARCHAR(255) NOT NULL UNIQUE, 
    Category_ID INT NOT NULL,
    Type_ID INT NOT NULL,
    Creator_ID INT NOT NULL,
    Create_Date DATE,
    PRIMARY KEY (Question_ID),
    FOREIGN KEY (Category_ID) REFERENCES `CategoryQuestion`(Category_ID),
    FOREIGN KEY (Type_ID) REFERENCES `Type_Question`(Type_ID)
);

DROP TABLE IF EXISTS `Answer`;
CREATE TABLE `Answer` (
	Answer_ID INT AUTO_INCREMENT,
    Content VARCHAR(255) NOT NULL,
    Question_ID INT NOT NULL,
    Is_Correct ENUM('True', 'False'),
    PRIMARY KEY (Answer_ID),
    FOREIGN KEY (Question_ID) REFERENCES `Question`(Question_ID)
);

DROP TABLE IF EXISTS `Exam`;
CREATE TABLE `Exam` (
	Exam_ID INT AUTO_INCREMENT,
    `Code` CHAR(3) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Category_ID INT NOT NULL,
    Duration VARCHAR(255),
    Creator_ID INT NOT NULL,
    Create_Date DATE,
    PRIMARY KEY (Exam_ID),
    FOREIGN KEY (Category_ID) REFERENCES `CategoryQuestion`(Category_ID)
);

DROP TABLE IF EXISTS `Exam_Question`;
CREATE TABLE `Exam_Question` (
    Exam_ID INT NOT NULL,
    Question_ID INT NOT NULL,
    FOREIGN KEY (Exam_ID)
        REFERENCES `Exam` (Exam_ID),
    FOREIGN KEY (Question_ID)
        REFERENCES `Question` (Question_ID)
);

