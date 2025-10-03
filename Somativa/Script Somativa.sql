-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

SET SQL_SAFE_UPDATES = 0;

create database Somativa;
use Somativa;

CREATE TABLE Aluno (
Id_Aluno int auto_increment primary key,
Data_Nascimento date,
Email varchar(50) not null,
Nome varchar(50)
);

CREATE TABLE Curso (
Id_Curso int auto_increment primary key,
Titulo varchar(50),
Descricao varchar(255),
Carga_Horaria int,
Status_Curso varchar(10)
);

CREATE TABLE Inscricao (
Data_Inscricao date,
Id_Inscricao int auto_increment primary key,
Id_Aluno int,
Id_Curso int,
FOREIGN KEY(Id_Aluno) REFERENCES Aluno (Id_Aluno),
FOREIGN KEY(Id_Curso) REFERENCES Curso (Id_Curso)
);

CREATE TABLE Avaliacao (
Comentario varchar(255),
Id_Inscricao int,
Id_Avaliacao int auto_increment primary key,
Nota decimal(3,2),
FOREIGN KEY(Id_Inscricao) REFERENCES Inscricao (Id_Inscricao)
);

-- Inserindo alunos
INSERT INTO Aluno (Data_Nascimento, Email, Nome) VALUES
('2000-05-12', 'joao.silva@email.com', 'João Silva'),
('1999-09-23', 'maria.souza@email.com', 'Maria Souza'),
('2001-01-15', 'pedro.lima@email.com', 'Pedro Lima'),
('1998-07-30', 'ana.costa@email.com', 'Ana Costa'),
('2002-11-05', 'lucas.ferreira@email.com', 'Lucas Ferreira');

-- Inserindo cursos
INSERT INTO Curso (Titulo, Descricao, Carga_Horaria, Status_Curso) VALUES
('Introdução à Programação', 'Curso básico de lógica de programação', 40, 'Ativo'),
('Banco de Dados', 'Modelagem e SQL para iniciantes', 60, 'Ativo'),
('Desenvolvimento Web', 'HTML, CSS e JavaScript para iniciantes', 80, 'Ativo'),
('Python Avançado', 'Recursos avançados da linguagem Python', 50, 'Ativo'),
('Redes de Computadores', 'Fundamentos de redes e protocolos', 45, 'Inativo');

-- Inserindo inscrições
INSERT INTO Inscricao (Data_Inscricao, Id_Aluno, Id_Curso) VALUES
('2025-01-10', 1, 1), -- João no curso de Programação
('2025-01-12', 2, 2), -- Maria em Banco de Dados
('2025-01-15', 3, 3), -- Pedro em Desenvolvimento Web
('2025-01-20', 4, 4), -- Ana em Python Avançado
('2025-01-25', 5, 1); -- Lucas também em Introdução à Programação

-- Inserindo avaliações (apenas 3)
INSERT INTO Avaliacao (Comentario, Id_Inscricao, Nota) VALUES
('Ótimo curso, bem explicado!', 1, 9.5),
('Gostei bastante, mas faltou exemplos práticos.', 2, 8.0),
('Conteúdo interessante e bem estruturado.', 3, 8.7);

UPDATE Aluno SET Email = 'joao.silva45@gmail.com' WHERE Id_Aluno = 1;
UPDATE Curso SET Carga_Horaria = 75 WHERE Id_Curso = 2;
UPDATE Aluno SET Nome = 'Maria Clara Sousa' WHERE Id_Aluno = 2;
UPDATE Curso SET Status_Curso = 'Inativo' WHERE Id_Curso = 3;
UPDATE Avaliacao SET Nota = 9.0 WHERE Id_Avaliacao = 1;

DELETE FROM Inscricao WHERE Id_Inscricao = 2;
DELETE FROM Curso WHERE Id_Curso = 5;
DELETE FROM Avaliacao WHERE Id_Avaliacao = 2;
DELETE FROM Aluno WHERE Id_Aluno = 4;
DELETE FROM Inscricao WHERE Id_Curso = 4;

select * from Aluno;
select Nome, Email from Aluno;
select * from Curso where Carga_Horaria > 30;
select * from Curso where Status_Curso = "Inativo";
select * from Aluno where year(Data_Nascimento) > 1995;
select * from Avaliacao where Nota > 9.0;
select count(*) as Total_Curso from Curso;
select * FROM Curso ORDER BY Carga_Horaria DESC LIMIT 3;

create index idx_email_aluno on Aluno(Email);