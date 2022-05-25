

create table Transmission(
Id int not null primary key identity,
Type nvarchar(50) not null unique);

create table Supplier(
Id int not null primary key identity,
Name nvarchar(100) not null,
Phone nvarchar(12) not null,
Email nvarchar(50) not null,
WebSite nvarchar(max));

create table Model(
Id int not null primary key identity,
Name nvarchar(50) not null,
Color nvarchar(50) not null,
Casing nvarchar(50) not null,
YearOfIssue int not null,
Power nvarchar(50) not null,
Doors int not null,
Transmission nvarchar(50) not null references Transmission(Type),
Price decimal not null);

create table Client(
Id int not null primary key identity,
LastName nvarchar(50) not null,
Name nvarchar(50) not null,
Patronymic nvarchar(50) not null,
NumberTreaty int not null,
DatePurchase datetime not null,
Phone nvarchar(12) not null,
Address nvarchar(1000) not null,
IdModel int not null references Model(Id));

create table PriceList(
Id int not null primary key identity,
IdModel int not null references Model(Id),
Price decimal not null); 

create table Markup(
Id int not null primary key identity,
Type nvarchar(50) not null,
ValuePercent decimal not null);

create table Deal(
Id int not null primary key identity,
IdModel int not null references Model(Id),
IdClient int not null references Client(Id),
IdSupplier int not null references Supplier(Id));