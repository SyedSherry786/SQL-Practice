---List Employees and their Job titles

SELECT p.FirstName, p.LastName, e.JobTitle
from HumanResources.Employee e 
JOIN Person.Person p ON
e.BusinessEntityID = p.BusinessEntityID;