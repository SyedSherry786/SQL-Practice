--Find the name and order total of the most expensive order ever placed.


SELECT top 1
soh.SalesOrderID,
p.FirstName+' '+p.LastName,
soh.TotalDue
FROM Sales.SalesOrderHeader soh 
JOIN Sales.Customer c 
on soh.CustomerID = c.CustomerID
JOIN Person.Person p 
on c.PersonID =p.BusinessEntityID
ORDER BY soh.TotalDue DESC;