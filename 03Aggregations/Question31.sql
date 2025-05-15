--Total due amount by customer.


SELECT 
soh.CustomerID,
SUM(soh.TotalDue) as TotalDue

FROM Sales.SalesOrderHeader soh 
GROUP BY soh.CustomerID
ORDER BY TotalDue DESC;
