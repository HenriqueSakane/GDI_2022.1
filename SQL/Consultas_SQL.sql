-- CONSULTAS SQL

-- Verificar se o cpf do funcionário supervisionado é diferente do cpf de seu supervisor.
-- ALTER TABLE (1) 
ALTER TABLE Funcionario
	ADD CHECK (cpf_supervisor != cpf_funcionario);

-- CREATE INDEX (2)
CREATE INDEX indice_nome_departamento ON Departamento (nome_departamento);

-- INSERT INTO (3)

-- UPDATE (4)
UPDATE biologo SET especializacao = 'Pássaros' WHERE especializacao = 'Aves'

-- DELETE (5)

-- SELECT-FROM-WHERE (6)
SELECT especializacao, cpf_biologo FROM biologo WHERE especializacao = 'Pássaros' 

-- Listar os cpfs dos visitantes que compraram os tickets com números entre 3 e 7
-- BETWEEN (7) OK
SELECT C.cpf_visitante
FROM Compra C
WHERE C.numero_ticket BETWEEN 3 AND 7;

-- Listar as espécies de serpentes presentes no Departamento de Serpentes
-- IN (1) OK
SELECT A.especie
FROM Animais A, Pertence P
WHERE P.animais = A.cod_animal AND P.departamento IN ('D04');

-- Seleciona os códigos das Capivaras
-- LIKE (2)
SELECT cod_animal FROM Animais
WHERE especie LIKE 'Capivara';

-- IS NULL ou IS NOT NULL (3)

-- INNER JOIN (4)

-- MAX (5)

-- MIN (6)

-- AVG (7) Calcular a média salarial dos funcionários
SELECT AVG(salario) FROM Cargo;

-- COUNT (1) Contar a quantidade de biologos
SELECT COUNT(*)FROM Funcionario
WHERE cargo = 'Biologo';

-- Cria tabela com codigo, nome, jaula e departamento do animal, ordenado pelo nome da espécie.
-- LEFT ou RIGHT ou FULL OUTER JOIN (2) 
SELECT A.especie, P.animais, P.jaula, P.departamento
FROM Pertence P
FULL OUTER JOIN Animais A
ON P.animais = A.cod_animal
ORDER BY A.especie;

-- SUBCONSULTA COM OPERADOR RELACIONAL (3)

-- SUBCONSULTA COM IN (4)

-- SUBCONSULTA COM ANY (5)

-- SUBCONSULTA COM ALL (6)

-- ORDER BY (7) Ordenar alfabeticamente os animais presentes no departamento de Aves
SELECT A.especie
FROM Animais A, Pertence P, Departamento D
WHERE A.cod_animal = P.animais AND D.cod_departamento = P.cod_departamento AND D.nome_departamento = 'Aves'
ORDER BY A.especie;

-- GROUP BY (1) Contar a quantodade de animais presentes em cada departamento
SELECT departamento, COUNT(*) FROM Pertence
GROUP BY departamento
ORDER BY departamento;

-- Seleciona as espécies que possuem mais de 2 integrantes
-- HAVING (2)
SELECT especie, COUNT(*) FROM animais
GROUP BY especie
HAVING COUNT(*) > 2;

-- UNION ou INTERSECT ou MINUS (3)

-- CREATE VIEW (4)

-- GRANT / REVOKE (5)
