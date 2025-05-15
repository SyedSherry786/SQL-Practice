---Find employees who earn more than the average rate.


Select 
eph.BusinessEntityID as EmployeeID,
eph.Rate
FROM HumanResources.EmployeePayHistory eph
where eph.Rate > (Select AVG(Rate) FROM HumanResources.EmployeePayHistory)