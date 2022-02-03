/*
Group By, Order By
*/

SELECT *
FROM EmployeeDemographics
ORDER BY 4 ASC, Gender DESC

--SELECT Gender, COUNT(Gender) AS NúmeroDePessoas
--FROM EmployeeDemographics
--WHERE Age >= 18
--GROUP BY GENDER
--ORDER BY NúmeroDePessoas DESC

SELECT Gender, COUNT(Gender) AS NumberGender, Age
FROM EmployeeDemographics
WHERE Age >= 18
GROUP BY Gender, Age
ORDER BY Gender DESC
