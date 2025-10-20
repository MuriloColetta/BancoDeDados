create database ex6;
use ex6;

create table cliente (
codcli char(3) not null primary key,
nome varchar(40) not null,
endereco varchar(50) not null,
cidade varchar(20) not null,
estado char(2) not null,
cep char(9) not null
);

create table venda (
duplic char(6) not null primary key,
valor decimal(10,2) not null,
vencto date not null,
codcli char(3) not null,
foreign key (codcli) references cliente (codcli)
);

insert into cliente values (
'250', 'Banco Barca S/A', 'R. Vito, 34', 'Sao Sebastiao', 'CE', '62380-000'
);

insert into cliente values (
'820', 'Mecanica Sao Paulo', 'R. Do Macuco 99', 'Santo Antonio', 'ES', '29810-020'
);

insert into cliente values (
'170', 'Posto Brasil LTDA.', 'Av. Imperio, 85', 'Guagirus', 'BA', '42837-000'
);

insert into cliente values (
'123', 'Banco Santander', 'Av. Brasil 12', 'Xique-Xique', 'BH', '75937-000'
);

insert into cliente values (
'642', 'Mecanica Sao Paulo', 'R. Do Macuco 99', 'Santa Gertrudes', 'SP', '41346-000'
);

insert into venda values (
'23001', 1300.00, '2001-06-10', '250'
);

insert into venda values (
'230099', 1000.00, '2002-10-02', '170'
);

insert into venda values (
'997818', 3000.00, '2001-11-11', '820'
);

insert into venda values (
'86071', 5300.00, '2012-09-08', '820'
);

insert into venda values (
'271040', 2400.00, '2007-10-08', '642'
);

-- Consultas (Junções - JOIN)
select venda.duplic, cliente.nome
from cliente, venda
where cliente.codcli = venda.codcli;

-- Com INNER JOIN
select venda.duplic, cliente.nome
from cliente inner join venda on cliente.codcli = venda.codcli;

-- Com ALIAS
select ven.duplic, cli.nome
from cliente cli inner join venda ven on cli.codcli = ven.codcli;

-- Com ORDER BY
select ven.duplic, cli.nome
from cliente cli inner join venda ven on cli.codcli = ven.codcli
order by cli.nome;

-- Com LEFT JOIN
select ven.duplic, cli.nome
from cliente cli left join venda ven on cli.codcli = ven.codcli
order by cli.nome;

-- RIGHT JOIN
select ven.duplic, cli.nome, cli.cidade
from cliente cli right join venda ven on cli.codcli = ven.codcli
order by cli.nome;

-- Quantidade
select cliente.nome, count(*) as qtde
from cliente inner join venda on cliente.codcli = venda.codcli
group by cliente.nome;

-- Soma
select cliente.nome, sum(valor) as total
from cliente inner join venda on cliente.codcli = venda.codcli
group by cliente.nome;