-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
id_cliente int auto_increment primary key PRIMARY KEY,
nome_cliente varchar(255),
cpf_cliente varchar(14),
telefone_cliente varchar(15)
)

CREATE TABLE Veiculo (
id_veiculo int auto_increment primary key PRIMARY KEY,
marca varchar(255),
modelo varchar(255),
ano_fabricacao date,
placa varchar(8)
)

CREATE TABLE Mecanico (
id_mecanico int auto_increment primary key PRIMARY KEY,
nome_mecanico varchar(255),
cpf_mecanico varchar(14),
salario decimal(5, 2)
)

CREATE TABLE Peca (
id_peca int auto_increment primary key PRIMARY KEY,
nome_peca varchar(255),
quantidade int,
preco decimal(5, 2),
descricao_peca varchar(255)
)

CREATE TABLE Estoque (
id_estoque int auto_increment primary key PRIMARY KEY,
posicao varchar(10)
)

CREATE TABLE Servico (
id_servico int auto_increment primary key PRIMARY KEY,
preco_servico decimal(5, 2),
descricao_servico varchar(255)
)

CREATE TABLE OS (
id_os int auto_increment primary key PRIMARY KEY,
data_abertura date,
data_fechamento date,
status_os varchar(20) default"Ativo"
)

CREATE TABLE tem (
id_veiculo int auto_increment primary key,
id_cliente int auto_increment primary key,
FOREIGN KEY(id_veiculo) REFERENCES Veiculo (id_veiculo),
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente)
)

CREATE TABLE possui (
id_estoque int auto_increment primary key,
id_peca int auto_increment primary key,
FOREIGN KEY(id_estoque) REFERENCES Estoque (id_estoque),
FOREIGN KEY(id_peca) REFERENCES Peca (id_peca)
)

CREATE TABLE realiza (
id_mecanico int auto_increment primary key,
id_os int auto_increment primary key,
id_servico int auto_increment primary key,
id_peca int auto_increment primary key,
id_veiculo int auto_increment primary key,
PRIMARY KEY(id_mecanico,id_os,id_servico,id_peca,id_veiculo)
)

