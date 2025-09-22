-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

create database ex5;
use ex5;
select database();

CREATE TABLE Cliente (
Nome_Cliente varchar(100) not null,
Cod_Cliente int auto_increment primary key PRIMARY KEY
);

CREATE TABLE Produto (
Cod_Produto int auto_increment primary key PRIMARY KEY,
Nome_Produto varchar(100) not null
);

CREATE TABLE Compra (
Cod_Compra int auto_increment not null PRIMARY KEY,
Cod_Produto int,
Cod_Cliente int,
FOREIGN KEY(Cod_Produto) REFERENCES Produto (Cod_Produto),
FOREIGN KEY(Cod_Cliente) REFERENCES Cliente (Cod_Cliente)
);