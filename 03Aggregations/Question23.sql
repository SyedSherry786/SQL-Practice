---Show customers who have placed more than 5 orders.
  SELECT 
  soh.CustomerID,
  COUNT(*) as OrderCount
  FROM Sales.SalesOrderHeader soh 
  GROUP BY soh.CustomerID
  HAVING count(*)>5
  ORDER by OrderCount desc;
