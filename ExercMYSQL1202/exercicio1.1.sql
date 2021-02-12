-- DML (Linguagem de manipulação de dados)
-- INSERT
-- UPDATE
-- DELETE
-- SELECT

-- INSERT(insere valores as colunas)
INSERT INTO mydb.rh (nome, sobrenome, email,salario)
VALUES
('Anderson', 'Conforto', 'anderson@email.com',5100),
('Anakin', 'Skywalker', 'anakin@email.com',8000),
('Obi wan', 'Kenobi', 'obiwan@email.com',6000),
('The', 'Mandalorian', 'mandalorian@email.com',12000),
('Yoda', 'Yoda', 'yoda@email.com',300);

-- SELECT
select salario
from mydb.rh
where salario >2000;

-- SELECT
select salario
from mydb.rh
where salario <2000;


-- UPDATE(Altera um dado pelo id)
UPDATE mydb.rh
SET salario = 15000
WHERE idrh = 1;
