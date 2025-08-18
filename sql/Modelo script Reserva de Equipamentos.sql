create database Reserva_Equipamentos;

use Reserva_Equipamentos;

create table Cliente (
Cod_Cliente int auto_increment primary key not null,
Nome_Cliente varchar(100) not null,
CPF_Cliente varchar(14) not null,
Endereco_Cliente varchar(100) not null,
Celular_Cliente varchar(18)
);

create table Equipamento (
Cod_Equipamento int auto_increment primary key not null,
Nome_Equipamento varchar(50) not null,
Valor_Equipamento decimal(5,2) not null,
Quantidade int not null,
Descricao varchar(255) not null
);

create table Fornecedor (
Cod_Fornecedor int auto_increment primary key not null,
Nome_Fornecedor varchar(100) not null,
CNPJ varchar(18) not null,
Endereco_Fornecedor varchar(255) not null,
Celular_Fornecedor varchar(18) not null
);

create table Reserva (
Cod_Reserva int auto_increment primary key not null,
Nome_Cliente varchar(100) not null,
Equipamento_Reservado varchar(100) not null,
Data_Reserva date not null,
Valor_Reserva decimal(5,2) not null
);

create table Funcionario (
Cod_Funcionario int auto_increment primary key not null,
Nome_Funcionario varchar(100) not null,
CPF_Funcionario varchar(14) not null,
Salario decimal(5,2) not null,
Celular_Fncionario varchar(18)
);

create table Tem (
Cod_Tem int auto_increment primary key not null,
Cod_Equipamento int,
Cod_Reserva int,
foreign key (Cod_Equipamento) references Equipamento (Cod_Equipamento),
foreign key (Cod_Reserva) references Reserva (Cod_Reserva)
);

create table Faz (
Cod_Faz int auto_increment primary key not null,
Cod_Cliente int,
Cod_Reserva int,
foreign key (Cod_Cliente) references Cliente (Cod_Cliente),
foreign key (Cod_Reserva) references Reserva (Cod_Reserva)
);

create table Aprova (
Cod_Tem int auto_increment primary key not null,
Cod_Funcionario int,
Cod_Reserva int,
foreign key (Cod_Funcionario) references Funcionario (Cod_Funcionario),
foreign key (Cod_Reserva) references Reserva (Cod_Reserva)
);

create table Fornece (
Cod_Tem int auto_increment primary key not null,
Cod_Equipamento int,
Cod_Fornecedor int,
foreign key (Cod_Equipamento) references Equipamento (Cod_Equipamento),
foreign key (Cod_Fornecedor) references Fornecedor (Cod_Fornecedor)
);