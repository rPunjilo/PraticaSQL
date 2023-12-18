--INSERT INTO

INSERT INTO Canal(CanalID,Nome,ContagemInscritos,DataCriacao)
VALUES
(2,'LuanGameplay',250000,'20231218 10:38:00 AM' );

--UPDATE

UPDATE Canal
SET Nome = 'BrksEdu';

--ATENÇÃO: Tomar muito cuidado e lembrar de sempre usar o WHERE em conjunto. Nesse exemplo acima, todos os nomes ficaram iguais!!!!!

UPDATE Canal
SET Nome = 'LuanGameplay'
WHERE CanalID = 2;

--DELETE
--Mesmo esquema do UPDATE, tomar MUITO cuidado, se não irá deletar tudo

DELETE FROM Canal
WHERE CanalID = 1;