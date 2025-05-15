--Find the number of orders per year

SELECT 
YEAR(soh.OrderDate) as OrderYear,
COUNT(soh.SalesOrderID) as OrderCount

FROM Sales.SalesOrderHeader soh 
GROUP BY YEAR(soh.OrderDate)
ORDER BY OrderCount DESC;