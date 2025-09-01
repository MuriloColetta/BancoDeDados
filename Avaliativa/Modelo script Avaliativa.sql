create database Avaliativa;

use Avaliativa;

create table Fornecedor (
    Fcodigo int primary key auto_increment,
    Fnome varchar(100) not null,
    Status varchar(20) default 'Ativo',
    Cidade varchar(100)
);

create table Peca (
    Pcodigo int primary key auto_increment,
    Pnome varchar(100) not null,
    Cor varchar(50) not null,
    Peso decimal(10,2) not null,
    Cidade varchar(100) not null
);

create table Instituicao (
    Icodigo int primary key auto_increment,
    Nome varchar(100) not null
);

create table Projeto (
    PRcod int primary key auto_increment,
    PRnome varchar(100) not null,
    Cidade varchar(100),
    Icod int,
    foreign key (Icod) references Instituicao(Icodigo)
);

create table Fornecimento (
    Fcod int,
    Pcod int,
    PRcod int,
    Quantidade int not null,
    primary key (Fcod, Pcod, PRcod),
    foreign key (Fcod) references Fornecedor(Fcodigo),
    foreign key (Pcod) references Peca(Pcodigo),
    foreign key (PRcod) references Projeto(PRcod)
);

create table Cidade (
    Ccod int primary key auto_increment,
    Cnome varchar(100) not null,
    uf char(2) not null
);

alter table Fornecedor
    add Fone varchar(20),
    add Ccod int,
    drop column Cidade,
    add foreign key (Ccod) references Cidade(Ccod);

alter table Peca
    add Ccod int,
    drop column Cidade,
    add foreign key (Ccod) references Cidade(Ccod);

alter table Projeto
    add Ccod int,
    drop column Cidade,
    drop foreign key projeto_ibfk_1,
    drop column Icod,
    add foreign key (Ccod) references Cidade(Ccod);

drop table Instituicao;

create index idx_fornecedor_nome on Fornecedor(Fnome);

create index idx_peca_nome on Peca(Pnome);

create index idx_cidade_nome on Cidade(Cnome);

create index idx_projeto_nome on Projeto(PRnome);