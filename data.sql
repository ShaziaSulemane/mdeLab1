BEGIN
INSERT INTO tarifa values (1, 0.25, 0.20, 0.15, TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'));
INSERT INTO tarifa values (2, 0.25, 0.25, 0.25, TO_DATE('16:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));

INSERT INTO proprietario values (1, 'joe berardo', '100234234', 'pessoa individual');
INSERT INTO proprietario values (2, 'jose socrates', '345242348', 'pessoa individual');
INSERT INTO proprietario values (3, 'jj associados', '500321453', 'empresa');
INSERT INTO proprietario values (4, 'purina', '321453546', 'empresa');
INSERT INTO proprietario values (5, 'estado', '500321453', 'conjunto das estruturas de administracao de portugal');

INSERT INTO edificio values (1, 'habitacao', 'Rua Fernando Pessoa', 'Lisboa', '39.35ºN 8.89ºO', 120, 1, 1);
INSERT INTO edificio values (2, 'escritorios', 'Rua Fernando Pessoa', 'Lisboa', '96.69ºN 96.69ºO', 1200, 2, 3);
INSERT INTO edificio values (3, 'maternidade','Rua Fernando Pessoa', 'Lisboa', '39.96ºN 8.96ºS', 2500, 1, 5);

INSERT INTO edificio values (4, 'loja', 'Rua Luis Camoes', 'Lisboa', '69.99ºN 69.99ºS', 200, 2, 4);
INSERT INTO edificio values (5, 'centro comercial', 'Rua Luis Camoes', 'Lisboa', '69.66ºN 69.66ºS', 1500, 1, 3);
INSERT INTO edificio values (6, 'discoteca', 'Rua Luis Camoes', 'Lisboa', '69.9ºN 3.45ºO', 200, 2, 3);

INSERT INTO edificio values (7, 'laboratorios', 'Rua Bocage', 'Almada', '80.89ºN 69.96ºO', 700, 2, 4);
INSERT INTO edificio values (8, 'penitenciaria', 'Rua Bocage', 'Almada', '80.69ºN 3.49ºS', 650, 1, 5);
INSERT INTO edificio values (9, 'fabrica', 'Rua Bocage', 'Almada', '80.5ºN 33.2ºO', 1000, 1, 4);

INSERT INTO edificio values (10,'farmacia', 'Rua Cesario Verde', 'Almada', '83.4ºN 34.5ºO', 300, 1, 2);
INSERT INTO edificio values (11, 'maternidade','Rua Cesario Verde', 'Almada', '39.96ºN 8.96ºS', 1200, 1, 5);
INSERT INTO edificio values (12, 'discoteca', 'Rua Cesario Verde', 'Almada', '69.9ºN 3.45ºO', 200, 2, 3);

/* equipamentos genericos */
INSERT INTO equipamentoeletrico values (1, 'pc 12345', 'ASUS-2345', 'ASUS PORTABLE COMPUTER', 50, 450);
INSERT INTO equipamentoeletrico values (2, 'caf 2345', 'DOLCE VITA','DOLCE VITA COFFEE MAKER',100, 300);
INSERT INTO equipamentoeletrico values (3, 'rr 2345', 'NOS', 'NOS ROUTER', 50, 150);
INSERT INTO equipamentoeletrico values (4, 'ilu 345', 'LED', 'LED LAMP', 80, 12);
INSERT INTO equipamentoeletrico values (5, 'rf 7896', 'SAMSUNG', 'SAMSUNG FRIDGE', 250, 250);
/*equipamentos especificos*/
INSERT INTO equipamentoeletrico values (6, 'imp 345', 'CAN123', 'CANON PRINTER', 120, 50);
INSERT INTO equipamentoeletrico values (7, 'inc 345', 'ICU123', 'ICU INCUBATOR', 45, 37000);
INSERT INTO equipamentoeletrico values (8, 'mr 1234', 'IREG123', 'REGISTER MACHINE', 10, 500);
INSERT INTO equipamentoeletrico values (9, 'sp 1456', 'DRDRE', 'SPEAKERS', 15, 5000);
INSERT INTO equipamentoeletrico values (10, 'mt 1545', 'LILBEAT', 'MIX TABLE', 45, 12000);
INSERT INTO equipamentoeletrico values (11, 'pj 7895', 'CA-NON', 'PROJECTOR CANON', 45, 450);
INSERT INTO equipamentoeletrico values (12, 'ex 1234', 'NUM1FAN', 'EXHAUST FAN', 10, 500);
INSERT INTO equipamentoeletrico values (13, 'osc 123', 'ICCLOSE', 'MICROSCOPE', 10, 500);
INSERT INTO equipamentoeletrico values (14, 'rb 1234', 'IASSEMBLE', 'ASSEMBLING ROBOT', 250, 15000);
INSERT INTO equipamentoeletrico values (15, 'mc 1523', 'ICBRAIN', 'MRI MACHINE', 300, 3500);
INSERT INTO equipamentoeletrico values (16, 'vm 6479', 'IFOOD', 'VENDING MACHINE', 100, 3000);

create_div();

INSERT INTO horario values (1, TO_DATE('14:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));
INSERT INTO horario values (2, TO_DATE('21:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'));
INSERT INTO horario values (3, TO_DATE('00:00', 'HH24:MI'), TO_DATE('07:00', 'HH24:MI'));
INSERT INTO horario values (4, TO_DATE('07:00', 'HH24:MI'), TO_DATE('10:00', 'HH24:MI'));
INSERT INTO horario values (5, TO_DATE('11:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'));
INSERT INTO horario values (6, TO_DATE('00:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'));
INSERT INTO horario values (7, TO_DATE('09:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'));
INSERT INTO horario values (8, TO_DATE('18:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));
INSERT INTO horario values (9, TO_DATE('10:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'));
/*anomalias*/
INSERT INTO anomalia values (1, 'sem anomalia');
INSERT INTO anomalia values (2, 'horario de utilizacao indevido');
INSERT INTO anomalia values (3, 'consumo energetico excessivo');

create_equip_div();

/*consumos energeticos normais*/
INSERT INTO consumoenergetico values (TO_DATE('01:00', 'HH24:MI'),TO_DATE('09:00', 'HH24:MI'), 1, 1,TO_DATE('10/4/2019', 'DD/MM/YYYY'), 1);
INSERT INTO consumoenergetico values (TO_DATE('21:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), 2, 1,TO_DATE('11/4/2019', 'DD/MM/YYYY'), 1);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('07:00', 'HH24:MI'), 3, 1,TO_DATE('12/4/2019', 'DD/MM/YYYY'), 2);
INSERT INTO consumoenergetico values (TO_DATE('07:00', 'HH24:MI'),TO_DATE('10:00', 'HH24:MI'), 4, 1,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 3);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'),TO_DATE('18:00', 'HH24:MI'), 5, 1,TO_DATE('14/4/2019', 'DD/MM/YYYY'), 3);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), 6, 1,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 4);
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'),TO_DATE('19:00', 'HH24:MI'), 7, 1,TO_DATE('16/4/2019', 'DD/MM/YYYY'), 5);
INSERT INTO consumoenergetico values (TO_DATE('18:00', 'HH24:MI'),TO_DATE('21:00', 'HH24:MI'), 8, 1,TO_DATE('10/4/2019', 'DD/MM/YYYY'), 6);
INSERT INTO consumoenergetico values (TO_DATE('10:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), 9, 1,TO_DATE('11/4/2019', 'DD/MM/YYYY'), 7);

/*consumos anomalos*/
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'), 10, 2,TO_DATE('12/4/2019', 'DD/MM/YYYY'), 4);
INSERT INTO consumoenergetico values (TO_DATE('13:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), 11, 2,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 8);
INSERT INTO consumoenergetico values (TO_DATE('08:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), 12, 2,TO_DATE('14/4/2019', 'DD/MM/YYYY'), 9);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), 13, 2,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 10);
INSERT INTO consumoenergetico values (TO_DATE('03:00', 'HH24:MI'), TO_DATE('05:00', 'HH24:MI'), 14, 2,TO_DATE('16/4/2019', 'DD/MM/YYYY'), 11);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), 15, 2,TO_DATE('10/4/2019', 'DD/MM/YYYY'), 12);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), 16, 2,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 13);
INSERT INTO consumoenergetico values (TO_DATE('20:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'), 17, 2,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 14);
END;