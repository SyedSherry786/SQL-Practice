--Top 5 customers by total purchases.

SELECT Top 5
soh.CustomerID,
SUM(soh.TotalDue) as TotalPurchases

FROM Sales.SalesOrderHeader soh 
GROUP BY soh.CustomerID
ORDER BY TotalPurchases DESC;
