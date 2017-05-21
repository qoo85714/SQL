use Northwind
select CategoryID, avg(UnitPrice) as AvgPrice
into #Temp1
from Products
where ProductID >=0
group by CategoryID

select * from #Temp1
where AvgPrice>30