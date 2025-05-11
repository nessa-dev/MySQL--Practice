-- Uma faculdade está organizando um relatório com os alunos matriculados. 
-- A tabela alunos contém as colunas nome, curso e nota_final. Para facilitar a 
-- leitura do relatório, é necessário exibir o nome do aluno como "Aluno", o nome 
-- do curso como "Curso Matriculado" e a nota final como "Nota Final".
-- Monte uma consulta que retorne esses dados renomeando as colunas usando aliases.

create database faculdade;
use faculdade;

create table alunos(
id int auto_increment primary key,
nome varchar(100),
curso varchar (150),
nota_final float 
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

SELECT 
  nome AS 'Aluno',
  curso AS 'Curso Matriculado',
  nota_final AS 'Nota Final'
FROM alunos;





