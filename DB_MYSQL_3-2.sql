
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2),
    estoque INT,
    categoria VARCHAR(50)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria) VALUES
('Notebook Gamer', 'Notebook com placa de vídeo dedicada e processador i7', 6500.00, 10, 'Informática'),
('Iphone X', 'Celular com câmera única e 128GB de armazenamento', 3500.00, 25, 'Eletrônicos'),
('Fone Bluetooth', 'Fone de ouvido com fio e cancelamento de ruído', 450.00, 50, 'Acessórios'),
('Mouse Gamer', 'Mouse com iluminação RGB', 280.00, 40, 'Periféricos'),
('Cadeira Gamer', 'Cadeira ergonômica', 1200.00, 15, 'Móveis'),
('Teclado Mecânico', 'Teclado com RGB', 600.00, 30, 'Periféricos'),
('Monitor 24"', 'Monitor Full HD', 899.99, 20, 'Informática'),
('Carregador Portátil', 'Powerbank', 199.90, 60, 'Acessórios');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco = 499.90
WHERE id = 3;