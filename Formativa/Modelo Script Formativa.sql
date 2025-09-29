-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

create database Formativa;
use Formativa;
select database();

CREATE TABLE Editora (
Telefone varchar(15) not null,
Contato varchar(100) not null,
Cidade varchar(100) not null,
Endereco varchar(255) not null,
Nome_Editora varchar(100) not null,
CNPJ varchar(18) not null,
Cod_Editora int auto_increment primary key
);

CREATE TABLE Cliente (
Email varchar(100) not null,
Nome_Cliente varchar(100) not null,
Telefone varchar(15) not null,
Data_Nascimento date not null,
Cod_Cliente int auto_increment  primary  key,
CPF varchar(14) not null
);

CREATE TABLE Livro (
Titulo varchar(100) not null,
Autor varchar(100) not null,
Editora varchar(100) not null,
Genero varchar(100) not null,
Quantidade int not null,
Preco decimal not null,
Cod_Livro int auto_increment primary key
);

CREATE TABLE Autor (
Cod_Autor int auto_increment primary key,
Nacionalidade varchar(100) not null,
Nome_Autor varchar(100) not null,
Data_Nascimento date not null
);

CREATE TABLE Venda (
Cod_Venda int auto_increment primary key,
Valor_Total decimal not null,
Data_Venda date not null,
Quantidade int not null,
Cod_Cliente int,
Cod_Livro int,
FOREIGN KEY(Cod_Cliente) REFERENCES Cliente (Cod_Cliente),
FOREIGN KEY(Cod_Livro) REFERENCES Livro (Cod_Livro)
);

CREATE TABLE Escreve (
Cod_Escreve int auto_increment primary key,
Cod_Livro int,
Cod_Autor int,
FOREIGN KEY(Cod_Livro) REFERENCES Livro (Cod_Livro),
FOREIGN KEY(Cod_Autor) REFERENCES Autor (Cod_Autor)
);

CREATE TABLE Publica (
Cod_Publica int auto_increment primary key,
Cod_Livro int,
Cod_Editora int,
FOREIGN KEY(Cod_Livro) REFERENCES Livro (Cod_Livro),
FOREIGN KEY(Cod_Editora) REFERENCES Editora (Cod_Editora)
);

-- Editora
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(11) 98765-4321', 'Marcos Silva', 'São Paulo', 'Rua das Letras, 123', 'Editora Cultura', '12.345.678/0001-90');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(21) 99876-5432', 'Ana Costa', 'Rio de Janeiro', 'Av. do Saber, 456', 'Nova Leitura', '98.765.432/0001-12');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(31) 91234-5678', 'Carlos Mendes', 'Belo Horizonte', 'Rua dos Livros, 789', 'Minas Letras', '45.678.901/0001-34');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(51) 98765-1234', 'Fernanda Rocha', 'Porto Alegre', 'Travessa da Cultura, 321', 'Sul Editorial', '67.890.123/0001-56');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(41) 97654-3210', 'João Lima', 'Curitiba', 'Alameda dos Escritores, 654', 'Editora Paraná', '23.456.789/0001-78');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(62) 98123-4567', 'Luciana Reis', 'Goiânia', 'Rua da Cultura, 100', 'Centro Editorial', '11.111.111/0001-11');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(82) 98712-3456', 'Rafael Lopes', 'Maceió', 'Avenida do Livro, 202', 'Alagoas Books', '22.222.222/0001-22');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(71) 99999-1234', 'Marina Almeida', 'Salvador', 'Ladeira da Leitura, 303', 'Bahia Letras', '33.333.333/0001-33');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(95) 91234-9988', 'Fábio Andrade', 'Boa Vista', 'Travessa do Saber, 404', 'Norte Editorial', '44.444.444/0001-44');
INSERT INTO Editora (Telefone, Contato, Cidade, Endereco, Nome_Editora, CNPJ)
VALUES ('(63) 96541-7890', 'Patrícia Gomes', 'Palmas', 'Rua dos Editores, 505', 'Tocantins Press', '55.555.555/0001-55');


-- Cliente
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('ana.souza@gmail.com', 'Ana Souza', '(11) 91234-5678', '1990-03-15', '123.456.789-00');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('bruno.lima@hotmail.com', 'Bruno Lima', '(21) 99876-5432', '1985-07-22', '234.567.890-11');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('carla.mendes@yahoo.com', 'Carla Mendes', '(31) 97654-3210', '1992-11-05', '345.678.901-22');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('daniel.santos@outlook.com', 'Daniel Santos', '(41) 98765-4321', '1988-01-30', '456.789.012-33');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('elisa.ferreira@gmail.com', 'Elisa Ferreira', '(51) 96543-2109', '1995-06-12', '567.890.123-44');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('fabio.pereira@gmail.com', 'Fábio Pereira', '(62) 99876-5432', '1993-08-17', '678.901.234-55');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('marina.lopes@yahoo.com', 'Marina Lopes', '(82) 98765-4321', '1987-12-04', '789.012.345-66');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('lucas.silva@hotmail.com', 'Lucas Silva', '(71) 91234-5678', '1991-09-21', '890.123.456-77');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('juliana.moraes@outlook.com', 'Juliana Moraes', '(95) 97654-3210', '1996-05-09', '901.234.567-88');
INSERT INTO Cliente (Email, Nome_Cliente, Telefone, Data_Nascimento, CPF)
VALUES ('rodrigo.fernandes@gmail.com', 'Rodrigo Fernandes', '(63) 96543-2109', '1989-10-13', '012.345.678-99');

-- Livro
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('O Segredo das Palavras', 'Clarice Moura', 'Editora Cultura', 'Romance', 15, 49.90);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Códigos da Mente', 'Ricardo Alves', 'Nova Leitura', 'Suspense Psicológico', 10, 59.50);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Lendas de Minas', 'Mariana Duarte', 'Minas Letras', 'Fantasia', 20, 39.99);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Entre o Sul e o Infinito', 'Tiago Rocha', 'Sul Editorial', 'Poesia', 8, 29.90);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Curitiba Sob Neblina', 'Fernanda Castro', 'Editora Paraná', 'Mistério', 12, 42.00);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Mistérios do Cerrado', 'Luciana Reis', 'Centro Editorial', 'Mistério', 18, 44.90);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Poesia que Encanta', 'Rafael Lopes', 'Alagoas Books', 'Poesia', 14, 34.50);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Maré Alta', 'Marina Almeida', 'Bahia Letras', 'Drama', 11, 47.00);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Horizontes do Norte', 'Fábio Andrade', 'Norte Editorial', 'Ficção Científica', 16, 52.90);
INSERT INTO Livro (Titulo, Autor, Editora, Genero, Quantidade, Preco)
VALUES ('Verão em Palmas', 'Patrícia Gomes', 'Tocantins Press', 'Romance', 9, 38.75);

-- Autor
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Clarice Moura', '1978-04-22');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Ricardo Alves', '1982-09-10');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Mariana Duarte', '1990-02-05');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Tiago Rocha', '1975-07-18');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Fernanda Castro', '1988-11-30');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Luciana Reis', '1980-06-14');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Rafael Lopes', '1979-03-29');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Marina Almeida', '1984-11-11');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Fábio Andrade', '1981-01-25');
INSERT INTO Autor (Nacionalidade, Nome_Autor, Data_Nascimento)
VALUES ('Brasileira', 'Patrícia Gomes', '1986-08-08');

-- Venda
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (99.80, '2025-09-20', 2, 1, 1);  -- Ana Souza comprou 2x "O Segredo das Palavras"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (59.50, '2025-09-21', 1, 2, 2);  -- Bruno Lima comprou 1x "Códigos da Mente"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (119.97, '2025-09-22', 3, 3, 3);  -- Carla Mendes comprou 3x "Lendas de Minas"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (29.90, '2025-09-23', 1, 4, 4);  -- Daniel Santos comprou 1x "Entre o Sul e o Infinito"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (84.00, '2025-09-24', 2, 5, 5);  -- Elisa Ferreira comprou 2x "Curitiba Sob Neblina"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (89.80, '2025-09-25', 2, 6, 6);  -- Fábio comprou 2x "Mistérios do Cerrado"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (34.50, '2025-09-26', 1, 7, 7);  -- Marina comprou 1x "Poesia que Encanta"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (141.00, '2025-09-27', 3, 8, 8);  -- Lucas comprou 3x "Maré Alta"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (52.90, '2025-09-28', 1, 9, 9);  -- Juliana comprou 1x "Horizontes do Norte"
INSERT INTO Venda (Valor_Total, Data_Venda, Quantidade, Cod_Cliente, Cod_Livro)
VALUES (77.50, '2025-09-29', 2, 10, 10);  -- Rodrigo comprou 2x "Verão em Palmas"

-- Escreve
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (1, 1); -- O Segredo das Palavras - Clarice Moura
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (2, 2); -- Códigos da Mente - Ricardo Alves
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (3, 3); -- Lendas de Minas - Mariana Duarte
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (4, 4); -- Entre o Sul e o Infinito - Tiago Rocha
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (5, 5); -- Curitiba Sob Neblina - Fernanda Castro
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (6, 6);  -- Mistérios do Cerrado - Luciana Reis
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (7, 7);  -- Poesia que Encanta - Rafael Lopes
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (8, 8);  -- Maré Alta - Marina Almeida
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (9, 9);  -- Horizontes do Norte - Fábio Andrade
INSERT INTO Escreve (Cod_Livro, Cod_Autor) VALUES (10, 10);-- Verão em Palmas - Patrícia Gomes

-- Publica
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (1, 1); -- O Segredo das Palavras - Editora Cultura
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (2, 2); -- Códigos da Mente - Nova Leitura
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (3, 3); -- Lendas de Minas - Minas Letras
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (4, 4); -- Entre o Sul e o Infinito - Sul Editorial
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (5, 5); -- Curitiba Sob Neblina - Editora Paraná
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (6, 6);  -- Mistérios do Cerrado - Centro Editorial
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (7, 7);  -- Poesia que Encanta - Alagoas Books
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (8, 8);  -- Maré Alta - Bahia Letras
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (9, 9);  -- Horizontes do Norte - Norte Editorial
INSERT INTO Publica (Cod_Livro, Cod_Editora) VALUES (10, 10);-- Verão em Palmas - Tocantins Press

-- Consultar Quantidade de Livros
select Titulo, Quantidade from Livro;

-- Consultar livro que começa com a letra L e preço acima de 30,00
select Titulo, Preco from Livro where Titulo like "L%" and Preco > 30.00;

-- Demonstrar quantidade total de livros vendidos
select sum(Quantidade) as Quantidade from Venda;

-- Demonstrar quantidade total de livros no estoque
select sum(Quantidade) as Quantidade from Livro;

-- Apagar Livro com código 5
delete from Venda where Cod_Livro = 5;
delete from Escreve where Cod_Livro = 5;
delete from Publica where Cod_Livro = 5;
delete from Livro where Cod_Livro = 5;

-- Adicionar coluna Ano_Publicacao na tabela Livro
alter table Livro add Ano_Publicacao date;