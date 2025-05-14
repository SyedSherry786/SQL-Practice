--Get product names and their vendors.

SELECT 
    p.Name as ProductName,
    v.Name as Vendor
FROM Production.Product p 
JOIN Purchasing.ProductVendor pv 
on p.ProductID = pv.ProductID
JOIN Purchasing.Vendor v 
on pv.BusinessEntityID = v.BusinessEntityID