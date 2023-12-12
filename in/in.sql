----Aula 09 - In
--O IN é utilizado junto com o WHERE, para verificar se um valor corresponde com qualquer outro valor passado.

--Exemplo:
--valor IN(valor1, valor2);
--color IN('BLUE','BLACK');

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);

------------------------------------------
-- Se não usassemos o IN, ficaria dessa forma:

SELECT *
FROM Person.Person
WHERE BusinessID = 2
OR BusinessID = 7
OR BusinessID = 13;