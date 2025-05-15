--Find customers whose total due is more than the average total due.

SELECT
soh.CustomerID,
SUM(TotalDue) as TotalDues
FROM Sales.SalesOrderHeader soh 
where soh.TotalDue > (
    Select AVG(TotalDue) FROM Sales.SalesOrderHeader
)
GROUP BY soh.CustomerID
ORDER by TotalDues DESC;