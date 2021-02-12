-- DML (Linguagem de manipulação de dados)
-- INSERT
-- UPDATE
-- DELETE
-- SELECT

-- INSERT(insere valores as colunas)
INSERT INTO mydb.alunos (nome, materia, nota,ensino)
VALUES
('Anderson', 'Matemática', 10,'medio'),
('Herick', 'Matemática', 8,'medio'),
('André', 'Matemática', 8,'medio'),
('Solano', 'Matemática', 7,'medio'),
('Leonardo', 'Matemática', 5,'medio'),
('Kauan', 'Matemática', 3,'medio'),
('Toni', 'Matemática', 6,'medio'),
('Filipe', 'Matemática', 9,'medio');

-- SELECT
select nome,nota
from mydb.alunos
where nota >7;

-- SELECT
select nome,nota
from mydb.alunos
where nota <7;


-- UPDATE(Altera um dado pelo id)
UPDATE mydb.alunos
SET nota = 10
WHERE idalunos = 3;