/*
Subqueries (in the Select, From, and Where Statement)
*/

Select *
From EmployeeSalary

--Suquery in Select
Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) AS AllAvgSalary
From EmployeeSalary

-- How to do it with Partition By
Select EmployeeID, Salary, AVG(Salary) over () AS AllAvgSalary
From EmployeeSalary

-- Why Group by doesn't work
Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
Order By 1, 2

-- Subquery in From
Select *
From (Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	  From EmployeeSalary) a

-- Subquery in Where
Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeID in (
	Select *
	From EmployeeDemographics)