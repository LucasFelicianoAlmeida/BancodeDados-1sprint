CREATE DATABASE Locadora_manha;

USE Locadora_manha;

CREATE TABLE Cliente(
NomeCliente VARCHAR(200) NOT NULL,
IdCliente INT PRIMARY KEY IDENTITY,
CPF VARCHAR(11)
);
GO

CREATE TABLE Empresa (
IdImpresa INT PRIMARY KEY IDENTITY,
NomeEmpresa VARCHAR(200)
);
GO

CREATE TABLE Marca (
IdMarca INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200)
);
GO

CREATE TABLE Modelo (
IdModelo INT PRIMARY KEY IDENTITY,
IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca),
Nome VARCHAR(200)
);
GO

CREATE TABLE Veiculo (
IdVeiculo INT PRIMARY KEY IDENTITY,
IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa),
IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo),
Placa VARCHAR(8)
);
GO

CREATE TABLE Aluguel (
IdAluguel INT PRIMARY KEY IDENTITY,
IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente),
IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo),
DataInicio Date,
DataFim Date
);
GO

SELECT * FROM Aluguel;









