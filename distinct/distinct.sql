--Aula 3- DISTINCT
--exemplo, serve para filtrar todos os nomes, mas sem repetição. Tipo, em uma tabela há 3 Pedros e mais 4 nomes distintos, em vez de mostrar os 3 Pedros, vai mostrar somente 1

--Quantos sobrenomes únicos temos em nossa tabela person.Person?


SELECT DISTINCT LastName
FROM person.Person;