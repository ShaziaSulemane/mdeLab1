
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

INSERT INTO edificio values (10,'farmacia', 'Rua Cesario Verde', 'Almada', '83.4ºN 34.5ºO', 300, 1);
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
INSERT INTO equipamentoeletrico values (16, 'vm 6479', 'VENDING MACHINE', 100, 300); 

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
INSERT INTO horario values (2, '21:00', '24:00');
INSERT INTO horario values (3, '00:00', '7:00');
INSERT INTO horario values (4, '7:00', '10:00');
INSERT INTO horario values (5, '11:00', '18:00');
INSERT INTO horario values (6, '00:00', '24:00');
INSERT INTO horario values (7, '9:00', '19:00');
INSERT INTO horario values (8, '18:00', '21:00');
INSERT INTO horario values (9, '10:00', '24:00');

/*anomalias*/
INSERT INTO anomalia values (1, 'sem anomalia');
INSERT INTO anomalia values (2, 'horario de utilizacao indevido');
INSERT INTO anomalia values (3, 'consumo energetico excessivo');

/*consumos energeticos normais*/
INSERT INTO consumoenergetico values ('14:00', '21:00', 1, 1);
INSERT INTO consumoenergetico values ('21:00','00:00', 2, 1);
INSERT INTO consumoenergetico values ('00:00', '7:00', 3, 1);
INSERT INTO consumoenergetico values ('7:00','10:00', 4, 1);
INSERT INTO consumoenergetico values ('11:00', '18:00', 5, 1);

/*consumos anomalos*/
INSERT INTO consumoenergetico values ('9:00', '18:00', 6, 2);
INSERT INTO consumoenergetico values ('13:00', '19:00', 7, 2);
INSERT INTO consumoenergetico values ('8:00', '20:00', 8, 2);
INSERT INTO consumoenergetico values ('11:00', '19:00', 9, 2);
INSERT INTO consumoenergetico values ('3:00', '5:00', 10, 2);
INSERT INTO consumoenergetico values ('12:00', '8:00', 11, 2);
INSERT INTO consumoenergetico values ('12:00', '19:00', 12, 2);
INSERT INTO consumoenergetico values ('20:00', '21:00', 13, 2);

/*habitacao*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (/*id relacao*/1, /*id divisao*/ 1, /*id equip*/1, /*id horario*/4, /*id consumo*/ );
INSERT INTO equipamentoeletrico_divisao values (2, 1, 2, 4,);
INSERT INTO equipamentoeletrico_divisao values (3, 1, 3, 4,);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (4, 2, 3, 4,);
INSERT INTO equipamentoeletrico_divisao values (5, 2 ,4, 4,);
INSERT INTO equipamentoeletrico_divisao values (6, 2, 5, 4,);
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (7, 3, 4, 4,);
INSERT INTO equipamentoeletrico_divisao values (8, 3, 6, 4,);
INSERT INTO equipamentoeletrico_divisao values (9, 3, 9, 4,);

/*escritorios*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (10, 4, 1, 5, );
INSERT INTO equipamentoeletrico_divisao values (11, 4, 1, 5, );
INSERT INTO equipamentoeletrico_divisao values (12, 4, 1, 5, );
INSERT INTO equipamentoeletrico_divisao values (13, 4, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (14, 4, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (15, 4, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (16, 4, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (17, 4, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (18, 4, 5, 6, );
INSERT INTO equipamentoeletrico_divisao values (19, 4, 2, 7, );
INSERT INTO equipamentoeletrico_divisao values (20, 4, 6, 7, );
INSERT INTO equipamentoeletrico_divisao values (21, 4, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (22, 4, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (23, 4, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (24, 4, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (25, 4, 3, 6, );
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (26, 5, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (27, 5, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (28, 5, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (29, 5, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (30, 5, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (31, 5, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (32, 5, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (33, 5, 5, 6, );
INSERT INTO equipamentoeletrico_divisao values (34, 5, 2, 7, );
INSERT INTO equipamentoeletrico_divisao values (35, 5, 6, 7, );
INSERT INTO equipamentoeletrico_divisao values (36, 5, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (37, 5, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (38, 5, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (39, 5, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (40, 5, 4, 8, );

/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (41, 6, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (42, 6, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (43, 6, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (44, 6, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (45, 6, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (46, 6, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (47, 6, 1, 1, );
INSERT INTO equipamentoeletrico_divisao values (48, 6, 5, 6, );
INSERT INTO equipamentoeletrico_divisao values (49, 6, 2, 7, );
INSERT INTO equipamentoeletrico_divisao values (50, 6, 6, 7, );
INSERT INTO equipamentoeletrico_divisao values (51, 6, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (52, 6, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (53, 6, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (54, 6, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (55, 6, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (56, 6, 11, 5, );

/*maternidade*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (57, 7, 1, 6, );
INSERT INTO equipamentoeletrico_divisao values (58, 7, 5, 6, );
INSERT INTO equipamentoeletrico_divisao values (59, 7, 12, 5, );
INSERT INTO equipamentoeletrico_divisao values (60, 7, 16, 6, );
INSERT INTO equipamentoeletrico_divisao values (61, 7, 2, 6, );
INSERT INTO equipamentoeletrico_divisao values (62, 7, 2, 6, );
INSERT INTO equipamentoeletrico_divisao values (63, 7, 16, 6, );
INSERT INTO equipamentoeletrico_divisao values (64, 7, 15, 5, );
INSERT INTO equipamentoeletrico_divisao values (65, 7, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (66, 7, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (67, 7, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (68, 7, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (69, 7, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (70, 7, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (71, 7, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (72, 7, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (73, 7, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (74, 7, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (75, 7, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (76, 7, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (77, 7, 7, 9, );
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (78, 8, 1, 6, );
INSERT INTO equipamentoeletrico_divisao values (79, 8, 5, 6, );
INSERT INTO equipamentoeletrico_divisao values (80, 8, 12, 5, );
INSERT INTO equipamentoeletrico_divisao values (81, 8, 16, 6, );
INSERT INTO equipamentoeletrico_divisao values (82, 8, 2, 6, );
INSERT INTO equipamentoeletrico_divisao values (83, 8, 2, 6, );
INSERT INTO equipamentoeletrico_divisao values (84, 8, 16, 6, );
INSERT INTO equipamentoeletrico_divisao values (85, 8, 15, 5, );
INSERT INTO equipamentoeletrico_divisao values (86, 8, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (87, 8, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (88, 8, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (89, 8, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (90, 8, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (91, 8, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (92, 8, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (93, 8, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (94, 8, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (95, 8, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (96, 8, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (97, 8, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (98, 8, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (99, 8, 15, 5, );
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (100, 9, 1, 6, );
INSERT INTO equipamentoeletrico_divisao values (101, 9, 5, 6, );
INSERT INTO equipamentoeletrico_divisao values (102, 9, 12, 5, );
INSERT INTO equipamentoeletrico_divisao values (103, 9, 16, 6, );
INSERT INTO equipamentoeletrico_divisao values (104, 9, 2, 6, );
INSERT INTO equipamentoeletrico_divisao values (105, 9, 2, 6, );
INSERT INTO equipamentoeletrico_divisao values (106, 9, 16, 6, );
INSERT INTO equipamentoeletrico_divisao values (107, 9, 15, 5, );
INSERT INTO equipamentoeletrico_divisao values (108, 9, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (109, 9, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (110, 9, 3, 6, );
INSERT INTO equipamentoeletrico_divisao values (111, 9, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (112, 9, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (113, 9, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (114, 9, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (115, 9, 4, 8, );
INSERT INTO equipamentoeletrico_divisao values (116, 9, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (117, 9, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (118, 9, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (119, 9, 7, 9, );
INSERT INTO equipamentoeletrico_divisao values (120, 9, 7, 9, );

/*loja*/
INSERT INTO equipamentoeletrico_divisao values (, 10, 8, 1);
INSERT INTO equipamentoeletrico_divisao values (, 10, 12, 1);
INSERT INTO equipamentoeletrico_divisao values (, 10, 4, 1);

/*centro comercial*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (, 11, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (, 11, 9, 9);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 12, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 12, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 12, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 2, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 2, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 2, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 6, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 6, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 6, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 11, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 11, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 11, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 11, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 11, 9);
INSERT INTO equipamentoeletrico_divisao values (, 12, 11, 9);
/*piso 3*/
INSERT INTO equipamentoeletrico_divisao values (, 13, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 8, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 4, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 1, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (, 13, 9, 9);

/*discoteca*/
INSERT INTO equipamentoeletrico_divisao values (, 1, 10, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 2, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 5, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 10, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 8, 2, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 3, );

/*laboratorio*/
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 5, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 5, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 5, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 13, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 2, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 2, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );

/*penitenciaria*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (, 17, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 17, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 17, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 17, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 17, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 17, 4, 8);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (, 18, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 18, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 18, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 18, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 18, 4, 8);
INSERT INTO equipamentoeletrico_divisao values (, 18, 4, 8);

/*fabrica*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 12, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 14, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);
INSERT INTO equipamentoeletrico_divisao values (, 4, 4, 5);

/*farmacia*/
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 4, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 3, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 1, 7, );
INSERT INTO equipamentoeletrico_divisao values (, 1, 5, 7, );









