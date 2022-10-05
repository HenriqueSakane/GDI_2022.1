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
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo'), /* cpf_supervisor REF tp_funcionario */),
    'Mamíferos');
INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('101.101.101-10', 'Elena Macedo', to_date('15/05/1998', 'dd/mm/yy'), tp_endereco('85745-785', 'Rua Platão', '108', 'Casa Amarela'), tp_arr_fones((tp_telefone('999009900'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo'), /* cpf_supervisor REF tp_funcionario */),
    'Répteis');
INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('303.303.303-30', 'Luana Silva', to_date('29/09/1999', 'dd/mm/yy'), tp_endereco('35398-333', 'Estrada da Glória', '33', 'Prego'), tp_arr_fones((tp_telefone('998989898'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo'), /* cpf_supervisor REF tp_funcionario */),
    'Aves');
INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('303.303.303-30', 'Luana Silva', to_date('29/09/1999', 'dd/mm/yy'), tp_endereco('35398-333', 'Estrada da Glória', '33', 'Prego'), tp_arr_fones((tp_telefone('998989898'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo'), /* cpf_supervisor REF tp_funcionario */),
    'Aves');
INSERT INTO tb_biologo VALUES 
    (tp_biologo
    (tp_funcionario
    (tp_pessoa
    ('888.888.888-88', 'Vanessa Lorrany', to_date('06/11/1966', 'dd/mm/yy'), tp_endereco('44444-100', 'Estrada da Batalha', '300', 'Prazeres'), tp_arr_fones((tp_telefone('991911919'))))), 
    (SELECT REF(f) FROM tb_cargo f WHERE f.cargo_funcionario = 'Biologo'), /* cpf_supervisor REF tp_funcionario */),
    'Mamíferos');

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


-- Compra
CREATE SEQUENCE nota_fiscal INCREMENT BY 1 START WITH 1; -- verificar se essa sequencia esta correta para OR

INSERT INTO tb_compra VALUES (1, '111.222.333-44', nota_fiscal.NEXTVAL); 
INSERT INTO tb_compra VALUES (2, '444.555.666-77', nota_fiscal.NEXTVAL); 
INSERT INTO tb_compra VALUES (3, '123.456.789-00', nota_fiscal.NEXTVAL); 
INSERT INTO tb_compra VALUES (4, '248.369.124-22', nota_fiscal.NEXTVAL);
INSERT INTO tb_compra VALUES (5, '111.111.111-11', nota_fiscal.NEXTVAL);
INSERT INTO tb_compra VALUES (6, '222.222.222-22', nota_fiscal.NEXTVAL);
INSERT INTO tb_compra VALUES (7, '444.444.444-44', nota_fiscal.NEXTVAL);

INSERT INTO tb_compra VALUES (8, '555.555.555-55', nota_fiscal.NEXTVAL); 
