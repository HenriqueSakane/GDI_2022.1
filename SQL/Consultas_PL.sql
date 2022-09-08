-- CONSULTAS PL

-- USO DE RECORD (6)
DECLARE 
   type animal_detalhes is record 
      (nome varchar(50), 
      especie varchar(50), 
      pesoKG Number, 
      tamanho Number); 
   animal1 animal_detalhes; 
   animal2 animal_detalhes; 
BEGIN 
   --  animal1 animal_detalhes;  
   animal1.nome  := 'Castor'; 
   animal1.especie := 'Roedor';  
   animal1.pesoKG := 20 ; 
   animal1.tamanho := 74 ;  
   -- animal2 animal_detalhes; 
   animal2.nome := 'Ornitorrinco'; 
   animal2.especie := 'Mamifero'; 
   animal2.pesokG := 1; 
   animal2.tamanho := 50;  
  
  -- Print animal1 record 
   dbms_output.put_line('animal1 nome : '|| animal1.nome); 
   dbms_output.put_line('animal1 especie : '|| animal1.especie); 
   dbms_output.put_line('animal1 pesoKG : '|| animal1.pesoKG); 
   dbms_output.put_line('animal1 tamanho : ' || animal1.tamanho); 
   
   -- Print animal2 record 
   dbms_output.put_line('animal2 nome : '|| animal2.nome); 
   dbms_output.put_line('animal2 especie : '|| animal2.especie); 
   dbms_output.put_line('animal2 pesokG : '|| animal2.pesokG); 
   dbms_output.put_line('animal2 tamanho : '|| animal2.tamanho); 
END; 

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
