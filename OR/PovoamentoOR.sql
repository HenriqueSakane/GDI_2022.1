-- Povoamento OR

-- Telefone (vai ser removido)

INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '111.222.333-44'), '987776666'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '444.555.666-77'), '978886666'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '444.555.666-77'), '32221111'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '777.888.999-99'), '998887777'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '123.456.789-00'), '994445555'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '123.456.789-00'), '34440000'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '248.369.124-22'), '989995555'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '111.111.111-11'), '987773333'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '222.222.222-22'), '997774444'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '333.333.333-33'), '996662222'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '333.333.333-33'), '987550101'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '333.333.333-33'), '34110000'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '444.444.444-44'), '993338888'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '555.555.555-55'), '981110000'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '666.666.666-66'), '988885555'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '666.666.666-66'), '34444444'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '777.777.777-77'), '999990000'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '888.888.888-88'), '991911919'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '999.999.999-99'), '991919191'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '999.999.999-99'), '32322323'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '101.101.101-10'), '999009900'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '202.202.202-20'), '997777777'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '202.202.202-20'), '32323232'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '202.202.202-20'), '998988989'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '303.303.303-30'), '998989898'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '404.404.404-40'), '997977979'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '505.505.505-55'), '997979797'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '606.606.606-60'), '993336666'));
INSERT INTO tb_telefone VALUES (tp_telefone((SELECT REF(f) FROM tb_pessoa f WHERE f.cpf = '606.606.606-60'), '32326464'));

-- Cargo

INSERT INTO tb_cargo VALUES (tp_cargo('Atendente', 2000.00));
INSERT INTO tb_cargo VALUES (tp_cargo('Biologo', 3100.00));
INSERT INTO tb_cargo VALUES (tp_cargo('Zelador', 2100.00));

-- Biologo 

INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('999.999.999-99', 'Letícia Araujo', to_date('30/10/1995', 'dd/mm/yy'), tp_endereco('87878-380', 'Avenida Pelé', '10', 'Campo Grande'), tp_arr_fones((tp_telefone('991919191')), (tp_telefone('32322323'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo')),
    'Mamíferos', null);
INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('101.101.101-10', 'Elena Macedo', to_date('15/05/1998', 'dd/mm/yy'), tp_endereco('85745-785', 'Rua Platão', '108', 'Casa Amarela'), tp_arr_fones((tp_telefone('999009900'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo')),
    'Répteis', SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99');
INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('303.303.303-30', 'Luana Silva', to_date('29/09/1999', 'dd/mm/yy'), tp_endereco('35398-333', 'Estrada da Glória', '33', 'Prego'), tp_arr_fones((tp_telefone('998989898'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo')),
    'Aves', SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99');
INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('888.888.888-88', 'Vanessa Lorrany', to_date('06/11/1966', 'dd/mm/yy'), tp_endereco('44444-100', 'Estrada da Batalha', '300', 'Prazeres'), tp_arr_fones((tp_telefone('991911919'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo')),
    'Mamíferos', SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99');

-- Zelador
INSERT INTO tb_zelador VALUES 
    (tp_zelador
    (tp_funcionario
    (tp_pessoa
    ('404.404.404-40', 'Renata Matos', to_date('17/09/1980', 'dd/mm/yy'), tp_endereco('20081-987', 'Avenida da Paz', '22', 'Várzea'), tp_arr_fones((tp_telefone('997977979'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Zelador')),
    11, null);
INSERT INTO tb_zelador VALUES 
    (tp_zelador
    (tp_funcionario
    (tp_pessoa
    ('606.606.606-60', 'Juliana Ferrari', to_date('01/04/1973', 'dd/mm/yy'), tp_endereco('99999-999', 'Rua Zeca Urubu', '157', 'Casa Forte'), tp_arr_fones((tp_telefone('993336666'), tp_telefone('32326464'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Zelador')),
    10, SELECT REF(z) FROM tb_zelador z WHERE z.cpf = '404.404.404-40');
INSERT INTO tb_zelador VALUES 
    (tp_zelador
    (tp_funcionario
    (tp_pessoa
    ('333.333.333-33', 'João Lucas', to_date('09/09/1999', 'dd/mm/yy'), tp_endereco('80000-800', 'Rua dos Lanternas', '1901', 'Aflitos'), tp_arr_fones((tp_telefone('996662222'), tp_telefone('987550101'), tp_telefone('34110000'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Zelador')),
    3, SELECT REF(z) FROM tb_zelador z WHERE z.cpf = '404.404.404-40');
INSERT INTO tb_zelador VALUES 
    (tp_zelador
    (tp_funcionario
    (tp_pessoa
    ('777.777.777-77', 'Gilberto Diniz', to_date('05/12/1979', 'dd/mm/yy'), tp_endereco('85473-450', 'Rua Benfica', '110', 'Derby'), tp_arr_fones((tp_telefone('999990000'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Zelador')),
    8, SELECT REF(z) FROM tb_zelador z WHERE z.cpf = '404.404.404-40');

-- Atendente
INSERT INTO tb_atendente VALUES 
    (tp_atendente
    (tp_funcionario
    (tp_pessoa
    ('777.888.999-99', 'Felipe Muniz', to_date('04/04/1994', 'dd/mm/yy'), tp_endereco('30000-300', 'Rua das Monocotiledoneas', '335', 'Coqueiral'), tp_arr_fones((tp_telefone('998887777'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Atendente')),
    1, null);
INSERT INTO tb_atendente VALUES 
    (tp_atendente
    (tp_funcionario
    (tp_pessoa
    ('666.666.666-66', 'Bruno Lima', to_date('04/07/1997', 'dd/mm/yy'), tp_endereco('98000-340', 'Avenida Brasil', '12', 'Afogados'), tp_arr_fones((tp_telefone('988885555'), tp_telefone('34444444'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Atendente')),
    2, SELECT REF(a) FROM tb_atendente a WHERE a.cpf = '777.888.999-99');
INSERT INTO tb_atendente VALUES 
    (tp_atendente
    (tp_funcionario
    (tp_pessoa
    ('333.333.333-33', 'João Lucas', to_date('09/09/1999', 'dd/mm/yy'), tp_endereco('80000-800', 'Rua dos Lanternas', '1901', 'Aflitos'), tp_arr_fones((tp_telefone('996662222'), tp_telefone('987550101'), tp_telefone('34110000'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Atendente')),
    3, SELECT REF(a) FROM tb_atendente a WHERE a.cpf = '777.888.999-99');
INSERT INTO tb_atendente VALUES 
    (tp_atendente
    (tp_funcionario
    (tp_pessoa
    ('202.202.202-20', 'Gabriela Santos', to_date('13/03/1983', 'dd/mm/yy'), tp_endereco('94835-432', 'Avenida Dr. Hans Chucrute', '128', 'Madalena'), tp_arr_fones((tp_telefone('997777777'), tp_telefone('32323232'), tp_telefone('998988989'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Atendente')),
    4, SELECT REF(a) FROM tb_atendente a WHERE a.cpf = '777.888.999-99');

-- Visitante
INSERT INTO tb_visitante VALUES (tp_visitante('111.222.333-44', 'Henrique Sakane', to_date('02/02/2000', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '10000-100'),
								 tp_telefone('987776666'), to_date('29/08/2021', 'dd/mm/yy'), '11122233344'));

INSERT INTO tb_visitante VALUES (tp_visitante('444.555.666-77', 'Daniel Victor', to_date('03/03/1993', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '20000-200'),
								 tp_telefone('978886666'), tp_telefone('32221111'),	to_date('01/04/2019', 'dd/mm/yy'), NULL));

INSERT INTO tb_visitante VALUES (tp_visitante('123.456.789-00', 'Gustavo Gonçalves', to_date('05/05/1995', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '40000-400'),
								 tp_telefone('994445555'), tp_telefone('34440000'), to_date('12/02/2020', 'dd/mm/yy'), NULL));

INSERT INTO tb_visitante VALUES (tp_visitante('248.369.124-22', 'Igor Domingos', to_date('06/06/1996', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '50000-500'),
								 tp_telefone('989995555'), to_date('20/01/2022', 'dd/mm/yy'), '24836912422'));

INSERT INTO tb_visitante VALUES (tp_visitante('111.111.111-11', 'Lukas Asael', to_date('07/07/1997', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '60000-600'),
								 tp_telefone('987773333'), to_date('29/06/2020', 'dd/mm/yy'), '11111111111'));

INSERT INTO tb_visitante VALUES (tp_visitante('222.222.222-22', 'Matheus Marinho', to_date('08/08/1998', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '70000-700'),
								 tp_telefone('997774444'), to_date('22/07/2022', 'dd/mm/yy'), '22222222222'));

INSERT INTO tb_visitante VALUES (tp_visitante('444.444.444-44', 'Miguel Ferreira', to_date('10/10/2000', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '90000-900'),
								 tp_telefone('993338888'), to_date('25/03/2021', 'dd/mm/yy'), '44444444444'));

INSERT INTO tb_visitante VALUES (tp_visitante('555.555.555-55', 'José Gomes', to_date('03/08/1983', 'dd/mm/yy'), (SELECT REF(C) FROM tb_endereco C WHERE C.cep = '72301-123'),
								 tp_telefone('981110000'), to_date('12/10/2021', 'dd/mm/yy'), NULL));

-- JAULA
INSERT INTO tb_jaula VALUES (tp_jaula('Jf01', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Jf02', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Jf03', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Jf04', 1));

INSERT INTO tb_jaula VALUES (tp_jaula('Jp01', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Jp02', 3));
INSERT INTO tb_jaula VALUES (tp_jaula('Jp03', 4));
INSERT INTO tb_jaula VALUES (tp_jaula('Jp04', 1));

INSERT INTO tb_jaula VALUES (tp_jaula('Jr01', 2));
INSERT INTO tb_jaula VALUES (tp_jaula('Jr02', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Jr03', 3));

INSERT INTO tb_jaula VALUES (tp_jaula('Js01', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Js02', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Js03', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Js04', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Js05', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Js06', 1));

INSERT INTO tb_jaula VALUES (tp_jaula('Jj01', 10));

INSERT INTO tb_jaula VALUES (tp_jaula('Jl01', 2));
INSERT INTO tb_jaula VALUES (tp_jaula('Jl02', 3));

INSERT INTO tb_jaula VALUES (tp_jaula('Jt01', 5));
INSERT INTO tb_jaula VALUES (tp_jaula('Jt02', 3));

INSERT INTO tb_jaula VALUES (tp_jaula('Jh01', 3));
INSERT INTO tb_jaula VALUES (tp_jaula('Jh02', 2));
INSERT INTO tb_jaula VALUES (tp_jaula('Jh03', 2));
INSERT INTO tb_jaula VALUES (tp_jaula('Jh04', 1));

INSERT INTO tb_jaula VALUES (tp_jaula('Jm01', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Jm02', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Jm03', 1));

INSERT INTO tb_jaula VALUES (tp_jaula('Ja01', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Ja02', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Ja03', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Ja04', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Ja05', 1));
INSERT INTO tb_jaula VALUES (tp_jaula('Ja06', 5));
INSERT INTO tb_jaula VALUES (tp_jaula('Ja07', 3));
INSERT INTO tb_jaula VALUES (tp_jaula('Ja08', 4));

INSERT INTO tb_jaula VALUES (tp_jaula('Ju01', 2));
INSERT INTO tb_jaula VALUES (tp_jaula('Ju02', 2));
INSERT INTO tp_jaula VALUES (tp_jaula('Ju03', 2));

-- Departamento 
INSERT INTO tb_departamento VALUES (tp_departamento('D01', 'Felinos', 4)); 
INSERT INTO tb_departamento VALUES (tp_departamento('D02', 'Primatas', 4));
INSERT INTO tb_departamento VALUES (tp_departamento('D03', 'Roedores', 3));
INSERT INTO tb_departamento VALUES (tp_departamento('D04', 'Serpentes', 5)); 
INSERT INTO tb_departamento VALUES (tp_departamento('D05', 'Jacarés', 1)); 
INSERT INTO tb_departamento VALUES (tp_departamento('D06', 'Largatos', 2));
INSERT INTO tb_departamento VALUES (tp_departamento('D07', 'Tartarugas', 2)); 
INSERT INTO tb_departamento VALUES (tp_departamento('D08', 'Grandes Herbívoros', 4));
INSERT INTO tb_departamento VALUES (tp_departamento('D09', 'Marsupiais', 3));
INSERT INTO tb_departamento VALUES (tp_departamento('D10', 'Aves', 8)); 
INSERT INTO tb_departamento VALUES (tp_departamento('D11', 'Ursos', 3));

-- Animais
INSERT INTO tb_animais VALUES (tp_animais('An001', 'Leão'));
INSERT INTO tb_animais VALUES (tp_animais('An002', 'Onça'));
INSERT INTO tb_animais VALUES (tp_animais('An003', 'Tigre'));
INSERT INTO tb_animais VALUES (tp_animais('An004', 'Jaguatirica'));
INSERT INTO tb_animais VALUES (tp_animais('An005', 'Gorila'));
INSERT INTO tb_animais VALUES (tp_animais('An006', 'Macaco-aranha'));
INSERT INTO tb_animais VALUES (tp_animais('An007', 'Macaco-aranha'));
INSERT INTO tb_animais VALUES (tp_animais('An008', 'Macaco-prego'));
INSERT INTO tb_animais VALUES (tp_animais('An009', 'Macaco-prego'));
INSERT INTO tb_animais VALUES (tp_animais('An010', 'Macaco-prego'));
INSERT INTO tb_animais VALUES (tp_animais('An011', 'Orangotango'));
INSERT INTO tb_animais VALUES (tp_animais('An012', 'Castor'));
INSERT INTO tb_animais VALUES (tp_animais('An013', 'Castor'));
INSERT INTO tb_animais VALUES (tp_animais('An014', 'Porco-espinho'));
INSERT INTO tb_animais VALUES (tp_animais('An015', 'Capivara'));
INSERT INTO tb_animais VALUES (tp_animais('An016', 'Capivara'));
INSERT INTO tb_animais VALUES (tp_animais('An017', 'Capivara'));
INSERT INTO tb_animais VALUES (tp_animais('An018', 'Jibóia'));
INSERT INTO tb_animais VALUES (tp_animais('An019', 'Jararaca'));
INSERT INTO tb_animais VALUES (tp_animais('An020', 'Coral'));
INSERT INTO tb_animais VALUES (tp_animais('An021', 'Píton'));
INSERT INTO tb_animais VALUES (tp_animais('An022', 'Cascavel'));
INSERT INTO tb_animais VALUES (tp_animais('An023', 'Sucuri'));
INSERT INTO tb_animais VALUES (tp_animais('An024', 'Jacaré'));
INSERT INTO tb_animais VALUES (tp_animais('An025', 'Jacaré'));
INSERT INTO tb_animais VALUES (tp_animais('An026', 'Jacaré'));
INSERT INTO tb_animais VALUES (tp_animais('An027', 'Jacaré'));
INSERT INTO tb_animais VALUES (tp_animais('An028', 'Iguana'));
INSERT INTO tb_animais VALUES (tp_animais('An029', 'Camaleão'));
INSERT INTO tb_animais VALUES (tp_animais('An030', 'Camaleão'));
INSERT INTO tb_animais VALUES (tp_animais('An031', 'Cágado'));
INSERT INTO tb_animais VALUES (tp_animais('An032', 'Cágado'));
INSERT INTO tb_animais VALUES (tp_animais('An033', 'Cágado'));
INSERT INTO tb_animais VALUES (tp_animais('An034', 'Jabuti'));
INSERT INTO tb_animais VALUES (tp_animais('An035', 'Jabuti'));
INSERT INTO tb_animais VALUES (tp_animais('An036', 'Elefante'));
INSERT INTO tb_animais VALUES (tp_animais('An037', 'Elefante'));
INSERT INTO tb_animais VALUES (tp_animais('An038', 'Girafa'));
INSERT INTO tb_animais VALUES (tp_animais('An039', 'Girafa'));
INSERT INTO tb_animais VALUES (tp_animais('An040', 'Rinoceronte'));
INSERT INTO tb_animais VALUES (tp_animais('An041', 'Hipopótamo'));
INSERT INTO tb_animais VALUES (tp_animais('An042', 'Canguru'));
INSERT INTO tb_animais VALUES (tp_animais('An043', 'Timbú'));
INSERT INTO tb_animais VALUES (tp_animais('An044', 'Diabo da Tasmânia'));
INSERT INTO tb_animais VALUES (tp_animais('An045', 'Harpia'));
INSERT INTO tb_animais VALUES (tp_animais('An046', 'Carcará'));
INSERT INTO tb_animais VALUES (tp_animais('An047', 'Falcão'));
INSERT INTO tb_animais VALUES (tp_animais('An048', 'Coruja'));
INSERT INTO tb_animais VALUES (tp_animais('An049', 'Tucano'));
INSERT INTO tb_animais VALUES (tp_animais('An050', 'Arara'));
INSERT INTO tb_animais VALUES (tp_animais('An051', 'Arara'));
INSERT INTO tb_animais VALUES (tp_animais('An052', 'Arara'));
INSERT INTO tb_animais VALUES (tp_animais('An053', 'Arara'));
INSERT INTO tb_animais VALUES (tp_animais('An054', 'Avestruz'));
INSERT INTO tb_animais VALUES (tp_animais('An055', 'Avestruz'));
INSERT INTO tb_animais VALUES (tp_animais('An056', 'Garça'));
INSERT INTO tb_animais VALUES (tp_animais('An057', 'Garça'));
INSERT INTO tb_animais VALUES (tp_animais('An058', 'Garça'));
INSERT INTO tb_animais VALUES (tp_animais('An059', 'Urso Pardo'));
INSERT INTO tb_animais VALUES (tp_animais('An060', 'Urso Pardo'));
INSERT INTO tb_animais VALUES (tp_animais('An061', 'Urso Negro'));
INSERT INTO tb_animais VALUES (tp_animais('An062', 'Panda'));

-- Cuida
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An001'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An002'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An003'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An004'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An005'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An006'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An007'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An008'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An009'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An010'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An011'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An012'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An013'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An014'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An015'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An016'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An017'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '999.999.999-99')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An018'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An019'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An020'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An021'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An022'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An023'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An024'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An025'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An026'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An027'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An028'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An029'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An030'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An031'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An032'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An033'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An034'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An035'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '101.101.101-10')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An036'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An037'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An038'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An039'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An040'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An041'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An042'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An043'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An044'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An045'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An046'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An047'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An048'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An049'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An050'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An051'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An052'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An053'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An054'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An055'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An056'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An057'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An058'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '303.303.303-30')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An059'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An060'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An061'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));
INSERT INTO tb_cuida VALUES (tp_cuida((SELECT REF(a) FROM tb_animais a WHERE a.cod_animal = 'An062'),(SELECT REF(b) FROM tb_biologo b WHERE b.cpf = '888.888.888-88')));

-- z1
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = ), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = );
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf01'), to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf02'), to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf03'), to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf04'), to_date('25/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp01'), to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp02'), to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp03'), to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp04'), to_date('24/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr01'), to_date('23/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr02'), to_date('23/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '404.404.404-40'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr03'), to_date('23/08/2022', 'dd/mm/yy'));
--z2
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js01'), to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js02'), to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js03'), to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js04'), to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js05'), to_date('20/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jj01'), to_date('21/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jl01'), to_date('21/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jl02'), to_date('21/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jt01'), to_date('22/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '606.606.606-60'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jt02'), to_date('22/08/2022', 'dd/mm/yy'));
--z3
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh01'), to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh02'), to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh03'), to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh04'), to_date('10/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jm01'), to_date('11/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jm02'), to_date('11/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jm03'), to_date('11/08/2022', 'dd/mm/yy'));
--z4
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja01'), to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja02'), to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja03'), to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja04'), to_date('30/07/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja05'), to_date('31/07/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja06'), to_date('31/07/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja07'), to_date('31/07/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '777.777.777-77'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja08'), to_date('31/07/2022', 'dd/mm/yy'));
--z3
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ju01'), to_date('12/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ju02'), to_date('12/08/2022', 'dd/mm/yy'));
INSERT INTO tb_limpa VALUES (tp_limpa((SELECT REF(Z) FROM tb_zelador Z WHERE Z.cpf = '505.505.505-55'), (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ju03'), to_date('12/08/2022', 'dd/mm/yy'));

-- TICKET 
INSERT INTO tb_ticket VALUES (tp_ticket((SELECT REF(A) FROM tb_atendente A WHERE A.cpf = ));
INSERT INTO tb_ticket VALUES (tp_ticket(1, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '777.888.999-99'), 20.00, to_date('29/08/2022', 'dd/mm/yy'));
INSERT INTO tb_ticket VALUES (tp_ticket(2, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '777.888.999-99'), 50.00, to_date('02/04/2022', 'dd/mm/yy'));
INSERT INTO tb_ticket VALUES (tp_ticket(3, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '666.666.666-66'), 25.00, to_date('12/05/2022', 'dd/mm/yy')); 
INSERT INTO tb_ticket VALUES (tp_ticket(4, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '666.666.666-66'), 25.00, to_date('20/01/2022', 'dd/mm/yy'));
INSERT INTO tb_ticket VALUES (tp_ticket(5, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '333.333.333-33'), 25.00, to_date('29/06/2022', 'dd/mm/yy'));
INSERT INTO tb_ticket VALUES (tp_ticket(6, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '333.333.333-33'), 20.00, to_date('22/07/2022', 'dd/mm/yy')); 
INSERT INTO tb_ticket VALUES (tp_ticket(7, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '202.202.202-20'), 25.00, to_date('25/03/2022', 'dd/mm/yy'));
INSERT INTO tb_ticket VALUES (tp_ticket(8, (SELECT REF(A) FROM tb_atendente A WHERE A.cpf = '202.202.202-20'), 37.50, to_date('12/10/2022', 'dd/mm/yy')); 

-- Compra
CREATE SEQUENCE nota_fiscal INCREMENT BY 1 START WITH 1; -- verificar se essa sequencia esta correta para OR

INSERT INTO tb_compra VALUES (tp_compra(1, '111.222.333-44', nota_fiscal.NEXTVAL)); 
INSERT INTO tb_compra VALUES (tp_compra(2, '444.555.666-77', nota_fiscal.NEXTVAL)); 
INSERT INTO tb_compra VALUES (tp_compra(3, '123.456.789-00', nota_fiscal.NEXTVAL)); 
INSERT INTO tb_compra VALUES (tp_compra(4, '248.369.124-22', nota_fiscal.NEXTVAL));
INSERT INTO tb_compra VALUES (tp_compra(5, '111.111.111-11', nota_fiscal.NEXTVAL));
INSERT INTO tb_compra VALUES (tp_compra(6, '222.222.222-22', nota_fiscal.NEXTVAL));
INSERT INTO tb_compra VALUES (tp_compra(7, '444.444.444-44', nota_fiscal.NEXTVAL));
INSERT INTO tb_compra VALUES (tp_compra(8, '555.555.555-55', nota_fiscal.NEXTVAL));			      

-- Promocao 
INSERT INTO tb_promocao VALUES (tp_promocao(48957, 50, to_date('01/05/2022', 'dd/mm/yy'), to_date('15/05/2022', 'dd/mm/yy')));
INSERT INTO tb_promocao VALUES (tp_promocao(72841, 25, to_date('12/10/2022', 'dd/mm/yy'), to_date('30/10/2022', 'dd/mm/yy')));
INSERT INTO tb_promocao VALUES (tp_promocao(65037, 20, to_date('01/07/2022', 'dd/mm/yy'), to_date('30/08/2022', 'dd/mm/yy')));

-- Participa 
INSERT INTO tb_participa VALUES (tp_participa((SELECT REF(P) FROM tb_promocao P WHERE P.cod_promocao = 65037),
    (SELECT REF(T) FROM tb_ticket P WHERE T.numero_ticket = 1),
    (SELECT REF(V) FROM tb_visitante V WHERE V.cpf = '111.222.333-44')));
INSERT INTO tb_participa VALUES (tp_participa((SELECT REF(P) FROM tb_promocao P WHERE P.cod_promocao = 48957),
    (SELECT REF(T) FROM tb_ticket P WHERE T.numero_ticket = 3),
    (SELECT REF(V) FROM tb_visitante V WHERE V.cpf = '123.456.789-00')));
INSERT INTO tb_participa VALUES (tp_participa((SELECT REF(P) FROM tb_promocao P WHERE P.cod_promocao = 65037),
    (SELECT REF(T) FROM tb_ticket P WHERE T.numero_ticket = 6),
    (SELECT REF(V) FROM tb_visitante V WHERE V.cpf = '222.222.222-22')));
INSERT INTO tb_participa VALUES (tp_participa((SELECT REF(P) FROM tb_promocao P WHERE P.cod_promocao = 72841),
    (SELECT REF(T) FROM tb_ticket P WHERE T.numero_ticket = 8),
    (SELECT REF(V) FROM tb_visitante V WHERE V.cpf = '555.555.555-55')));	
			      
-- Pertence 
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An001'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf01'),
    (to_date('10/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D01'),
    (to_date('25/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An002'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf02'),
    (to_date('10/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D01'),
    (to_date('25/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An003'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf03'),
    (to_date('10/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D01'),
    (to_date('25/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An004'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jf04'),
    (to_date('10/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D01'),
    (to_date('25/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An005'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp01'),
    (to_date('11/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D02'),
    (to_date('26/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An006'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp02'),
    (to_date('11/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D02'),
    (to_date('26/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An007'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp02'),
    (to_date('11/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D02'),
    (to_date('26/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An008'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp03'),
    (to_date('11/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D02'),
    (to_date('26/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An009'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp03'),
    (to_date('11/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D02'),
    (to_date('26/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An010'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp03'),
    (to_date('11/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D02'),
    (to_date('26/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An011'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jp04'),
    (to_date('11/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D02'),
    (to_date('26/08/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An012'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr01'),
    (to_date('12/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D03'),
    (to_date('27/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An013'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr01'),
    (to_date('12/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D03'),
    (to_date('27/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An014'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr02'),
    (to_date('12/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D03'),
    (to_date('27/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An015'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr03'),
    (to_date('12/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D03'),
    (to_date('27/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An016'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr03'),
    (to_date('12/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D03'),
    (to_date('27/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An017'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jr03'),
    (to_date('12/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D03'),
    (to_date('27/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An018'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js01'),
    (to_date('13/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D04'),
    (to_date('28/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An019'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js02'),
    (to_date('13/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D04'),
    (to_date('28/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An020'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js03'),
    (to_date('13/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D04'),
    (to_date('28/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An021'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js04'),
    (to_date('13/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D04'),
    (to_date('28/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An022'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js05'),
    (to_date('13/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D04'),
    (to_date('28/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An023'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Js06'),
    (to_date('13/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D04'),
    (to_date('28/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An024'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jj01'),
    (to_date('14/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D05'),
    (to_date('29/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An025'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jj01'),
    (to_date('14/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D05'),
    (to_date('29/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An026'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jj01'),
    (to_date('14/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D05'),
    (to_date('29/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An027'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jj01'),
    (to_date('14/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D05'),
    (to_date('29/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An028'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jl01'),
    (to_date('15/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D06'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An029'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jl02'),
    (to_date('15/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D06'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An030'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jl02'),
    (to_date('15/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D06'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An031'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jt01'),
    (to_date('16/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D07'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An032'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jt01'),
    (to_date('16/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D07'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An033'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jt01'),
    (to_date('16/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D07'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An034'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jt02'),
    (to_date('16/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D07'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An035'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jt02'),
    (to_date('16/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D07'),
    (to_date('30/11/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An036'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh01'),
    (to_date('17/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D08'),
    (to_date('22/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An037'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh01'),
    (to_date('17/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D08'),
    (to_date('22/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An038'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh02'),
    (to_date('17/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D08'),
    (to_date('22/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An039'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh02'),
    (to_date('17/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D08'),
    (to_date('22/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An040'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh03'),
    (to_date('17/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D08'),
    (to_date('22/10/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An041'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jh04'),
    (to_date('17/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D08'),
    (to_date('22/10/2022', 'dd/mm/yy'))));]
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An042'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jm01'),
    (to_date('18/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D09'),
    (to_date('23/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An043'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jm02'),
    (to_date('18/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D09'),
    (to_date('23/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An044'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Jm03'),
    (to_date('18/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D09'),
    (to_date('23/09/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An045'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja01'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An046'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja02'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An047'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja03'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An048'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja04'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An049'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja05'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An050'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja06'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An051'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja06'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An052'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja06'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An053'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja06'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An054'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja07'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An055'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja07'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An056'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja07'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An057'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja07'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An058'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ja07'),
    (to_date('19/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D10'),
    (to_date('05/12/2022', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An059'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ju01'),
    (to_date('20/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D11'),
    (to_date('15/01/2023', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An060'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ju01'),
    (to_date('20/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D11'),
    (to_date('15/01/2023', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An061'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ju02'),
    (to_date('20/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D11'),
    (to_date('15/01/2023', 'dd/mm/yy'))));
INSERT INTO tb_pertence VALUES (tp_pertence(
    (SELECT REF(A) FROM tb_animais A WHERE A.cod_animal = 'An062'),
    (SELECT REF(J) FROM tb_jaula J WHERE J.cod_jaula = 'Ju03'),
    (to_date('20/03/2022', 'dd/mm/yy')),
    (SELECT REF(D) FROM tb_departamento D WHERE D.cod_departamento = 'D11'),
    (to_date('15/01/2023', 'dd/mm/yy'))));
