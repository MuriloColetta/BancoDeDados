create database oficina;
use oficina;

CREATE TABLE cliente (
id_cliente int auto_increment primary key PRIMARY KEY,
nome_cliente varchar(255),
cpf_cliente varchar(14),
telefone_cliente varchar(15)
);

CREATE TABLE veiculo (
id_veiculo int auto_increment primary key PRIMARY KEY,
marca varchar(255),
modelo varchar(255),
ano_fabricacao date,
placa varchar(8)
);

CREATE TABLE mecanico (
id_mecanico int auto_increment primary key PRIMARY KEY,
nome_mecanico varchar(255),
cpf_mecanico varchar(14),
salario decimal(5, 2)
);

CREATE TABLE peca (
id_peca int auto_increment primary key PRIMARY KEY,
nome_peca varchar(255),
quantidade int,
preco decimal(5, 2),
descricao_peca varchar(255)
);

CREATE TABLE estoque (
id_estoque int auto_increment primary key PRIMARY KEY,
posicao varchar(10)
);

CREATE TABLE servico (
id_servico int auto_increment primary key PRIMARY KEY,
preco_servico decimal(5, 2),
descricao_servico varchar(255)
);

CREATE TABLE os (
id_os int auto_increment primary key PRIMARY KEY,
data_abertura date,
data_fechamento date,
starus_os varchar(20) default"Ativo"
);

CREATE TABLE tem (
id_veiculo int,
id_cliente int,
FOREIGN KEY(id_veiculo) REFERENCES veiculo (id_veiculo),
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE possui (
id_estoque int,
id_peca int,
FOREIGN KEY(id_estoque) REFERENCES estoque (id_estoque),
FOREIGN KEY(id_peca) REFERENCES peca (id_peca)
);

CREATE TABLE realiza (
id_mecanico int,
id_os int,
id_servico int,
id_peca int,
id_veiculo int,
FOREIGN KEY(id_mecanico) REFERENCES mecanico (id_mecanico),
FOREIGN KEY(id_os) REFERENCES os (id_os),
FOREIGN KEY(id_servico) REFERENCES servico (id_servico),
FOREIGN KEY(id_peca) REFERENCES peca (id_peca),
FOREIGN KEY(id_veiculo) REFERENCES veiculo (id_veiculo)
);
