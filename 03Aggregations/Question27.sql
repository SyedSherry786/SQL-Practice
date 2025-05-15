---Total sales amount by territory.

SELECT 
st.Name as Territory,
SUM(soh.TotalDue) as TotalSales
FROM Sales.SalesOrderHeader soh 
JOIN Sales.SalesTerritory st 
on soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalSales DESC;