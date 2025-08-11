create database Exemplo2;

use Exemplo2;

create table Cliente (
Cod_Cliente int,
Nome_Cliente varchar(100),
CPF_Cliente varchar(14),
Celular varchar(18),
Endereco varchar(255)
);

create table Estoque (
Cod_Produto int,
Nome_Produto varchar(100),
Quantidade int,
Posicao varchar(10),
Validade date
);

create table Produto (
Cod_Produto int,
Nome_Produto varchar(100),
Descricao varchar(255),
Valor decimal,
Quantidade int
);

create table Funcionario (
Cod_Funcionario int,
Nome_Funcionario varchar(100),
CPF_Funcionario varchar(14),
Data_Nascimento date,
Salario decimal
);

select * from Cliente;