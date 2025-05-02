use prod;

SELECT * FROM prod.`prod+env+inventory+dataset`;


select count(distinct product_id) from prod.`prod+env+inventory+dataset`;


update prod.`prod+env+inventory+dataset`
set product_id = 7
where product_id = 21;

update prod.`prod+env+inventory+dataset`
Set product_id = 11
where product_id = 22;

Select * from Products;
 
 
CREATE TABLE New_table AS SELECT a.`Order_Date (DD/MM/YYYY)` as 'Order_Date_DD_MM_YYYY',
    a.Product_ID,
    a.Demand,
    a.Availability,
    b.Product_Name,
    b.`Unit_Price ($)` as 'Unit_Price' FROM prod.`prod+env+inventory+dataset` AS a
        LEFT JOIN
    products AS b ON a.Product_ID = b.Product_ID;
    
    
Select * from New_table;
    
