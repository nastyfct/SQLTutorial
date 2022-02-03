/*
Union, Union All
*/

SELECT EmployeeID, FirstName, Age
FROM EmployeeDemographics
UNION 
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary


SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID