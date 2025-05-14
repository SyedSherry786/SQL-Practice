--- Get List of customers and their email addresses

SELECT 
c.CustomerID
,p.FirstName
,p.LastName
,e.EmailAddress
FROM Sales.Customer c 
JOIN Person.Person p 
on c.PersonID = p.BusinessEntityID
JOIN Person.EmailAddress e 
on p.BusinessEntityID = e.BusinessEntityID;