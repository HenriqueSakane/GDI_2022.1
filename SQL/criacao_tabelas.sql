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

-- Pessoa (cpf, nome, data_nascimento)

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

CREATE TABLE Funcionario(
	cpf_funcionario VARCHAR2(15) NOT NULL,
	cod_funcionario VARCHAR2(8) NOT NULL,
	cargo VARCHAR2(25) NOT NULL,
    cod_supervisor VARCHAR2(8) NOT NULL,
	CONSTRAINT funcionario_pkey PRIMARY KEY (cpf_funcionario),
	CONSTRAINT funcionario_fkey1 FOREIGN KEY (cpf_funcionario) REFERENCES Pessoa (cpf),
    CONSTRAINT funcionario_fkey2 FOREIGN KEY (cod_supervisor) REFERENCES Funcionario (cod_funcionario) 
);
-- Cargo

-- Dependente

-- Biologo

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

-- Animais

-- Cuida

--Limpa (cod_zelador*, cod_jaula*, data_limpeza)
--	cod_zelador referencia Zelador (cod_zelador)
--	cod_jaula referencia Jaula (cod_jaula)

CREATE TABLE Limpa(
    cod_zelador NUMBER NOT NULL,
    cod_jaula NUMBER NOT NULL,
    data_limpeza DATE NOT NULL,
    CONSTRAINT limpa_pkey PRIMARY KEY (cod_zelador, cod_jaula),
    CONSTRAINT limpa_fkey1 FOREIGN KEY (cod_zelador) REFERENCES zelador(cod_zelador),
    CONSTRAINT limpa_fkey2 FOREIGN KEY (cod_jaula) REFERENCES jaula(cod_jaula)
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
CREATE TABLE Compra_visitante_ticket(
	cod_compra VARCHAR2(10) NOT NULL,
	CONSTRAINT compra_visitante_ticket_pkey PRIMARY KEY (cod_compra)
);

-- Promocao
CREATE TABLE Promocao (
	cod_promocao NUMBER NOT NULL,
	desconto NUMBER NOT NULL,
	data_termino DATE NOT NULL,
	CONSTRAINT promocao_pkey PRIMARY KEY (cod_promocao)
);

-- Participa

-- Pertence
