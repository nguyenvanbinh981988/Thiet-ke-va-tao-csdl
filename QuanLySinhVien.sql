create database QuanLySinhVien;
create table Class(
ClassID int not null primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);

create table Student (
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int, foreign key (ClassID) references class(ClassID)
);

create table Subject(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit Tinyint not null default('1') Check(Credit>= 1),
Status bit default('1')
);

create table Mark(
MarkID int not null primary key auto_increment,
SubID int not null unique key, foreign key (SubID) references Subject(SubID),
StudentID int not null unique key, foreign key (StudentID) references Student(StudentID),
Mark Float default('0') check(Mark between 0 and 100)
);


