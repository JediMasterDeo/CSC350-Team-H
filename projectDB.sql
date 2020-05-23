
 CREATE DATABASE semproject;
 
 CREATE TABLE `usercourses` (
 	`usercoursesId` int NOT NULL AUTO_INCREMENT,
	`course` char(6) NOT NULL,
    `meetcount` int NOT NULL,
    PRIMARY KEY (usercoursesId)
    );
 
CREATE TABLE `bmcccourses` (
	`course` char(6) NOT NULL,
    `crHrs` int NOT NULL,
    `courseDescription` varchar(30) NOT NULL,
    PRIMARY KEY (course)
    );
    
INSERT INTO bmcccourses(course,crHrs,courseDescription) VALUES
 ('CSC101',4,'Principles in Information Technology'),('CSC110',5,'Computer Programming I'),('CSC111',5,'Introduction to Programming')
,('CSC210',5,'Computer Programming II'),('CSC211',5,'Advanced Programming Techniques'),('CSC215',4,'Fundamentals of Computer Systems')
,('CSC230',6,'Discrete Structures'),('CSC231',4,'Discrete Structures and Applications to Computer Science'),('CSC310',4,'Assembler Language and Architecture I')
,('CSC330',4,'Data Structures I'),('CSC331',5,'Data Structures'),('CSC350',5,'Software Development')
,('CSC410',4,'Assembler Language and Architecture II'),('CSC430',4,'Data Structures II'),('CSC450',4,'Computer Graphics')
,('CSC470',5,'Mathematical Foundations of Computers'),('CIS100',4,'Introduction to Computer Applications'),('CIS115',4,'Introduction to Computer and Information Security')
,('CIS120',3,'Introduction to Data Base Applications'),('CIS140',3,'Introduction to Spreadsheet Applications'),('CIS155',5,'Computer Hardware')
,('CIS160',3,'Desktop Publishing Packages'),('CIS165',4,'Introduction to Operating Systems'),('CIS180',4,'Introduction to the Internet')
,('CIS200',4,'Introduction Systems and Technologies'),('CIS207',6,'Healthcare Information Technologies and Management Systems'),('CIS220',4,'Visual BASIC')
,('CIS235',5,'Computer Operations I'),('CIS255',6,'Computer Software'),('CIS280',4,'Advanced Internet Applications')
,('CIS316',4,'Introduction to Digital Forensics'),('CIS317',4,'Introduction to Cryptography'),('CIS325',4,'Systems Analysis')
,('CIS335',5,'Computer Operations II/JCL'),('CIS345',5,'Telecommunications Networks I'),('CIS359',4,'Information Assurance')
,('CIS362',4,'Cloud Computing'),('CIS364',5,'Mobile Device Programming'),('CIS365',4,'Business Systems I')
,('CIS370',4,'Database Driven Website Programming'),('CIS385',4,'Web Programming I'),('CIS390',5,'Wireless Programming')
,('CIS395',5,'Database Systems I'),('CIS420',4,'Systems Implementation'),('CIS440',5,'UNIX')
,('CIS445',5,'Telecommunications Networks II/ LAN'),('CIS455',5,'Network Security'),('CIS459',5,'Ethical Hacking and System Defense')
,('CIS465',10,'Business Systems II'),('CIS475',5,'Wireless Information Networks'),('CIS480',3,'Operating System Concepts')
,('CIS485',4,'Web Programming II'),('CIS490',4,'Introduction to Data Science'),('CIS495',4,'Database Systems II');

CREATE TABLE `rooms` (
	`rmNumber` varchar(10),
	PRIMARY KEY (rmNumber)

    );

CREATE TABLE `sections` (
    `secNumber` char(4),
    `startTime` char(5),
    `endTime` char(5),
    PRIMARY KEY (secNumber)
    );
    
CREATE TABLE `schedule` (
	`scheduleId` int NOT NULL AUTO_INCREMENT,
	`rmNumber` varchar(10),
	`course` char(6),
    `secNumber` char(4),
    `openhours` char(5),
    `classhours` char(5),
    `day` varchar(20),
    PRIMARY KEY (scheduleId)
    );