
CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
('Elétrica', 'Produtos relacionados à instalação elétrica.'),
('Hidráulica', 'Produtos para encanamento e instalações hidráulicas.'),
('Ferramentas', 'Ferramentas manuais e elétricas.'),
('Acabamento', 'Materiais para acabamento de obras.'),
('Estrutura', 'Materiais brutos para construção civil.');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
('Fio Elétrico 10mm', 'Rolo com 100m de fio de cobre revestido', 150.00, 50, 1),
('Canaleta PVC', 'Canaleta de 2m para condução elétrica', 45.00, 100, 1),
('Torneira de Metal', 'Torneira cromada para pia', 120.00, 30, 2),
('Cano PVC 100mm', 'Cano para esgoto de 3 metros', 90.00, 70, 2),
('Martelo 500g', 'Martelo com cabo emborrachado', 75.00, 40, 3),
('Parafusadeira Elétrica', 'Parafusadeira com bateria recarregável', 220.00, 25, 3),
('Revestimento Cerâmico', 'Caixa com 2m² de revestimento', 135.00, 60, 4),
('Cimento CP-II', 'Saco de 50kg de cimento', 68.00, 80, 5);


SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

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
WHERE c.nome_categoria = 'Hidráulica';
