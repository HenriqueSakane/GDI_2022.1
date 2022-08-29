-- Povoamento das tabelas

-- Pessoa
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('111.222.333-44', 'Henrique Sakane', to_date('02/02/2000', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('444.555.666-77', 'Daniel Victor', to_date('03/03/1993', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('777.888.999-99', 'Felipe Muniz', to_date('04/04/1994', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('123.456.789-00', 'Gustavo Gonçalves', to_date('05/05/1995', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('248.369.124-22', 'Igor Domingos', to_date('06/06/1996', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('111.111.111-11', 'Lukas Asael', to_date('07/07/1997', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('222.222.222-22', 'Matheus Marinho', to_date('08/08/1998', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('333.333.333-33', 'João Lucas', to_date('09/09/1999', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('444.444.444-44', 'Miguel Ferreira', to_date('10/10/2000', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('555.555.555-55', 'José Gomes', to_date('03/08/1983', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('666.666.666-66', 'Bruno Lima', to_date('04/07/1997', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('777.777.777-77', 'Gilberto Diniz', to_date('05/12/1979', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('888.888.888-88', 'Vanessa Lorrany', to_date('06/11/1966', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('999.999.999-99', 'Letícia Araujo', to_date('30/10/1995', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('101.101.101-10', 'Elena Macedo', to_date('15/05/1998', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('202.202.202-20', 'Gabriela Santos', to_date('13/03/1983', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('303.303.303-30', 'Luana Silva', to_date('29/09/1999', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('404.404.404-40', 'Renata Matos', to_date('17/09/1980', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('505.505.505-55', 'Marta Guerra', to_date('24/01/1952', 'dd/mm/yy'));
INSERT INTO Pessoa (cpf, nome, data_nascimento) VALUES ('606.606.606-60', 'Juliana Ferrari', to_date('01/04/1973', 'dd/mm/yy'));

-- Telefone

-- Endereco
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

-- Funcionario

INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('777.888.999-99', 'A832247', 'Atendente_1', 'A832247');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('666.666.666-66', 'A328373', 'Atendente_2', 'A832247');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('333.333.333-33', 'A012639', 'Atendente_3', 'A832247');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('202.202.202-20', 'A435542', 'Atendente_4', 'A832247');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('999.999.999-99', 'B645483', 'Biologo_1', 'B645483');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('101.101.101-10', 'B757642', 'Biologo_2', 'B645483');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('303.303.303-30', 'B856874', 'Biologo_3', 'B645483');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('404.404.404-40', 'Z901623', 'Zelador_1', 'Z901623');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('505.505.505-55', 'Z128934', 'Zelador_2', 'Z901623');
INSERT INTO Funcionario (cpf_funcionario, cod_funcionario, cargo, cod_supervisor) VALUES ('606.606.606-60', 'Z230671', 'Zelador_3', 'Z901623');

-- Cargo

-- Dependente

-- Biologo

-- Atendente

INSERT INTO Atendente (cpf_atendente, cod_atendente) VALUES ('777.888.999-99', 01183);
INSERT INTO Atendente (cpf_atendente, cod_atendente) VALUES ('666.666.666-66', 17345);
INSERT INTO Atendente (cpf_atendente, cod_atendente) VALUES ('333.333.333-33', 13346);
INSERT INTO Atendente (cpf_atendente, cod_atendente) VALUES ('202.202.202-20', 02701);

-- Zelador

-- Visitante

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

INSERT INTO Limpa (cod_zelador, cod_jaula, data_limpeza) VALUES (00000, 000, to_date('25/08/2022', 'dd/mm/yy'))

-- Ticket

-- Compra_visitante_ticket
INSERT INTO Compra_visitante_ticket ('1111111111');
INSERT INTO Compra_visitante_ticket ('2222222222');
INSERT INTO Compra_visitante_ticket ('3333333333');
INSERT INTO Compra_visitante_ticket ('4444444444');
INSERT INTO Compra_visitante_ticket ('5555555555');

-- Promocao

-- Participa

-- Pertence
