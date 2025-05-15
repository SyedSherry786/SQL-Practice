---Get customers who have placed more than 5 orders.

Select 
soh.CustomerID,
COUNT(*) as OrderCount
FROM Sales.SalesOrderHeader soh 
GROUP BY soh.CustomerID
HAVING COUNT(*) > 5;