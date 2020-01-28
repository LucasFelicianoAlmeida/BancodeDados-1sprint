	CREATE DATABASE estilosMusicais_manha;


	CREATE TABLE  estilosMusicais_manha (
		idEstilo INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(50)
	);

	CREATE TABLE Produtora_Manha (
		idProdutora INT PRIMARY KEY IDENTITY
	);



	CREATE TABLE Artistas (
		idArtista INT PRIMARY KEY IDENTITY,
		nomeArtista VARCHAR(250),
		idProdutora INT FOREIGN KEY REFERENCES Produtora_Manha(idProdutora)
	);

	

	ALTER TABLE Artistas 
	ADD DataNascimento DATE;
	SELECT * FROM Artistas;

	-- APAGAR NO SQL
	ALTER TABLE Produtora_Manha
	DROP COLUMN Produtora_Manha;


	-- APAGAR 
	--DROP TABLE Artistas;
		SELECT * FROM Artistas;
