--Aula 10 - LIKE
--Vamos dizer que voçê quer encontrar uma pessoa no banco de dados, mas voçê não sabe o nome completo, apenas que começa com Ro. 

SELECT *
FROM Person.Person
WHERE FirstName like 'ro%';

--A % quer dizer que não importa o restante da string

--Pode ser usado caso você lembra apenas do final
SELECT *
FROM Person.Person
WHERE FirstName like '%do';

--Pode ser usado também caso voçê lembre apenas do meio
SELECT *
FROM Person.Person
WHERE FirstName like '%nal%';

--Caso voçê precise apenas de um caracter após os char's informados
SELECT *
FROM Person.Person
WHERE FirstName like '%ro_';
--Exemplos de nomes: Rob, Aaron, Cameron

--E por ultimo, caso voçê se lembre do começo e final
SELECT *
FROM Person.Person
WHERE FirstName like 'ro%do%';