--List employees with department names.

SELECT 
p.FirstName,
p.LastName,
d.Name as DepartmentName

FROM HumanResources.Employee e 
JOIN Person.Person p 
ON e.BusinessEntityID = p.BusinessEntityID
JOIN HumanResources.EmployeeDepartmentHistory edh 
on e.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d 
on edh.DepartmentID = d.DepartmentID
WHERE edh.EndDate is NULL;