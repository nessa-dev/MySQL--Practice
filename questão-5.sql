-- Uma empresa de tecnologia está atualizando sua base de dados dos funcionários. Um dos colaboradores teve o 
-- e-mail alterado por mudança de domínio, e outro funcionário pediu demissão e teve seus dados excluídos. 
-- Realize as modificações necessárias para refletir essas mudanças.

CREATE DATABASE EMPRESA;
USE EMPRESA;

CREATE TABLE FUNCIONARIOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100),
    EMAIL VARCHAR(100)
);

INSERT INTO FUNCIONARIOS (NOME, EMAIL) VALUES
('VANESSA LIMA', 'vanessa.lima@gmail.com'),
('JÉSSICA MOURA', 'jessica.moura@gmail.com'),
('JULIA NASCIMENTO', 'julia.nascimento@gmail.com'),
('MARCOS OLIVEIRA', 'marcos.oliveira@gmail.com'),
('PEDRO SANTOS', 'pedro.santos@gmail.com'),
('LUIZ FERNANDO', 'luiz.fernando@gmail.com'),
('ANA CLARA', 'ana.clara@gmail.com');

UPDATE FUNCIONARIOS 
SET EMAIL = 'VANESSINHA123@GMAIL.COM'
WHERE id = 1;

DELETE FROM FUNCIONARIOS 
WHERE id = 5;

SELECT NOME, EMAIL
FROM FUNCIONARIOS;


