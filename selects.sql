-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)

SELECT 
	o.*,
    p.*

FROM
		pedidos o
        JOIN produtos_pedidos pp ON o.id = pp.pedido_id
        JOIN produtos p ON pp.produto_id = p.id;


-- 2)

SELECT 
	o.id
FROM
		pedidos o
        JOIN produtos_pedidos pp ON o.id = pp.pedido_id
        JOIN produtos p ON pp.produto_id = p.id
        WHERE p.id = (SELECT id FROM produtos WHERE nome = 'Fritas');

-- 3)

       
SELECT 
	c.nome gostam_de_fritas
FROM
		clientes c
        JOIN pedidos o ON C.id = o.id
        JOIN produtos_pedidos pp ON o.id = pp.pedido_id
        JOIN produtos p ON pp.produto_id = p.id
        WHERE p.id = (SELECT id FROM produtos WHERE nome = 'Fritas');

-- 4)

SELECT 
	 SUM(p.preço) sum
FROM
		produtos p
        JOIN produtos_pedidos pp ON p.id = pp.produto_id
        JOIN pedidos o ON pp.pedido_id = o.id
        JOIN clientes c ON o.cliente_id = c.id
        WHERE c.id = (SELECT id FROM clientes WHERE nome = 'Laura');
        

-- 5)

SELECT
	p.nome nome,
    COUNT(p.nome) count
FROM
		produtos p
        JOIN produtos_pedidos pp ON p.id = pp.produto_id
        JOIN pedidos o ON pp.pedido_id = o.id
        GROUP BY nome ORDER BY nome ASC;
       