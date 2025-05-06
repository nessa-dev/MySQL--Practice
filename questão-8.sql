-- QUESTÃO 1 – Gestão de Funcionários com Atualização e Exclusão
-- Uma empresa de consultoria de TI está organizando o cadastro de seus funcionários.
-- Tarefas:
-- 1. Crie o banco de dados e a tabela `funcionarios`.
-- 2. Insira os dados de funcionários.
-- 3. Atualize o e-mail de Bruna Souza para 'bruna.souza@consultoria.com.br'.
-- 4. Exclua Carlos Almeida da tabela.
-- 5. Liste todos os funcionários cujo nome começa com “B” ou “C”.
-- 6. Liste todos os e-mails que contenham números.

-- Criar banco de dados
CREATE DATABASE SISTEMA;
USE SISTEMA;

-- Criar tabela de funcionários
CREATE TABLE FUNCIONARIOS (
ID INT auto_increment PRIMARY KEY,
NOME VARCHAR(100),
EMAIL VARCHAR(100)
);

-- Inserir dados
INSERT INTO FUNCIONARIOS (NOME, EMAIL) VALUES
('Bruna Souza', 'bruna123@gmail.com'),
('Carlos Almeida', 'carlos.almeida45@gmail.com'),
('Bianca Lima', 'bianca.lima@gmail.com'),
('Caio Mendes', 'caio.mendes99@gmail.com'),
('Ana Ribeiro', 'ana.ribeiro@gmail.com');

-- Atualizar e-mail de Bruna
UPDATE FUNCIONARIOS
SET EMAIL = 'bruna.souza@consultoria.com.br'
WHERE id = 1;

-- Excluir Carlos Almeida
DELETE FROM FUNCIONARIOS
WHERE id = 2;

-- Buscar e-mails com números
SELECT * FROM FUNCIONARIOS
WHERE EMAIL REGEXP '[0-9]';

-- Buscar nomes que começam com B ou C
SELECT * FROM FUNCIONARIOS
WHERE NOME LIKE 'B%' OR NOME LIKE 'C%';


