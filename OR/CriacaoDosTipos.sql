-- Criação dos tipos
-- Endereço
CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
	cep VARCHAR2(9),
	rua VARCHAR2(30),
	numero NUMBER,
	bairro VARCHAR2(20),
	CONSTRUCTOR FUNCTION tp_endereco(SELF IN OUT NOCOPY tp_endereco, 
		cep VARCHAR2,
		rua VARCHAR2,
		numero NUMBER,
		bairro VARCHAR2) RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY tp_endereco AS
	CONSTRUCTOR FUNCTION tp_endereco(SELF IN OUT NOCOPY tp_endereco, 
		cep VARCHAR2,
		rua VARCHAR2,
		numero NUMBER,
		bairro VARCHAR2) RETURN SELF AS RESULT IS
		BEGIN

			SELF.cep := cep;
			SELF.rua := rua;
			SELF.numero := numero;
			SELF.bairro := bairro;
			RETURN;

		END;
END;
/
-- Telefone 
CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
	numero_telefone VARCHAR2(10)
);
/
-- VARRAY DE TELEFONE
CREATE OR REPLACE TYPE tp_arr_fones AS VARRAY(5) OF tp_telefone;
/

-- Pessoa 
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
	cpf VARCHAR2(15),
	nome VARCHAR(25),
	data_nascimento DATE,
	endereco tp_endereco,
	telefones tp_arr_fones,
	FINAL MEMBER FUNCTION numeroTelefones RETURN NUMBER,
    MEMBER PROCEDURE detalhesPessoa (SELF tp_pessoa)
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE BODY tp_pessoa AS
	-- retorna a quantidade de numeros registrados da pessoa
	FINAL MEMBER FUNCTION numeroTelefones RETURN NUMBER IS
	BEGIN
		RETURN telefones.COUNT;
	END;
	   -- printa os detalhes da pessoa
	MEMBER PROCEDURE detalhesPessoa (SELF tp_pessoa) IS
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Detalhes da Pessoa:');
		DBMS_OUTPUT.PUT_LINE('CPF:'|| cpf);
		DBMS_OUTPUT.PUT_LINE('Nome: '|| nome);
		DBMS_OUTPUT.PUT_LINE('Data de Nascimento: '||to_char(data_nascimento));
	END;

END;
/

-- Cargo
CREATE OR REPLACE TYPE tp_cargo AS OBJECT (
	cargo_funcionario VARCHAR2 (20),
	salario NUMBER,
	MAP MEMBER FUNCTION salarioAnual RETURN NUMBER
);
/
--Salario anual gerando *12
CREATE OR REPLACE TYPE BODY tp_cargo AS 
	MAP MEMBER FUNCTION salarioAnual RETURN NUMBER IS 
	BEGIN
		RETURN salario *12;
	END;
END;
/

-- Funcionario (herda de pessoa)
CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
	cargo REF tp_cargo,
	OVERRIDING MEMBER PROCEDURE detalhesPessoa (SELF tp_funcionario)
) NOT FINAL NOT INSTANTIABLE;
/
--Overriding Member procedure de Pessoa
CREATE OR REPLACE TYPE BODY tp_funcionario AS 
	OVERRIDING MEMBER PROCEDURE detalhesPessoa (SELF tp_funcionario) IS
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Detalhes do Funcionario:');
		DBMS_OUTPUT.PUT_LINE('CPF:'|| cpf);
		DBMS_OUTPUT.PUT_LINE('Nome: '|| nome);
		DBMS_OUTPUT.PUT_LINE('Data de Nascimento: '||to_char(data_nascimento));
	END;
END;
/
-- Dependente 
CREATE OR REPLACE TYPE tp_dependente AS OBJECT (
	nome_dependente VARCHAR2(20),
	grau_parentesco VARCHAR(10),
	data_nasc DATE,
	ORDER MEMBER FUNCTION comparaDependente(D tp_dependente) RETURN INTEGER
);
/
CREATE OR REPLACE TYPE BODY tp_dependente AS 
	ORDER MEMBER FUNCTION comparaDependente(D tp_dependente) RETURN INTEGER IS
	selfid VARCHAR2(250) := SELF.nome_dependente || SELF.grau_parentesco || to_char(SELF.data_nasc);
	otherid VARCHAR2(250) := D.nome_dependente || D.grau_parentesco || to_char(D.data_nasc);
	BEGIN
		IF(selfid > otherid) THEN
			RETURN 1;
		END IF;
		IF (selfid = otherid) THEN
			RETURN 0;
		END IF;
		RETURN -1;
	END;
END;
/


-- NESTED TABLES:
-- Dependentes de Biólogos 
CREATE OR REPLACE TYPE tp_nt_dependentes_biologos AS TABLE OF tp_dependente;
/
-- Dependentes de Atendentes
CREATE OR REPLACE TYPE tp_nt_dependentes_atendentes AS TABLE OF tp_dependente;
/
-- Dependentes de Zeladores
CREATE OR REPLACE TYPE tp_nt_dependentes_zeladores AS TABLE OF tp_dependente;
/

-- Biologo
-- herda de funcionario 
CREATE OR REPLACE TYPE tp_biologo UNDER tp_funcionario (
	especializacao VARCHAR(15),
	cpf_supervisor REF tp_biologo,
	dependentes_de_biologos tp_nt_dependentes_biologos
);
/
-- Atendente
-- herda de funcionario
CREATE OR REPLACE TYPE tp_atendente UNDER tp_funcionario (
	guiche NUMBER,
	cpf_supervisor REF tp_atendente,
	dependentes_de_atendentes tp_nt_dependentes_atendentes
); 
/
-- Zelador
-- herda de funcionario 
CREATE OR REPLACE TYPE tp_zelador UNDER tp_funcionario (
	numero_de_jaulas_a_limpar NUMBER,
	cpf_supervisor REF tp_zelador,
	dependentes_de_zeladores tp_nt_dependentes_zeladores
);
/
-- Visitante 
-- herda de pessoa
CREATE OR REPLACE TYPE tp_visitante UNDER tp_pessoa (
	data_cadastro DATE,
	carteira_de_estudante VARCHAR(12)
);
/
-- Jaula 
CREATE OR REPLACE TYPE tp_jaula AS OBJECT (
	cod_jaula VARCHAR2(5),
	capacidade NUMBER
);
/
-- Departamento
CREATE OR REPLACE TYPE tp_departamento AS OBJECT (
	cod_departamento VARCHAR2(5),
	nome_departamento VARCHAR2(20),
	quantidade_de_jaulas NUMBER
);
/
-- Animais 
CREATE OR REPLACE TYPE tp_animais AS OBJECT (
	cod_animal VARCHAR2(5),
	especie VARCHAR2(20)
);
/
-- Cuida
CREATE OR REPLACE TYPE tp_cuida AS OBJECT (
	cod_animal REF tp_animais,
	cpf_biologo REF tp_biologo
);
/
-- Limpa 
CREATE OR REPLACE TYPE tp_limpa AS OBJECT (
	cpf_zelador REF tp_zelador,
	cod_jaula REF tp_jaula,
	data_limpeza DATE
);
/
-- Ticket 
CREATE OR REPLACE TYPE tp_ticket AS OBJECT (
	numero_ticket NUMBER,
	cpf_atendente REF tp_atendente,
	valor NUMBER,
	data_ticket DATE
);
/
-- Compra 
CREATE OR REPLACE TYPE tp_compra AS OBJECT (
	numero_ticket REF tp_ticket,
	cpf REF tp_visitante,
	nota_fiscal INTEGER
);
/

-- Promocao 
CREATE OR REPLACE TYPE tp_promocao AS OBJECT (
	cod_promocao NUMBER,
	desconto NUMBER,
	data_inicio DATE,
	data_termino DATE,
	MEMBER FUNCTION promocaoInfo RETURN VARCHAR
);
/
CREATE OR REPLACE TYPE BODY tp_promocao AS
MEMBER FUNCTION promocaoInfo RETURN VARCHAR IS
	BEGIN
		RETURN ('O código ' || cod_promocao || ' é válido até ' || to_char(data_termino));
	END;
END;
/

-- Participa 
CREATE OR REPLACE TYPE tp_participa AS OBJECT (
	cod_promocao REF tp_promocao,
	numero_ticket REF tp_ticket,
	cpf_visitante REF tp_visitante
);
/
-- Pertence 
CREATE OR REPLACE TYPE tp_pertence AS OBJECT (
	animais REF tp_animais,
	jaula REF tp_jaula,
	data_entrada DATE, 
	departamento REF tp_departamento,
	data_saida DATE
);
/
--Modificando o Funcionario
--+ALTER TYPE tp_funcionario ADD ATTRIBUTE data_de_contratacao DATE CASCADE;
