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

CREATE TABLE pessoa(
    cpf VARCHAR2(15) NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf)
);

-- Atendente (cpf_atendente*, cod_atendente)
--  	cpf_atendente referencia Funcionário (cpf_funcionario)

CREATE TABLE atendente(
    cpf_atendente VARCHAR2(15) NOT NULL,
    cod_atendente NUMBER NOT NULL,
    CONSTRAINT atendente_pkey PRIMARY KEY (cpf_atendente, cod_atendente),
    CONSTRAINT atendente_cpf_fkey FOREIGN KEY (cpf_atendente) REFERENCES funcionario(cpf_funcionario)
);

--Limpa (cod_zelador*, cod_jaula*, data_limpeza)
--	cod_zelador referencia Zelador (cod_zelador)
--	cod_jaula referencia Jaula (cod_jaula)

CREATE TABLE limpa(
    cod_zelador NUMBER NOT NULL,
    cod_jaula NUMBER NOT NULL,
    data_limpeza DATE NOT NULL,
    CONSTRAINT limpa_pkey PRIMARY KEY (cod_zelador, cod_jaula),
    CONSTRAINT limpa_zelador_fkey FOREIGN KEY (cod_zelador) REFERENCES zelador(cod_zelador),
    CONSTRAINT limpa_jaula_fkey FOREIGN KEY (cod_jaula) REFERENCES jaula(cod_jaula)
);