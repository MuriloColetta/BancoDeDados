create database pizzaria;

use pizzaria;

create table Cliente (
Id_Cliente int,
Nome_Cliente varchar(255),
CPF_Cliente int,
Endereco varchar(255)
);

create table Pizza (
Id_Pizza int,
Nome_Pizza varchar(255),
Ingredientes varchar(255),
Preco int
);

create table Funcionario (
Id_Funcionario int,
Nome_Funcionario varchar(255),
Salario int,
Data_Nascimento date,
CPF_Funcionario int
);

create table Pedido (
ID_Pedido int,
Nome_Cliente varchar(255),
Itens varchar(255),
Valor_Total int
);

drop database pizzaria;

select * from Cliente;