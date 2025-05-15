--Get product names with multiple vendors.


SELECT p.ProductID, p.Name 
FROM Production.Product p 
WHERE p.ProductID IN (
    Select distinct pv.ProductID
    From Purchasing.ProductVendor pv 
    GROUP BY pv.ProductID
    HAVING COUNT(*)>1
)