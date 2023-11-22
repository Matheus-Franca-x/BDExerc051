CREATE DATABASE hospital
GO
USE hospital
GO
CREATE TABLE paciente
(
	cpf CHAR(11) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	rua_end VARCHAR(50) NOT NULL,
	num_end INT NOT NULL,
	bairro_end VARCHAR(30) NOT NULL,
	telefone CHAR(13) NULL,
	data_nasc DATE NOT NULL
	PRIMARY KEY (cpf)
)
GO
CREATE TABLE medico
(
	codigo INT IDENTITY(1, 1) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	especialidade VARCHAR(30) NOT NULL
	PRIMARY KEY (codigo)
)
GO
CREATE TABLE prontuario
(
	data_pront DATE NOT NULL,
	cpf_paciente CHAR(11) NOT NULL,
	codigo_medico INT NOT NULL,
	diagnostico VARCHAR(100) NOT NULL,
	medicamento VARCHAR(30) NOT NULL
	PRIMARY KEY (data_pront, cpf_paciente, codigo_medico)
	FOREIGN KEY (cpf_paciente) REFERENCES paciente (cpf),
	FOREIGN KEY (codigo_medico) REFERENCES medico (codigo)
)
GO
INSERT INTO paciente
VALUES
('35454562890',	'José Rubens',	'Campos Salles',	2750,	'Centro',	'21450998',	'1954-10-18'),
('29865439810',	'Ana Claudia',	'Sete de Setembro',	178,	'Centro',	'97382764',	'1960-05-29'),
('82176534800',	'Marcos Aurélio',	'Timóteo Penteado',	236,	'Vila Galvão',	'68172651',	'1980-09-24'),
('12386758770',	'Maria Rita',	'Castello Branco',	7765,	'Vila Rosália',	NULL,	'1975-03-30'),
('92173458910',	'Joana de Souza',	'XV de Novembro',	298,	'Centro',	'21276578',	'1944-04-24')
GO
INSERT INTO medico
VALUES
('Wilson Cesar',	'Pediatra'),
('Marcia Matos',	'Geriatra'),
('Carolina Oliveira',	'Ortopedista'),
('Vinicius Araujo',	'Clínico Geral')
GO
INSERT INTO prontuario
VALUES
('2020-09-10',	'35454562890',	2,	'Reumatismo',	'Celebra'),
('2020-09-10',	'92173458910',	2,	'Renite', 'Alérgica	Allegra'),
('2020-09-12',	'29865439810',	1,	'Inflamação de garganta',	'Nimesulida'),
('2020-09-13',	'35454562890',	2,	'H1N1',	'Tamiflu'),
('2020-09-15',	'82176534800',	4,	'Gripe',	'Resprin'),
('2020-09-15',	'12386758770',	3,	'Braço Quebrado',	'Dorflex + Gesso')

--1) Nome e Endereço (concatenado) dos pacientes com mais de 50 anos.
SELECT nome, rua_end + ' ' + CAST(num_end AS VARCHAR) + ' - ' + bairro_end  AS endereco
FROM paciente
WHERE DATEDIFF(YEAR, data_nasc, GETDATE()) > 50

--2) Qual a especialidade de Carolina Oliveira.
SELECT especialidade 
FROM medico 
WHERE nome LIKE '%carolina%'

--3) Qual medicamento receitado para reumatismo.
SELECT medicamento 
FROM prontuario 
WHERE diagnostico LIKE 'reumatismo'

--4) Diagnóstico e Medicamento do paciente José Rubens em suas consultas.
SELECT p.nome, pr.diagnostico, pr.medicamento 
FROM paciente p, prontuario pr
WHERE p.cpf = pr.cpf_paciente
	AND p.nome LIKE 'José%'

--5) Nome e especialidade do(s) Médico(s) que atenderam José Rubens. 
--   Caso a especialidade tenha mais de 3 letras, mostrar apenas as 3 primeiras letras concatenada com um ponto final (.).
SELECT m.nome AS 
nome_medico, 
CASE WHEN LEN(m.especialidade) > 3
	THEN
		SUBSTRING(m.especialidade, 1, 3) + '.' 
	ELSE 
		m.especialidade 
	END AS especialidade,
p.nome AS nome_paciente
FROM medico m, prontuario pr, paciente p
WHERE m.codigo = pr.codigo_medico 
	AND pr.cpf_paciente = p.cpf 
	AND p.nome LIKE 'José%'

--6) CPF (Com a máscara XXX.XXX.XXX-XX), Nome, Endereço completo (Rua, nº - Bairro), Telefone (Caso nulo, mostrar um traço (-)) dos pacientes do médico Vinicius.
SELECT p.cpf, p.nome, p.rua_end + ' ' + CAST(p.num_end AS VARCHAR) + ' - ' + p.bairro_end AS endereco, 
	CASE WHEN p.telefone IS NULL
	THEN '-'
	ELSE p.telefone 
	END AS telefone
FROM paciente p, prontuario pr, medico m 
WHERE p.cpf = pr.cpf_paciente 
	AND pr.codigo_medico = m.codigo 
	AND m.nome LIKE 'Vinicius%'

--7) Quantos dias fazem da consulta de Maria Rita até hoje.
SELECT DATEDIFF(DAY, pr.data_pront, GETDATE()), p.nome  
FROM paciente p, prontuario pr
WHERE p.cpf = pr.cpf_paciente 
	AND p.nome LIKE 'Maria%'

--8) O telefone da paciente Maria Rita, para 98345621.
UPDATE paciente 
SET telefone = '98345621'
WHERE nome LIKE 'Maria%'

--9) O Endereço de Joana de Souza para Voluntários da Pátria, 1980, Jd. Aeroporto.
UPDATE paciente 
SET rua_end = 'Voluntários da Pátria', num_end = 1980, bairro_end = 'Jd. Aeroporto'
WHERE nome LIKE 'Joana%'
