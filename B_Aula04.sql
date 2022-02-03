/*
Group By, Order By
*/

SELECT *
FROM EmployeeDemographics
ORDER BY 4 ASC, Gender DESC

--SELECT Gender, COUNT(Gender) AS N�meroDePessoas
--FROM EmployeeDemographics
--WHERE Age >= 18
--GROUP BY GENDER
--ORDER BY N�meroDePessoas DESC

SELECT Gender, COUNT(Gender) AS NumberGender, Age
FROM EmployeeDemographics
WHERE Age >= 18
GROUP BY Gender, Age
ORDER BY Gender DESC
