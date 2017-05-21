/* 010 
  �T�w���}���O Northwind ��Ʈw */
use Northwind
go

/* 110 
  �мg�@�D���O, �C�X:
  products ��ƪ��Ҧ����~���
 */ 
 select *from Products


/* 120 
  �мg�@�D���O. �C�X:
  products ��ƪ��Ҧ����~, ���C��Ʈ�, �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 select ProductID
	  , ProductName
	  , UnitPrice
	  , UnitsInStock
	  , UnitsOnOrder
	  , ReorderLevel 
 from Products



/* 130 
  �мg�@�D���O, �C�X:
  products ��ƪ� "�w�s�q�C��A�q�ʶq" �����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel from Products 
 where UnitsInStock<ReorderLevel
 order by SupplierID


/* 140 
  �мg�@�D���O, �C�X:
  products ��ƪ� (�w�s�q + �q�ʤ��ƶq) �C��A�q�ʶq�����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���:
  ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 */ 
 select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel from Products 
 where (UnitsInStock+UnitsOnOrder)<ReorderLevel

  


/* 150 
  �мg�@�D���O, �C�X:
  products ��ƪ� "�w�s�q�C��A�q�ʶq" �����~���, ���C��Ʈ�, 
  �ЦC�X�H�U���
  SupplierID, ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel

  �åB, �ۦP�����ӥN��(SupplierID)�����~�бƦb�@�_
 */ 
 select SupplierID, ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel
 from Products order by SupplierID




/* 160 
  �мg�@�D ���O �C�X:
  products table ���~�W�٥H C �}�Y�����
 */ 
  select *from Products
  where ProductName like 'c%'



/* 170 
  �мg�@�D���O, �C�X:
  products ��ƪ����O�s��(CategoryID)�� 1, 4, 8 �����~���
  �ƧǮ�, �Ы�"���O�s��"�Ƨ�, �ۦP���O�s�������~�����~�W��(ProductName)�ƦC
 */ 
   select *from Products
  where CategoryID in (1,4,8)
  order by CategoryID,ProductName





/* 180 
  �мg�@�D���O, �C�X:
  products ��ƪ�������� 10 �� 20 ������(�]�t 10, 20)�����~���
  �åB���ӳ��(UnitPrice)�Ѥj��p�Ƨ�
 */ 
   select *from Products

   where UnitPrice between 10 and 20

   order by UnitPrice asc




/* 190 
  �мg�@�D���O, �C�X:
  products ��ƪ��Ҧ����~, ���C��Ʈ�, 
  �ЦC�X�H�U���
  ProductID, ProductName, UnitPrice, 

  ���L, �U���W�ٽХΤ������:
  ���~�s��, ���~�W��, ���
 */ 

 select SupplierID, ProductID, ProductName, UnitPrice, UnitsInStock,
 (UnitPrice*UnitsInStock) as Stockcost
 from Products

 



-- 210 �ЦC�X����̰����e�T�����~�C
select avg(convert(money,Quantity))
from [Order Details]

select EmployeeID,ReportsTo from Employees
select count(ReportsTo) from Employees

select top 3 * from Products
order by UnitPrice desc


-- 220 �ЦC�X���~����������C

select avg(unitprice) from Products


-- 230 �ХH���O�s��(CategoryID)���� 1, 4, 8 ���p��d��, �p�ⲣ�~����������C
select avg(unitprice) from Products
where CategoryID in (1,4,8) 

select CategoryID,avg(unitprice) as AvgPrice from products
group by CategoryID having avg(unitprice)>30



-- 240 �ЦC�X�U�����~����������C




-- 250 �ЦC�X��������̰����e�T�����~�C




/* 310
  �мg�@�D���O, �C�X products ��ƪ��H�U���
  ProductID, ProductName, SupplierID
 */ 




/* 320
   �P�W, ���Ф@�֦C�X�Ө����ӦW��(CompanyName)�B
   �p���q��(Phone)�B�p���H(ContactName)�n��?
   �t�~, �ۦP�����Ӫ���ƽЦC�b�@�_
 */ 
 



/* 330
   �ڷQ�C�X�u�Ҧ��v�����ӥثe�U�۴��ѧڭ̭��ǲ��~��ƪ���Ӫ�,
   �ثe�S���ѧڭ̲��~�������Ӥ]�n�C�X

   <note>
   �U���O�e, �Х�����U�C���O:
   -- begin --
   insert into suppliers
     (CompanyName, ContactName, Phone)
      values
     ('Taiwan First', 'A-Ban', '(001) 000-0001')
   -- end --
 */ 




-- (Optional)
-- 340 �ЦC�X���u�Ψ���u���ݦ���]ReportsTo�^���M��C




/* 410
  �ЦC�X�U�����~�����O�B�s���B�~�W�B����B
  �������~��������B����P���~����������u���t�v�C
*/

 select CategoryID,ProductID,ProductName,UnitPrice,
(select avg(UnitPrice) from Products) as AvgPrice,
UnitPrice -(select avg(UnitPrice) from Products)as Pricediff
 from Products



/* 420
   �ЦC�X���q�ĤT�����~���q��C
*/





/* 430
  �ЦC�X��o�̦n�e�T�����~�C
*/



