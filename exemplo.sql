--CRIA O BANCO DE DADOS
CREATE DATABASE Sstop_manha;

USE Sstop_manha;

CREATE TABLE EstilosMusicais (
	IdEstiloMusical INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)
);

CREATE TABLE Artistas(
	Idartista INT PRIMARY KEY IDENTITY,
	Nome	  VARCHAR(200),
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicais(IdEstiloMusical)
);

--Alter Adicionar novo atributo
ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR (200);

-- DML LIGUAGEM DE MANIPULACAO DE DADOS

-- COMANDO DE INSERT

INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('Pagode', 'Musica Brasileira'),
	   ('Rock', 'Musica boa'),
	   ('funk',	'Musica ruim');

INSERT INTO Artistas 

SELECT * FROM EstilosMusicais
WHERE IdEstiloMusical >= 4;
SELECT * FROM Artistas;
SELECT * FROM EstilosMusicais;

--UPDATE ALTERAR DADOS DE DENTRO DAS TABELAS
UPDATE EstilosMusicais
SET Nome = 'Trap' WHERE Nome = '\"Pagode"\' ;

UPDATE EstilosMusicais 
SET Descricao = 'Originaria dos Estados Unidos'
WHERE IdEstiloMusical = 1;

-- DELETE APAGAR DADOS DA TABELA
DELETE FROM EstilosMusicais
WHERE IdEstiloMusical = 2;

DELETE FROM EstilosMusicais 
WHERE IdEstiloMusical = 3;