--Count the number of products per product category.

SELECT 
pc.Name,
COUNT(p.ProductID) ProductCount

FROM Production.Product p 
JOIN Production.ProductSubcategory ps 
on p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory pc 
on ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
ORDER BY ProductCount DESC;