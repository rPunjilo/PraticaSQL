--Monte um relatório para mim de todos os produtos cadastrados que tem preço de venda acima da média

--Normalmente, utilizariamos 2 selects
SELECT AVG(ListPrice)
FROM Production.Product;

SELECT *
FROM Production.Product
WHERE ListPrice > 438.66

--Usando subquery
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

--Eu quero saber o nome dos funcionários que tem o cargo de "Design Enginner"
--Jeito normal

SELECT *
FROM Person.Person;

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer';

--Com subquery
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer');

--Eu quero saber os endereços que estão no estado de Aberta
SELECT AddressLine1, City
FROM Person.Address
WHERE StateProvinceID IN (SELECT StateProvinceID 
FROM Person.StateProvince 
WHERE Name = 'Alberta');
