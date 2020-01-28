-- comando para criar banco de dados 
create database roteiroLivro;

	USE  roteiroLivro;

	CREATE TABLE  Generos (
		idGenero INT PRIMARY KEY IDENTITY NOT NULL,
		Nome	 VARCHAR (200) NOT NULL
	);

	CREATE TABLE Autores (
		idAutor INT PRIMARY KEY IDENTITY,
		NomeAutor VARCHAR(200)
	);

	CREATE TABLE Livros (
		idLivro INT PRIMARY KEY IDENTITY,
		Titulo VARCHAR(255),
		idGenero INT FOREIGN KEY REFERENCES Generos (idGenero),
		idAutor INT FOREIGN KEY REFERENCES Autores (idAutor)
	);

	--DQL
	SELECT * FROM Autores;
	SELECT * FROM Generos;
	SELECT * FROM Livros;