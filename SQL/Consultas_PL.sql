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

-- BLOCO ANÔNIMO (1) // USO DE ESTRUTURA DE DADOS DO TIPO TABLE (7) // FOR IN LOOP (3)
-- Lista os animais do Zoo
DECLARE
	TYPE especie_animal IS TABLE OF Animais.especie%TYPE
	INDEX BY BINARY_INTEGER;

	t_especies especie_animal;
	i BINARY_INTEGER;
BEGIN   
    i := 1;
    FOR ani IN (SELECT especie FROM Animais) LOOP
        t_especies(i) := ani.especie;
        i := i + 1;
    END LOOP;
    FOR x IN 1..i-1 LOOP
        dbms_output.put_line(t_especies(x));
    END LOOP;
END;


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
    
    EXCEPTION 
            WHEN no_data_found THEN 
                dbms_output.put_line('Não existe visitante com esse cpf!');
    
END VERIFICA_CARTEIRA_VISITANTE;
-- CASO TESTE:
--BEGIN
--   VERIFICA_CARTEIRA_VISITANTE (p_cpf_visitante => '111.222.333-44');
--END;


-- CREATE FUNCTION (3)
CREATE OR REPLACE FUNCTION num_supervisionados (funcionario_cpf_v Funcionario.cpf_funcionario%TYPE)
    RETURN NUMBER IS
        quantidade NUMBER;
    BEGIN
        SELECT COUNT(*) INTO quantidade
        FROM Funcionario F
        WHERE F.cpf_supervisor = funcionario_cpf_v;
    END

-- %TYPE (4)
CREATE OR REPLACE PROCEDURE Zelado_det (
    det_cpf_zelador        IN Zelador.cpf_zelador%TYPE
)
IS
    z_limpar         Zelador.numero_de_jaulas_a_limpar%TYPE;
BEGIN
    SELECT numero_de_jaulas_a_limpar
        INTO z_limpar
        FROM Zelador WHERE cpf_zelador = det_cpf_zelador ;
    DBMS_OUTPUT.PUT_LINE('Limpar Quantas Celas : ' || z_limpar);
END;

-- %ROWTYPE (5)
SET SERVEROUTPUT ON
DECLARE
funcionario_record funcionario%rowtype;
vFuncionario_cpf funcionario.cpf_funcionario%type :='404.404.404-40';
BEGIN
SELECT * INTO funcionario_record
FROM funcionario
WHERE cpf_funcionario=vFuncionario_cpf;
DBMS_OUTPUT.PUT_LINE(funcionario_record.cargo);
END;
-- IF ELSIF (6)
DECLARE 
    salario_const NUMBER := 3200; 
BEGIN 
    IF(salario_const <= 2000) THEN 
        dbms_output.put_line('Funcionario é um Zelador'); 
    ELSIF ( salario_const > 2000 AND salario_const <= 2100) THEN
        dbms_output.put_line('Ele é um Atendente');
    ELSE 
        dbms_output.put_line('Ele é um Biologo');
    END IF;
END;

-- CASE WHEN (7) / LOOP EXIT WHEN (1)
-- Bloco que calcula e imprime a quantidade de funcionários de acordo com cada cargo.
DECLARE
	count_Biologo BINARY_INTEGER;
	count_Atendente BINARY_INTEGER;
	count_Zelador BINARY_INTEGER;
	c BINARY_INTEGER;
	q BINARY_INTEGER;
	cargo_func Funcionario.cargo%TYPE;

CURSOR c_cargo IS
	SELECT F.cargo
	FROM Funcionario F; 

BEGIN
	OPEN c_cargo;
	count_Biologo := 0;
	count_Atendente := 0;
	count_Zelador := 0;
	c := 0;
	SELECT COUNT(*) INTO q FROM Funcionario;
	WHILE c < q LOOP 
		FETCH c_cargo INTO cargo_func;
		EXIT WHEN c_cargo%NOTFOUND;
		CASE cargo_func
			WHEN 'Atendente' THEN
				count_Atendente := count_Atendente + 1;
			WHEN 'Biologo' THEN
				count_Biologo := count_Biologo + 1;
			WHEN 'Zelador' THEN
				count_Zelador := count_Zelador + 1;
		END CASE;
		c := c + 1;
	END LOOP;

	CLOSE c_cargo;
	dbms_output.put_line('Quantidade de Atendentes: ' || count_Atendente);
	dbms_output.put_line('Quantidade de Biologos: ' || count_Biologo);
	dbms_output.put_line('Quantidade de Zeladores: ' || count_Zelador);
END;

-- WHILE LOOP (2)
DECLARE
    V_COUNT INT := 1;
    V_MAX_CAPACIDADE INT;
    V_NUM_JAULAS INT;
    
BEGIN
    
    SELECT MAX(capacidade)
    INTO  V_MAX_CAPACIDADE
    FROM Jaula;
    
    WHILE V_COUNT <=  V_MAX_CAPACIDADE LOOP
        SELECT COUNT(*)
        INTO  V_NUM_JAULAS
        FROM Jaula
        WHERE capacidade = V_COUNT;
        
        IF V_NUM_JAULAS <> 0 THEN
            DBMS_OUTPUT.put_line(CONCAT(CONCAT('Existem ', V_NUM_JAULAS), CONCAT(' jaulas de capacidade ', V_COUNT)));
        ELSE
            DBMS_OUTPUT.put_line(CONCAT('Não há nenhuma jaula de capacidade ', V_COUNT));
        END IF;
        
        V_COUNT := V_COUNT + 1;
    END LOOP;
    
END;


-- SELECT … INTO (4)
DECLARE
  p_pessoa_nome Pessoa.nome%TYPE;
BEGIN
  SELECT nome INTO p_pessoa_nome
  FROM Pessoa
  WHERE cpf = '777.888.999-99';
  -- mostrar o nome da pessoa
  dbms_output.put_line( p_pessoa_nome );
END;


-- CURSOR (OPEN, FETCH e CLOSE) (5)

SET SERVEROUTPUT ON
DECLARE
    CURSOR funcionarios_cursor IS
    SELECT * 
    FROM funcionario;
    
    funcionario_record funcionarios_cursor%rowtype;
BEGIN
    OPEN funcionarios_cursor;
    
    LOOP
        FETCH funcionarios_cursor
        INTO funcionario_record;
        
        EXIT WHEN funcionarios_cursor%notfound;
        DBMS_OUTPUT.PUT_LINE(funcionario_record.cpf_funcionario);
    END LOOP;
    
    CLOSE funcionarios_cursor;

END;

-- EXCEPTION WHEN (6)
DECLARE 
   p_cpf Pessoa.cpf%type := '555.555.555-55'; 
   p_nome Pessoa.nome%type; 
BEGIN 
   SELECT  nome, cpf INTO   p_nome, p_cpf 
   FROM Pessoa 
   WHERE cpf = p_cpf;  
   DBMS_OUTPUT.PUT_LINE ('Nome: '||  p_nome); 
   DBMS_OUTPUT.PUT_LINE ('Cpf: ' || p_cpf); 

EXCEPTION 
   WHEN no_data_found THEN 
      dbms_output.put_line('Não existe essa pessoa'); 
   WHEN others THEN 
      dbms_output.put_line('Error!'); 
END;


-- USO DE PARÂMETROS (IN, OUT ou IN OUT) (7)
CREATE OR REPLACE PROCEDURE CadastroAnimal (An IN Animais%ROWTYPE) IS
BEGIN 
	INSERT INTO Animais (cod_animal, especie) VALUES (An.cod_animal, An.especie);
END;


-- CREATE OR REPLACE PACKAGE (1) // CREATE OR REPLACE PACKAGE BODY (2)

CREATE OR REPLACE PACKAGE pkg_visitante AS
    
    PROCEDURE VERIFICA_CARTEIRA (p_cpf_visitante Pessoa.cpf%TYPE);
    PROCEDURE VERIFICA_DATA_CADASTRO (p_cpf_visitante Pessoa.cpf%TYPE);
    
END pkg_visitante;

CREATE OR REPLACE PACKAGE BODY pkg_visitante AS

     PROCEDURE VERIFICA_CARTEIRA (p_cpf_visitante Pessoa.cpf%TYPE) IS
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
            
        EXCEPTION 
            WHEN no_data_found THEN 
                dbms_output.put_line('Não existe visitante com esse cpf!');
        
     END VERIFICA_CARTEIRA;
        ------------------------------------------------------------------------------------------
    PROCEDURE VERIFICA_DATA_CADASTRO (p_cpf_visitante Pessoa.cpf%TYPE) IS
        V_CD_VISITANTE    Visitante.data_cadastro%TYPE;
    BEGIN
    
        SELECT V.data_cadastro
        INTO V_CD_VISITANTE
        FROM Visitante V
        WHERE p_cpf_visitante = V.cpf_visitante;
    
    
        DBMS_OUTPUT.put_line(CONCAT('Esse visitante foi cadastrado em: ', V_CD_VISITANTE));
            
        EXCEPTION 
            WHEN no_data_found THEN 
                dbms_output.put_line('Não existe visitante com esse cpf!');
        
    END VERIFICA_DATA_CADASTRO;
    
END pkg_visitante;


-- CREATE OR REPLACE TRIGGER (COMANDO) (3)
CREATE OR REPLACE TRIGGER apagarJaula
    BEFORE DELETE ON Jaula
DECLARE
    jaula NUMBER;
BEGIN
    SELECT COUNT(*) INTO jaula
    FROM Jaula;
    IF jaula = 1 THEN

        RAISE_APPLICATION_ERROR(-21000, 'Única jaula na base. Não é possível excluir a última jaula.');
    
    END IF;
END apagarJaula;


-- CREATE OR REPLACE TRIGGER (LINHA) (4)
CREATE OR REPLACE TRIGGER alt_salario
BEFORE UPDATE ON Cargo
FOR EACH ROW
BEGIN
IF :NEW.salario < 0 THEN
RAISE_APPLICATION_ERROR(-20101, 'Slario não pode ser
menor que 0');
END IF;
END;
