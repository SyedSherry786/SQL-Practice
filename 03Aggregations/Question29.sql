--Count the number of employees in each department.

SELECT 
d.Name as Department,
COUNT(e.BusinessEntityID) as EmployeeCount

FROM HumanResources.Employee e 
JOIN HumanResources.EmployeeDepartmentHistory edh 
on e.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d 
ON edh.DepartmentID = d.DepartmentID

WHERE edh.EndDate is NULL
GROUP BY d.Name
order by EmployeeCount DESC;