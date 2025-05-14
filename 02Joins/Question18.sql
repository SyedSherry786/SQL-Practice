--List products and their product models.

SELECT 
p.Name as ProductName,
pm.Name as ModelName
FROM Production.Product p 
JOIN Production.ProductModel pm 
on p.ProductModelID = pm.ProductModelID