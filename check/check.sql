-- Faz uma validação no valor informado da coluna. Basicamente um if

CREATE TABLE CarteiraMotorista (
    ID INT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Idade INT CHECK(Idade >= 18)
);

--Se tentarmos colocar a idade de alguém como menos de 17, irá retornar um erro