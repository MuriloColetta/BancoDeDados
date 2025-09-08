create database Remoterc;
use Remoterc;

create table Produto (
codigo int not null,
unidade char(3) not null,
descricao varchar(30) not null,
valor_unit decimal(7,2) not null,
primary key(codigo)
);

select * from Produto;

insert into Produto
value(1, '1kg', 'Munitor', 500.00);

insert into Produto (codigo, unidade, descricao, valor_unit)
value(2, '2kg', 'Gabinete', 1800.55);

update Produto
set valor_unit = 1500.00
where descricao = 'Munitor';

update Produto
set valor_unit = 2000.00,
descricao = 'Gabinete branco'
where codigo = 2;

update Produto
set valor_unit = valor_unit + (valor_unit * 0.1);

create table Vendedor (
codigo int not null,
nome varchar(20) not null,
salario decimal(7,2) not null,
fsalarial char(1) not null,
primary key (codigo)
);

select * from Vendedor;

insert into Vendedor
value (1, 'Francisco', 1600.00, 1);

insert into Vendedor
value (2, 'Renato', 1750.55, 1);

update Vendedor
set salario = 3150.00
where fsalarial = 1;

insert into Vendedor
value (3, 'Paula', 1500.00, 2);

insert into Vendedor
value (4, 'Eduardo', 1200.50, 2);

update Vendedor
set salario = salario + (salario * 0.1)
where fsalarial = 2;

insert into Vendedor
value (5, 'Bruno', 2300.99, 3);

insert into Vendedor
value (6, 'Marcus', 3000.00, 3);

update Vendedor
set salario = 3500.00
where fsalarial = 3;

delete from Vendedor
where salario < 2500.00;

-- Deleta todo mundo
delete from Produto;

-- Delete único 
delete from Produto
where codigo = 1;

-- Delete multiplo
delete from Vendedor
where fsalarial = 2;

-- intervalo (Operador AND)
delete from Vendedor
where fsalarial >= 1 and codigo <= 2;

-- Esvasia a tabela
delete from Ciliete;

truncate table Produto;