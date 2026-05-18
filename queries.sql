-- Lista todos os pedidos com o nome do cliente, nome do produto e o valor total da compra
SELECT 
    p.id_pedido,
    c.nome AS nome_cliente,
    pr.nome_produto,
    p.quantidade,
    (p.quantidade * pr.preco) AS valor_total_pedido,
    p.data_pedido
FROM pedidos p
INNER JOIN clientes c ON p.id_cliente = c.id_cliente
INNER JOIN produtos pr ON p.id_produto = pr.id_produto;

-- Ranking de clientes que mais geraram faturamento
SELECT 
    c.nome AS cliente,
    SUM(p.quantidade * pr.preco) AS total_gasto
FROM pedidos p
INNER JOIN clientes c ON p.id_cliente = c.id_cliente
INNER JOIN produtos pr ON p.id_produto = pr.id_produto
GROUP BY c.nome
ORDER BY total_gasto DESC;

-- Filtra produtos que precisam de reposição (estoque menor que 10)
SELECT nome_produto, estoque 
FROM produtos 
WHERE estoque < 10
ORDER BY estoque ASC;

-- Excelente para o time de marketing saber quem são os leads "frios"
SELECT c.nome, c.email
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;