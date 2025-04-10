
CREATE DATABASE db_game;

USE db_game;

CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50),
    descricao TEXT
);
CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nivel INT,
    poder_atk INT,
    poder_def INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);
INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo-a-corpo, alta defesa.'),
('Arqueiro', 'Especialista em ataques à distância, ágil e preciso.'),
('Mago', 'Usa magia poderosa com alto dano, mas pouca defesa.'),
('Assassino', 'Ágil e furtivo, com ataque crítico elevado.'),
('Paladino', 'Equilíbrio entre ataque e defesa, com habilidades de cura.');

INSERT INTO tb_personagens (nome, nivel, poder_atk, poder_def, id_classe) VALUES
('Thorin', 45, 2300, 1800, 1),
('Legolia', 38, 1900, 1200, 2),
('Mystra', 50, 2500, 900, 3),
('Sombra', 42, 2100, 1100, 4),
('Elowen', 36, 1500, 2000, 5),
('Crimson', 40, 2200, 1500, 2),
('Caelum', 39, 1800, 1700, 1),
('Cypher', 47, 2400, 1300, 3);

SELECT * FROM tb_personagens WHERE poder_atk > 2000;

SELECT * FROM tb_personagens WHERE poder_def BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT 
    p.id_personagem,
    p.nome AS nome_personagem,
    c.nome_classe,
    p.nivel,
    p.poder_atk,
    p.poder_def
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id_classe;

SELECT * FROM tb_classes;

SELECT 
    p.id_personagem,
    p.nome AS nome_personagem,
    c.nome_classe,
    p.nivel,
    p.poder_atk,
    p.poder_def
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id_classe
WHERE c.id_classe = 2;
