-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)

INSERT INTO clientes
          (nome, lealdade)
        VALUES
          ('Georgia', 0);

-- 2)

INSERT INTO pedidos 
            (status, cliente_id)
        VALUES
          ('Recebido', 6);


-- 3)

INSERT INTO produtos_pedidos
          (pedido_id, produto_id)
        VALUES
          (6, 1),
          (6, 2),
          (6, 6),
          (6, 8),
          (6, 8);

-- Leitura

-- 1)

SELECT 
	c.*,
	o.*,
    p.*
FROM
		pedidos o
        JOIN produtos_pedidos pp ON o.id = pp.pedido_id
        JOIN produtos p ON pp.produto_id = p.id
        JOIN clientes c ON o.cliente_id = c.id
        WHERE c.id = (SELECT id FROM clientes WHERE nome = 'Georgia');



-- Atualização

-- 1)



-- Deleção

-- 1)


