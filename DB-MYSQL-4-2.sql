
CREATE DATABASE db_farmacia;

USE db_farmacia;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50),
    descricao TEXT
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2),
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Produtos utilizados no tratamento de doenças.'),
('Higiene', 'Produtos de uso pessoal e limpeza.'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele.'),
('Suplementos', 'Produtos para suplementação alimentar.'),
('Infantil', 'Produtos voltados para cuidados de bebês e crianças.');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
('Paracetamol 500mg', 'Analgésico e antitérmico', 9.90, 100, 1),
('Shampoo Anticaspa', 'Controle de oleosidade e caspa', 22.50, 50, 2),
('Protetor Solar FPS 60', 'Proteção contra raios UVA/UVB', 65.00, 30, 3),
('Vitamina C 1g', 'Suplemento de vitamina C efervescente', 35.00, 40, 4),
('Pomada para Assaduras', 'Creme protetor para bebês', 18.90, 60, 5),
('Creme Anti-idade', 'Redução de linhas finas e rugas', 79.90, 20, 3),
('Sabonete Líquido Neutro', 'Sabonete suave para peles sensíveis', 12.00, 70, 2),
('Colágeno Hidrolisado', 'Suplemento para articulações e pele', 58.90, 25, 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT 
    p.id_produto,
    p.nome AS nome_produto,
    c.nome_categoria,
    p.preco,
    p.estoque
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c ON p.id_categoria = c.id_categoria;

SELECT 
    p.id_produto,
    p.nome AS nome_produto,
    c.nome_categoria,
    p.preco,
    p.estoque
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
