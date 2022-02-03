/*
Aliasing
*/

--SELECT FirstName + ' ' + LastName AS FullName
--SELECT AVG(Age) AS AvgAge
SELECT Demo.EmployeeID, Sal.Salary
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
ON DEMO.EmployeeID = Sal.EmployeeID
