
-- Um sistema de vendas possui duas tabelas: clientes e pedidos.
-- A tabela clientes contém informações dos clientes (colunas: id, nome_cliente),
-- enquanto a tabela pedidos registra as compras feitas (colunas: id, cliente_id, produto, data_pedido).
-- Monte uma consulta que mostre o nome de cada cliente e o produto que ele comprou,
-- usando INNER JOIN para relacionar os pedidos com os respectivos clientes.

CREATE DATABASE sistema_vendas;
USE sistema_vendas;

CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome_cliente VARCHAR(100)
);

CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  cliente_id INT,
  produto VARCHAR(100),
  data_pedido DATE,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (id, nome_cliente) VALUES
(1, 'João Silva'),
(2, 'Ana Souza'),
(3, 'Carlos Lima'),
(4, 'Beatriz Santos');

INSERT INTO pedidos (id, cliente_id, produto, data_pedido) VALUES
(1, 1, 'Notebook', '2025-01-15'),
(2, 2, 'Impressora', '2025-02-10'),
(3, 1, 'Teclado', '2025-03-05'),
(4, 3, 'Monitor', '2025-04-20');


select * from clientes
inner join pedidos on clientes.id = pedidos.cliente_id;