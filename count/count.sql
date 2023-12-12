--Podemos passar parâmetros, igual uma função

SELECT count(Title)
FROM Person.Person;

SELECT count(Distinct Title)
FROM Person.Person;

--Desafio 1 
--Mostrar quantos produtos temos cadastrados em nossa tabela de produtos

SELECT count(*)
FROM Production.Product;

--Desafio 2
--Mostrar quantos tamanhos de produtos temos cadastrados em nossa tabela

SELECT count(Size)
FROM Production.Product;

--Desafio 3
--Mostrar quantos tamanhos distintos de produtos temos cadastrados em nossa tabela

SELECT count(Distinct Size)
FROM Production.Product;