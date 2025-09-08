create database Biblioteca;
use Biblioteca;

create table Cliente (
codigo int not null,
nome varchar(20)not null,
cpf varchar(14) not null,
cidade varchar(20) not null,
primary key (codigo)
);

create table Livro (
codigo int not null,
titulo varchar(20) not null,
autor varchar(20) not null,
ano int not null,
primary key (codigo)
);

select * from Cliente;

insert into Cliente
value(1, 'Antonio', '111.111.111-11', 'Limeira');

insert into Cliente
value(2, 'Felipe', '222.222.222-22', 'Rio Claro');

update Cliente
set cidade = 'Cordeirópolis'
where cidade = 'Limeira';

select * from Livro;

insert into Livro
value(1, 'Harry Potter', 'J. K. Rowling', 1997);

insert into Livro
value(2, 'Dicionario Aurélio', 'Aurélio Buarque', 1886);

update Livro
set ano = 1900
where ano < 1900 and ano > 1800;

delete from Cliente;

delete from Livro;