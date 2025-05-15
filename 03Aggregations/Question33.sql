--Find the most sold product (by quantity).


SELECT Top 1
sod.ProductID,
SUM(Sod.OrderQty) as QuantitySold
FROM Sales.SalesOrderDetail sod 
GROUP BY sod.ProductID
ORDER BY QuantitySold DESC;
