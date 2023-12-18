-- ALTER TABLE
--Usado para alterar a estrutura da tabela e as colunas

ALTER TABLE Aula28
ADD Ativo BIT;
-- Adiciona uma coluna chamado Ativo

ALTER TABLE Aula28
ALTER COLUMN Categoria VARCHAR(300) NOT NULL;
--Altera a quantidade de caracteres disponível na coluna categoria

EXEC sp_rename 'Aula28.Nome' , 'NomeCanal', 'COLUMN';
--Muda o nome de uma coluna

--Para excluir uma tabela:
DROP TABLE Aula28;

--Para limpar, ou seja, apagar todo o conteúdo, mas nã o excluir a tabela em si:
TRUNCATE TABLE Aula29;