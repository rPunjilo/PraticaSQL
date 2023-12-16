--Imagine 2 tabelas

--  Cliente        |   Endereço

--  ClienteId      |    EndereçoID
--  Nome           |    Rua
--  EndereçoID     |    Cidade

--Basicamente o InnerJoin junta informações das duas tabelas, porém elas tem que ter pelo menos uma coluna "informação" em comum!!

--Queremos essas informações:
--BusinessEntityID, FirstName, LastName, EmailAddress

--Na tabela Person.PErson temos o BusinessEntityID, FirstName, LastName
--Na tabela Person.EmailAddress temos BusinessEntityID, EmailAddress

SELECT P.BusinessEntityID, P.FirstName, P.LAstName, PE.EmailAddress
FROM Person.Person as P
INNER JOIN Person.EmailAddress PE ON P.BusinessEntityID = Pe.BusinessEntityID;

--Queremos agora o ListPrice, Nome do PRoduto e nome da subcategoria
SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product pr
INNER JOIN Production.ProductSubcategory pc ON pc.ProductSubcategoryID = pr.ProductSubcategoryID

--Se querermos juntar as duas tabelas
SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

--Queremos o BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber
SELECT pa.BusinessEntityID, pb.Name, pa.PhoneNumberTypeId, pa.PhoneNumber --Informamos quais colunas queremos, com os apelidos
FROM Person.PersonPhone pa --Primeira Tabela
INNER JOIN Person.PhoneNumberType pb ON pa.PhoneNumberTypeID = pb.PhoneNumberTypeID;
            --Segunda Tabela               SePhoneNumberTypeId da primeira tabela for igual o da segunda

--Queremos AddressId, City, StateProvinceId, Nome do Estado

SELECT *
FROM Person.Person pp
LEFT JOIN Sales.PersonCreditCard pc
ON pp.BusinessEntityID = pc.BusinessEntityID
WHERE pc.BusinessEntityID IS NULL;
