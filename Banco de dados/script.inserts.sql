use e_commerce;
-- CLIENTES
INSERT INTO clientes (nome, email, telefone) VALUES
('João Silva', 'joao@gmail.com', '(92) 99999-1111'),
('Maria Souza', 'maria@gmail.com', '(92) 99999-2222'),
('Carlos Lima', 'carlos@gmail.com', '(92) 99999-3333');

-- CATEGORIAS
INSERT INTO categorias (nome_categoria) VALUES
('Motor'),
('Freios'),
('Suspensão'),
('Elétrica');

-- PEÇAS
INSERT INTO pecas (nome_peca, preco, estoque, id_categoria) VALUES
('Filtro de Óleo', 35.90, 50, 1),
('Pastilha de Freio', 120.00, 30, 2),
('Amortecedor Dianteiro', 350.00, 15, 3),
('Bateria 60Ah', 450.00, 10, 4),
('Velas de Ignição', 80.00, 40, 1);

-- PEDIDOS
INSERT INTO pedidos (data_pedido, id_cliente) VALUES
('2026-06-10', 1),
('2026-06-12', 2),
('2026-06-15', 3);

-- ITENS_PEDIDO
INSERT INTO itens_pedido (id_pedido, id_peca, quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 4, 1),
(3, 3, 2),
(3, 5, 4);