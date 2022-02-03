/*
Updating/Deleting Data
*/

SELECT *
FROM EmployeeDemographics

--UPDATE EmployeeDemographics
--SET EmployeeID = 1012
--WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

--DELETE FROM EmployeeDemographics
--WHERE EmployeeID = 1005

SELECT *
FROM EmployeeDemographics
WHERE EmployeeID = 1004