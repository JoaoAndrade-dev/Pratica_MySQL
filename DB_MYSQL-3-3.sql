CREATE DATABASE db_registro_escolar;
USE db_registro_escolar;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(10),
    nota_final DECIMAL(4,2),
    situacao VARCHAR(20)
);

INSERT INTO tb_estudantes (nome, idade, turma, nota_final, situacao) VALUES
('Ana Paula', 16, '1A', 8.5, 'Aprovado'),
('Lucas Silva', 17, '1A', 6.0, 'Em Recuperação'),
('Bruna Castro', 15, '2B', 9.2, 'Aprovado'),
('Carlos Lima', 16, '2B', 5.8, 'Reprovado'),
('Juliana Rocha', 17, '3C', 7.3, 'Aprovado'),
('Marcos Vinicius', 16, '3C', 4.9, 'Reprovado'),
('Fernanda Gomes', 15, '1A', 7.9, 'Aprovado'),
('Tiago Souza', 17, '2B', 6.5, 'Em Recuperação');

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes
SET nota_final = 7.2, situacao = 'Aprovado'
WHERE id = 8;
