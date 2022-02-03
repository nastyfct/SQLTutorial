/*
Partition By
*/

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER(PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics AS dem
JOIN EmployeeSalary AS sal
ON dem.EmployeeID = sal.EmployeeID