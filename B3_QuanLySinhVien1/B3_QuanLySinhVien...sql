create database QuanLySinhVien1;
use QuanLySinhVien1;
create table Class(
ClassID int NOT NULL AUTO_iNCREMENT PRIMARY KEY ,
ClassName varchar(60) NOT NULL,
StartDate datetime NOT NULL,
Status Bit 
);
create table Student(
StudentID int NOT NULL AUTO_iNCREMENT PRIMARY KEY,
StudentName varchar(30) NOT NULL ,
Address varchar(50),
Phone varchar(20),
Status Bit,
ClassID int NOT NULL,
FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);
create table Subject(
SubID int NOT NULL AUTO_iNCREMENT PRIMARY KEY,
SubName varchar(30) NOT NULL,
Credit tinyint NOT NULL DEFAULT 1 CHECK(Credit >=1),
Status bit DEFAULT 1
);
create table Mark(
MarkID int NOT NULL AUTO_iNCREMENT PRIMARY KEY,
SubID int NOT NULL UNIQUE,
StudentID int NOT NULL UNIQUE,
Mark float DEFAULT 0 CHECK(Mark BETWEEN 0 AND 100),
ExamTimes tinyint DEFAULT 1,
FOREIGN KEY (SubId) REFERENCES Subject (SubId),
FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);alter table Mark add constraint FK_SubID foreign key(SubID) references Subject(SubID);
alter table Mark add constraint FK_StudentID foreign key(StudentID) references Student(StudentID);


