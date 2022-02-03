/*
Inner Joins, Full/Left/Right Outer Joins
*/

Select *
FROM EmployeeDemographics

Select *
FROM EmployeeSalary

SELECT *
FROM EmployeeDemographics
Inner Join EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT JobTitle, AVG(Salary) AS MÉDIA
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'SalesMan'
GROUP BY JobTitle

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE Salary > 47000 AND FirstName <> 'Francisco' AND LastName <> 'Antunes'
GROUP BY EmployeeDemographics.EmployeeID, FirstName, LastName, Salary