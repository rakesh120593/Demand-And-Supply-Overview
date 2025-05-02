

create database test_env;

use test_env

select * from [dbo].[Products]

select a.Order_Date_DD_MM_YYYY,a.Product_ID,a.Availability,a.Demand, b.Product_Name, b.Unit_Price
from [dbo].[Test+Environment+Inventory+Dataset] as a 
left join [dbo].[Products] as b 
on a.Product_ID = b.Product_ID;


select * into New_table 
from (select a.Order_Date_DD_MM_YYYY,a.Product_ID,a.Availability,a.Demand, b.Product_Name, b.Unit_Price
		from [dbo].[Test+Environment+Inventory+Dataset] as a 
		left join [dbo].[Products] as b 
		on a.Product_ID = b.Product_ID) as subquery; 


Select * from New_table;


-------------------------------------------------------


Create database Prod;

Use Prod;

Select count (distinct product_id) from [dbo].[Prod+Env+Inventory+Dataset];

update [dbo].[Prod+Env+Inventory+Dataset]
set product_id = 7
where product_id = 21;

update [dbo].[Prod+Env+Inventory+Dataset]
Set product_id = 11
where product_id = 22;


Select distinct product_id from [dbo].[Prod+Env+Inventory+Dataset] order by product_id;


-----------------------------------------------------------------------------------------


select * into New_table 
from (select a.Order_Date_DD_MM_YYYY,a.Product_ID,a.Availability,a.Demand, b.Product_Name, b.Unit_Price
		from [dbo].[Prod+Env+Inventory+Dataset] as a 
		left join [dbo].[Products] as b 
		on a.Product_ID = b.Product_ID) as subquery; 


		select * from New_table;