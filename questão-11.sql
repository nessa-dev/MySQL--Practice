create database escola;
use escola;

CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  curso VARCHAR(100),
  nota_final DECIMAL(5,2)
);

INSERT INTO alunos (nome, curso, nota_final) VALUES
('João Almeida', 'Desenvolvimento de Sistemas', 7.00),
('Ana Souza', 'Desenvolvimento de Sistemas', 8.50),
('Carlos Lima', 'Desenvolvimento de Sistemas', 6.75),
('Beatriz Santos', 'Desenvolvimento de Sistemas', 9.00),
('Rafael Costa', 'Administração', 7.20),
('Juliana Nunes', 'Logística', 8.10),
('Paulo Henrique', 'Segurança do Trabalho', 6.80),
('Mariana Lima', 'Administração', 9.30),
('Larissa Ribeiro', 'Logística', 5.75),
('Fernando Alves', 'Segurança do Trabalho', 8.00);

select count(*) as total_alunos
from alunos
where curso = 'Desenvolvimento de Sistemas';

select avg(nota_final) as nota_alunos
from alunos
where curso = 'Desenvolvimento de Sistemas';


