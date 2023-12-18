--Manipulação de String

--Converter a String para maiusculo
SELECT UPPER(FirstName)
FROM Person.Person;

--Converter a String para minúsculo
SELECT LOWER(FIrstName)
FROM Person.Person;

--Saber a quantidade de caracteres
SELECT LEN(FIrstName)
FROM Person.Person;

--Extração especifica de caracteres
SELECT FirstName, SUBSTRING(FirstName, 1, 3)
FROM Person.Person;
--Imagina se o primeiro nome era Pedro, retornaria como Ped

--Substituir um caractere por outro 
SELECT REPLACE(ProductNumber, '-', '#')
FROM Production.Product;
--Substitui o primeiro caractere informado, pelo Ssegundo

