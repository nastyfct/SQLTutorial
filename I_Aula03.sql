/*
Case Statement
*/

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN AGE = 38 THEN 'STANLEY'
--	WHEN Age > 30 THEN 'OLD'
--	WHEN AGE BETWEEN 27 AND 30 THEN 'YOUNG'
--	ELSE 'BABY'
--END
--FROM EmployeeDemographics
--WHERE AGE is NOT NULL
--ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'SalesMan' THEN SALARY + (SALARY * .10)
	WHEN JobTitle <> 'SalesMan' THEN SALARY + (SALARY * .05)
END AS 'SalaryAfterRaise'
FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID