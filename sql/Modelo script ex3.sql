create database exemplo3;

use exemplo3;

create table Cliente (
Cod_Cliente int auto_increment primary key not null,
Nome_Cliente varchar(100) not null,
CPF_Cliente varchar(14) not null,
Endereco varchar(100) not null,
Estado char(2) default 'SP',
Celular varchar(18) not null
);

create table Produto (
Cod_Produto int auto_increment primary key not null,
Nome_Produto varchar(100) not null,
Descricao varchar(255) not null,
Quantidade int,
Valor decimal(5,2) not null
);

create table if not exists Fornecedor (
Cod_Fornecedor int auto_increment primary key not null,
Nome_Fornecedor varchar(100) not null,
CNPJ varchar(18) not null,
Endereco varchar(255) not null,
Celular varchar(18) not null
);

create table Tem (
Cod_Tem int auto_increment primary key not null,
Cod_Produto int,
Cod_Fornecedor int,
foreign key (Cod_Produto) references Produto (Cod_Produto),
foreign key (Cod_Fornecedor) references Fornecedor (Cod_Fornecedor)
);

-- Consulta de tabela
select * from Cliente;

-- Remoção de tabela
drop table Cliente;
-- Remoção de banco de Dados
drop database exemplo3;

-- Alterar campo
alter table Cliente
add Sexo char(1);

alter table Cliente
drop column Sexo;

alter table Cliente
rename to Pessoa_Fisica;

alter table Pessoa_Fisica
change CPF_Cliente CPF varchar(18);

alter table Pessoa_Fisica
modify column Nome_Cliente varchar(150);

alter table Pessoa_Fisica
modify column Estado char(2) default 'MG';

-- Alterações
alter table Pessoa_Fisica
add Cidade varchar(100);

alter table Produto
modify column Valor decimal(7,2);

alter table Fornecedor
add Cidade varchar(100),
add Estado char(2);

alter table Fornecedor
modify column Estado char(2) default 'SP';