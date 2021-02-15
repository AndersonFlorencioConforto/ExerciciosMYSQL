INSERT INTO db_pizzaria_legal.tb_categoria(categoria_pizza)
VALUES
("Doce"),
("Salgada"),
("Vegana");

INSERT INTO db_pizzaria_legal.tb_pizza(sabor_pizza,preco_pizza,massa_pizza,fk_id_categoria)
VALUES
("Brigadeiro",45.00,"fina",1),
("Mussarela",35.00,"fina",2),
("Baiana",35.00,"fina",2),
("Brocólis",40.00,"fina",3),
("Banana",45.00,"fina",1);

SELECT sabor_pizza,preco_pizza
FROM tb_pizza
WHERE preco_pizza >40;

SELECT sabor_pizza,preco_pizza
FROM tb_pizza
WHERE preco_pizza BETWEEN 29.00 AND 60.00;

SELECT sabor_pizza,preco_pizza
FROM tb_pizza
WHERE sabor_pizza LIKE 'B%';

SELECT *
FROM tb_categoria
INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_id_categoria;

SELECT *
FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_id_categoria
WHERE tb_categoria.id_categoria IN (1);








