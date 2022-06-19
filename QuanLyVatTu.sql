create database thietkeCSDL;
create table Supplier(
SupplierID int not null primary key auto_increment,
Name varchar(30) not null unique key,
Address varchar(100) not null,
Phone varchar(30) not null
);

create table ImportOrder(
ImportOrderID int not null primary key auto_increment,
OrderDate Datetime,
SupplierID int, foreign key (SupplierID) references Supplier(SupplierID)
);


create table Ingredient(
IngredientID int not null primary key auto_increment,
Name varchar(50),
ImportOrderID int, foreign key (ImportOrderID) references ImportOrder(ImportOrderID)
);

create table ImportList(
ImportID int not null primary key auto_increment,
ImportAmount int not null default('1'),
Importprice int not null,
IngredientID int,foreign key (IngredientID) references Ingredient(IngredientID)
);

create table ImportBill(
ImportBillID int not null primary key auto_increment,
ImportDate Datetime,
ImportID int,foreign key (ImportID) references ImportList(ImportID)
);

create table EXportList(
ExportID int not null primary key auto_increment,
ExportAmount int not null default('1'),
Exportprice int not null,
IngredientID int,foreign key (IngredientID) references Ingredient(IngredientID)
);

create table ExportBill(
ExportBillID int not null primary key auto_increment,
ExportDate Datetime,
ExportID int,foreign key (ExportID) references ExportList(ExportID)
);





