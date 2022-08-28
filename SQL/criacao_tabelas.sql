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
	cod_zelador VARCHAR2(10) NOT NULL,
	CONSTRAINT zelador_pkey PRIMARY KEY (cpf_zelador, cod_zelador),
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
	cod_visitante VARCHAR2(10) NOT NULL,
	cod_atendente VARCHAR2(10) NOT NULL,
	valor NUMBER(3,2) NOT NULL,
	data_ticket DATE NOT NULL,
	CONSTRAINT ticket_pkey PRIMARY KEY (numero_ticket),
	CONSTRAINT ticket_fkey1 FOREIGN KEY (cod_visitante) REFERENCES Visitante (cod_visitante),
	CONSTRAINT ticket_fkey2 FOREIGN KEY (cod_atendente) REFERENCES Atendente (cod_atendente)
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

-- Participa

-- Pertence
