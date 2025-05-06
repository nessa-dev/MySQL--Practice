-- QUESTÃO 3 – Cadastro de Usuários para Campanha de Marketing
-- Enunciado:
-- Um sistema de cadastro está preparando uma campanha personalizada para usuários específicos.
-- Tarefas:
-- 1. Crie o banco e a tabela `usuarios`.
-- 2. Insira os dados fornecidos.
-- 3. Atualize o e-mail de Igor Nunes para 'igor.nunes@oficial.com';
-- 4. Exclua Eduarda Lopes da base, por solicitação da LGPD;
-- 5. Liste todos os usuários com nomes que comecem com “I” ou “E”;
-- 6. Filtre os e-mails que tenham qualquer número;
-- 7. Liste todos os usuários em ordem alfabética crescente pelo nome.

-- Criar o banco de dados e selecionar ele
CREATE DATABASE marketing;
USE marketing;

-- Criar a tabela usuarios
CREATE TABLE USUARIOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100),
    EMAIL VARCHAR(100)
);

-- Inserir os dados na tabela
INSERT INTO USUARIOS (NOME, EMAIL) VALUES
('Igor Nunes', 'igor.nunes123@gmail.com'),
('Eduarda Lopes', 'eduarda.lopes3@gmail.com'),
('Elisa Martins', 'elisa.martins@gmail.com'),
('Everton Costa', 'everton.costa@gmail.com'),
('Isabela Souza', 'isabela_souza1@gmail.com'),
('João Batista', 'joao.batista@gmail.com');

-- Atualizar o e-mail de Igor Nunes
UPDATE USUARIOS
SET EMAIL = 'igor.nunes@oficial.com'
WHERE ID = 1;

-- Excluir Eduarda Lopes da tabela
DELETE FROM USUARIOS
WHERE ID = 2 ;

-- Listar usuários com nomes que comecem com "I" ou "E"
SELECT * FROM USUARIOS
WHERE NOME LIKE 'I%' OR NOME LIKE 'E%';

-- Filtrar e-mails que contenham números
SELECT * FROM USUARIOS
WHERE EMAIL REGEXP '[0-9]';

-- Listar todos os usuários em ordem alfabética pelo nome
SELECT * FROM USUARIOS
ORDER BY NOME ASC;
