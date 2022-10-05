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
-- Não vai ter tabela PESSOA

-- Endereço
CREATE TABLE tb_endereco OF tp_endereco (
	cep PRIMARY KEY,
	rua NOT NULL,
	numero NOT NULL,
	bairro NOT NULL
);

-- Cargo 
CREATE TABLE tb_cargo OF tp_cargo (
	cargo_funcionario PRIMARY KEY,
	salario NOT NULL
);

-- telefone
CREATE TABLE tb_telefone OF tp_telefone (
	cpf_pessoa WITH ROWID REFERENCES tb_pessoa PRIMARY KEY, -- checar
	numero_telefone PRIMARY KEY
);

-- funcionario
-- Não vai ter tabela de FUNCIONARIO

-- DEPENDENTE
-- será uma NESTED TABLE

-- Biólogo 
CREATE TABLE tb_biologo OF tp_biologo (
	cpf PRIMARY KEY,
	especializacao NOT NULL
);

-- Atendente
CREATE TABLE tb_atendente OF tp_atendente (
	cpf PRIMARY KEY,
	guiche NOT NULL
);

-- Zelador
CREATE TABLE tb_zelador OF tp_zelador (
	cpf PRIMARY KEY,
	numero_de_jaulas_a_limpar NOT NULL
);

-- Visitante
CREATE TABLE tb_visitante OF tp_visitante (
	cpf PRIMARY KEY,
	data_cadastro NOT NULL
);

-- Jaula 
CREATE TABLE tb_jaula OF tp_jaula (
	cod_jaula PRIMARY KEY,
	capacidade NOT NULL
);
-- departamento
CREATE TABLE tb_departamento OF tp_departamento (
	cod_departamento PRIMARY KEY,
	nome_departamento NOT NULL,
	quantidade_de_jaulas NOT NULL
);

-- Animais
CREATE TABLE tb_animais OF tp_animais (
	cod_animal PRIMARY KEY,
	especie NOT NULL
);

-- Cuida
CREATE TABLE tb_cuida OF tp_cuida (
	cod_animal WITH ROWID REFERENCES tb_animais,
	cpf_biologo WITH ROWID REFERENCES tb_biologo
);

-- Limpa
CREATE TABLE tb_limpa OF tp_limpa (
	cod_jaula WITH ROWID REFERENCES tb_jaula,
	cpf_zelador WITH ROWID REFERENCES tb_zelador,
	data_limpeza NOT NULL
);

-- Ticket
CREATE TABLE tb_ticket OF tp_ticket (
	numero_ticket PRIMARY KEY,
	cpf_atendente WITH ROWID REFERENCES tb_atendente,
	valor NOT NULL,
	data_ticket NOT NULL
);

-- compra
CREATE TABLE tb_compra OF tp_compra (
	numero_ticket PRIMARY KEY,
	cpf_visitante PRIMARY KEY,
	nota_fiscal NOT NULL,
);

-- Promoção 
CREATE TABLE tb_promocao OF tp_promocao (
	cod_promocao PRIMARY KEY,
	desconto NOT NULL,
	data_inicio NOT NULL,
	data_termino NOT NULL
);

-- Participa
CREATE TABLE tb_participa OF tp_participa (
	cod_promocao WITH ROWID REFERENCES tb_promocao,
	numero_ticket WITH ROWID REFERENCES tb_ticket,
	cpf_visitante WITH ROWID REFERENCES tb_visitante
);

-- Pertence 
CREATE TABLE tb_pertence OF tp_pertence (
	animais WITH ROWID REFERENCES tb_animais,
	jaula WITH ROWID REFERENCES tb_jaulas,
	data_entrada PRIMARY KEY,
	departamento WITH ROWID REFERENCES tb_departamento,
	data_saida NOT NULL
);
