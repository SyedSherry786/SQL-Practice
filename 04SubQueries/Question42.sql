--Get employees who are also salespeople.

SELECT 
p.FirstName,
p.LastName

From Person.Person p 
WHERE p.BusinessEntityID in (Select distinct BusinessEntityID From Sales.SalesPerson)