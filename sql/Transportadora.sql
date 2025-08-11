create database Transportadora;

use Transportadora;

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

create table Produto (
Cod_Produto int,
Nome_Produto varchar(100),
Descricao varchar(255),
Valor_Produto decimal,
Quantidade int
);

create table Entrega (
Cod_Entrega int,
Produto_Transportado varchar(255),
Nome_Cliente varchar(100),
Endereco_Cliente varchar(255),
Data_Entrega date
);

create table Veiculo (
Cod_Veiculo int,
Nome_Funcionario varchar(100),
Marca varchar(100),
Modelo varchar(100),
Placa varchar(7)
);