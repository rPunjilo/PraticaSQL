-- Self join
--Serve para comparar elementos e colunas da mesma tabela!

--Eu quero todos os clientes que moram na mesma região
SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region;

--Eu quero encontrar (nome e data de contratação) de todos os huncionários que foram contratados no mesmo ano
SELECT  A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(YEAR,a.HireDate) = DATEPART(YEAR,b.HireDate);

--Quais produtos tem a mesma taxa de desconto?
SELECT a.ProductID, a.Discount, b.ProductID, b.Discount
FROM [Order Details] A , [Order Details] B
WHERE a.Discount = b.Discount;