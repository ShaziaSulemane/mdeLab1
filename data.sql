BEGIN

INSERT INTO tarifa values (ID_TARIFA_SEQUENCE.nextval, 0.25, 0.20, 0.15, TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'));
INSERT INTO tarifa values (ID_TARIFA_SEQUENCE.nextval, 0.25, 0.25, 0.25, TO_DATE('16:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));

INSERT INTO proprietario values (ID_PROPRIETARIO_SEQUENCE.nextval, 'joe berardo', '100234234', 'pessoa individual');
INSERT INTO proprietario values (ID_PROPRIETARIO_SEQUENCE.nextval, 'jose socrates', '345242348', 'pessoa individual');
INSERT INTO proprietario values (ID_PROPRIETARIO_SEQUENCE.nextval, 'jj associados', '500321453', 'empresa');
INSERT INTO proprietario values (ID_PROPRIETARIO_SEQUENCE.nextval, 'purina', '321453546', 'empresa');
INSERT INTO proprietario values (ID_PROPRIETARIO_SEQUENCE.nextval, 'estado', '500321453', 'conjunto das estruturas de administracao de portugal');

INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'habitacao', 'Rua Fernando Pessoa', 'Lisboa', '39.35ºN 8.89ºO', 120, 1, 1);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'escritorios', 'Rua Fernando Pessoa', 'Lisboa', '96.69ºN 96.69ºO', 1200, 2, 3);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'maternidade','Rua Fernando Pessoa', 'Lisboa', '39.96ºN 8.96ºS', 2500, 1, 5);

INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'loja', 'Rua Luis Camoes', 'Lisboa', '69.99ºN 69.99ºS', 200, 2, 4);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'centro comercial', 'Rua Luis Camoes', 'Lisboa', '69.66ºN 69.66ºS', 1500, 1, 3);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'discoteca', 'Rua Luis Camoes', 'Lisboa', '69.9ºN 3.45ºO', 200, 2, 3);

INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'laboratorios', 'Rua Bocage', 'Almada', '80.89ºN 69.96ºO', 700, 2, 4);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'penitenciaria', 'Rua Bocage', 'Almada', '80.69ºN 3.49ºS', 650, 1, 5);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'fabrica', 'Rua Bocage', 'Almada', '80.5ºN 33.2ºO', 1000, 1, 4);

INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval,'farmacia', 'Rua Cesario Verde', 'Almada', '83.4ºN 34.5ºO', 300, 1, 2);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'maternidade','Rua Cesario Verde', 'Almada', '39.96ºN 8.96ºS', 1200, 1, 5);
INSERT INTO edificio values (ID_EDIFICIO_SEQUENCE.nextval, 'discoteca', 'Rua Cesario Verde', 'Almada', '69.9ºN 3.45ºO', 200, 2, 3);

/* equipamentos genericos */
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'pc 12345', 'ASUS-2345', 'ASUS PORTABLE COMPUTER', 50, 450);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'caf 2345', 'DOLCE VITA','DOLCE VITA COFFEE MAKER',100, 300);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'rr 2345', 'NOS', 'NOS ROUTER', 50, 150);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'ilu 345', 'LED', 'LED LAMP', 80, 12);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'rf 7896', 'SAMSUNG', 'SAMSUNG FRIDGE', 250, 250);
/*equipamentos especificos*/
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'imp 345', 'CAN123', 'CANON PRINTER', 120, 50);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'inc 345', 'ICU123', 'ICU INCUBATOR', 45, 37000);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'mr 1234', 'IREG123', 'REGISTER MACHINE', 10, 500);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'sp 1456', 'DRDRE', 'SPEAKERS', 15, 5000);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'mt 1545', 'LILBEAT', 'MIX TABLE', 45, 12000);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'pj 7895', 'CA-NON', 'PROJECTOR CANON', 45, 450);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'ex 1234', 'NUM1FAN', 'EXHAUST FAN', 10, 500);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'osc 123', 'ICCLOSE', 'MICROSCOPE', 10, 500);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'rb 1234', 'IASSEMBLE', 'ASSEMBLING ROBOT', 250, 15000);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'mc 1523', 'ICBRAIN', 'MRI MACHINE', 300, 3500);
INSERT INTO equipamentoeletrico values (ID_EQUIP_ELE_SEQUENCE.nextval, 'vm 6479', 'IFOOD', 'VENDING MACHINE', 100, 3000);

create_div();

INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('14:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('21:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('00:00', 'HH24:MI'), TO_DATE('07:00', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('07:00', 'HH24:MI'), TO_DATE('10:00', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('11:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('00:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('09:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('18:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));
INSERT INTO horario values (ID_HORARIO_SEQUENCE.nextval, TO_DATE('10:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'));


create_equip_div();

/*consumos energeticos normais*/
INSERT INTO consumoenergetico values (TO_DATE('01:00', 'HH24:MI'),TO_DATE('09:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('10/4/2019', 'DD/MM/YYYY'), 1);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('07:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('12/4/2019', 'DD/MM/YYYY'), 2);
INSERT INTO consumoenergetico values (TO_DATE('07:00', 'HH24:MI'),TO_DATE('10:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('13/4/2019', 'DD/MM/YYYY'), 3);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('15/4/2019', 'DD/MM/YYYY'), 4);
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'),TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('16/4/2019', 'DD/MM/YYYY'), 5);
INSERT INTO consumoenergetico values (TO_DATE('18:00', 'HH24:MI'),TO_DATE('21:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('10/4/2019', 'DD/MM/YYYY'), 6);
INSERT INTO consumoenergetico values (TO_DATE('10:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('11/4/2019', 'DD/MM/YYYY'), 7);
INSERT INTO consumoenergetico values (TO_DATE('01:00', 'HH24:MI'),TO_DATE('09:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('10/4/2019', 'DD/MM/YYYY'), 8);
INSERT INTO consumoenergetico values (TO_DATE('21:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('11/4/2019', 'DD/MM/YYYY'), 9);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('07:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('12/4/2019', 'DD/MM/YYYY'), 10);
INSERT INTO consumoenergetico values (TO_DATE('07:00', 'HH24:MI'),TO_DATE('10:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('13/4/2019', 'DD/MM/YYYY'), 11);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'),TO_DATE('18:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('14/4/2019', 'DD/MM/YYYY'), 12);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('15/4/2019', 'DD/MM/YYYY'), 13);
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'),TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('16/4/2019', 'DD/MM/YYYY'), 14);
INSERT INTO consumoenergetico values (TO_DATE('18:00', 'HH24:MI'),TO_DATE('21:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('10/4/2019', 'DD/MM/YYYY'), 15);
INSERT INTO consumoenergetico values (TO_DATE('10:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('11/4/2019', 'DD/MM/YYYY'), 16);
INSERT INTO consumoenergetico values (TO_DATE('01:00', 'HH24:MI'),TO_DATE('09:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('10/4/2019', 'DD/MM/YYYY'), 17);
INSERT INTO consumoenergetico values (TO_DATE('21:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('11/4/2019', 'DD/MM/YYYY'), 18);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('07:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('12/4/2019', 'DD/MM/YYYY'), 19);
INSERT INTO consumoenergetico values (TO_DATE('07:00', 'HH24:MI'),TO_DATE('10:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('13/4/2019', 'DD/MM/YYYY'), 20);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'),TO_DATE('18:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('14/4/2019', 'DD/MM/YYYY'), 21);
INSERT INTO consumoenergetico values (TO_DATE('00:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('15/4/2019', 'DD/MM/YYYY'), 22);
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'),TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('16/4/2019', 'DD/MM/YYYY'), 23);
INSERT INTO consumoenergetico values (TO_DATE('18:00', 'HH24:MI'),TO_DATE('21:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('10/4/2019', 'DD/MM/YYYY'), 24);
INSERT INTO consumoenergetico values (TO_DATE('10:00', 'HH24:MI'),TO_DATE('23:59', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval, TO_DATE('11/4/2019', 'DD/MM/YYYY'), 25);
/*consumos anomalos*/
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('12/4/2019', 'DD/MM/YYYY'), 26);
INSERT INTO consumoenergetico values (TO_DATE('13:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 27);
INSERT INTO consumoenergetico values (TO_DATE('08:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('14/4/2019', 'DD/MM/YYYY'), 28);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 29);
INSERT INTO consumoenergetico values (TO_DATE('03:00', 'HH24:MI'), TO_DATE('05:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('16/4/2019', 'DD/MM/YYYY'), 30);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('10/4/2019', 'DD/MM/YYYY'), 31);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 32);
INSERT INTO consumoenergetico values (TO_DATE('20:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 33);
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('12/4/2019', 'DD/MM/YYYY'), 26);
INSERT INTO consumoenergetico values (TO_DATE('13:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 27);
INSERT INTO consumoenergetico values (TO_DATE('08:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('14/4/2019', 'DD/MM/YYYY'), 28);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 29);
INSERT INTO consumoenergetico values (TO_DATE('03:00', 'HH24:MI'), TO_DATE('05:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('16/4/2019', 'DD/MM/YYYY'), 30);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('10/4/2019', 'DD/MM/YYYY'), 31);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 32);
INSERT INTO consumoenergetico values (TO_DATE('20:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 33);
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('12/4/2019', 'DD/MM/YYYY'), 34);
INSERT INTO consumoenergetico values (TO_DATE('13:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 35);
INSERT INTO consumoenergetico values (TO_DATE('08:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('14/4/2019', 'DD/MM/YYYY'), 36);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 37);
INSERT INTO consumoenergetico values (TO_DATE('03:00', 'HH24:MI'), TO_DATE('05:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('16/4/2019', 'DD/MM/YYYY'), 38);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('10/4/2019', 'DD/MM/YYYY'), 39);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 41);
INSERT INTO consumoenergetico values (TO_DATE('20:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 42);
INSERT INTO consumoenergetico values (TO_DATE('09:00', 'HH24:MI'), TO_DATE('18:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('12/4/2019', 'DD/MM/YYYY'), 43);
INSERT INTO consumoenergetico values (TO_DATE('13:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('13/4/2019', 'DD/MM/YYYY'), 44);
INSERT INTO consumoenergetico values (TO_DATE('08:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('14/4/2019', 'DD/MM/YYYY'), 45);
INSERT INTO consumoenergetico values (TO_DATE('11:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('15/4/2019', 'DD/MM/YYYY'), 46);
INSERT INTO consumoenergetico values (TO_DATE('03:00', 'HH24:MI'), TO_DATE('05:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('16/4/2019', 'DD/MM/YYYY'), 47);
INSERT INTO consumoenergetico values (TO_DATE('12:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'), CONSUMO_ID_SEQUENCE.nextval,TO_DATE('10/4/2019', 'DD/MM/YYYY'), 48);

INSERT INTO anomalia VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'CONSUMO INVALIDO', 26);
INSERT INTO anomalia VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'CONSUMO INVALIDO', 26);
INSERT INTO anomalia VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'CONSUMO INVALIDO', 26);
INSERT INTO anomalia VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'CONSUMO INVALIDO', 26);
INSERT INTO anomalia VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'CONSUMO INVALIDO', 26);
INSERT INTO anomalia VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'CONSUMO INVALIDO', 26);

END;