--Get total quantity and average unit price per product.

SELECT 
sod.ProductID,
SUM(sod.OrderQty) as QuantitySold,
AVG(sod.UnitPrice) as AvgUnitPrice
FROM Sales.SalesOrderDetail sod 
GROUP BY sod.ProductID;