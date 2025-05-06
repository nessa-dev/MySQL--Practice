-- QUESTÃO 2 – Plataforma de Cursos com Filtros Avançados
-- Enunciado:
-- Uma plataforma de cursos deseja analisar seus dados.
-- Crie as tabelas alunos e cursos, insira os dados abaixo e depois:
-- 1. Liste todos os alunos com nomes que começam com “A” ou “J”;
-- 2. Liste os cursos com preços entre R$ 200 e R$ 500;
-- 3. Liste os alunos cujo e-mail contenha números;
-- 4. Liste os cursos cujo nome contenha a palavra “EXATAS” (sem diferenciar maiúsculas de minúsculas).

-- Criando o banco de dados e usando-o
CREATE DATABASE plataforma;
USE plataforma;

-- Criando a tabela de alunos
CREATE TABLE ALUNOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100),
    EMAIL VARCHAR(100)
);

-- Criando a tabela de cursos
CREATE TABLE CURSOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100),
    PRECO FLOAT
);

-- Inserindo dados na tabela de alunos
INSERT INTO ALUNOS (NOME, EMAIL) VALUES
('Ana Silva', 'ana.silva01@gmail.com'),
('Juliana Castro', 'juliana.castro@gmail.com'),
('João Lima', 'joao.lima5@gmail.com'),
('Marcos Rocha', 'marcos.rocha@gmail.com'),
('Alice Ferreira', 'alice123@gmail.com');

-- Inserindo dados na tabela de cursos
INSERT INTO CURSOS (NOME, PRECO) VALUES
('Curso de Exatas', 300.00),
('Curso de Humanas', 250.00),
('Curso de Matemática', 500.00),
('Curso Completo ENEM', 700.00),
('Curso de Linguagens', 180.00);

-- Alunos com nomes que começam com "A" ou "J"
SELECT * FROM ALUNOS
WHERE NOME LIKE 'A%' OR NOME LIKE 'J%';

-- Cursos com preços entre R$ 200 e R$ 500
SELECT * FROM CURSOS
WHERE PRECO BETWEEN 200 AND 500;

-- Alunos cujo e-mail contenha números
SELECT * FROM ALUNOS
WHERE EMAIL REGEXP '[0-9]';

-- Cursos cujo nome contenha "EXATAS" (sem diferenciar maiúsculas/minúsculas)
SELECT * FROM CURSOS
WHERE NOME LIKE '%exatas%' COLLATE utf8_general_ci;

