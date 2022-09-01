DROP TABLE Pessoa; 
DROP TABLE Telefone;
DROP TABLE Endereco;
DROP TABLE Funcionario;
DROP TABLE Cargo;
DROP TABLE Dependente;
DROP TABLE Biologo;
DROP TABLE Atendente;
DROP TABLE Zelador;
DROP TABLE Visitante;
DROP TABLE Jaula;
DROP TABLE Departamento;
DROP TABLE Animais;
DROP TABLE Cuida;
DROP TABLE Limpa;
DROP TABLE Ticket;
DROP TABLE Compra_visitante_ticket;
DROP TABLE Promocao;
DROP TABLE Participa;
DROP TABLE Pertence;

-- Pessoa
CREATE TABLE Pessoa ( 
	cpf VARCHAR2(15) NOT NULL,
	nome VARCHAR2(25) NOT NULL,
	data_nascimento DATE NOT NULL,
	CONSTRAINT pessoa_pkey PRIMARY KEY (cpf)
);

--Telefone
CREATE TABLE Telefone ( 
	cpf_pessoa VARCHAR2(15) NOT NULL,
	numero_telefone NUMBER NOT NULL,
	CONSTRAINT telefone_pkey PRIMARY KEY (cpf_pessoa, numero_telefone),
	CONSTRAINT telefone_fkey FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa (cpf)
);

-- Endereco
CREATE TABLE Endereco ( 
	cpf_pessoa VARCHAR2(15) NOT NULL,
	cep VARCHAR2(9) NOT NULL,
	rua VARCHAR2(30) NOT NULL,
	numero NUMBER NOT NULL,
	bairro VARCHAR2(20) NOT NULL,
	CONSTRAINT endereco_pkey PRIMARY KEY (cpf_pessoa),
	CONSTRAINT endereco_fkey FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa (cpf) 
);

-- Funcionario
CREATE TABLE Funcionario ( 
	cpf_funcionario VARCHAR2(15) NOT NULL,
	cargo VARCHAR2(15) NOT NULL,
	cpf_supervisor VARCHAR2(15) NOT NULL,
	CONSTRAINT funcionario_pkey PRIMARY KEY (cpf_funcionario),
	CONSTRAINT funcionario_fkey1 FOREIGN KEY (cpf_funcionario) REFERENCES Pessoa (cpf),
	CONSTRAINT funcionario_fkey2 FOREIGN KEY (cpf_supervisor) REFERENCES Funcionario (cpf_funcionario)
);

-- Cargo
CREATE TABLE Cargo ( 
	cargo_funcionario VARCHAR2(15) NOT NULL,
	salario NUMBER(5,2) NOT NULL,
	CONSTRAINT cargo_pkey PRIMARY KEY (cargo_funcionario),
	CONSTRAINT cargo_check CHECK (salario >= 1210.00), -- CLÁUSULA CHECK
	CONSTRAINT cargo_fkey FOREIGN KEY (cargo_funcionario) REFERENCES Funcionario (cpf_funcionario)
);

-- Dependente
CREATE TABLE Dependente ( 
	cpf_funcionario VARCHAR2(15) NOT NULL,
	nome_dependente VARCHAR2(20) NOT NULL,
	grau_de_parentesco VARCHAR2(10) NOT NULL,
	data_nasc DATE NOT NULL,
	CONSTRAINT dependente_pkey PRIMARY KEY (cpf_funcionario, nome_dependente),
	CONSTRAINT dependente_fkey FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario (cpf_funcionario)
);

-- Biologo
CREATE TABLE Biologo ( 
	cpf_biologo VARCHAR2(15) NOT NULL,
	especializacao VARCHAR2(20) NOT NULL,
	CONSTRAINT biologo_pkey PRIMARY KEY (cpf_biologo),
	CONSTRAINT biologo_fkey FOREIGN KEY (cpf_biologo) REFERENCES Funcionario (cpf_funcionario)
);

-- Atendente
CREATE TABLE Atendente ( 
	cpf_atendente VARCHAR2(15) NOT NULL,
	guiche NUMBER NOT NULL,
	CONSTRAINT atendente_pkey PRIMARY KEY (cpf_atendente),
	CONSTRAINT atendente_fkey FOREIGN KEY (cpf_atendente) REFERENCES Funcionario (cpf_funcionario)
);

-- Zelador
CREATE TABLE Zelador ( 
	cpf_zelador VARCHAR2(15) NOT NULL,
	numero_de_jaulas_a_limpar NUMBER NOT NULL,
	CONSTRAINT zelador_pkey PRIMARY KEY (cpf_zelador),
	CONSTRAINT zelador_fkey FOREIGN KEY (cpf_zelador) REFERENCES Funcionario (cpf_funcionario)
);

-- Visitante
CREATE TABLE Visitante ( 
	cpf_visitante VARCHAR2(15) NOT NULL,
	data_cadastro DATE NOT NULL,
	carteira_de_estudante VARCHAR2(12) NOT NULL,
	CONSTRAINT visitante_pkey PRIMARY KEY (cpf_visitante),
	CONSTRAINT visitante_fkey FOREIGN KEY (cpf_visitante) REFERENCES Pessoa (cpf)
);

-- Jaula
CREATE TABLE Jaula ( 
	cod_jaula VARCHAR2(4) NOT NULL,
	capacidade NUMBER NOT NULL,
	CONSTRAINT jaula_pkey PRIMARY KEY (cod_jaula)
);

-- Departamento
CREATE TABLE Departamento ( 
	cod_departamento VARCHAR2(4),
	nome_departamento VARCHAR2(20) NOT NULL,
	quantidade_de_jaulas NUMBER NOT NULL,
	CONSTRAINT departamento_pkey PRIMARY KEY (cod_departamento)
);

-- Animais
CREATE TABLE Animais ( 
	cod_animal VARCHAR2(5) NOT NULL,
	especie VARCHAR2(20) NOT NULL,
	CONSTRAINT animal_pkey PRIMARY KEY (cod_animal)
);

-- Cuida
CREATE TABLE Cuida ( 
	cod_animal VARCHAR2(5) NOT NULL,
	cpf_biologo VARCHAR2(15) NOT NULL,
	CONSTRAINT cuida_pkey PRIMARY KEY (cod_animal, cpf_biologo),
	CONSTRAINT cuida_fkey1 FOREIGN KEY (cod_animal) REFERENCES Animais (cod_animal),
	CONSTRAINT cuida_fkey2 FOREIGN KEY (cpf_biologo) REFERENCES Biologo (cpf_biologo)
);

-- Limpa
CREATE TABLE Limpa ( 
	cpf_zelador VARCHAR2(15) NOT NULL,
	cod_jaula VARCHAR2(4) NOT NULL,
	data_limpeza DATE NOT NULL,
	CONSTRAINT limpa_pkey PRIMARY KEY (cpf_zelador, cod_jaula),
	CONSTRAINT limpa_fkey1 FOREIGN KEY (cpf_zelador) REFERENCES Zelador (cpf_zelador),
	CONSTRAINT limpa_fkey2 FOREIGN KEY (cod_jaula) REFERENCES Jaula (cod_jaula)
);

-- Ticket
CREATE TABLE Ticket ( 
	numero_ticket NUMBER NOT NULL,
	cpf_atendente VARCHAR2(15) NOT NULL,
	valor NUMBER (3,2) NOT NULL,
	data_ticket DATE NOT NULL,
	CONSTRAINT ticket_pkey PRIMARY KEY (numero_ticket),
	CONSTRAINT ticket_fkey1 FOREIGN KEY (cpf_atendente) REFERENCES Atendente (cpf_atendente) 
);

-- Compra
CREATE TABLE Compra ( 
	numero_ticket NUMBER NOT NULL,
	cpf_visitante VARCHAR2(15) NOT NULL,
	nota_fiscal INTEGER NOT NULL,
	CONSTRAINT compra_pkey PRIMARY KEY (numero_ticket, cpf_visitante),
	CONSTRAINT compra_fkey1 FOREIGN KEY (numero_ticket) REFERENCES Ticket (numero_ticket),
	CONSTRAINT compra_fkey2 FOREIGN KEY (cpf_visitante) REFERENCES Visitante (cpf_visitante)
);
CREATE SEQUENCE nota_fiscal INCREMENT BY 1 START WITH 1;

-- Promocao
CREATE TABLE Promocao ( 
	cod_promocao NUMBER NOT NULL,
	desconto NUMBER NOT NULL,
	data_inicio DATE NOT NULL,
	data_termino DATE NOT NULL,
	CONSTRAINT promocao_pkey PRIMARY KEY (cod_promocao)
);

-- Participa
CREATE TABLE Participa ( 
	cod_promocao NUMBER NOT NULL,
	numero_ticket NUMBER NOT NULL,
	cpf_visitante VARCHAR2(15) NOT NULL,
	CONSTRAINT participa_pkey PRIMARY KEY (cod_promocao, numero_ticket, cpf_visitante),
	CONSTRAINT participa_fkey1 FOREIGN KEY (cod_promocao) REFERENCES Promocao (cod_promocao),
	CONSTRAINT participa_fkey2 FOREIGN KEY (numero_ticket) REFERENCES Compra (numero_ticket),
	CONSTRAINT participa_fkey3 FOREIGN KEY (cpf_visitante) REFERENCES Compra (cpf_visitante)
);

-- Pertence
CREATE TABLE Pertence ( 
	animais VARCHAR2(15) NOT NULL, 
	jaula VARCHAR2(4) NOT NULL,
	data_entrada DATE NOT NULL,
	departamento VARCHAR2(4) NOT NULL,
	data_saida DATE NOT NULL,
	CONSTRAINT pertence_pkey PRIMARY KEY (animais, jaula, data_entrada),
	CONSTRAINT pertence_fkey1 FOREIGN KEY (animais) REFERENCES Animais (cod_animal),
	CONSTRAINT pertence_fkey2 FOREIGN KEY (jaula) REFERENCES Jaula (cod_jaula),
	CONSTRAINT pertence_fkey3 FOREIGN KEY (departamento) REFERENCES Departamento (cod_departamento)
);
