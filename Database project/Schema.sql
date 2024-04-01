CREATE DATABASE  IF NOT EXISTS `registrationsystem`;
USE registrationsystem;

DROP TABLE IF EXISTS `Login`;
CREATE TABLE `Login`(
`lid` INT NOT NULL,
`username` VARCHAR(100) NOT NULL,
`password` VARCHAR(100) NOT NULL,
`birthdate` date NOT NULL,
PRIMARY KEY (`lid`));

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
`netid` INT NOT NULL,
`studentname` VARCHAR(100) NOT NULL,
`phonenumber` VARCHAR(15) NOT NULL,
`birthdate` date NOT NULL,
`username` VARCHAR(100) NOT NULL,
`password` VARCHAR(100) NOT NULL,
PRIMARY KEY (`netid`));

DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
`professorid` INT NOT NULL,
`professorname` VARCHAR(100) NOT NULL,
`phone` VARCHAR(15) NOT NULL,
`officenumber` INT NOT NULL,
`courses` VARCHAR(100) NOT NULL,
`username` VARCHAR(100) NOT NULL,
`password` VARCHAR(100) NOT NULL,
PRIMARY KEY (`professorid`));

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
`deptid` INT NOT NULL,
`professorid` INT NOT NULL,
`departmentname` VARCHAR(50) NOT NULL,
FOREIGN KEY (`professorid`) references `professor`(`professorid`)
ON DELETE cascade ON UPDATE cascade,
PRIMARY KEY(`deptid`));

DROP TABLE IF EXISTS `departmentAdmin`;
CREATE TABLE `departmentAdmin`(
`did` INT NOT NULL,
`dname` VARCHAR(50) NOT NULL,
`d_deptid` INT NOT NULL,
PRIMARY KEY (`did`)
);

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
`courseid` INT NOT NULL,
`deptid` INT NOT NULL,
`coursename` VARCHAR(50) NOT NULL,
`departmentname` VARCHAR(50) NOT NULL,
`sectionNumber` INT NOT NULL,
`listofTimes` DATETIME NOT NULL,
FOREIGN KEY (`deptid`) references `department`(`deptid`)
ON DELETE cascade ON UPDATE cascade,
PRIMARY KEY (`courseid`)
);

DROP TABLE IF EXISTS `courseDetails`;
CREATE TABLE `courseDetails` (
`deptid` INT NOT NULL,
`courseid` INT NOT NULL,
`professorid` INT NOT NULL,
`coursename` VARCHAR(50) NOT NULL,
`semesterNumber` INT NOT NULL,
`credits` INT NOT NULL,
FOREIGN KEY (`courseid`) REFERENCES `course`(`courseid`)
ON DELETE cascade ON UPDATE cascade,
FOREIGN KEY (`deptid`) REFERENCES `department`(`deptid`)
ON DELETE cascade ON UPDATE cascade,
FOREIGN KEY (`professorid`) REFERENCES `professor`(`professorid`)
ON DELETE cascade ON UPDATE cascade,
PRIMARY KEY (`courseid`, `professorid`, `deptid`)
);

DROP TABLE IF EXISTS `registrationDetails`;
CREATE TABLE `registrationDetails`(
`netid` INT NOT NULL,
`studentname` VARCHAR(100) NOT NULL,
`courseid` INT NOT NULL,
`coursename` VARCHAR(50) NOT NULL,
FOREIGN KEY (`courseid`) REFERENCES `course`(`courseid`)
ON DELETE cascade ON UPDATE cascade,
FOREIGN KEY (`netid`) REFERENCES `student`(`netid`)
ON DELETE cascade ON UPDATE cascade
);

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`(
`netid` INT NOT NULL,
`studentname` VARCHAR(100) NOT NULL,
`courseid` INT NOT NULL,
`grade` CHAR(2) NOT NULL,
FOREIGN KEY (`courseid`) REFERENCES `course`(`courseid`)
ON DELETE cascade ON UPDATE cascade,
FOREIGN KEY (`netid`) REFERENCES `student`(`netid`)
ON DELETE cascade ON UPDATE cascade
);





