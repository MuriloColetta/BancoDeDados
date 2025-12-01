create database oficina_consulta;
use oficina_consulta;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(255),
    cpf_cliente VARCHAR(14),
    telefone_cliente VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(255),
    modelo VARCHAR(255),
    ano_fabricacao DATE,
    placa VARCHAR(8)
);

CREATE TABLE mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome_mecanico VARCHAR(255),
    cpf_mecanico VARCHAR(14),
    salario DECIMAL(8,2),
    especialidade VARCHAR(150)
);

CREATE TABLE peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome_peca VARCHAR(255),
    descricao_peca VARCHAR(255),
    preco_custo DECIMAL(8,2),
    preco_venda DECIMAL(8,2),
    qtd_estoque INT
);

CREATE TABLE estoque (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    id_peca INT,
    quantidade INT,
    posicao VARCHAR(10),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    preco_servico DECIMAL(8,2),
    descricao_servico VARCHAR(255)
);

CREATE TABLE os (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    data_abertura DATE,
    data_fechamento DATE,
    data_conclusao DATE,
    status_os VARCHAR(20) DEFAULT 'Ativo',
    id_veiculo INT,
	FOREIGN KEY(id_veiculo) REFERENCES veiculo(id_veiculo)
);

CREATE TABLE tem (
    id_veiculo INT,
    id_cliente INT,
    FOREIGN KEY(id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE realiza (
    id_realiza INT AUTO_INCREMENT PRIMARY KEY,
    id_mecanico INT,
    id_os INT,
    id_servico INT,
    id_peca INT,
    id_veiculo INT,
    quantidade_peca_usada INT DEFAULT 1,
    FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico),
    FOREIGN KEY (id_os) REFERENCES os(id_os),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

CREATE TABLE os_servicos (
    id_os INT,
    id_servico INT,
    preco_cobrado DECIMAL(8,2),
    PRIMARY KEY(id_os, id_servico),
    FOREIGN KEY(id_os) REFERENCES os(id_os),
    FOREIGN KEY(id_servico) REFERENCES servico(id_servico)
);

CREATE TABLE os_pecas (
    id_os INT,
    id_peca INT,
    quantidade_usada INT,
    preco_unitario_cobrado DECIMAL(8,2),
    PRIMARY KEY(id_os, id_peca),
    FOREIGN KEY(id_os) REFERENCES os(id_os),
    FOREIGN KEY(id_peca) REFERENCES peca(id_peca)
);

CREATE TABLE os_mecanicos (
    id_os INT,
    id_mecanico INT,
    PRIMARY KEY(id_os, id_mecanico),
    FOREIGN KEY(id_os) REFERENCES os(id_os),
    FOREIGN KEY(id_mecanico) REFERENCES mecanico(id_mecanico)
);

INSERT INTO cliente (nome_cliente, cpf_cliente, telefone_cliente, email) VALUES
('João Silva', '111.222.333-44', '(11)98877-6655', 'joao@email.com'),
('Maria Oliveira', '222.333.444-55', '(21)97766-5544', 'maria@email.com'),
('Carlos Souza', '333.444.555-66', '(31)96655-4433', 'carlos@email.com'),
('Ana Pereira', '444.555.666-77', '(41)95544-3322', 'ana@email.com'),
('Lucas Martins', '555.666.777-88', '(51)94433-2211', 'lucas@email.com');

INSERT INTO veiculo (marca, modelo, ano_fabricacao, placa) VALUES
('Toyota', 'Corolla', '2018-01-01', 'ABC1D23'),
('Honda', 'Civic', '2019-01-01', 'EFG4H56'),
('Ford', 'Fiesta', '2017-01-01', 'IJK7L89'),
('Chevrolet', 'Onix', '2020-01-01', 'MNO1P23'),
('Volkswagen', 'Golf', '2016-01-01', 'QRS4T56');

INSERT INTO mecanico (nome_mecanico, cpf_mecanico, salario, especialidade) VALUES
('Pedro Almeida', '111.111.111-11', 3500.00, 'Injeção Eletrônica'),
('Rafael Lima', '222.222.222-22', 3800.00, 'Motor'),
('Diego Santos', '333.333.333-33', 4200.00, 'Freios'),
('Bruno Costa', '444.444.444-44', 4000.00, 'Suspensão'),
('Marcos Ribeiro', '555.555.555-55', 4500.00, 'Elétrica');

INSERT INTO peca (nome_peca, descricao_peca, preco_custo, preco_venda, qtd_estoque) VALUES
('Filtro de Óleo', 'Filtro para motor 1.0 a 2.0', 225.00, 250.00, 50),
('Pastilha de Freio', 'Pastilha dianteira', 60.00, 120.00, 30),
('Correia Dentada', 'Correia para motores 1.6', 45.00, 90.00, 20),
('Amortecedor', 'Amortecedor dianteiro', 150.00, 250.00, 15),
('Velas de Ignição', 'Jogo com 4 velas', 30.00, 60.00, 100);

INSERT INTO estoque (id_peca, quantidade, posicao) VALUES
(1, 50, 'A1'),
(2, 30, 'B2'),
(3, 20, 'C3'),
(4, 15, 'D4'),
(5, 100, 'E5');

INSERT INTO servico (preco_servico, descricao_servico) VALUES
(150.00, 'Troca de óleo'),
(200.00, 'Revisão completa'),
(100.00, 'Alinhamento e balanceamento'),
(250.00, 'Troca de freios'),
(300.00, 'Troca de embreagem');

INSERT INTO os (data_abertura, data_fechamento, data_conclusao, status_os, id_veiculo) VALUES
('2025-01-10', NULL, NULL, 'Em andamento', 1),
('2025-01-12', NULL, NULL, 'Em andamento', 2),
('2025-01-15', '2025-01-20', '2025-01-20', 'Finalizado', 3),
('2025-02-01', NULL, NULL, 'Em andamento', 2),
('2025-02-05', '2025-02-06', '2025-02-06', 'Finalizado', 5);


INSERT INTO tem (id_veiculo, id_cliente) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

INSERT INTO realiza (id_mecanico, id_os, id_servico, id_peca, id_veiculo, quantidade_peca_usada) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 1),
(4, 4, 4, 4, 4, 2),
(5, 5, 5, 5, 5, 1),
(3, 1, 2, 2, 1, 1),
(1, 2, 3, 3, 2, 1),
(2, 3, 1, 1, 3, 2),
(4, 5, 4, 4, 5, 1),
(5, 4, 5, 5, 4, 2);

INSERT INTO os_servicos VALUES
(1,1,150),
(2,2,200),
(3,3,100),
(4,4,250),
(5,5,300);

INSERT INTO os_pecas VALUES
(1,1,2,40),
(2,2,1,120),
(3,3,1,90),
(4,4,3,250),
(5,5,1,60);

INSERT INTO os_mecanicos VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

-- 1.Select
select * from veiculo where marca = "Ford";
select distinct c.id_cliente, c.nome_cliente from cliente c
join tem t on c.id_cliente = t.id_cliente
join os o on t.id_veiculo = o.id_veiculo
where o.data_abertura >= date_sub(curdate(), interval 10 month);
select id_mecanico, nome_mecanico, especialidade from mecanico where especialidade = "Injeção Eletrônica";
select * from os where status_os = "Finalizado";
select * from peca where qtd_estoque < 20;
select * from veiculo v where (select count(*) from os o where o.id_veiculo = v.id_veiculo) > 1;
select * from os o join os_mecanicos om on o.id_os = om.id_os where om.id_mecanico = 3;
-- desafio
select nome_peca, preco_venda from peca where preco_custo > 200;

-- 2.Update
update peca set preco_venda = preco_venda * 1.05 where nome_peca = 'Correia Dentada';
update os set status_os = "Finalizado", data_fechamento = "2025-11-24", data_conclusao = "2025-11-24" where id_os = 4;
update os set data_fechamento = curdate(), status_os = 'Finalizado' where status_os = 'Ativo' 
and data_abertura <= date_sub(curdate(), interval 30 day);
-- desafio
update peca set qtd_estoque = qtd_estoque * 2 where id_peca = 2;

-- 3.Alter Table
alter table cliente add column data_nascimento date;
alter table mecanico modify column especialidade varchar(100);
alter table os drop column data_fechamento;
-- desafio
alter table peca add constraint chk_preco_venda check (preco_venda >= preco_custo);

-- 4.Join
select o.id_os, c.nome_cliente, v.placa, o.data_abertura from os o
join veiculo v on o.id_veiculo = v.id_veiculo
join tem t on v.id_veiculo = t.id_veiculo
join cliente c on t.id_cliente = c.id_cliente;
select p.nome_peca, op.quantidade_usada from os_pecas op
join peca p on op.id_peca = p.id_peca
where op.id_os = 5;
select distinct m.nome_mecanico 
from realiza r
join mecanico m on r.id_mecanico = m.id_mecanico
where r.id_os = 5;
-- desafio
select v.placa, v.modelo, c.nome_cliente from veiculo v
join tem t on v.id_veiculo = t.id_veiculo
join cliente c on t.id_cliente = c.id_cliente;

-- 5. INNER JOIN
select v.placa, v.modelo from veiculo v
join os o on v.id_veiculo = o.id_veiculo
where o.status_os = "Em andamento";
select distinct c.nome_cliente from cliente c
join tem t on c.id_cliente = t.id_cliente
join veiculo v on t.id_veiculo = v.id_veiculo
where v.marca = "Volkswagen";
select distinct m.nome_mecanico from mecanico m
join realiza r on m.id_mecanico = r.id_mecanico;
-- desafio
select distinct s.descricao_servico from servico s
join realiza r on s.id_servico = r.id_servico;

-- 6. LEFT JOIN
select c.id_cliente, c.nome_cliente, o.id_os from cliente c
left join tem t on c.id_cliente = t.id_cliente
left join os o on t.id_veiculo = o.id_veiculo;
select m.id_mecanico, m.nome_mecanico, count(r.id_os) as total_os from mecanico m
left join realiza r on m.id_mecanico = r.id_mecanico
group by m.id_mecanico, m.nome_mecanico;
select p.id_peca, p.nome_peca, sum(r.quantidade_peca_usada) as total_usada from peca p
left join realiza r on p.id_peca = r.id_peca
group by p.id_peca, p.nome_peca;
-- desafio
select v.placa, v.modelo, max(o.data_abertura) as ultima_os from veiculo v
left join os o on v.id_veiculo = o.id_veiculo
group by v.id_veiculo, v.placa, v.modelo;

-- 7. RIGHT JOIN
select o.id_os, c.nome_cliente from os o
right join tem t on o.id_os = t.id_veiculo
right join cliente c on t.id_cliente = c.id_cliente;
select s.descricao_servico, r.id_os from servico s
right join realiza r on s.id_servico = r.id_servico;
select r.id_os, m.nome_mecanico from realiza r
join mecanico m on r.id_mecanico = m.id_mecanico;
-- desafio
select v.placa, v.modelo, o.id_os from veiculo v
right join os o on v.id_veiculo = o.id_veiculo;

-- 8. Subqueries
select c.id_cliente, c.nome_cliente from cliente c
where (select count(*) from tem t join os o on t.id_veiculo = o.id_veiculo
where t.id_cliente = c.id_cliente) > 1;
select distinct p.nome_peca from peca p
join realiza r on p.id_peca = r.id_peca
where r.id_os in (select id_os from realiza where id_mecanico = 4);
select placa, modelo from veiculo
where id_veiculo not in (select id_veiculo from os);
-- desafio
select descricao_servico from servico
where preco_servico > (select avg(preco_servico) from servico);

-- 9. Agregação
select coalesce(sum(s.preco_servico),0) + coalesce(sum(r.quantidade_peca_usada * p.preco_venda),0) as faturamento_total
from realiza r
left join servico s on r.id_servico = s.id_servico
left join peca p on r.id_peca = p.id_peca
where r.id_os = 2;
select avg(datediff(o.data_conclusao, o.data_abertura)) as tempo_medio_dias 
from os o;

-- 9.1 Simples
select count(*) as total_veiculos from veiculo;
select sum(p.qtd_estoque * p.preco_custo) as valor_total_inventario from peca p;
select avg(s.preco_servico) as preco_medio_mao_obra from servico s;

-- 9.2 GROUP BY
select v.marca, count(*) as total_veiculos from veiculo v group by v.marca;
select month(o.data_abertura) as mes, count(*) as total_os from os o group by month(o.data_abertura);
select o.status_os, count(*) as total_status from os o group by o.status_os;

-- 9.3 WHERE
select * from os where status_os = "Finalizado";
select coalesce(sum(os_servicos.preco_cobrado),0) + coalesce(sum(os_pecas.quantidade_usada * os_pecas.preco_unitario_cobrado),0)
as faturamento_total_ford from os join veiculo on os.id_veiculo = veiculo.id_veiculo
left join os_servicos on os.id_os = os_servicos.id_os
left join os_pecas on os.id_os = os_pecas.id_os
where veiculo.marca = 'ford' and year(os.data_abertura) = year(curdate());
select avg(s.preco_servico) as preco_medio_motor from servico s 
join realiza r on s.id_servico = r.id_servico
join mecanico m on r.id_mecanico = m.id_mecanico where m.especialidade = 'motor';

-- 9.4 HAVING
select c.id_cliente, sum(os_servicos.preco_cobrado + (os_pecas.quantidade_usada * os_pecas.preco_unitario_cobrado)) as total_gasto 
from cliente c 
join tem t on c.id_cliente = t.id_cliente
join os on t.id_veiculo = os.id_veiculo
left join os_servicos on os.id_os = os_servicos.id_os
left join os_pecas on os.id_os = os_pecas.id_os
group by c.id_cliente having total_gasto > 500;
select id_peca, sum(quantidade_usada) as total_vendida
from os_pecas
group by id_peca
having sum(quantidade_usada) >= 2;
select m.especialidade, count(r.id_os) as total_os from mecanico m
join realiza r on m.id_mecanico = r.id_mecanico
group by m.especialidade
having count(r.id_os) > 1;
select m.nome_mecanico, count(r.id_os) as total_os
from mecanico m
join realiza r on m.id_mecanico = r.id_mecanico
group by m.id_mecanico
order by total_os desc
limit 1;

-- 10 Indexação
create index idx_placa on veiculo(placa);
create index idx_os_id_veiculo on os(id_veiculo);
-- Desafio
-- É um índice que utiliza duas ou mais colunas juntas para organizar e acelerar a busca de registros,
-- é mais eficiente porque o banco consegue localizar diretamente o registro usando as duas colunas já organizadas em ordem dentro do índice.