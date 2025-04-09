CREATE DATABASE db_funcionarios;
USE db_funcionarios;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    dataAdmissao DATE NOT NULL,
	setor INT,
    situacao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE tb_funcionarios ADD salario DECIMAL(6,2);

INSERT INTO tb_funcionarios(nome, cargo, dataAdmissao, setor, situacao) 
VALUES ("João","Auxiliar de Produção", "2023-12-15", 12, "Ativo"),
 ("Maria","Assistente Admistrativa", "2022-11-08", 3, "Ativo"),
 ("Pedro","Motorista", "2020-10-18", 15, "Férias"),
 ("Cicero","Gerente de RH", "1990-01-23", 5, "Ativo"),
 ("Manuel","Líder de Produção", "2003-10-01", 12, "Férias");
 

SELECT * FROM tb_funcionarios;
