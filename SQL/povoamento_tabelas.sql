-- Povoamento das tabelas

-- Pessoa (1)
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('111.222.333-44', 'Henrique Sakane', to_date('02/02/2000', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('444.555.666-77', 'Daniel Victor', to_date('03/03/1993', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('777.888.999-99', 'Felipe Muniz', to_date('04/04/1994', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('123.456.789-00', 'Gustavo Gonçalves', to_date('05/05/1995', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('248.369.124-22', 'Igor Domingos', to_date('06/06/1996', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('111.111.111-11', 'Lukas Asael', to_date('07/07/1997', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('222.222.222-22', 'Matheus Marinho', to_date('08/08/1998', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('333.333.333-33', 'João Lucas', to_date('09/09/1999', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('444.444.444-44', 'Miguel Ferreira', to_date('10/10/2000', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('555.555.555-55', 'José Gomes', to_date('03/08/1983', 'dd/mm/yy')); -- Visitante
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('666.666.666-66', 'Bruno Lima', to_date('04/07/1997', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('777.777.777-77', 'Gilberto Diniz', to_date('05/12/1979', 'dd/mm/yy')); -- Zelador
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('888.888.888-88', 'Vanessa Lorrany', to_date('06/11/1966', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('999.999.999-99', 'Letícia Araujo', to_date('30/10/1995', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('101.101.101-10', 'Elena Macedo', to_date('15/05/1998', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('202.202.202-20', 'Gabriela Santos', to_date('13/03/1983', 'dd/mm/yy')); -- Atendente
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('303.303.303-30', 'Luana Silva', to_date('29/09/1999', 'dd/mm/yy')); -- Biologo
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('404.404.404-40', 'Renata Matos', to_date('17/09/1980', 'dd/mm/yy')); -- Zelador
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('505.505.505-55', 'Marta Guerra', to_date('24/01/1952', 'dd/mm/yy')); -- Zelador
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('606.606.606-60', 'Juliana Ferrari', to_date('01/04/1973', 'dd/mm/yy')); -- Zelador

-- Telefone OK(?)
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

-- Endereco OK
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
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('303.303.303-30', '35398-333', 'Estrada da Glória', '33', 'Prego');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('404.404.404-40', '99999-999', 'Rua Zeca Urubu', '157', 'Casa Forte');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('505.505.505-55', '19872-008', 'Avenida Luiz Gonzaga', '35', 'Cordeiro');
INSERT INTO Endereco (cpf_pessoa, cep, rua, numero, bairro) VALUES ('606.606.606-60', '20081-987', 'Avenida da Paz', '22', 'Várzea');

-- Funcionario OK
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('777.888.999-99', 'Atendente', NULL);
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('666.666.666-66', 'Atendente', '777.888.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('333.333.333-33', 'Atendente', '777.888.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('202.202.202-20', 'Atendente', '777.888.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('999.999.999-99', 'Biologo', NULL);
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('101.101.101-10', 'Biologo', '999.999.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('303.303.303-30', 'Biologo', '999.999.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('888.888.888-88', 'Biologo', '999.999.999-99');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('404.404.404-40', 'Zelador', NULL);
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('505.505.505-55', 'Zelador', '404.404.404-40');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('606.606.606-60', 'Zelador', '404.404.404-40');
INSERT INTO Funcionario (cpf_funcionario, cargo, cpf_supervisor) VALUES ('777.777.777-77', 'Zelador', '404.404.404-40');

-- Cargo OK
INSERT INTO Cargo (cargo_funcionario, salario) VALUES ('Atendente', 2000.00);
INSERT INTO Cargo (cargo_funcionario, salario) VALUES ('Biologo', 3100.00);
INSERT INTO Cargo (cargo_funcionario, salario) VALUES ('Zelador', 2100.00);

-- Dependente OK
INSERT INTO Dependente (cpf_funcionario, nome_dependente, grau_de_parentesco, data_nasc) VALUES ('777.777.777-77', 'Julia Diniz', 'filha', to_date('20/08/2011', 'dd/mm/yy'));
INSERT INTO Dependente (cpf_funcionario, nome_dependente, grau_de_parentesco, data_nasc) VALUES ('888.888.888-88', 'Laura Lorrany', 'filha', to_date('03/12/2004', 'dd/mm/yy'));
INSERT INTO Dependente (cpf_funcionario, nome_dependente, grau_de_parentesco, data_nasc) VALUES ('202.202.202-20', 'Nilton Santos', 'filho', to_date('27/10/2013', 'dd/mm/yy'));
INSERT INTO Dependente (cpf_funcionario, nome_dependente, grau_de_parentesco, data_nasc) VALUES ('404.404.404-40', 'Alex Matos', 'filho', to_date('13/03/2010', 'dd/mm/yy'));
INSERT INTO Dependente (cpf_funcionario, nome_dependente, grau_de_parentesco, data_nasc) VALUES ('505.505.505-55', 'José Guerra', 'neto', to_date('02/04/2015', 'dd/mm/yy'));
INSERT INTO Dependente (cpf_funcionario, nome_dependente, grau_de_parentesco, data_nasc) VALUES ('606.606.606-60', 'Enzo Ferrari', 'filho', to_date('10/01/2007', 'dd/mm/yy'));

-- Biologo OK
INSERT INTO Biologo (cpf_funcionario, especializacao) VALUES ('999.999.999-99', 'Mamíferos');
INSERT INTO Biologo (cpf_funcionario, especializacao) VALUES ('101.101.101-10', 'Répteis');
INSERT INTO Biologo (cpf_funcionario, especializacao) VALUES ('303.303.303-30', 'Aves');
INSERT INTO Biologo (cpf_funcionario, especializacao) VALUES ('888.888.888-88', 'Mamíferos');

-- Atendente OK
INSERT INTO Atendente (cpf_atendente, guiche) VALUES ('777.888.999-99', 1);
INSERT INTO Atendente (cpf_atendente, guiche) VALUES ('666.666.666-66', 2);
INSERT INTO Atendente (cpf_atendente, guiche) VALUES ('333.333.333-33', 3);
INSERT INTO Atendente (cpf_atendente, guiche) VALUES ('202.202.202-20', 4);

-- Zelador OK
INSERT INTO Zelador (cpf_zelador, numero_de_jaulas_a_limpar) VALUES ('404.404.404-40', 11);
INSERT INTO Zelador (cpf_zelador, numero_de_jaulas_a_limpar) VALUES ('606.606.606-60', 10);
INSERT INTO Zelador (cpf_zelador, numero_de_jaulas_a_limpar) VALUES ('505.505.505-55', 10);
INSERT INTO Zelador (cpf_zelador, numero_de_jaulas_a_limpar) VALUES ('777.777.777-77', 8);

-- Visitante OK
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('111.222.333-44', to_date('29/08/2021', 'dd/mm/yy'), '11122233344');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('444.555.666-77', to_date('01/04/2019', 'dd/mm/yy'), NULL);
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('123.456.789-00', to_date('12/02/2020', 'dd/mm/yy'), NULL);
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('248.369.124-22', to_date('20/01/2022', 'dd/mm/yy'), '24836912422');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('111.111.111-11', to_date('29/06/2020', 'dd/mm/yy'), '11111111111');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('222.222.222-22', to_date('22/07/2022', 'dd/mm/yy'), '22222222222');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('444.444.444-44', to_date('25/03/2021', 'dd/mm/yy'), '44444444444');
INSERT INTO Visitante (cpf_visitante, data_cadastro, carteira_de_estudante) VALUES ('555.555.555-55', to_date('12/10/2021', 'dd/mm/yy'), NULL);

-- Jaula 
-- Jualas Felinos
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jf01', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jf02', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jf03', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jf04', 1);
-- Jaulas Primatas
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jp01', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jp02', 3);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jp03', 4);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jp04', 1);
-- Jaulas Roedores
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jr01', 2);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jr02', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jr03', 3);
-- Jaulas Serpentes
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Js01', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Js02', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Js03', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Js04', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Js05', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Js06', 1);
-- Jaula Jacaré
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jj00', 10);
-- Jaulas Lagartos
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jl01', 2);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jl02', 3);
-- Jaulas Tartarugas
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jt01', 5);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jt02', 3);
-- Jaulas Grandes Herbívoros
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jh01', 3);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jh02', 2);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jh03', 2);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jh04', 1);
-- Jaulas Marsupiais
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jm01', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jm02', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Jm03', 1);
-- Jaulas Aves
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja01', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja02', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja03', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja04', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja05', 1);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja06', 5);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja07', 3);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ja08', 4);
-- Jaulas Ursos
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ju01', 2);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ju02', 2);
INSERT INTO Jaula (cod_jaula, capacidade) VALUES ('Ju03', 2);

-- Departamento 
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D01', 'Felinos', 4); --z1 11
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D02', 'Primatas', 4);
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D03', 'Roedores', 3);
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D04', 'Serpentes', 5); --z2 10
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D05', 'Jacarés', 1); 
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D06', 'Largatos', 2);
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D07', 'Tartarugas', 2); 
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D08', 'Grandes Herbívoros', 4);--z3 10
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D09', 'Marsupiais', 3);
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D10', 'Aves', 8); --z4 8
INSERT INTO Departamento (nome_departamento, cod_departamento, quantidade_de_jaulas) VALUES ('D11', 'Ursos', 3);

-- ANIMAIS 
-- Felinos
INSERT INTO Animais (cod_animal, especie) VALUES ('An001', 'Leão');
INSERT INTO Animais (cod_animal, especie) VALUES ('An002', 'Onça');
INSERT INTO Animais (cod_animal, especie) VALUES ('An003', 'Tigre');
INSERT INTO Animais (cod_animal, especie) VALUES ('An004', 'Jaguatirica');
-- Primatas
INSERT INTO Animais (cod_animal, especie) VALUES ('An005', 'Gorila');
INSERT INTO Animais (cod_animal, especie) VALUES ('An006', 'Macaco-aranha');
INSERT INTO Animais (cod_animal, especie) VALUES ('An007', 'Macaco-aranha');
INSERT INTO Animais (cod_animal, especie) VALUES ('An008', 'Macaco-prego');
INSERT INTO Animais (cod_animal, especie) VALUES ('An009', 'Macaco-prego');
INSERT INTO Animais (cod_animal, especie) VALUES ('An010', 'Macaco-prego');
INSERT INTO Animais (cod_animal, especie) VALUES ('An011', 'Orangotango');
-- Roedores
INSERT INTO Animais (cod_animal, especie) VALUES ('An012', 'Castor');
INSERT INTO Animais (cod_animal, especie) VALUES ('An013', 'Castor');
INSERT INTO Animais (cod_animal, especie) VALUES ('An014', 'Porco-espinho');
INSERT INTO Animais (cod_animal, especie) VALUES ('An015', 'Capivara');
INSERT INTO Animais (cod_animal, especie) VALUES ('An016', 'Capivara');
INSERT INTO Animais (cod_animal, especie) VALUES ('An017', 'Capivara');
-- Serpentes
INSERT INTO Animais (cod_animal, especie) VALUES ('An018', 'Jibóia');
INSERT INTO Animais (cod_animal, especie) VALUES ('An019', 'Jararaca');
INSERT INTO Animais (cod_animal, especie) VALUES ('An020', 'Coral');
INSERT INTO Animais (cod_animal, especie) VALUES ('An021', 'Píton');
INSERT INTO Animais (cod_animal, especie) VALUES ('An022', 'Cascavel');
INSERT INTO Animais (cod_animal, especie) VALUES ('An023', 'Sucuri');
-- Jacarés
INSERT INTO Animais (cod_animal, especie) VALUES ('An024', 'Jacaré');
INSERT INTO Animais (cod_animal, especie) VALUES ('An025', 'Jacaré');
INSERT INTO Animais (cod_animal, especie) VALUES ('An026', 'Jacaré');
INSERT INTO Animais (cod_animal, especie) VALUES ('An027', 'Jacaré');
-- Lagartos
INSERT INTO Animais (cod_animal, especie) VALUES ('An028', 'Iguana');
INSERT INTO Animais (cod_animal, especie) VALUES ('An029', 'Camaleão');
INSERT INTO Animais (cod_animal, especie) VALUES ('An030', 'Camaleão');
-- Tartarugas
INSERT INTO Animais (cod_animal, especie) VALUES ('An031', 'Cágado');
INSERT INTO Animais (cod_animal, especie) VALUES ('An032', 'Cágado');
INSERT INTO Animais (cod_animal, especie) VALUES ('An033', 'Cágado');
INSERT INTO Animais (cod_animal, especie) VALUES ('An034', 'Jabuti');
INSERT INTO Animais (cod_animal, especie) VALUES ('An035', 'Jabuti');
-- Grandes Herbívoros
INSERT INTO Animais (cod_animal, especie) VALUES ('An036', 'Elefante');
INSERT INTO Animais (cod_animal, especie) VALUES ('An037', 'Elefante');
INSERT INTO Animais (cod_animal, especie) VALUES ('An038', 'Girafa');
INSERT INTO Animais (cod_animal, especie) VALUES ('An039', 'Girafa');
INSERT INTO Animais (cod_animal, especie) VALUES ('An040', 'Rinoceronte');
INSERT INTO Animais (cod_animal, especie) VALUES ('An041', 'Hipopótamo');
-- Marsupiais
INSERT INTO Animais (cod_animal, especie) VALUES ('An042', 'Canguru');
INSERT INTO Animais (cod_animal, especie) VALUES ('An043', 'Timbú');
INSERT INTO Animais (cod_animal, especie) VALUES ('An044', 'Diabo da Tasmânia');
-- Aves
INSERT INTO Animais (cod_animal, especie) VALUES ('An045', 'Harpia');
INSERT INTO Animais (cod_animal, especie) VALUES ('An046', 'Carcará');
INSERT INTO Animais (cod_animal, especie) VALUES ('An047', 'Falcão');
INSERT INTO Animais (cod_animal, especie) VALUES ('An048', 'Coruja');
INSERT INTO Animais (cod_animal, especie) VALUES ('An049', 'Tucano');
INSERT INTO Animais (cod_animal, especie) VALUES ('An050', 'Arara');
INSERT INTO Animais (cod_animal, especie) VALUES ('An051', 'Arara');
INSERT INTO Animais (cod_animal, especie) VALUES ('An052', 'Arara');
INSERT INTO Animais (cod_animal, especie) VALUES ('An053', 'Arara');
INSERT INTO Animais (cod_animal, especie) VALUES ('An054', 'Avestruz');
INSERT INTO Animais (cod_animal, especie) VALUES ('An055', 'Avestruz');
INSERT INTO Animais (cod_animal, especie) VALUES ('An056', 'Garça');
INSERT INTO Animais (cod_animal, especie) VALUES ('An057', 'Garça');
INSERT INTO Animais (cod_animal, especie) VALUES ('An058', 'Garça');
-- Ursos
INSERT INTO Animais (cod_animal, especie) VALUES ('An059', 'Urso Pardo');
INSERT INTO Animais (cod_animal, especie) VALUES ('An060', 'Urso Pardo');
INSERT INTO Animais (cod_animal, especie) VALUES ('An061', 'Urso Negro');
INSERT INTO Animais (cod_animal, especie) VALUES ('An062', 'Panda');

-- Cuida
--Mamíferos1
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An001', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An002', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An003', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An004', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An005', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An006', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An007', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An008', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An009', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An010', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An011', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An012', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An013', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An014', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An015', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An016', '999.999.999-99');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An017', '999.999.999-99');
--Répteis
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An018', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An019', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An020', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An021', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An022', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An023', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An024', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An025', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An026', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An027', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An028', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An029', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An030', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An031', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An032', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An033', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An034', '101.101.101-10');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An035', '101.101.101-10');
--Mamíferos2
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An036', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An037', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An038', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An039', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An040', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An041', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An042', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An043', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An044', '888.888.888-88');
--Aves
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An045', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An046', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An047', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An048', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An049', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An050', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An051', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An052', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An053', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An054', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An055', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An056', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An057', '303.303.303-30');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An058', '303.303.303-30');
--Mamíferos2
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An059', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An060', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An061', '888.888.888-88');
INSERT INTO Cuida (cod_animal, cpf_biologo) VALUES ('An062', '888.888.888-88');

-- Limpa
--z1
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jf01', to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jf02', to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jf03', to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jf04', to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jp01', to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jp02', to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jp03', to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jp04', to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jr01', to_date('23/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jr02', to_date('23/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('404.404.404-40', 'Jr03', to_date('23/08/2022', 'dd/mm/yy'));
--z2
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Js01', to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Js02', to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Js03', to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Js04', to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Js05', to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Jj01', to_date('21/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Jl01', to_date('21/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Jl02', to_date('21/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Jt01', to_date('22/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('606.606.606-60', 'Jt02', to_date('22/08/2022', 'dd/mm/yy'));
--z3
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Jh01', to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Jh02', to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Jh03', to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Jh04', to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Jm01', to_date('11/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Jm02', to_date('11/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Jm03', to_date('11/08/2022', 'dd/mm/yy'));
--z4
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja01', to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja02', to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja03', to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja04', to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja05', to_date('31/07/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja06', to_date('31/07/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja07', to_date('31/07/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('777.777.777-77', 'Ja08', to_date('31/07/2022', 'dd/mm/yy'));
--z3
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Ju01', to_date('12/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Ju02', to_date('12/08/2022', 'dd/mm/yy'));
INSERT INTO Limpa (cpf_zelador, cod_jaula, data_limpeza) VALUES ('505.505.505-55', 'Ju03', to_date('12/08/2022', 'dd/mm/yy'));

-- Ticket (Velor inteira = 50 / Meia (carteira_estudante) = 25) 
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (1, '777.888.999-99', 20.00, to_date('29/08/2022', 'dd/mm/yy')); -- Participa promo 20%
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (2, '777.888.999-99', 50.00, to_date('02/04/2022', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (3, '666.666.666-66', 25.00, to_date('12/05/2022', 'dd/mm/yy')); -- Participa promo 50%
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (4, '666.666.666-66', 25.00, to_date('20/01/2022', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (5, '333.333.333-33', 25.00, to_date('29/06/2022', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (6, '333.333.333-33', 20.00, to_date('22/07/2022', 'dd/mm/yy')); -- Participa promo 20%
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (7, '202.202.202-20', 25.00, to_date('25/03/2022', 'dd/mm/yy'));
INSERT INTO Ticket (numero_ticket, cpf_atendente, valor, data_ticket) VALUES (8, '202.202.202-20', 37.50, to_date('12/10/2022', 'dd/mm/yy')); -- Participa promo 25%

-- Promocao 
INSERT INTO Promocao (cod_promocao, desconto, data_inicio, data_termino) VALUES (48957, 50, to_date('01/05/2022', 'dd/mm/yy'), to_date('15/05/2022', 'dd/mm/yy'));
INSERT INTO Promocao (cod_promocao, desconto, data_inicio, data_termino) VALUES (72841, 25, to_date('12/10/2022', 'dd/mm/yy'), to_date('30/10/2022', 'dd/mm/yy'));
INSERT INTO Promocao (cod_promocao, desconto, data_inicio, data_termino) VALUES (65037, 20, to_date('01/07/2022', 'dd/mm/yy'), to_date('30/08/2022', 'dd/mm/yy'));

-- Compra
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (1, '111.222.333-44', nota_fiscal.NEXTVAL); 
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (2, '444.555.666-77', nota_fiscal.NEXTVAL); --Sem carteira
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (3, '123.456.789-00', nota_fiscal.NEXTVAL); --Sem carteira
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (4, '248.369.124-22', nota_fiscal.NEXTVAL);
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (5, '111.111.111-11', nota_fiscal.NEXTVAL);
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (6, '222.222.222-22', nota_fiscal.NEXTVAL);
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (7, '444.444.444-44', nota_fiscal.NEXTVAL);
INSERT INTO Compra (numero_ticket, cpf_visitante, nota_fiscal) VALUES (8, '555.555.555-55', nota_fiscal.NEXTVAL); --Sem carteira

-- Participa 
INSERT INTO Participa (cod_promocao, numero_ticket, cpf_visitante) VALUES (65037, 1, '111.222.333-44',); --20%
INSERT INTO Participa (cod_promocao, numero_ticket, cpf_visitante) VALUES (48957, 3, '123.456.789-00',); --50%
INSERT INTO Participa (cod_promocao, numero_ticket, cpf_visitante) VALUES (65037, 6, '222.222.222-22',); --20%
INSERT INTO Participa (cod_promocao, numero_ticket, cpf_visitante) VALUES (72841, 8, '555.555.555-55',); --25%

-- Pertence 
--Felinos
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An001', 'Jf01', to_date('10/03/2022', 'dd/mm/yy'), 'D01', to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An002', 'Jf02', to_date('10/03/2022', 'dd/mm/yy'), 'D01', to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An003', 'Jf03', to_date('10/03/2022', 'dd/mm/yy'), 'D01', to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An004', 'Jf04', to_date('10/03/2022', 'dd/mm/yy'), 'D01', to_date('25/08/2022', 'dd/mm/yy'));
--Primatas
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An005', 'Jp01', to_date('11/03/2022', 'dd/mm/yy'), 'D02', to_date('26/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An006', 'Jp02', to_date('11/03/2022', 'dd/mm/yy'), 'D02', to_date('26/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An007', 'Jp02', to_date('11/03/2022', 'dd/mm/yy'), 'D02', to_date('26/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An008', 'Jp03', to_date('11/03/2022', 'dd/mm/yy'), 'D02', to_date('26/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An009', 'Jp03', to_date('11/03/2022', 'dd/mm/yy'), 'D02', to_date('26/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An010', 'Jp03', to_date('11/03/2022', 'dd/mm/yy'), 'D02', to_date('26/08/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An011', 'Jp04', to_date('11/03/2022', 'dd/mm/yy'), 'D02', to_date('26/08/2022', 'dd/mm/yy'));
--Roedores
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An012', 'Jr01', to_date('12/03/2022', 'dd/mm/yy'), 'D03', to_date('27/09/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An013', 'Jr01', to_date('12/03/2022', 'dd/mm/yy'), 'D03', to_date('27/09/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An014', 'Jr02', to_date('12/03/2022', 'dd/mm/yy'), 'D03', to_date('27/09/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An015', 'Jr03', to_date('12/03/2022', 'dd/mm/yy'), 'D03', to_date('27/09/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An016', 'Jr03', to_date('12/03/2022', 'dd/mm/yy'), 'D03', to_date('27/09/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An017', 'Jr03', to_date('12/03/2022', 'dd/mm/yy'), 'D03', to_date('27/09/2022', 'dd/mm/yy'));
--Serpentes
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An018', 'Js01', to_date('13/03/2022', 'dd/mm/yy'), 'D04', to_date('28/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An019', 'Js02', to_date('13/03/2022', 'dd/mm/yy'), 'D04', to_date('28/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An020', 'Js03', to_date('13/03/2022', 'dd/mm/yy'), 'D04', to_date('28/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An021', 'Js04', to_date('13/03/2022', 'dd/mm/yy'), 'D04', to_date('28/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An022', 'Js05', to_date('13/03/2022', 'dd/mm/yy'), 'D04', to_date('28/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An023', 'Js06', to_date('13/03/2022', 'dd/mm/yy'), 'D04', to_date('28/10/2022', 'dd/mm/yy'));
--Jacaré
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An024', 'Jj01', to_date('14/03/2022', 'dd/mm/yy'), 'D05', to_date('29/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An025', 'Jj01', to_date('14/03/2022', 'dd/mm/yy'), 'D05', to_date('29/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An026', 'Jj01', to_date('14/03/2022', 'dd/mm/yy'), 'D05', to_date('29/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An027', 'Jj01', to_date('14/03/2022', 'dd/mm/yy'), 'D05', to_date('29/11/2022', 'dd/mm/yy'));
--Largatos
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An028', 'Jl01', to_date('15/03/2022', 'dd/mm/yy'), 'D06', to_date('30/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An029', 'Jl02', to_date('15/03/2022', 'dd/mm/yy'), 'D06', to_date('30/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An030', 'Jl02', to_date('15/03/2022', 'dd/mm/yy'), 'D06', to_date('30/11/2022', 'dd/mm/yy'));
--Tartarugas
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An031', 'Jt01', to_date('16/03/2022', 'dd/mm/yy'), 'D07', to_date('30/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An032', 'Jt01', to_date('16/03/2022', 'dd/mm/yy'), 'D07', to_date('30/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An033', 'Jt01', to_date('16/03/2022', 'dd/mm/yy'), 'D07', to_date('30/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An034', 'Jt02', to_date('16/03/2022', 'dd/mm/yy'), 'D07', to_date('30/11/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An035', 'Jt02', to_date('16/03/2022', 'dd/mm/yy'), 'D07', to_date('30/11/2022', 'dd/mm/yy'));
--Grandes Herbívoros
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An036', 'Jh01', to_date('17/03/2022', 'dd/mm/yy'), 'D08', to_date('22/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An037', 'Jh01', to_date('17/03/2022', 'dd/mm/yy'), 'D08', to_date('22/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An038', 'Jh02', to_date('17/03/2022', 'dd/mm/yy'), 'D08', to_date('22/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An039', 'Jh02', to_date('17/03/2022', 'dd/mm/yy'), 'D08', to_date('22/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An040', 'Jh03', to_date('17/03/2022', 'dd/mm/yy'), 'D08', to_date('22/10/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An041', 'Jh04', to_date('17/03/2022', 'dd/mm/yy'), 'D08', to_date('22/10/2022', 'dd/mm/yy'));
--Marsupiais
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An042', 'Jm01', to_date('18/03/2022', 'dd/mm/yy'), 'D09', to_date('23/09/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An043', 'Jm02', to_date('18/03/2022', 'dd/mm/yy'), 'D09', to_date('23/09/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An044', 'Jm03', to_date('18/03/2022', 'dd/mm/yy'), 'D09', to_date('23/09/2022', 'dd/mm/yy'));
--Aves
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An045', 'Ja01', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An046', 'Ja02', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An047', 'Ja03', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An048', 'Ja04', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An049', 'Ja05', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An050', 'Ja06', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An051', 'Ja06', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An052', 'Ja06', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An053', 'Ja06', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An054', 'Ja07', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An055', 'Ja07', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An056', 'Ja07', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An057', 'Ja07', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An058', 'Ja07', to_date('19/03/2022', 'dd/mm/yy'), 'D10', to_date('05/12/2022', 'dd/mm/yy'));
--Ursos
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An059', 'Ju01', to_date('20/03/2022', 'dd/mm/yy'), 'D11', to_date('15/01/2023', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An060', 'Ju01', to_date('20/03/2022', 'dd/mm/yy'), 'D11', to_date('15/01/2023', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An061', 'Ju02', to_date('20/03/2022', 'dd/mm/yy'), 'D11', to_date('15/01/2023', 'dd/mm/yy'));
INSERT INTO Pertence (animais, jaula, data_entrada, departamento, data_saida) VALUES ('An062', 'Ju03', to_date('20/03/2022', 'dd/mm/yy'), 'D11', to_date('15/01/2023', 'dd/mm/yy'));
