-- Criação dos tipos

-- Pessoa 
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
	cpf VARCHAR2(15),
	nome VARCHAR(25),
	data_nascimento DATE
) NOT FINAL NOT INSTANTIABLE;

-- Endereço
CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
	cpf_pessoa REF tp_pessoa,
	cep VARCHAR2(9),
	rua VARCHAR2(30),
	numero NUMBER,
	bairro VARCHAR2(20)
);

-- Telefone 
CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
	cpf_pessoa REF tp_pessoa,
	numero_telefone VARCHAR2 (10)
);


-- Cargo
CREATE OR REPLACE TYPE tp_cargo AS OBJECT (
	cargo_funcionario VARCHAR2 (20),
	salario NUMBER 
);

-- Funcionario (herda de pessoa)
CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
	cargo REF tp_cargo,
	cpf_supervisor REF tp_funcionario
) NOT FINAL NOT INSTANTIABLE;

-- Dependente 
CREATE OR REPLACE TYPE tp_dependente AS OBJECT (
	cpf_funcionario REF tp_funcionario,
	nome_dependente VARCHAR2(20),
	grau_parentesco VARCHAR(10),
	data_nasc DATE
);

-- Biologo
-- herda de funcionario 
CREATE OR REPLACE TYPE tp_biologo UNDER tp_funcionario (
	especializacao VARCHAR(15)
);

-- Atendente
-- herda de funcionario
CREATE OR REPLACE TYPE tp_atendente UNDER tp_funcionario (
	guiche NUMBER 
); 

-- Zelador
-- herda de funcionario 
CREATE OR REPLACE TYPE tp_zelador UNDER tp_funcionario (
	numero_de_jaulas_a_limpar NUMBER 
);

-- Visitante 
-- herda de pessoa
CREATE OR REPLACE TYPE tp_visitante UNDER tp_pessoa (
	data_cadastro DATE,
	carteira_de_estudante VARCHAR(12)
);

-- Jaula 
CREATE OR REPLACE TYPE tp_jaula AS OBJECT (
	cod_jaula VARCHAR2(5),
	capacidade NUMBER
);

-- Departamento
CREATE OR REPLACE TYPE tp_departamento AS OBJECT (
	cod_departamento VARCHAR2(5),
	nome_departamento VARCHAR2(20),
	quantidade_de_jaulas NUMBER
);

-- Animais 
CREATE OR REPLACE TYPE tp_animais AS OBJECT (
	cod_animal VARCHAR2(5),
	especie VARCHAR2(20)
);

-- Cuida
CREATE OR REPLACE TYPE tp_cuida AS OBJECT (
	cod_animal REF tp_animais,
	cpf_biologo REF tp_biologo
);

-- Limpa 
CREATE OR REPLACE TYPE tp_limpa AS OBJECT (
	cpf_zelador REF tp_zelador,
	cod_jaula REF tp_jaula
);

-- Ticket 
CREATE OR REPLACE TYPE tp_ticket AS OBJECT (
	numero_ticket NUMBER,
	cpf_atendente REF tp_atendente,
	valor NUMBER,
	data_ticket DATE,
	ORDER MEMBER FUNCTION compara_valor 
);

-- Compra 
CREATE OR REPLACE TYPE tp_compra AS OBJECT (
	numero_ticket NUMBER,
	cpf_visitante VARCHAR2(15),
	nota_fiscal INTEGER,
	OVERRIDING MEMBER PROCEDURE print_compra
);

-- OVERRIDING MEMBER PROCEDURE que imprime as informções da compra
CREATE OR REPLACE TYPE BODY tp_compra AS 
OVERRIDING MEMBER PROCEDURE print_compra IS 
	BEGIN 
		dbms_out.put_line(nomero_ticket),
		dbms_out.put_line(cpf_visitante),
		dbms_out.put_line(nota_fiscal)
	END;
END;

-- Promocao 
CREATE OR REPLACE TYPE tp_promocao AS OBJECT (
	cod_promocao NUMBER,
	desconto NUMBER,
	data_inicio DATE,
	data_termino DATE
);


-- Participa 
CREATE OR REPLACE TYPE tp_participa AS OBJECT (
	cod_promocao REF tp_promocao,
	numero_ticket REF tp_ticket,
	cpf_visitante REF tp_visitante
);

-- Pertence 
CREATE OR REPLACE TYPE tp_pertence AS OBJECT (
	animais REF tp_animais,
	jaula REF tp_jaula,
	data_entrada DATE, 
	departamento REF tp_departamento,
	data_saida DATE
);
