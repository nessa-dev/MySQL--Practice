-- Uma loja virtual deseja saber qual foi o maior valor de pedido registrado 
-- no ano de 2025. Os dados estão armazenados na tabela pedidos, que contém 
-- colunas como id_pedido, cliente_id, data_pedido e total. Considerando apenas 
-- pedidos realizados entre 1º de janeiro e 31 de dezembro de 2025, é necessário 
-- retornar o maior valor encontrado na coluna total.

create database loja;
use loja;

create table pedidos (
  id_pedido INT,
  cliente_id INT,
  data_pedido DATE,
  total DECIMAL(10,2)
);

INSERT INTO pedidos (cliente_id, data_pedido, total) VALUES
(1, '2025-01-15', 250.00),
(2, '2025-03-22', 480.75),
(3, '2025-06-10', 199.90),
(4, '2025-09-05', 920.40),
(5, '2025-12-01', 350.60),
(6, '2024-11-11', 150.00); 

select max(total) as maior_valor
from pedidos
where data_pedido BETWEEN '2025-01-01' AND '2025-12-31';

