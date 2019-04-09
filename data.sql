
INSERT INTO tarifa values (1, 0.25, 0.20, 0.15, 12, 19);
INSERT INTO tarifa values (2, 0.25, 0.25, 0.25, 16, 21);

INSERT INTO edificio values (1, 'habitacao', 'Rua Fernando Pessoa', 'Lisboa', '39.35ºN 8.89ºO', 120, 1);
INSERT INTO edificio values (2, 'escritorios', 'Rua Fernando Pessoa', 'Lisboa', '96.69ºN 96.69ºO', 1200, 2);
INSERT INTO edificio values (3, 'maternidade','Rua Fernando Pessoa', 'Lisboa', '39.96ºN 8.96ºS', 2500, 1);

INSERT INTO edificio values (4, 'loja', 'Rua Luis Camoes', 'Lisboa', '69.99ºN 69.99ºS', 200, 2);
INSERT INTO edificio values (5, 'centro comercial', 'Rua Luis Camoes', 'Lisboa', '69.66ºN 69.66ºS', 1500, 1);
INSERT INTO edificio values (6, 'discoteca', 'Rua Luis Camoes', 'Lisboa', '69.9ºN 3.45ºO', 200, 2);

INSERT INTO edificio values (7, 'laboratorios', 'Rua Bocage', 'Almada', '80.89ºN 69.96ºO', 700, 2);
INSERT INTO edificio values (8, 'penitenciaria', 'Rua Bocage', 'Almada', '80.69ºN 3.49ºS', 650, 1);
INSERT INTO edificio values (9, 'fabrica', 'Rua Bocage', 'Almada', '80.5ºN 33.2ºO', 1000, 1);

INSERT INTO edificio values (10,'oficina', 'Rua Cesario Verde', 'Almada', '83.4ºN 34.5ºO', 300, 1);
INSERT INTO edificio values (3, 'maternidade','Rua Cesario Verde', 'Almada', '39.96ºN 8.96ºS', 1200, 1);
INSERT INTO edificio values (6, 'discoteca', 'Rua Cesario Verde', 'Almada', '69.9ºN 3.45ºO', 200, 2);

/* equipamentos genericos */
INSERT INTO equipamentoeletrico values (1, 'pc 12345', 'ASUS-2345', 'ASUS PORTABLE COMPUTER', 50, 450);
INSERT INTO equipamentoeletrico values (2, 'caf 2345', 'DOLCE VITA','DOLCE VITA COFFEE MAKER',100, 300);
INSERT INTO equipamentoeletrico values (3, 'rr 2345', 'NOS', 'NOS ROUTER', 50, 150);
INSERT INTO equipamentoeletrico values (4, 'ilu 345', 'LED', 'LED LAMP', 80, 12);
INSERT INTO equipamentoeletrico values (5, 'rf 7896', 'SAMSUNG', 'SAMSUNG FRIDGE', 250, 250);
/*equipamentos especificos*/
INSERT INTO equipamentoeletrico values (6, 'imp 345', 'CANON PRINTER', 120, 50);
INSERT INTO equipamentoeletrico values (7, 'inc 345', 'ICU INCUBATOR', 45, 120);
INSERT INTO equipamentoeletrico values (8, 'mr 1234', 'REGISTER MACHINE', 10, 5);
INSERT INTO equipamentoeletrico values (9, 'sp 1456', 'SPEAKERS', 15, 5);
INSERT INTO equipamentoeletrico values (10, 'mt 1545', 'MIX TABLE', 45, 120);
INSERT INTO equipamentoeletrico values (11, 'pj 7895', 'PROJECTOR CANON', 45, 45);
INSERT INTO equipamentoeletrico values (12, 'ex 1234', 'EXHAUST FAN', 10, 5);
INSERT INTO equipamentoeletrico values (13, 'osc 123', 'MICROSCOPE', 10, 5);
INSERT INTO equipamentoeletrico values (14, 'rb 1234', 'ASSEMBLING ROBOT', 250, 1500);
INSERT INTO equipamentoeletrico values (15, 'mc 1523', 'MRI MACHINE', 300, 3500);

/*habitacao*/
INSERT INTO divisao values (1, 1, 0, 40, 2.5, 3);
INSERT INTO divisao values (2, 1, 1, 40, 2.5, 3);
INSERT INTO divisao values (3, 1, 2, 40, 2.5, 3);
/*escritorios*/
INSERT INTO divisao values (4, 2, 0, 400, 2.5, 6);
INSERT INTO divisao values (5, 2, 1, 400, 2.5, 8);
INSERT INTO divisao values (6, 2, 2, 400, 2.5, 5);
/*maternidade*/
INSERT INTO divisao values (7, 3, 0, 833, 2.5, 10);
INSERT INTO divisao values (8, 3, 1, 833, 2.5, 10);
INSERT INTO divisao values (9, 4, 2, 833, 2.5, 7);
/*loja*/
INSERT INTO divisao values (10, 4, 0, 200, 2.5, 2);
/*centro comercial*/
INSERT INTO divisao values (11, 5, 0, 375, 3, 15);
INSERT INTO divisao values (12, 5, 1, 375, 2.5, 10);
INSERT INTO divisao values (13, 5, 2, 375, 4, 10);
INSERT INTO divisao values (14, 5, 3, 375, 2.5, 9);
/*discoteca*/
INSERT INTO divisao values (15, 6, 0, 200, 2.5, 4);
/*laboratorios*/
INSERT INTO divisao values (16, 7, 0, 700, 2.5, 5);
/*penitenciaria*/
INSERT INTO divisao values (17, 8, 0, 325, 2.5, 3);
INSERT INTO divisao values (18, 8, 1, 325, 2.5, 3);
/*fabrica*/
INSERT INTO divisao values (19, 9, 0, 500, 2.5, 3);
INSERT INTO divisao values (20, 9, 1, 500, 2.5, 3);
/*oficina*/
INSERT INTO divisao values (21, 10, 0, 300, 2.5, 1);

INSERT INTO horario values (1, '14:00', '21:00');
INSERT INTO horario values (2, '21:00', '00:00');
INSERT INTO horario values (3, '00:00', '7:00');
INSERT INTO horario values (4, '7:00', '10:00');
INSERT INTO horario values (5, '11:00', '18:00');

/*consumos energeticos normais*/
/*consumos anomalos*/

/*habitacao*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (/*id relacao*/1, /*id divisao*/ 0, /*id equip*/1, /*id horario*/4, /*id consumo*/ );
INSERT INTO equipamentoeletrico_divisao values (2, 0, 2, );
INSERT INTO equipamentoeletrico_divisao values (3, 0, 3, );
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (4, );
INSERT INTO equipamentoeletrico_divisao values (5, );
INSERT INTO equipamentoeletrico_divisao values (6, );
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (7, );
INSERT INTO equipamentoeletrico_divisao values (8, );
INSERT INTO equipamentoeletrico_divisao values (9, );

/*escritorios*/
/*piso 0*/
/*piso 1*/
/*piso 2*/

/*maternidade*/
/*piso 0*/
/*piso 1*/
/*piso 2*/

/*loja*/

/*centro comercial*/
/*piso 0*/
/*piso 1*/
/*piso 2*/
/*piso 3*/

/*discoteca*/

/*laboratorio*/

/*penitenciaria*/
/*piso 0*/
/*piso 1*/

/*fabrica*/
/*piso 0*/
/*piso 1*/

/*oficina*/












