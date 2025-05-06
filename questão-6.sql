-- Uma plataforma de cursos quer gerar um relatório com todos os alunos cujos nomes 
-- comecem com a letra “M” e também deseja filtrar os cursos cujo valor esteja entre
--  R$100 e R$500. Faça as consultas adequadas para retornar esses dados.

create database plataforma;
use plataforma;

create table ALUNOS(
ID INT AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR (100),
EMAIL VARCHAR(100)
);

CREATE TABLE CURSOS (
ID INT auto_increment PRIMARY KEY,
NOME VARCHAR(100),
PRECO FLOAT 
);

INSERT INTO ALUNOS (NOME, EMAIL) VALUES
('MARCIA LOPES', 'MARCIALOPES@gmail.com'),
('JÉSSICA MOURA', 'jessica.moura@gmail.com'),
('JULIA NASCIMENTO', 'julia.nascimento@gmail.com'),
('MARCOS OLIVEIRA', 'marcos.oliveira@gmail.com'),
('PEDRO SANTOS', 'pedro.santos@gmail.com'),
('LUIZ FERNANDO', 'luiz.fernando@gmail.com'),
('ANA CLARA', 'ana.clara@gmail.com');

INSERT INTO CURSOS (NOME, PRECO) VALUES
('CURSO DE PORTUGUÊS', 150.00),
('CURSO DE MATEMÁTICA', 350.00),
('CURSO DE GEOGRAFIA', 90.00),
('CURSO COMPLETO ENEM', 600.00),
('CURSO EXATAS', 450.00),
('CURSO DE HISTÓRIA', 100.00);


SELECT * FROM ALUNOS
WHERE NOME LIKE 'M%';

SELECT * FROM CURSOS
WHERE PRECO BETWEEN 100 AND 500;


