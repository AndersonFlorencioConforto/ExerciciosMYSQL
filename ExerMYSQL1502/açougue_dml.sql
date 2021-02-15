INSERT INTO db_cidade_das_carnes.tb_categoria(categoria_carne)
VALUES
("Suínos"),
("Bovinos"),
("Avinos");

INSERT INTO db_cidade_das_carnes.tb_produto(nome_produto,preco_produto,descricao_produto,fk_id_categoria)
VALUES
("Asa de frango",18.00,"Ótima para churrasco",3),
("Picanha",45.00,"Excelente carne para churrasco",2),
("Lombo de porco",30.00,"Excelente carne para assar no forno",1),
("Maminha",37.00,"Excelente carne para cozinhar",2),
("Bisteca",15.00,"Excelente carne para fritar",1);

SELECT nome_produto,preco_produto
FROM tb_produto
WHERE preco_produto >40;

SELECT nome_produto,preco_produto
FROM tb_produto
WHERE preco_produto BETWEEN 3.00 AND 60.00;

SELECT nome_produto,preco_produto
FROM tb_produto
WHERE nome_produto LIKE "M%";

SELECT *
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_id_categoria;

SELECT *
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_id_categoria
WHERE tb_categoria.id_categoria IN (1);


