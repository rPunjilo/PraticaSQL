SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice between 1000 and 1500;

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice NOT between 1000 and 1500;

SELECT NationalIDNumber, JobTitle, HireDate
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' and '2010/01/01'
ORDER BY HireDate;