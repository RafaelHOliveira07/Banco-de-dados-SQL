CREATE DATABASE Seguradora

USE Seguradora



Create TABLE Cliente(

CodClient Int PRIMARY KEY,
Nome VARCHAR(46) NOT NULL,
Sexo VARCHAR(20),
Estado VARCHAR(45),
Cidade VARCHAR (45) DEFAULT'Itapira',
Bairro VARCHAR(45),
Numero VARCHAR(45),
Rua VARCHAR(45),
CPF VARCHAR(46) NOT NULL UNIQUE,
TelefonCelular VARCHAR(45)NOT NULL UNIQUE,
TelefoneFixo VARCHAR(45),



);


Create TABLE Carro(

CodCarro INT PRIMARY KEY,
Placa VARCHAR(45),
Marca VARCHAR(45),
Modelo VARCHAR(45),
Ano VARCHAR(45),
Chassi VARCHAR(45),
Cor VARCHAR(45),


);

CREATE TABLE Sinistro(

CodSinistro INT,
HoraSinistro INT,
DataSinistro Date,
LocalSinistro VARCHAR(45),
Condutor VARCHAR(45),
Carro_CodCarro INT,
PRIMARY KEY (CodSinistro, Carro_CodCarro),
FOREIGN KEY (Carro_CodCarro) REFERENCES Carro (CodCarro)

);

CREATE TABLE Apolice(

CodApolice INT PRIMARY KEY NOT NULL,
ValorCobertura DECIMAL NOT NULL,
ValorFranquia DECIMAL NOT NULL,
DataInicioVigencia DATE NOT NULL CHECK (DataInicioVigencia > GETDATE()),
DataFimVigencia DATE NOT NULL ,
Cliente_CodCliente INT NOT NULL,
Carro_CodCarro INT NOT NULL,
FOREIGN KEY (Cliente_CodCliente) REFERENCES Cliente (CodClient),
FOREIGN KEY (Carro_CodCarro) REFERENCES Carro (CodCarro),




);



