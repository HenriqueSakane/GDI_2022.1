-- Consultas OR

/* CHECKLIST 

	SELECT REF 
	SELECT DEREF 
	CONSULTA À VARRAY 
	CONSULTA À NESTED TABLE

*/

-- ---------//---------  CONSULTAS "COMUNS" ----------//-----------

-- PEGAR ALGUNS DADOS DE TODOS OS VISITANTES:

SELECT nome as Nome, cpf as CPF, data_nascimento as Data_de_Nascimento, V.endereco.bairro as Bairro, V.endereco.rua as Rua, V.endereco.numero as Número
FROM tb_visitante V;  

-- PEGAR OS DADOS DE VISITANTES QUE POSSUEM CARTEIRA DE ESTUDANTE:
SELECT nome as Nome, cpf as CPF, data_nascimento as Data_de_Nascimento, carteira_de_estudante as Carteira_de_Estudante, V.endereco.bairro as Bairro, V.endereco.rua as Rua, V.endereco.numero as Número 
FROM tb_visitante V
WHERE carteira_de_estudante IS NOT NULL;

-- PEGAR OS DADOS DOS BIÓLOGOS ESPECIALIZADOS EM MAMÍFEROS:
SELECT nome as Nome, cpf as CPF, data_nascimento as Data_de_Nascimento, especializacao as Especialização 
FROM tb_biologo
WHERE especializacao = 'Mamíferos';

-- -----------//------------- SELECT REF ------------------//-------------


-- -----------//----------- SELECT DEREF----------------//---------------

	-- SELECIONAR OS ANIMAIS QUE FAZEM PARTE DO DEPARTAMENTO DE FELINOS E AS SUAS RESPECTIVAS JAULAS:
SELECT DEREF(P.animais).especie AS Animal, DEREF(P.jaula).cod_jaula AS Código_da_Jaula
FROM tb_pertence P
WHERE DEREF(P.departamento).nome_departamento = 'Felinos';

-- CONTAR A QUANTIDADE DE TICKETS VENDIDOS DE ACORDO COM O VALOR
SELECT valor, COUNT(*) FROM tb_ticket
GROUP BY (valor);

	-- SELECIONAR O NOME DO BIOLOGO QUE CUIDA DE ARARAS E QUANTAS ARARAS ESTÁ SOB SEU CUIDADO
SELECT DEREF(C.cpf_biologo).nome AS Biologo,
    COUNT(*)
FROM tb_cuida C
WHERE DEREF(C.cod_animal).especie = 'Arara'
GROUP BY DEREF(C.cpf_biologo).nome;

	-- SELECIONAR O NOME E ESPECIALIZAÇÃO DO SUPERVISOR DO BIOLOGO QUE CUIDA DE JACARÉS
		--DEREF ANINHADO
SELECT DISTINCT DEREF(DEREF(C.cpf_biologo).cpf_supervisor).nome AS Supervisor,
    DEREF(DEREF(C.cpf_biologo).cpf_supervisor).especializacao AS Especializacao_supervisor
FROM tb_cuida C
WHERE DEREF(C.cod_animal).especie = 'Jacaré';

-- ----------//--------- CONSULTA À VARRAY -------------//--------------

	-- PEGAR OS NÚMEROS DE TELEFONE DE TODOS OS ATENDENTES
SELECT nome, cpf, T.* FROM tb_atendente A, TABLE(A.telefones) T;

-- ---------//-------- CONSULTA À NESTED TABLE ----------//---------------

	-- SELECIONANDO DEPENDENTE DE UM BIÓLOGO:
SELECT * FROM TABLE (SELECT B.dependentes_de_biologos FROM tb_biologo B WHERE B.cpf = '888.888.888-88');

	-- SELECIONANDO DEPENDENTE DE UM ATENDENTE:
SELECT * FROM TABLE (SELECT A.dependentes_de_atendentes FROM tb_atendente A WHERE A.cpf = '202.202.202-20');

	-- SELECIONANDO DEPENDENTE DE UM ZELADOR:
SELECT * FROM TABLE (SELECT Z.dependentes_de_zeladores FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60');

-- ---------//--------- CONSULTAS COM AS FUNÇÕES --------------//------------


-- OVERRIDING MEMBER PROCEDURE detalhesPessoa 
DECLARE
    biologo tp_pessoa;
BEGIN
    SELECT VALUE(B) INTO biologo FROM tb_biologo B WHERE B.cpf = '888.888.888-88';
    biologo.detalhesPessoa();
END;

-- MAP MEMBER FUNCTION salarioAnual
SELECT C.salarioAnual() FROM tb_cargo C WHERE C.cargo_funcionario = 'Biologo';

-- MEMBER FUNCTION promocaoInfo
SELECT P.promocaoInfo() FROM tb_promocao P WHERE P.cod_promocao = 48957;

