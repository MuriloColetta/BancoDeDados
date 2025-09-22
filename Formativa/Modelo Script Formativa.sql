-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

create database Formativa;
use Formativa;
select database();

CREATE TABLE Editora (
Telefone varchar(15) not null,
Contato varchar(100) not null,
Cidade varchar(100) not null,
Endereco varchar(255) not null,
Nome_Editora varchar(100) not null,
CNPJ varchar(18) not null,
Cod_Editora int auto_increment primary key
);

CREATE TABLE Cliente (
Email varchar(100) not null,
Nome_Cliente varchar(100) not null,
Telefone varchar(15) not null,
Data_Nascimento date not null,
Cod_Cliente int auto_increment  primary  key,
CPF varchar(14) not null
);

CREATE TABLE Livro (
Titulo varchar(100) not null,
Autor varchar(100) not null,
Editora varchar(100) not null,
Genero varchar(100) not null,
Quantidade int not null,
Preco decimal not null,
Cod_Livro int auto_increment primary key
);

CREATE TABLE Autor (
Cod_Autor int auto_increment primary key,
Nacionalidade varchar(100) not null,
Nome_Autor varchar(100) not null,
Data_Nascimento date not null
);

CREATE TABLE Venda (
Cod_Venda int auto_increment primary key,
Valor_Total decimal not null,
Data_Venda date not null,
Quantidade int not null,
Cod_Cliente int,
Cod_Livro int,
FOREIGN KEY(Cod_Cliente) REFERENCES Cliente (Cod_Cliente),
FOREIGN KEY(Cod_Livro) REFERENCES Livro (Cod_Livro)
);

CREATE TABLE Escreve (
Cod_Escreve int auto_increment primary key,
Cod_Livro int,
Cod_Autor int,
FOREIGN KEY(Cod_Livro) REFERENCES Livro (Cod_Livro),
FOREIGN KEY(Cod_Autor) REFERENCES Autor (Cod_Autor)
);

CREATE TABLE Publica (
Cod_Publica int auto_increment primary key,
Cod_Livro int,
Cod_Editora int,
FOREIGN KEY(Cod_Livro) REFERENCES Livro (Cod_Livro),
FOREIGN KEY(Cod_Editora) REFERENCES Editora (Cod_Editora)
);