/*SEQUENCES*/
CREATE SEQUENCE  "MDECODER999"."CONSUMO_ID_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ANOMALIA_ID_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ID_HORARIO_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ID_EQUIP_ELE_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ID_EDIFICIO_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ID_PROPRIETARIO_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ID_TARIFA_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ID_DIVISAO_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;
CREATE SEQUENCE  "MDECODER999"."ID_EQELE_DIV_SEQUENCE"  MINVALUE 1 MAXVALUE 500 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE ;

/*TRIGGERS*/
CREATE OR REPLACE TRIGGER TRIGGER_UPDATE_CONSUMO
AFTER UPDATE  OF HORARIOINICIO, HORARIOFIM ON CONSUMOENERGETICO
FOR EACH ROW
DECLARE
    media FLOAT;
BEGIN
    IF :NEW.HORARIOINICIO - :NEW.HORARIOFIM > 10 THEN
        INSERT INTO ANOMALIA VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'OVER CONSUMPTION', :new.id_consumoenergetico);
        DBMS_OUTPUT.put_line('ANOMALY ADDED');
    END IF;
END;

/*RF 1*/
/*READ*/
SELECT * FROM edificio;
SELECT * FROM divisao;
SELECT * FROM consumoenergetico;
SELECT * FROM equipamentoeletrico;
SELECT * FROM horario;
SELECT * FROM equipamentoeletrico_divisao;
SELECT * FROM tarifa;
SELECT * FROM proprietario;
/*UPDATE*/
UPDATE edificio SET coordenadas_gps = '66.56ºN 8.89ºO' WHERE id_edificio = 3;
UPDATE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE tarifa SET preco_dia = 0.3 WHERE id_tarifa = 1;
UPDATE tarifa SET hora_mudanca_tarde = TO_DATE('13:00', 'HH24:MI') WHERE id_tarifa = 1;
UPDATE proprietario SET nif = '999999699' WHERE id_proprietario = 2;


/*RF 2 e RF 3*/
--insert consumo
INSERT INTO consumoenergetico values (
    TO_DATE('13:00', 'HH24:MI'), 
    TO_DATE('15:00', 'HH24:MI'), 
    CONSUMO_ID_SEQUENCE.nextval, 
    TO_DATE('14-04-2019', 'DD-MM-YYYY'),
    1
);

--UPDATE CONSUMOS
UPDATE consumoenergetico SET data_consumo = TO_DATE('15-04-2019', 'DD-MM-YYYY')
    WHERE id_consumoenergetico = 1;
UPDATE consumoenergetico SET horarioinicio = TO_DATE('13:00', 'HH24:MI'), 
    horariofim = TO_DATE('23:45', 'HH24:MI')
    WHERE id_consumoenergetico = 1;
--select consumoenergetico
SELECT * FROM consumoenergetico;

--update consumo
--doesnt need trigger --disable trigger_update_consumo
BEGIN
UPDATE_CONSUMO(7, TO_DATE('13:00', 'HH24:MI'), TO_DATE('15:00', 'HH24:MI'), 7);
END;

/*RF4*/
CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF4" ("DESIGNACAO", "DATA_CONSUMO", "ENERGIA_CONSUMIDA", "CUSTO_CONSUMO") AS 
  SELECT
    equipamentoeletrico.designacao,
    TO_CHAR(consumoenergetico.data_consumo, 'DD/MM/YYYY') AS data_consumo,
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa) AS energia_consumida,
    TO_CHAR (calcula_preco_consumo(edificio.id_edificio,'2019-04-11', '2019-04-15')) AS custo_consumo
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao 
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE consumoenergetico.data_consumo BETWEEN TO_DATE('11/4/2019', 'DD/MM/YYYY') AND TO_DATE('15/4/2019', 'DD/MM/YYYY');

/*RF 5 E RF 6*/
CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF5" ("ID_EDIFICIO", "SOMA_CONSUMOS", "CUSTO_CONSUMOS") AS 
  SELECT 
    edificio.id_edificio,
    soma_consumos(edificio.id_edificio, '2019-04-11', '2019-04-15') AS soma_consumos,
    calcula_preco_consumo(edificio.id_edificio,'2019-04-11', '2019-04-15') AS custo_consumos
FROM edificio;

CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF6" ("ID_EDIFICIO", "SOMA_CONSUMOS", "CUSTO_CONSUMO") AS 
  SELECT 
    edificio.id_edificio,
    soma_consumos(edificio.id_edificio, TO_DATE('2019-04-11', 'YYYY-MM-DD'),TO_DATE('2019-04-15', 'YYYY-MM-DD')) AS soma_consumo
FROM edificio WHERE id_edificio = 1;

/*RF7 */
CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF7" ("CONSUMO_MEDIO_LISBOA") AS 
  SELECT AVG (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa)) AS consumo_medio_lisboa
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Lisboa';

CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF7_PART2" ("CONSUMO_MEDIO_ALMADA") AS 
  SELECT AVG (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa)) AS consumo_medio_almada
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Almada';

/*RF 8*/
CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF8" ("CONSUMO_TOTAL_LISBOA") AS 
  SELECT SUM (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa)) AS consumo_total_lisboa
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao 
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Lisboa';

CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF8_PART2" ("CONSUMO_TOTAL_ALMADA") AS 
  SELECT SUM (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa)) AS consumo_total_almada
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Almada';

/*RF 10*/
CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF10" ("ID_EDIFICIO", "TIPOLOGIA", "DESIGNACAO", "ID_ANOMALIA", "TIPOANOMALIA") AS 
  SELECT 
    edificio.id_edificio,
    edificio.tipologia,
    equipamentoeletrico.designacao,
    anomalia.id_anomalia,
    anomalia.tipoanomalia  
FROM edificio JOIN divisao ON edificio.id_edificio = divisao.id_edificio 
JOIN equipamentoeletrico_divisao ON divisao.id_divisao = equipamentoeletrico_divisao.id_divisao
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
JOIN anomalia ON anomalia.id_consumoenergetico = consumoenergetico.id_consumoenergetico
JOIN equipamentoeletrico ON equipamentoeletrico_divisao.id_equipamentoeletrico = equipamentoeletrico.id_equipamentoeletrico
WHERE edificio.id_edificio = 1;

/*RF 11*/
-- devolve o maior e menor valor de energia gasta por um equipamento eletrico no nome de um proprietario
CREATE OR REPLACE FORCE VIEW "MDECODER999"."RF11" ("CONSUMO_MAXIMO", "CONSUMO_MINIMO") AS 
  SELECT 
    MAX ((24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa)) AS consumo_maximo,
    MIN ((24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa)) AS consumo_minimo
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
JOIN proprietario ON proprietario.id_proprietario = edificio.id_proprietario
WHERE proprietario.id_proprietario = 1;

