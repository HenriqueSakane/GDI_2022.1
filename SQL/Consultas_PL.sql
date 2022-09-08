-- CONSULTAS PL

-- USO DE RECORD (6)

-- USO DE ESTRUTURA DE DADOS DO TIPO TABLE (7)

-- BLOCO ANÔNIMO (1)

-- CREATE PROCEDURE (2)
-- DADO UM CPF, VERIFICA SE ESSA PESSOA POSSUI UMA CARTEIRA DE ESTUDANTE
CREATE OR REPLACE PROCEDURE VERIFICA_CARTEIRA_VISITANTE (p_cpf_visitante Pessoa.cpf%TYPE) IS
    V_CT_VISITANTE    Visitante.carteira_de_estudante%TYPE;
BEGIN

    SELECT V.carteira_de_estudante
    INTO V_CT_VISITANTE
    FROM Visitante V
    WHERE p_cpf_visitante = V.cpf_visitante;

    IF V_CT_VISITANTE IS NULL THEN
        DBMS_OUTPUT.put_line('Esse visitante nao possui carteira de estudante registrada');
    ELSE 
        DBMS_OUTPUT.put_line(CONCAT('Esse visitante possui carteira de estudante de numero ', V_CT_VISITANTE));
    END IF;
    
END VERIFICA_CARTEIRA_VISITANTE;
-- CASO TESTE:
--BEGIN
--   VERIFICA_CARTEIRA_VISITANTE (p_cpf_visitante => '111.222.333-44');
--END;


-- CREATE FUNCTION (3)

-- %TYPE (4)

-- %ROWTYPE (5)

-- IF ELSIF (6)

-- CASE WHEN (7)

-- LOOP EXIT WHEN (1)

-- WHILE LOOP (2)

-- FOR IN LOOP (3)

-- SELECT … INTO (4)

-- CURSOR (OPEN, FETCH e CLOSE) (5)

-- EXCEPTION WHEN (6)

-- USO DE PAR METROS (IN, OUT ou IN OUT) (7)

-- CREATE OR REPLACE PACKAGE (1)

-- CREATE OR REPLACE PACKAGE BODY (2)
-- Pacote com a procedure feita anteriormente. O ideal é adicionar mais funcionalidades a esse pacote.
CREATE OR REPLACE PACKAGE pkg_procedural AS
    
    PROCEDURE VERIFICA_CARTEIRA_VISITANTE (p_cpf_visitante Pessoa.cpf%TYPE);
    -- adicionar mais funcionalidades
END pkg_procedural;


CREATE OR REPLACE PACKAGE BODY pkg_procedural AS

 PROCEDURE VERIFICA_CARTEIRA_VISITANTE (p_cpf_visitante Pessoa.cpf%TYPE) IS
    V_CT_VISITANTE    Visitante.carteira_de_estudante%TYPE;
    BEGIN

        SELECT V.carteira_de_estudante
        INTO V_CT_VISITANTE
        FROM Visitante V
        WHERE p_cpf_visitante = V.cpf_visitante;

        IF V_CT_VISITANTE IS NULL THEN
            DBMS_OUTPUT.put_line('Esse visitante nao possui carteira de estudante registrada');
        ELSE 
            DBMS_OUTPUT.put_line(CONCAT('Esse visitante possui carteira de estudante de numero ', V_CT_VISITANTE));
        END IF;
    
    END VERIFICA_CARTEIRA_VISITANTE;
    -- adicionar implementações das novas funcionalidades que forem adicionadas.
END pkg_procedural;

-- CASO TESTE:
-- BEGIN
--     pkg_procedural.VERIFICA_CARTEIRA_VISITANTE (p_cpf_visitante => '111.222.333-44');
-- END;


-- CREATE OR REPLACE TRIGGER (COMANDO) (3)

-- CREATE OR REPLACE TRIGGER (LINHA) (4)
