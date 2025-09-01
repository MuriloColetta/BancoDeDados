create database Exemplo4;

use Exemplo4;

create table Cliente (
Cod_Cliente int primary key auto_increment not null,
Nome_Cliente varchar(100),
index(Cod_Cliente)
);