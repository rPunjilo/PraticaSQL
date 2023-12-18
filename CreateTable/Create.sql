--Principais tipos de restrições que podem ser aplicadas:
--NOT NULL: Não permite nulos;
--UNIQUE: Força que todos os valores em uma coluna sejam diferentes
--PRIMARY KEY: Uma junção de NOT NULL e UNIQUE
--FOREIGN KEY: Identifica unicamente uma linha em outra tabela
--CHECK: Força uma condição específica em uma coluna
--DEFAULT: Força um valor padrão quando nenhum valor é passado

--           CANAL
-- CanalID  |  int Pk
-- Nome varchar(150)  | not null
-- ContagemInscritos  | int default 0
-- DataCriacao  |  datetime not null

CREATE TABLE Canal (
CanalID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME NOT NULL
);

--          Video
-- VideoID  |  int PK
-- Nome varchar (150)  | not null
-- Visualizações  |  int default 0
-- Likes  |   int default 0
-- Deslikes  |  int default 0
-- Duração  |  int not null
-- CanalID  |  FK

CREATE TABLE Video (
VideoID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
Visualizacoes INT DEFAULT 0,
Likes INT DEFAULT 0,
Deslikes INT DEFAULT 0,
Duracoes INT NOT NULL,
CanalID INT FOREIGN KEY REFERENCES Canal(CanalID)
);


