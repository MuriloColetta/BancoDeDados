create database Empresa_Produtos_Limpeza;

use Empresa_Produtos_Limpeza;

create table Cliente (
Cod_Cliente int,
Nome_Cliente varchar(100),
CPF_Cliente varchar(14),
Celular varchar(18),
Endereco_Cliente varchar(255)
);

create table Funcionario (
Cod_Funcionario int,
Nome_Funcionario varchar(100),
CPF_Funcionario varchar(14),
Data_Nascimento date,
Salario decimal
);

create table Manutencao (
Cod_Manutencao int,
Nome_Cliente varchar(100),
Valor_Manutencao decimal,
Endereco_Cliente varchar(255),
Data_Manutencao date
);

create table Produto (
Cod_Produto int,
Nome_Produto varchar(100),
Descricao varchar(255),
Valor_Produto decimal,
Quantidade int
);

create table Venda (
Cod_Venda int,
Nome_Cliente varchar(100),
Produto_Vendido varchar(255),
Valor_Venda decimal,
Data_Venda datetime
);