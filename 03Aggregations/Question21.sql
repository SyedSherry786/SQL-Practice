--List each sales person's name along with their total sales amount.


SELECT 
p.FirstName+' '+p.LastName as SalesPerson,
SUM(soh.TotalDue) as TotalSales 
FROM Sales.SalesOrderHeader soh 
JOIN Sales.SalesPerson sp 
on soh.SalesPersonID = sp.BusinessEntityID
JOIN Person.Person p 
on sp.BusinessEntityID = p.BusinessEntityID
GROUP BY p.FirstName,p.LastName
ORDER by TotalSales DESC;