use TestDB
go
select * into Customers from Northwind.dbo.Customers
select *into Orders from Northwind.dbo.Orders
go
select *from Orders where CustomerID ='ALFKI'
alter table Orders

add constraint FK_Customers_Orders
	foreign key (CustomerID) references Customers(CustomerID)
	on update cascade on delete  cascade

	create schema lab
	go

	create table lab.test3(id int primary key);
	select * from lab.test3


