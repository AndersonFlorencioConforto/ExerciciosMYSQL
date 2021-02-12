-- DML (Linguagem de manipulação de dados)
-- INSERT
-- UPDATE
-- DELETE
-- SELECT

-- INSERT(insere valores as colunas)
INSERT INTO mydb.carros (nome, marca, preco,cor)
VALUES
('Onix', 'Chevrolet', 40000,'branco'),
('HB20', 'Hyundai', 30000,'preto'),
('Monza', 'Chevrolet', 10000,'vermelho'),
('Subaru', 'Subaru', 80000,'branco'),
('Chevette', 'Chevrolet', 8000,'cinza'),
('Celta', 'Chevrolet', 10000,'preto'),
('Clio', 'Renault', 8000,'vermelho'),
('Megane', 'Renault', 15000,'branco');

-- SELECT
select preco
from mydb.carros
where preco >500;

-- SELECT
select preco
from mydb.carros
where preco <500;


-- UPDATE(Altera um dado pelo id)
UPDATE mydb.carros
SET preco = 15000
WHERE idcarros = 6;