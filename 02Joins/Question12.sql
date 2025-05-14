----List all the products and their sub categories

Select p.Name as ProductName, ps.Name as SubCategory
FROM Production.Product p 
JOIN Production.ProductSubcategory ps ON
p.ProductSubcategoryID = ps.ProductSubcategoryID