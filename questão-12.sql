-- Um sistema precisa armazenar as informações dos alunos e os cursos em que eles estão matriculados. 
-- Para manter a integridade dos dados, é necessário garantir que somente alunos cadastrados possam ter matrículas.

-- Criando o banco de dados e usando-o
CREATE DATABASE sistema;
USE sistema;

-- Criando a tabela de alunos
CREATE TABLE ALUNOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100),
    EMAIL VARCHAR(100)
);

-- Criando a tabela de cursos
CREATE TABLE CURSOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100)
);

-- Criando a tabela matriculas
CREATE TABLE MATRICULAS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_ALUNO INT,
    ID_CURSO INT,
    DATA_MATRICULA DATE,
    FOREIGN KEY (ID_ALUNO) REFERENCES ALUNOS(ID),
    FOREIGN KEY (ID_CURSO) REFERENCES CURSOS(ID)
);

-- Inserindo dados na tabela de alunos
INSERT INTO ALUNOS (NOME, EMAIL) VALUES
('Ana Silva', 'ana.silva01@gmail.com'),
('Juliana Castro', 'juliana.castro@gmail.com'),
('João Lima', 'joao.lima5@gmail.com'),
('Marcos Rocha', 'marcos.rocha@gmail.com'),
('Alice Ferreira', 'alice123@gmail.com');

-- Inserindo dados na tabela de cursos
INSERT INTO CURSOS (NOME) VALUES
('Curso de Exatas'),
('Curso de Humanas'),
('Curso de Matemática'),
('Curso Completo ENEM'),
('Curso de Linguagens');

-- Inserindo dados na tabela de matriculas
INSERT INTO MATRICULAS (ID_ALUNO, ID_CURSO, DATA_MATRICULA) VALUES
(1, 1, '2025-03-01'),
(2, 2, '2025-03-05'),
(3, 1, '2025-03-06'),
(4, 3, '2025-03-10'),
(5, 5, '2025-03-11');

SELECT 
    ALUNOS.NOME AS NOME_ALUNO,
    CURSOS.NOME AS NOME_CURSO,
    MATRICULAS.DATA_MATRICULA
FROM MATRICULAS
INNER JOIN ALUNOS ON MATRICULAS.ID_ALUNO = ALUNOS.ID
INNER JOIN CURSOS ON MATRICULAS.ID_CURSO = CURSOS.ID;
