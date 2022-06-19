create database QuanLyBanhang;
create table Customer(
CId int primary key not null auto_increment,
CName varchar(30) not null,
CAge int
);

create table Order1(
OId int primary key not null auto_increment,
CId int , foreign key (CId) references Customer(CId),
ODate Datetime not null,
OTotalPrice int
);

create table Product(
PId int primary key not null auto_increment,
PName varchar(50),
PPrice int
);

create table OrderDetail(
OId int, foreign key (OId) references Order1(OId),
PId int, foreign key (PId) references Product(PId),
OdQTY int not null default('1')
);
