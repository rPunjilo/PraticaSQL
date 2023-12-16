--É basicamente usado em junção com o GROUP BY para filtrar resultados de um agrupamento
--Resumindo, um where para dados agrupados

--Sintaxe:
--SELECT coluna1, funcaoAgregacao(coluna2)
--FROM nomeTabela
--GROUP BY coluna1
--HAVING condicao;

SELECT FirstName, COUNT(FirstName) AS "quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

--Queremos saber quais produtos que no total de vendas estão esntre 162000 a 500000
SELECT ProductID, SUM(linetotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) BETWEEN 162000 AND 500000

--Quantos nomes no sistema tem uma ocorrÊncia maior que 10 vezes, porém somente onde o título é 'Mr.'

SELECT FirstName, COUNT(FirstName)  AS "Quantidade"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

--Exercícios
--1) Estamos querendo identificar as províncias com o maior número de cadstros no sistema. Então quais províncias estão registradas no banco mais que 1000 vezes?

SELECT StateProvinceID, COUNT(StateProvinceID) AS "Soma"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

--2) Quais produtos estão trazendo em média no mínimo 5000 em total de vendas?
SELECT ProductID, AVG(LineTotal) AS "Média"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) >= 5000
ORDER BY AVG(LineTotal) DESC;

