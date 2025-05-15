-- List the top 5 products based on the number of times they appear in sales orders.

SELECT 
top 5
p.Name,
COUNT(*) as TimesOrdered

FROM Sales.SalesOrderDetail sod 
JOIN Production.Product p 
ON sod.ProductID =p.ProductID
GROUP BY p.Name
ORDER BY TimesOrdered DESC;