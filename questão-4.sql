-- Uma empresa de cursos online está cadastrando os usuários que realizam matrículas em sua plataforma. Com base nas informações de nome, 
-- e-mail e cidade dos usuários, extraia uma lista com todas as cidades distintas onde os usuários estão localizados, filtre os usuários de 
-- uma cidade específica e mostre os três primeiros nomes em ordem decrescente.

CREATE DATABASE EMPRESA;
USE EMPRESA;

CREATE TABLE USUARIOS(
ID INT AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(100),
EMAIL VARCHAR(100),
CIDADE VARCHAR(25)
);

INSERT INTO USUARIOS (NOME, EMAIL, CIDADE) VALUES
('JOÃO CARVALHO', 'joao.carvalho@gmail.com', 'SALVADOR'),
('VANESSA LIMA', 'vanessa.lima@gmail.com', 'CAMAÇARI'),
('JÉSSICA MOURA', 'jessica.moura@gmail.com', 'SALVADOR'),
('JULIA NASCIMENTO', 'julia.nascimento@gmail.com', 'LAURO DE FREITAS'),
('MARCOS OLIVEIRA', 'marcos.oliveira@gmail.com', 'LAURO DE FREITAS'),
('MARCOS OLIVEIRA', 'marcos.oliveira@gmail.com', 'LAURO DE FREITAS'),
('PEDRO SANTOS', 'pedro.santos@gmail.com', 'CACHOEIRA'),
('LUIZ FERNANDO', 'luiz.fernando@gmail.com', 'LAURO DE FREITAS'),
('ANA CLARA', 'ana.clara@gmail.com', 'LAURO DE FREITAS');

SELECT DISTINCT NOME, EMAIL, CIDADE
FROM USUARIOS
WHERE CIDADE = 'LAURO DE FREITAS'
ORDER BY NOME DESC
LIMIT 3; 

