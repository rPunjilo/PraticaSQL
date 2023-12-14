--Aula12
--Retornando a soma das 10 maiores vendas
SELECT TOP 10 sum(linetotal) 
FROM Sales.SalesOrderDetail;

-- Retornando o menor valor das 10 maiores vendas
SELECT TOP 10 MIN(LineTotal) 
FROM Sales.SalesOrderDetail;

--Retornando o maior valor das 10 maiores vendas
SELECT TOP 10 MAX(LineTotal) 
FROM Sales.SalesOrderDetail;

--Retornando a média das 10 maiores vendas
SELECT TOP 10 AVG(LineTotal) 
FROM Sales.SalesOrderDetail;