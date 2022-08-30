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
CREATE TABLE Pessoa(
    cpf VARCHAR2(15) NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf)
);

-- Telefone
CREATE TABLE Telefone(
	cpf_pessoa VARCHAR2(15) NOT NULL,
	numero_telefone NUMBER NOT NULL,
	CONSTRAINT telefone_pkey PRIMARY KEY (cpf_pessoa, numero_telefone),
	CONSTRAINT telefone_fkey FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa (cpf)
);

-- Endereco
CREATE TABLE Endereco(
	cpf_pessoa VARCHAR2(15) NOT NULL,
	cep VARCHAR2(9) NOT NULL,
	rua VARCHAR2(25) NOT NULL,
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
	CONSTRAINT funcionario_fkey2 FOREIGN KEY (cod_supervisor) REFERENCES Funcionario (cod_funcionario)
);

-- Cargo
CREATE TABLE Cargo ( 
	cargo_funcionario VARCHAR2(15) NOT NULL,
	salario NUMBER NOT NULL CHECK (salario >= 1210.00), -- CLÁUSULA CHECK
	CONSTRAINT cargo_pkey PRIMARY KEY (cargo_funcionario),
	CONSTRAINT cargo_fkey FOREIGN KEY (cargo_funcionario) REFERENCES Funcionario (cargo)
);

-- Dependente
CREATE TABLE Dependente ( 
	cpf_funcionario VARCHAR2(15) NOT NULL,
	nome_dependente VARCHAR2(20) NOT NULL,
	grau_de_parentesco VARCHAR2(10) NOT NULL,
	data_nasc DATE NOT NULL,
	CONSTRAINT dependente_pkey PRIMARY KEY (cpf_funcionario, nome_dependente),
	CONSTRAINT dependente_fkey FOREIGN KEY (cpf_funcionario) REFERENCES Pessoa (cpf)
);

-- Biologo
CREATE TABLE Biologo ( 
	cpf_biologo VARCHAR2(15) NOT NULL,
	CONSTRAINT biologo_pkey PRIMARY KEY (cpf_biologo, cod_biologo),
	CONSTRAINT biologo_fkey FOREIGN KEY (cpf_biologo) REFERENCES Funcionario (cpf_funcionario)
);

-- Atendente (cpf_atendente*, cod_atendente)
--  	cpf_atendente referencia Funcionário (cpf_funcionario)

CREATE TABLE Atendente(
    cpf_atendente VARCHAR2(15) NOT NULL,
    cod_atendente NUMBER NOT NULL,
    CONSTRAINT atendente_pkey PRIMARY KEY (cpf_atendente, cod_atendente),
    CONSTRAINT atendente_fkey FOREIGN KEY (cpf_atendente) REFERENCES funcionario(cpf_funcionario)
);

-- Zelador
CREATE TABLE Zelador(
	cpf_zelador VARCHAR2(15) NOT NULL,
	CONSTRAINT zelador_pkey PRIMARY KEY (cpf_zelador),
	CONSTRAINT zelador_fkey FOREIGN KEY (cpf_zelador) REFERENCES Funcionario (cpf_funcionario)
);

-- Visitante
CREATE TABLE Visitante(
	cpf_visitante VARCHAR2(15) NOT NULL,
	cod_visitante VARCHAR2(10) NOT NULL,
	data_cadastro DATE NOT NULL,
	carteira_de_estudante VARCHAR2(15) NOT NULL,
	CONSTRAINT visitante_pkey PRIMARY KEY (cpf_visitante, cod_visitante),
	CONSTRAINT visitante_fkey FOREIGN KEY (cpf_visitante) REFERENCES Pessoa (cpf)
);

-- Jaula

CREATE TABLE Jaula(
    cod_jaula INTEGER NOT NULL,
    capacidade NUMBER (2),
    CONSTRAINT jaula_pkey PRIMARY KEY (cod_jaula),
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
	cod_animal VARCHAR2(10) NOT NULL,
	especie VARCHAR2(20) NOT NULL,
	CONSTRAINT animal_pkey PRIMARY KEY (cod_animal)
);

-- Cuida
CREATE TABLE Cuida ( 
	cod_animal VARCHAR2(10) NOT NULL,
	cpf_biologo VARCHAR2(10) NOT NULL,
	CONSTRAINT cuida_pkey PRIMARY KEY (cod_animal, cpf_biologo),
	CONSTRAINT cuida_fkey1 FOREIGN KEY (cod_animal) REFERENCES Animais (cod_animal),
	CONSTRAINT cuida_fkey2 FOREIGN KEY (cpf_biologo) REFERENCES Biologo (cpf_biologo)
);

--Limpa

CREATE TABLE Limpa ( 
	cpf_zelador VARCHAR2(10) NOT NULL,
	cod_jaula VARCHAR2(10) NOT NULL,
	data_limpeza DATE NOT NULL,
	CONSTRAINT limpa_pkey PRIMARY KEY (cpf_zelador, cod_jaula),
	CONSTRAINT limpa_fkey1 FOREIGN KEY (cpf_zelador) REFERENCES Zelador (cpf_zelador),
	CONSTRAINT limpa_fkey2 FOREIGN KEY (cod_jaula) REFERENCES Jaula (cod_jaula)
);

-- Ticket

CREATE TABLE Ticket(
	numero_ticket INTEGER NOT NULL,
	cpf_visitante VARCHAR2(10) NOT NULL,
	cpf_atendente VARCHAR2(10) NOT NULL,
	valor NUMBER(3,2) NOT NULL,
	data_ticket DATE NOT NULL,
	CONSTRAINT ticket_pkey PRIMARY KEY (numero_ticket),
	CONSTRAINT ticket_fkey1 FOREIGN KEY (cpf_visitante) REFERENCES Visitante (cpf_visitante),
	CONSTRAINT ticket_fkey2 FOREIGN KEY (cpf_atendente) REFERENCES Atendente (cpf_atendente)
);

CREATE SEQUENCE numero_ticket
INCREMENT BY 1
START WITH 1;

-- Compra_visitante_ticket

-- Promocao
CREATE TABLE Promocao (
	cod_promocao NUMBER NOT NULL,
	desconto NUMBER NOT NULL,
	data_termino DATE NOT NULL,
	CONSTRAINT promocao_pkey PRIMARY KEY (cod_promocao)
);

-- Participa
CREATE TABLE Participa ( 
	cod_promocao NUMBER NOT NULL,
	CONSTRAINT participa_pkey PRIMARY KEY (cod_promocao),
	CONSTRAINT participa_fkey2 FOREIGN KEY (cod_promocao) REFERENCES Promocao (cod_promocao)
);

-- Pertence
CREATE TABLE Pertence ( 
	animais VARCHAR2(10) NOT NULL, 
	jaula VARCHAR2(10) NOT NULL,
	data_entrada DATE NOT NULL,
	departamento VARCHAR2(10) NOT NULL,
	data_saida DATE NOT NULL,
	CONSTRAINT pertence_pkey PRIMARY KEY (animais, jaula, data_entrada)
	CONSTRAINT pertence_fkey1 FOREIGN KEY (animais) REFERENCES Animais (cod_animal),
	CONSTRAINT pertence_fkey2 FOREIGN KEY (jaula) REFERENCES Jaula (cod_jaula),
	CONSTRAINT pertence_fkey3 FOREIGN KEY (departamento) REFERENCES Departamento (cod_departamento)
);
