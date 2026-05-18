-- Inserindo Clientes
INSERT INTO clientes (nome, email) VALUES 
('Ana Silva', 'ana.silva@email.com'),
('Carlos Souza', 'carlos.souza@email.com'),
('Mariana Costa', 'mari.Santos@email.com');

-- Inserindo Produtos
INSERT INTO produtos (nome_produto, preco, estoque) VALUES 
('Teclado Mecânico', 250.00, 15),
('Mouse Gamer', 120.00, 30),
('Monitor 24 Polegadas', 899.90, 8),
('Fone de Ouvido Bluetooth', 180.00, 0); -- Produto esgotado para testar queries

-- Inserindo Pedidos (Simulando compras)
INSERT INTO pedidos (id_cliente, id_produto, quantidade) VALUES 
(1, 1, 1), -- Ana comprou 1 Teclado
(1, 2, 2), -- Ana comprou 2 Mouses
(2, 3, 1), -- Carlos comprou 1 Monitor
(3, 2, 1); -- Mariana comprou 1 Mouse