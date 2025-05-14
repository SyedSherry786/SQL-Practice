---List Product Name, Sub Category and category



Select 
    p.Name as ProductName
,ps.Name as SubCategory
,pc.Name as Category 
FROM Production.Product p 
JOIN Production.ProductSubcategory ps ON
p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory pc ON
ps.ProductCategoryID = pc.ProductCategoryID;