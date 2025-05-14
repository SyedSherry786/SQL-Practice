---Find all orders with customer names.


SELECT 
so.SalesOrderID
,p.FirstName
,p.LastName
FROM Sales.SalesOrderHeader so 
JOIN Sales.Customer c 
on so.CustomerID = c.CustomerID
JOIN Person.Person p 
on c.PersonID = p.BusinessEntityID;