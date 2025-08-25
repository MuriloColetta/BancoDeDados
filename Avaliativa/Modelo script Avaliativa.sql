create database Avaliativa;

use Avaliativa;

create table Fornecedor (
Fcodigo int auto_increment primary key not null,
Fnome varchar(100) not null,
Fstatus varchar(10) default "Ativo" not null,
Fcidade varchar(255) not null
);

create table Peca (
Pcodigo int auto_increment primary key not null,
Pnome varchar(100) not null,
Cor varchar(50) not null,
Peso decimal not null,
Pcidade varchar(255) not null
);

create table Instituicao (
Icodigo int auto_increment primary key not null,
Inome varchar(100) not null
);

create table Projeto (
PRcodigo int auto_increment primary key not null,
PRnome varchar(100) not null,
PRcidade varchar(255) not null,
Icod int auto_increment not null,
index idx_Icod (Icod) references Instituicao(Icod)
);

create table Fornecimento (
    Fcod INT,
    Pcod INT,
    PRcod INT,
    Quantidade INT NOT NULL,
    primary key (Fcod, Pcod, PRcod),
    foreign key (Fcod) references Fornecedor(Fcod),
    foreign key (Pcod) references Peca(Pcod),
    foreign key (PRcod) references Projeto(PRcod)
);