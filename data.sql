
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
INSERT INTO edificio values (11, 'maternidade','Rua Cesario Verde', 'Almada', '39.96ºN 8.96ºS', 1200, 1);
INSERT INTO edificio values (12, 'discoteca', 'Rua Cesario Verde', 'Almada', '69.9ºN 3.45ºO', 200, 2);

/* equipamentos genericos */
INSERT INTO equipamentoeletrico values (1, 'pc 12345', 'ASUS-2345', 'ASUS PORTABLE COMPUTER', 50, 450);
INSERT INTO equipamentoeletrico values (2, 'caf 2345', 'DOLCE VITA','DOLCE VITA COFFEE MAKER',100, 300);
INSERT INTO equipamentoeletrico values (3, 'rr 2345', 'NOS', 'NOS ROUTER', 50, 150);
INSERT INTO equipamentoeletrico values (4, 'ilu 345', 'LED', 'LED LAMP', 80, 12);
INSERT INTO equipamentoeletrico values (5, 'rf 7896', 'SAMSUNG', 'SAMSUNG FRIDGE', 250, 250);
/*equipamentos especificos*/
INSERT INTO equipamentoeletrico values (6, 'imp 345', 'CAN123', 'CANON PRINTER', 120, 50);
INSERT INTO equipamentoeletrico values (7, 'inc 345', 'ICU123', 'ICU INCUBATOR', 45, 120);
INSERT INTO equipamentoeletrico values (8, 'mr 1234', 'IREG123', 'REGISTER MACHINE', 10, 5);
INSERT INTO equipamentoeletrico values (9, 'sp 1456', 'DRDRE', 'SPEAKERS', 15, 5);
INSERT INTO equipamentoeletrico values (10, 'mt 1545', 'LILBEAT', 'MIX TABLE', 45, 120);
INSERT INTO equipamentoeletrico values (11, 'pj 7895', 'CA-NON', 'PROJECTOR CANON', 45, 45);
INSERT INTO equipamentoeletrico values (12, 'ex 1234', 'NUM1FAN', 'EXHAUST FAN', 10, 5);
INSERT INTO equipamentoeletrico values (13, 'osc 123', 'ICCLOSE', 'MICROSCOPE', 10, 5);
INSERT INTO equipamentoeletrico values (14, 'rb 1234', 'IASSEMBLE', 'ASSEMBLING ROBOT', 250, 1500);
INSERT INTO equipamentoeletrico values (15, 'mc 1523', 'ICBRAIN', 'MRI MACHINE', 300, 3500);
INSERT INTO equipamentoeletrico values (16, 'vm 6479', 'IFOOD', 'VENDING MACHINE', 100, 300); 

/*habitacao*/
INSERT INTO divisao values (1, 1, 0, 40, 2.5, 3);
INSERT INTO divisao values (2, 1, 1, 40, 2.5, 3);
INSERT INTO divisao values (3, 1, 2, 40, 2.5, 3);
/*escritorios*/
INSERT INTO divisao values (4, 2, 0, 400, 2.5, 6);
INSERT INTO divisao values (5, 2, 1, 400, 2.5, 8);
INSERT INTO divisao values (6, 2, 2, 400, 2.5, 5);
/*maternidade 1*/
INSERT INTO divisao values (7, 3, 0, 833, 2.5, 10);
INSERT INTO divisao values (8, 3, 1, 833, 2.5, 10);
INSERT INTO divisao values (9, 3, 2, 833, 2.5, 7);
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
/*farmacia*/
INSERT INTO divisao values (21, 10, 0, 300, 2.5, 1);
/*maternidade 2*/
INSERT INTO divisao values (22, 11, 0, 833, 2.5, 10);
INSERT INTO divisao values (23, 11, 1, 833, 2.5, 10);
INSERT INTO divisao values (24, 11, 2, 833, 2.5, 7);
/*discoteca 2*/
INSERT INTO divisao values (25, 12, 0, 200, 2.5, 4);


INSERT INTO horario values (1, TO_DATE('14:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));
INSERT INTO horario values (2, TO_DATE('21:00', 'HH24:MI'), TO_DATE('24:00', 'HH24:MI'));
INSERT INTO horario values (3, TO_DATE('00:00', 'HH24:MI'), TO_DATE('07:00', 'HH24:MI'))
INSERT INTO horario values (4, TO_DATE('07:00', 'HH24:MI'), TO_DATE('10:00', 'HH24:MI'))
INSERT INTO horario values (5, TO_DATE('11:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'))
INSERT INTO horario values (6, TO_DATE('00:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'))
INSERT INTO horario values (7, TO_DATE('09:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'))
INSERT INTO horario values (8, TO_DATE('18:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'))
INSERT INTO horario values (9, TO_DATE('10:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'))

/*anomalias*/
INSERT INTO anomalia values (1, 'sem anomalia');
INSERT INTO anomalia values (2, 'horario de utilizacao indevido');
INSERT INTO anomalia values (3, 'consumo energetico excessivo');

/*consumos energeticos normais*/
INSERT INTO consumoenergetico values (TO_DATE('HH:MM:SS','14:00'), '21:00', 1, 1);
INSERT INTO consumoenergetico values ('21:00','00:00', 2, 1);
INSERT INTO consumoenergetico values ('00:00', '7:00', 3, 1);
INSERT INTO consumoenergetico values ('7:00','10:00', 4, 1);
INSERT INTO consumoenergetico values ('11:00', '18:00', 5, 1);
INSERT INTO consumoenergetico values ('00:00', '24:00', 6, 1);
INSERT INTO consumoenergetico values ('9:00', '19:00', 7, 1);
INSERT INTO consumoenergetico values ('18:00', '21:00', 8, 1);
INSERT INTO consumoenergetico values ('10:00', '24:00', 9, 1);

/*consumos anomalos*/
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'), 10, 2);
INSERT INTO consumoenergetico values (TO_DATE('13:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), 11, 2);
INSERT INTO consumoenergetico values (TO_DATE('08:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), 12, 2);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), 13, 2);
INSERT INTO consumoenergetico values (TO_DATE('03:00', 'HH24:MI'), TO_DATE('05:00', 'HH24:MI'), 14, 2);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), 15, 2);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), 16, 2);
INSERT INTO consumoenergetico values (TO_DATE('20:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'), 17, 2);

/*habitacao*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (/*id relacao*/1, /*id divisao*/ 1, /*id equip*/1, /*id horario*/4, /*id consumo*/ );
INSERT INTO equipamentoeletrico_divisao values (2, 1, 2, 4, 4);
INSERT INTO equipamentoeletrico_divisao values (3, 1, 3, 4, 4);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (4, 2, 3, 4, 10);
INSERT INTO equipamentoeletrico_divisao values (5, 2 ,4, 4, 4);
INSERT INTO equipamentoeletrico_divisao values (6, 2, 5, 4, 4);
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (7, 3, 4, 4, 4);
INSERT INTO equipamentoeletrico_divisao values (8, 3, 6, 4, 4);
INSERT INTO equipamentoeletrico_divisao values (9, 3, 9, 4, 11);

/*escritorios*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (10, 4, 1, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (11, 4, 1, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (12, 4, 1, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (13, 4, 1, 7, 5);
INSERT INTO equipamentoeletrico_divisao values (14, 4, 1, 7, 5);
INSERT INTO equipamentoeletrico_divisao values (15, 4, 1, 7, 5);
INSERT INTO equipamentoeletrico_divisao values (16, 4, 1, 1, 5);
INSERT INTO equipamentoeletrico_divisao values (17, 4, 1, 1, 5);
INSERT INTO equipamentoeletrico_divisao values (18, 4, 5, 6, 10);
INSERT INTO equipamentoeletrico_divisao values (19, 4, 2, 7, 5);
INSERT INTO equipamentoeletrico_divisao values (20, 4, 6, 7, 5);
INSERT INTO equipamentoeletrico_divisao values (21, 4, 4, 8, 5);
INSERT INTO equipamentoeletrico_divisao values (22, 4, 4, 8, 5);
INSERT INTO equipamentoeletrico_divisao values (23, 4, 4, 8, 5);
INSERT INTO equipamentoeletrico_divisao values (24, 4, 3, 6, 5);
INSERT INTO equipamentoeletrico_divisao values (25, 4, 3, 6, 5);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (26, 5, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (27, 5, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (28, 5, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (29, 5, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (30, 5, 1, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (31, 5, 1, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (32, 5, 1, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (33, 5, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (34, 5, 2, 7, 10);
INSERT INTO equipamentoeletrico_divisao values (35, 5, 6, 7, 11);
INSERT INTO equipamentoeletrico_divisao values (36, 5, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (37, 5, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (38, 5, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (39, 5, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (40, 5, 4, 8, 8);

/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (41, 6, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (42, 6, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (43, 6, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (44, 6, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (45, 6, 1, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (46, 6, 1, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (47, 6, 1, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (48, 6, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (49, 6, 2, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (50, 6, 6, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (51, 6, 3, 6, 12);
INSERT INTO equipamentoeletrico_divisao values (52, 6, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (53, 6, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (54, 6, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (55, 6, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (56, 6, 11, 5, 5);

/*maternidade*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (57, 7, 1, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (58, 7, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (59, 7, 12, 5,5 );
INSERT INTO equipamentoeletrico_divisao values (60, 7, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (61, 7, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (62, 7, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (63, 7, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (64, 7, 15, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (65, 7, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (66, 7, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (67, 7, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (68, 7, 4, 8, 11);
INSERT INTO equipamentoeletrico_divisao values (69, 7, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (70, 7, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (71, 7, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (72, 7, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (73, 7, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (74, 7, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (75, 7, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (76, 7, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (77, 7, 7, 9, 9);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (78, 8, 1, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (79, 8, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (80, 8, 12, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (81, 8, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (82, 8, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (83, 8, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (84, 8, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (85, 8, 15, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (86, 8, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (87, 8, 3, 6, 11);
INSERT INTO equipamentoeletrico_divisao values (88, 8, 3, 6, 12);
INSERT INTO equipamentoeletrico_divisao values (89, 8, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (90, 8, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (91, 8, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (92, 8, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (93, 8, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (94, 8, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (95, 8, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (96, 8, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (97, 8, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (98, 8, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (99, 8, 15, 5, 5);
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (100, 9, 1, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (101, 9, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (102, 9, 12, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (103, 9, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (104, 9, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (105, 9, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (106, 9, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (107, 9, 15, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (108, 9, 3, 6, 13);
INSERT INTO equipamentoeletrico_divisao values (109, 9, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (110, 9, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (111, 9, 4, 8, 6);
INSERT INTO equipamentoeletrico_divisao values (112, 9, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (113, 9, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (114, 9, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (115, 9, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (116, 9, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (117, 9, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (118, 9, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (119, 9, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (120, 9, 7, 9, 9);

/*loja*/
INSERT INTO equipamentoeletrico_divisao values (121, 10, 8, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (122, 10, 12, 1, 1);
INSERT INTO equipamentoeletrico_divisao values (123, 10, 4, 1, 1);

/*centro comercial*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (124, 11, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (125, 11, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (126, 11, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (127, 11, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (128, 11, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (129, 11, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (130, 11, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (131, 11, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (132, 11, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (133, 11, 9, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (134, 11, 9, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (135, 11, 9, 9, 9);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (136, 12, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (137, 12, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (138, 12, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (139, 12, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (140, 12, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (141, 12, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (142, 12, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (143, 12, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (144, 12, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (145, 12, 12, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (146, 12, 12, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (147, 12, 12, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (148, 12, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (149, 12, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (150, 12, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (151, 12, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (152, 12, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (153, 12, 1, 9, 9);
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (154, 13, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (155, 13, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (156, 13, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (157, 13, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (158, 13, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (159, 13, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (160, 13, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (161, 13, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (162, 13, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (163, 13, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (164, 13, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (165, 13, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (166, 13, 2, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (167, 13, 2, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (168, 13, 2, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (169, 13, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (170, 13, 1, 9, 10);
INSERT INTO equipamentoeletrico_divisao values (171, 13, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (172, 13, 6, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (173, 13, 6, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (174, 13, 6, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (175, 13, 11, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (176, 13, 11, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (177, 13, 11, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (178, 13, 11, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (179, 13, 11, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (180, 13, 11, 9, 9);
/*piso 3*/
INSERT INTO equipamentoeletrico_divisao values (181, 14, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (182, 14, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (183, 14, 8, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (184, 14, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (185, 14, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (186, 14, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (187, 14, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (188, 14, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (189, 14, 4, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (190, 14, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (191, 14, 1, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (192, 14, 9, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (193, 14, 9, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (194, 14, 9, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (195, 14, 9, 9, 9);

/*discoteca*/
INSERT INTO equipamentoeletrico_divisao values (196, 15, 10, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (197, 15, 2, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (198, 15, 5, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (199, 15, 10, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (200, 15, 8, 2, 3);
INSERT INTO equipamentoeletrico_divisao values (201, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (202, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (203, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (204, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (205, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (206, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (207, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (208, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (209, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (210, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (211, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (212, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (213, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (214, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (215, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (216, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (217, 15, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (218, 15, 4, 3, 3);

/*laboratorio*/
INSERT INTO equipamentoeletrico_divisao values (219, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (220, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (221, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (222, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (223, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (224, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (225, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (226, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (227, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (228, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (229, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (230, 16, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (231, 16, 5, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (232, 16, 5, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (233, 16, 5, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (234, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (235, 16, 13, 7, 11);
INSERT INTO equipamentoeletrico_divisao values (236, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (237, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (238, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (239, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (240, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (241, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (242, 16, 13, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (243, 16, 2, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (244, 16, 2, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (245, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (246, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (247, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (248, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (249, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (250, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (251, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (252, 16, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (253, 16, 1, 7, 7);

/*penitenciaria*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (254, 17, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (255, 17, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (256, 17, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (257, 17, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (258, 17, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (259, 17, 4, 8, 8);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (260, 18, 4, 8, 11);
INSERT INTO equipamentoeletrico_divisao values (261, 18, 4, 8, 11);
INSERT INTO equipamentoeletrico_divisao values (262, 18, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (263, 18, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (264, 18, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (265, 18, 4, 8, 8);

/*fabrica*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (266, 19, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (267, 19, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (268, 19, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (269, 19, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (270, 19, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (271, 19, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (272, 19, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (273, 19, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (274, 19, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (275, 19, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (276, 19, 12, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (277, 19, 12, 5, 5);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (278, 20, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (279, 20, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (280, 20, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (281, 20, 4, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (282, 20, 12, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (283, 20, 12, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (284, 20, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (285, 20, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (286, 20, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (287, 20, 14, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (288, 20, 1, 5, 13);
INSERT INTO equipamentoeletrico_divisao values (289, 20, 1, 5, 5);

/*farmacia*/
INSERT INTO equipamentoeletrico_divisao values (290, 21, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (291, 21, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (292, 21, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (293, 21, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (294, 21, 4, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (295, 21, 3, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (296, 21, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (297, 21, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (298, 21, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (299, 21, 1, 7, 12);
INSERT INTO equipamentoeletrico_divisao values (300, 21, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (301, 21, 1, 7, 7);
INSERT INTO equipamentoeletrico_divisao values (302, 21, 5, 7, 7);

/*maternidade 2*/
/*piso 0*/
INSERT INTO equipamentoeletrico_divisao values (303, 22, 1, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (304, 22, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (305, 22, 12, 5,5 );
INSERT INTO equipamentoeletrico_divisao values (306, 22, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (307, 22, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (308, 22, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (309, 22, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (310, 22, 15, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (311, 22, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (312, 22, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (313, 22, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (314, 22, 4, 8, 11);
INSERT INTO equipamentoeletrico_divisao values (315, 22, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (316, 22, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (317, 22, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (318, 22, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (319, 22, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (320, 22, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (321, 22, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (322, 22, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (323, 22, 7, 9, 9);
/*piso 1*/
INSERT INTO equipamentoeletrico_divisao values (324, 23, 1, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (325, 23, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (326, 23, 12, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (327, 23, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (328, 23, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (329, 23, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (330, 23, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (331, 23, 15, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (332, 23, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (333, 23, 3, 6, 11);
INSERT INTO equipamentoeletrico_divisao values (334, 23, 3, 6, 12);
INSERT INTO equipamentoeletrico_divisao values (335, 23, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (336, 23, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (337, 23, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (338, 23, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (339, 23, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (340, 23, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (341, 23, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (342, 23, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (343, 23, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (344, 23, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (345, 23, 15, 5, 5);
/*piso 2*/
INSERT INTO equipamentoeletrico_divisao values (346, 24, 1, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (347, 24, 5, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (348, 24, 12, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (349, 24, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (350, 24, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (351, 24, 2, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (352, 24, 16, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (353, 24, 15, 5, 5);
INSERT INTO equipamentoeletrico_divisao values (354, 24, 3, 6, 13);
INSERT INTO equipamentoeletrico_divisao values (355, 24, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (356, 24, 3, 6, 6);
INSERT INTO equipamentoeletrico_divisao values (357, 24, 4, 8, 6);
INSERT INTO equipamentoeletrico_divisao values (358, 24, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (359, 24, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (360, 24, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (361, 24, 4, 8, 8);
INSERT INTO equipamentoeletrico_divisao values (362, 24, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (363, 24, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (364, 24, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (365, 24, 7, 9, 9);
INSERT INTO equipamentoeletrico_divisao values (366, 24, 7, 9, 9);

/*discoteca 2*/
INSERT INTO equipamentoeletrico_divisao values (367, 25, 10, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (368, 25, 2, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (369, 25, 5, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (370, 25, 10, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (371, 25, 8, 2, 3);
INSERT INTO equipamentoeletrico_divisao values (372, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (373, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (374, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (375, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (376, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (377, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (378, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (379, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (380, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (381, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (382, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (383, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (384, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (385, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (386, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (387, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (388, 25, 4, 3, 3);
INSERT INTO equipamentoeletrico_divisao values (389, 25, 4, 3, 3);





