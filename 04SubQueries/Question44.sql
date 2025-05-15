--List names of employees who report to a specific manager.

SELECT p.FirstName,p.LastName 
FROM HumanResources.Employee e 
JOIN Person.Person p 
on e.BusinessEntityID = p.BusinessEntityID
WHERE e.OrganizationLevel = 2