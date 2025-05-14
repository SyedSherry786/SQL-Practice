---List customers who have placed orders.

SELECT distinct 
c.CustomerID,
p.FirstName,
p.LastName

FROM Sales.Customer c 
JOIN Person.Person p 
on c.PersonID = p.BusinessEntityID
JOIN Sales.SalesOrderHeader soh 
on c.CustomerID = soh.CustomerID