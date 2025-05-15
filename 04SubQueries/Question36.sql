--Find products with above-average list price.

SELECT 
p.Name,
p.ListPrice

FROM Production.Product p 
WHERE p.ListPrice > (Select AVG(ListPrice) FROM Production.Product)