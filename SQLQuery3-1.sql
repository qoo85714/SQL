use Northwind
go

select CategoryID,ProductID
from Products

select OrderID,ProductID,sum(Quantity)
from [Order Details] 
group by OrderID,ProductID with rollup
order by OrderID

select OrderID, ProductID, Quantity, sum(Quantity)
  from [Order Details] 
  group by OrderID, ProductID, Quantity
  order by OrderID

select OrderID,ProductID,sum(Quantity)
from [Order Details] 
group by OrderID,ProductID with cube
order by OrderID

declare @i int = 1
while (@i <= 8) 
begin
	select * from Products
	   where CategoryID = @i
	select sum(UnitsInStock) from Products
	   where CategoryID = @i
	set @i = @i + 1
end
select *
from Orders
where OrderDate =(select max(OrderDate) from Orders)

select OrderID,CustomerID,OrderDate
from Orders
where OrderDate=( select max(orderdate) from Orders)

select* from(
select top 20 *from Orders
order by OrderDate desc) as T
order by OrderDate ASC

select * from Products

select CategoryID,ProductID,ProductName,UnitPrice,
(select avg(UnitPrice) from Products) as AvgPrice,
UnitPrice -(select avg(UnitPrice) from Products)as Pricediff
 from Products

 select * from Orders
 select OrderID,CustomerID from Orders as or1
 where 20<
 (select quantity from[Order Details] as od
 where od.OrderID=or1.OrderID and od.ProductID=23)

 

 select CategoryID, (select p.CategoryID), ProductID, ProductName, UnitPrice
  from Products as p

select CategoryID, avg(UnitPrice) as AvgPrice
  from Products
  group by CategoryID

select p.CategoryID, ProductID, ProductName, UnitPrice, AvgPrice
   from Products p join 
      (
		select CategoryID, avg(UnitPrice) as AvgPrice
		  from Products
		  group by CategoryID
	  ) as g on g.CategoryID = p.CategoryID


select* from Orders
select CustomerID,OrderID,OrderDate from Orders
select*from[Order Details] where ProductID = 23 and Quantity>20

select CustomerID,OrderID,OrderDate from Orders
where OrderID in 
(select OrderID from[Order Details] 
where ProductID = 23 and Quantity>20)

select*from Suppliers
select*from Products

select SupplierID from Suppliers
where Country= 'USA'

select CategoryID, ProductName ,ProductID,SupplierID from Products
where SupplierID in(select SupplierID from Suppliers
where Country= 'USA')

select*from Products
order by CategoryID,UnitPrice desc



