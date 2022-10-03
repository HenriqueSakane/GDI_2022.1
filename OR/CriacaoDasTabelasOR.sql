-- Criação das tabelas
/* CHECKLIST: 

-- CREATE OR REPLACE TYPE 
-- CREATE OR REPLACE TYPE BODY
-- MEMBER PROCEDURE
-- MEMBER FUNCTION
-- ORDER MEMBER FUNCTION
-- MAP MEMBER FUNCTION
-- CONSTRUCTOR FUNCTION
-- OVERRIDING MEMBER
-- FINAL MEMBER
-- NOT INSTANTIABLE TYPE/MEMBER
-- HERANÇA DE TIPOS (UNDER/NOT FINAL)
-- ALTER TYPE
-- CREATE TABLE OF
-- WITH ROWID REFERENCES
-- REF
-- SCOPE IS
-- INSERT INTO
-- VALUE
-- VARRAY
-- NESTED TABLE
*/ 

/*
Tabelas:

Pessoa
Telefone 
Endereço
Cargo
Funcionário
Dependente
Biólogo 
Atendente
Zelador 
Visitante 
Jaula 
Departamento 
Animais
Cuida 
Limpa 
Ticket 
Compra 
Promoção 
Participa
Pertence 
*/
CREATE TABLE tb_pessoa OF tp_pessoa (
	cpf PRIMARY KEY,
	nome NOT NULL,
	data_nascimento NOT NULL
);

CREATE TABLE tb_funcionario OF tp_funcionario ()

CREATE TABLE tb_biologo OF tp_biologo  (
	cpf PRIMARY KEY,
	especializacao NOT NULL
);
