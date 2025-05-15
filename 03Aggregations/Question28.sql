---Find the average, max, and min list price for each product subcategory.

SELECT
ps.Name as SubCategory,
AVG(P.ListPrice) as AvgListPrice,
MAX(P.ListPrice) as MaxListPrice,
MIN(P.ListPrice) as MinListPrice
FROM Production.Product p 
JOIN Production.ProductSubcategory ps 
on p.ProductSubcategoryID = ps.ProductSubcategoryID
GROUP BY ps.Name;
