--Number of customers per sales territory.

SELECT 
c.TerritoryID,
COUNT(c.CustomerID) as CustomersCount
FROM Sales.Customer c
GROUP BY c.TerritoryID;