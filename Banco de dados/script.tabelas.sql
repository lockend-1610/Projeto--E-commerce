create database e_commerce;
use e_commerce;
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20)
);
CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL
);
CREATE TABLE pecas (
    id_peca INT PRIMARY KEY AUTO_INCREMENT,
    nome_peca VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    
    FOREIGN KEY (id_categoria)
        REFERENCES categorias(id_categoria)
);
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    id_cliente INT,
    
    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente)
);
CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_peca INT,
    quantidade INT NOT NULL,
    
    FOREIGN KEY (id_pedido)
        REFERENCES pedidos(id_pedido),
        
    FOREIGN KEY (id_peca)
        REFERENCES pecas(id_peca)
);
