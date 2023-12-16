-- O operador union combina dois ou mais resultados de um selecrt em um resultado apenas. Porém ele remove as duplicatas, caso não deseje que isso aconteça, colocar UNION ALL

-- Sintaxe 
SELECT coluna1, coluna2
FROM tabela1
UNION
SELECT coluna1, coluna2
FROM tabela2

SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name like '%chain%'
UNION
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name like '%decal%';

SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName = 'A'