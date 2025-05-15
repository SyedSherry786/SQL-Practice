--List product names that have never been sold.

 SELECT p.ProductID,p.Name
 FROM Production.Product p 
 WHERE p.ProductID NOT IN (Select distinct sod.ProductID FROM Sales.SalesOrderDetail sod);