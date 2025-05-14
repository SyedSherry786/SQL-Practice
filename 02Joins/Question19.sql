--List all salespersons and their territories.

SELECT 
p.FirstName,
p.LastName,
st.Name as SalesTerritory
FROM Sales.SalesPerson sp 
JOIN Person.Person p 
on sp.BusinessEntityID = p.BusinessEntityID
JOIN Sales.SalesTerritory st 
on sp.TerritoryID = st.TerritoryID