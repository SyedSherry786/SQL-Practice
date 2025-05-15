--Find the product with the highest list price.

Select p.ProductID,p.Name,p.ListPrice 
FROM Production.Product p 
where p.ListPrice = (Select max(ListPrice) FROM Production.Product);