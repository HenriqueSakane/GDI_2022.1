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

-- Endereço
CREATE TABLE tb_endereco OF tp_endereco (
	cpf_pessoa SCOPE IS tb_pessoa
);

CREATE TABLE tb_telefone OF tp_telefone (
	cpf_pessoa WITH ROWID REFERENCES tb_pessoa PRIMARY KEY, -- checar
	numero_telefone PRIMARY KEY
);

CREATE TABLE tb_funcionario OF tp_funcionario (
	cargo SCOPE IS tb_cargo,
	cpf_supervisor SCOPE IS tb_funcionario
);

CREATE TABLE tb_biologo OF tp_biologo  (
	cpf_biologo SCOPE IS tb_funcionario,
	especializacao NOT NULL
);

CREATE TABLE tb_departamento OF tp_departamento (
	cod_departamento PRIMARY KEY,
	nome_departamento NOT NULL,
	quantidade_de_jaulas NOT NULL
);

CREATE TABLE tb_compra OF tp_compra (
	numero_ticket PRIMARY KEY,
	cpf_visitante PRIMARY KEY,
	nota_fiscal NOT NULL,
);

CREATE TABLE tb_zelador OF tp_zelador  (
	cpf_zelador SCOPE IS tb_funcionario,
	numero_de_jaulas_a_limpar NOT NULL
);
