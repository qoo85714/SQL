use Northwind
go

drop procedure usp_ListProd
go

create procedure usp_ListProd 
 @min money =0,
 @max money =999
 as
 select*from Products where UnitPrice between @min and @max
 go
execute usp_ListProd 
execute usp_ListProd @min = 25
go

drop procedure usp_ListProd
go
create procedure usp_ListProd 
 @min money =null,
 @max money =999
 as
 if(@min is null)
	set @min=10
 select*from Products where UnitPrice between @min and @max
 go
execute usp_ListProd 
execute usp_ListProd @max = 25
go

drop procedure usp_ListProd
go
create procedure usp_ListProd 
 @min money =null,
 @max money =null
 as
 if(@min is null)
	set @min=10
 if(@max is null)
	select @max=max(UnitPrice)from Products
 select*from Products where UnitPrice between @min and @max
 go
execute usp_ListProd 
execute usp_ListProd @max = 25
go

