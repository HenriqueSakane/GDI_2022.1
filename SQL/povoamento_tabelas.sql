-- Povoamento das tabelas

-- Pessoa (1)
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('111.222.333-44', 'Henrique Sakane', to_date('02/02/2000', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('444.555.666-77', 'Daniel Victor', to_date('03/03/1993', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('777.888.999-99', 'Felipe Muniz', to_date('04/04/1994', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('123.456.789-00', 'Gustavo Gonçalves', to_date('05/05/1995', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('248.369.124-22', 'Igor Domingos', to_date('06/06/1996', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('111.111.111-11', 'Lukas Asael', to_date('07/07/1997', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('222.222.222-22', 'Matheus Marinho', to_date('08/08/1998', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('333.333.333-33', 'João Lucas', to_date('09/09/1999', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('444.444.444-44', 'Miguel Ferreira', to_date('10/10/2000', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('555.555.555-55', 'José Gomes', to_date('03/08/1983', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('666.666.666-66', 'Bruno Lima', to_date('04/07/1997', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('777.777.777-77', 'Gilberto Diniz', to_date('05/12/1979', 'dd/mm/yy')); -- Zelador
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('888.888.888-88', 'Vanessa Lorrany', to_date('06/11/1966', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('999.999.999-99', 'Letícia Araujo', to_date('30/10/1995', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('101.101.101-10', 'Elena Macedo', to_date('15/05/1998', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('202.202.202-20', 'Gabriela Santos', to_date('13/03/1983', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('303.303.303-30', 'Luana Silva', to_date('29/09/1999', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('404.404.404-40', 'Renata Matos', to_date('17/09/1980', 'dd/mm/yy')); -- Zelador
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('505.505.505-55', 'Marta Guerra', to_date('24/01/1952', 'dd/mm/yy')); -- Zelador
INSERT INTO Pessoa (cpf,nome,data_nascimento) VALUES ('606.606.606-60', 'Juliana Ferrari', to_date('01/04/1973', 'dd/mm/yy')); -- Zelador

-- Telefone (2)
-- 1
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('111.222.333-44', '987776666');
-- 2
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('444.555.666-77', '978886666');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('444.555.666-77', '32221111');
-- 3
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('777.888.999-99', '998887777');
-- 4
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('123.456.789-00', '994445555');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('123.456.789-00', '34440000');
-- 5
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('248.369.124-22', '989995555');
-- 6
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('111.111.111-11', '987773333');
-- 7
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('222.222.222-22', '997774444');
-- 8
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('333.333.333-33', '996662222');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('333.333.333-33', '987550101');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('333.333.333-33', '34110000');
-- 9
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('444.444.444-44', '993338888');
-- 10
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('555.555.555-55', '981110000');
-- 11
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('666.666.666-66', '988885555');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('666.666.666-66', '34444444');
-- 12
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('777.777.777-77', '999990000');
-- 13
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('888.888.888-88', '991911919');
-- 14
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('999.999.999-99', '991919191');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('999.999.999-99', '32322323');
-- 15
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('101.101.101-10', '999009900');
-- 16
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('202.202.202-20', '997777777');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('202.202.202-20', '32323232');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('202.202.202-20', '998988989');
-- 17
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('303.303.303-30', '998989898');
-- 18
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('404.404.404-40', '997977979');
-- 19
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('505.505.505-55', '997979797');
-- 20
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('606.606.606-60', '993336666');
INSERT INTO Telefone (cpf_pessoa,numero_telefone) VALUES ('606.606.606-60', '32326464');

-- Endereco (3)
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('111.222.333-44', '10000-100', 'Rua Anacleto de Souza', '80', 'Casa Forte');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('444.555.666-77', '20000-200', 'Avenida dos Engenhos', '56', 'Parnamirim');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('777.888.999-99', '30000-300', 'Rua das Monocotiledoneas', '335', 'Coqueiral');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('123.456.789-00', '40000-400', 'Avenida do Milho', '28', 'Coqueiral');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('248.369.124-22', '50000-500', 'Rua Dom Casmurro', '720', 'Setubal');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('111.111.111-11', '60000-600', 'Rua Machado', '98', 'Boa Viagem');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('222.222.222-22', '70000-700', 'Avenida Ayrton Senna', '41', 'Piedade');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('333.333.333-33', '80000-800', 'Rua dos Lanternas', '1901', 'Aflitos');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('444.444.444-44', '90000-900', 'Avenida da Quarta', '1914', 'Arruda');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('555.555.555-55', '72301-123', 'Avenida do Leão', '1905', 'Ilha do Retiro');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('666.666.666-66', '98000-340', 'Avenida Brasil', '12', 'Afogados');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('777.777.777-77', '85473-450', 'Rua Benfica', '110', 'Derby');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('888.888.888-88', '44444-100', 'Estrada da Batalha', '300', 'Prazeres');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('999.999.999-99', '87878-380', 'Avenida Pelé', '10', 'Campo Grande');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('101.101.101-10', '85745-785', 'Rua Platão', '108', 'Casa Amarela');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('202.202.202-20', '94835-432', 'Avenida Dr. Hans Chucrute', '128', 'Madalena');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('303.303.303-30', '35398-333', 'Estrada da Glória', '33', );
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('404.404.404-40', '99999-999', 'Rua Zeca Urubu', '157', 'Casa Forte');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('505.505.505-55', '19872-008', 'Avenida Luiz Gonzaga', '35', 'Cordeiro');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('606.606.606-60', '20081-987', 'Avenida da Paz', '22', 'Várzea');

-- Funcionario (4)
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('777.888.999-99', 'Atendente_1', '777.888.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('666.666.666-66', 'Atendente_2', '777.888.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('333.333.333-33', 'Atendente_3', '777.888.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('202.202.202-20', 'Atendente_4', '777.888.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('999.999.999-99', 'Biologo_1', '999.999.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('101.101.101-10', 'Biologo_2', '999.999.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('303.303.303-30', 'Biologo_3', '999.999.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('888.888.888-88', 'Biologo_4', '999.999.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('404.404.404-40', 'Zelador_1', '404.404.404-40');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('505.505.505-55', 'Zelador_2', '404.404.404-40');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('606.606.606-60', 'Zelador_3', '404.404.404-40');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('777.777.777-77', 'Zelador_4', '404.404.404-40')

-- Dependente

-- Biologo

-- Atendente

INSERT INTO Atendente (cpf_atendente) VALUES ('777.888.999-99');
INSERT INTO Atendente (cpf_atendente) VALUES ('666.666.666-66');
INSERT INTO Atendente (cpf_atendente) VALUES ('333.333.333-33');
INSERT INTO Atendente (cpf_atendente) VALUES ('202.202.202-20');

-- Zelador
INSERT INTO Zelador (cpf_zelador) VALUES ('404.404.404-40');
INSERT INTO Zelador (cpf_zelador) VALUES ('606.606.606-60');
INSERT INTO Zelador (cpf_zelador) VALUES ('505.505.505-55');
INSERT INTO Zelador (cpf_zelador) VALUES ('777.777.777-77');


-- Visitante
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('111.222.333-44', to_date('29/08/2021', 'dd/mm/yy'), '11122233344');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('444.555.666-77', to_date('01/04/2019', 'dd/mm/yy'), '4455566677');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('123.456.789-00', to_date('12/02/2020', 'dd/mm/yy'), '12345678900');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('248.369.124-22', to_date('20/01/2022', 'dd/mm/yy'), '24836912422');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('111.111.111-11', to_date('29/06/2020', 'dd/mm/yy'), '11111111111');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('222.222.222-22', to_date('22/07/2022', 'dd/mm/yy'), '22222222222');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('444.444.444-44', to_date('25/03/2021', 'dd/mm/yy'), '44444444444');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('555.555.555-55', to_date('12/10/2021', 'dd/mm/yy'), '55555555555');

-- Jaula
INSERT INTO Jaula (cod_jaula, capacidade) VALUES (1, 5);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES (2, 10);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES (3, 6);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES (4, 20);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES (5, 15);

-- Departamento

-- Animais

-- Cuida

-- Limpa
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 1, to_date('25/08/2022', 'dd/mm/yy'))
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 2, to_date('23/08/2022', 'dd/mm/yy'))
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 3, to_date('20/08/2022', 'dd/mm/yy'))
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 4, to_date('11/08/2022', 'dd/mm/yy'))
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 5, to_date('31/07/2022', 'dd/mm/yy'))


-- Ticket
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '111.222.333-44', '777.888.999-99', 25.00, to_date('29/08/2021', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '444.555.666-77', '777.888.999-99', 25.00, to_date('01/04/2019', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '123.456.789-00', '666.666.666-66', 25.00, to_date('12/02/2020', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '248.369.124-22', '666.666.666-66', 25.00, to_date('20/01/2022', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '111.111.111-11', '333.333.333-33', 25.00, to_date('29/06/2020', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '222.222.222-22', '333.333.333-33', 25.00, to_date('22/07/2022', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '444.444.444-44', '202.202.202-20', 25.00, to_date('25/03/2021', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_visitante, cpf_atendente, valor, data_ticket)
VALUES (numero_ticket.NEXTVAL, '555.555.555-55', '202.202.202-20', 25.00, to_date('12/10/2021', 'dd/mm/yy'));

-- Compra_visitante_ticket

--INSERT INTO Compra_visitante_ticket ('1111111111');
--INSERT INTO Compra_visitante_ticket ('2222222222');
--INSERT INTO Compra_visitante_ticket ('3333333333');
--INSERT INTO Compra_visitante_ticket ('4444444444');
--INSERT INTO Compra_visitante_ticket ('5555555555');

-- Promocao
INSERT INTO Promocao (cod_promocao, desconto, data_termino) VALUES (48957, 50, to_date('30/11/2021', 'dd/mm/yy'));
INSERT INTO Promocao (cod_promocao, desconto, data_termino) VALUES (72841, 25, to_date('31/08/2022', 'dd/mm/yy'));
INSERT INTO Promocao (cod_promocao, desconto, data_termino) VALUES (65037, 20, to_date('30/03/2022', 'dd/mm/yy'));

-- Participa

-- Pertence
