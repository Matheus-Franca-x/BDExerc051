CREATE DATABASE escola_disciplina
GO
USE escola_disciplina
GO
CREATE TABLE aluno 
(
	ra	INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	sobrenome VARCHAR(50) NOT NULL,
	rua_end VARCHAR(50) NOT NULL,
	num_end INT NOT NULL,
	bairro_end VARCHAR(50) NOT NULL,
	cep_end CHAR(8) NOT NULL,
	telefone CHAR(13) NULL
	PRIMARY KEY (ra)
)
GO
CREATE TABLE curso
(
	codigo INT IDENTITY(1, 1) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	carga_horaria INT NOT NULL,
	turno VARCHAR(15) NOT NULL
	PRIMARY KEY (codigo)
)
GO
CREATE TABLE disciplina
(
	codigo INT IDENTITY(1, 1) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	carga INT NOT NULL,
	turno VARCHAR(15) NOT NULL,
	semestre INT NOT NULL
	PRIMARY KEY (codigo)
)
GO
INSERT INTO aluno 
VALUES 
(12345, 'José', 'Silva', 'Almirante Noronha', 236, 'Jardim São Paulo', '1589000', '69875287'),
(12346, 'Ana', 'Maria Bastos', 'Anhaia', 1568, 'Barra Funda', '3569000', '25698526'),
(12347, 'Mario', 'Santos', 'XV de Novembro', 1841, 'Centro', '1020030', ''),
(12348, 'Marcia', 'Neves', 'Voluntários da Patria', 225, 'Santana', '2785090', '78964152')
GO
INSERT INTO curso
VALUES
('Informática', 2800, 'Tarde'),
('Informática', 2800, 'Noite'),
('Logística', 2650, 'Tarde'),
('Logística', 2650, 'Noite'),
('Plásticos', 2500, 'Tarde'),
('Plásticos', 2500, 'Noite')
GO
INSERT INTO disciplina
VALUES
('Informática', 4, 'Tarde', 1),
('Informática', 4, 'Noite', 1),
('Quimica', 4, 'Tarde', 1),
('Quimica', 4, 'Noite', 1),
('Banco de Dados I', 2, 'Tarde', 3),
('Banco de Dados I', 2, 'Noite', 3),
('Estrutura de Dados', 4, 'Tarde', 4),
('Estrutura de Dados', 4, 'Noite', 4)

--1) Nome e sobrenome, como nome completo dos Alunos Matriculados.
SELECT nome + ' ' + sobrenome AS alunos_matriculados 
FROM aluno

--2) Rua, nº , Bairro e CEP como Endereço do aluno que não tem telefone.
SELECT rua_end + ' ' + CAST(num_end AS VARCHAR) + ' - ' + bairro_end + ' - ' + cep_end AS endereco 
FROM aluno 
WHERE telefone = ''

--3) Telefone do aluno com RA 12348.
SELECT telefone 
FROM aluno 
WHERE ra = 12348

--4) Nome e Turno dos cursos com 2800 horas.
SELECT nome, turno
FROM curso 
WHERE carga_horaria = 2800

--5) O semestre do curso de Banco de Dados I noite.
SELECT semestre 
FROM disciplina 
WHERE nome LIKE 'Banco de Dados%' AND turno LIKE 'Noite'
