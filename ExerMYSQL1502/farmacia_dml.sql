INSERT INTO db_farmacia_do_bem.tb_categorias(categoria_farmacia)
VALUES
("Remédios"),
("Higiene"),
("Cosméticos");

INSERT INTO db_farmacia_do_bem.tb_produto(nome_produto,preco_produto,descricao_produto,fk_id_categorias)
VALUES
("Dipirona",5.00,"Para febre e dor de cabeça",1),
("Creme Nivea",17.00,"Creme corporal",2),
("Roacutan",57.00,"Tratamento de espinhas",1),
("Delineador Vult",37.00,"Maquiagem para região dos olhos",3),
("Escova de dentes",15.00,"Para higiene bocal",2);

SELECT nome_produto,preco_produto
FROM tb_produto
WHERE preco_produto >50;

SELECT nome_produto,preco_produto
FROM tb_produto
WHERE preco_produto BETWEEN 3.00 AND 60.00;

SELECT nome_produto,preco_produto
FROM tb_produto
WHERE nome_produto LIKE "D%";

SELECT *
FROM tb_categorias
INNER JOIN tb_produto ON tb_categorias.id_categorias = tb_produto.fk_id_categorias;

SELECT *
FROM tb_produto
INNER JOIN tb_categorias ON tb_categorias.id_categorias = tb_produto.fk_id_categorias
WHERE tb_categorias.id_categorias IN (3);


