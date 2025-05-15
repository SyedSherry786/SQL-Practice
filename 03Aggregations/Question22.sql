--Get the average order total by territory.

SELECT
st.Name,
Avg(soh.TotalDue) AVGOrderTotal
FROM Sales.SalesOrderHeader soh 
JOIN Sales.SalesTerritory st 
ON soh.TerritoryID =st.TerritoryID
GROUP BY st.Name
ORDER by AVGOrderTotal desc;