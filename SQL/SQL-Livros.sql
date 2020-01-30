CREATE DATABASE livroDataBase_manha;

USE livroDataBase_manha;

CREATE TABLE Livros (
	IdLivro INT PRIMARY KEY IDENTITY,
	IdGenero INT FOREIGN KEY REFERENCES Generos(idGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autores(IdAutor)
);

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200)
);

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	NomeGenero VARCHAR(50)
);

--ALTER
ALTER TABLE Livros 
ADD Titulo VARCHAR(100);


--INSERT
INSERT INTO Livros (Titulo)
VALUES ('Pequeno Principe'),
	   ('O poder do agora'),
	   ('Mindset'),
	   ('A lei do triunfo'),
	   ('Criatividade SA');

INSERT INTO Generos (NomeGenero)
VALUES ('Romance'),
	   ('Ficcao'),
	   ('Açao'),
	   ('Aventura'),
	   ('Desenvolvimento');

INSERT INTO Autores (Nome)
Values ('Ed Catmull'),
	   ('Antoine de Saint-Exupéry'),
	   ('Carol S Dweck'),
	   ('Napoleon Hill'),
	   ('Eckhart Tolle');

--IDs-Pequeno principe
UPDATE Livros 
SET IdGenero = 4 WHERE IdLivro = 1 ;

UPDATE Livros 
SET IdAutor = 2 WHERE IdLivro = 1;

--IDs-O poder do agora
UPDATE Livros 
SET IdGenero = 5 WHERE IdLivro = 2;

UPDATE Livros 
SET IdAutor = 5 WHERE IdLivro = 2;

--IDs-Mindset
UPDATE Livros
SET IdGenero = 5 WHERE IdLivro = 3;

UPDATE Livros 
SET IdAutor = 3 WHERE IdLivro = 3;

--IDs-A Lei do Triunfo
UPDATE Livros 
SET IdGenero = 5 WHERE  IdLivro = 4;

UPDATE Livros 
SET IdAutor = 4 WHERE IdLivro = 4;

--IDs-Criatividade sa
UPDATE Livros 
SET IdGenero = 5 WHERE IdLivro = 5;

UPDATE Livros
SET IdAutor = 1 WHERE IdLivro = 5;

SELECT * FROM Generos;
SELECT * FROM Livros;
SELECT * FROM Autores;
