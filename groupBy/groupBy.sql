--Aula 13

--O GROUP BY  basicamente divide o resultado da sua pesquisa em grupos;
--Para cada grupo você pode aplicaruma função de agregação, por exemplo:
    --Calcular a soma de itens;
    --Contar o número de itens;

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

--O que basicamente acontece, ele soma todos os UnitPrice de acordo com a SpecialOfferID
--Ex: Tem 20 SpecialOfferID em que o número é 1 e o unit é 1000. Ele soma tosos os unit price e retorna assim:
-- SpecialOfferID | SOMA
--      1           20000

--E se eu querer saber quantos cada produto foi vendido?
SELECT ProductID, COUNT(ProductID) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

--E se eu querer a quantidade de cada nome cadastrado no sistema?
SELECT ProductID, COUNT(ProductID) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

--E se eu querer saber a média de preço dos produtos que são prata?
SELECT Color, AVG(ListPrice) AS "Média"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color;

---------------Exercícios
--Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName
SELECT MiddleName, COUNT(MiddleName) AS "Contagem"
FROM Person.Person
GROUP BY MiddleName;

--Eu preciso saber em média qual é a quantidade que cada produto é vendido na loja
SELECT ProductID, AVG(OrderQty) AS"Média"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

--Eu quero saber qual foram as 10 produtos que no total tiveram os maiores valores de venda. Do maior valor pro menor
SELECT TOP 10 ProductID, SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) desc;

--Eu preciso saber quantos produtos e qual a quantidade média de produtos temos cadastrados na nossa ordem de serviço. agrupado por ProductID
SELECT ProductID, COUNT(ProductID) AS"Contagem", AVG(ProductID) AS"Média"
FROM Production.WorkOrder
GROUP BY ProductID;


