/*PACKAGE FOR GLOBAL VARIABLES*/
CREATE OR REPLACE 
PACKAGE GLOBAL_VARIABLES AS 
    VALUE_ID INTEGER;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
END GLOBAL_VARIABLES;

/*RF 1*/
/*READ*/
SELECT * FROM edificio;
SELECT * FROM divisao;
SELECT * FROM consumoenergetico;
SELECT * FROM equipamentoeletrico;
SELECT * FROM horario;
SELECT * FROM equipamentoeletrico_divisao;
SELECT * FROM tarifa;

/*UPDATE*/
UPDATE edificio SET coordenadas_gps = '66.56ºN 8.89ºO' WHERE id_edificio = 3;
UPDATE edificio SET area = 150 WHERE tipologia = 'loja';
UPDATE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE tarifa SET preco_dia = 0.3 WHERE id_tarifa = 1;
UPDATE tarifa SET hora_mudanca_tarde = TO_DATE('13:00', 'HH24:MI') WHERE id_tarifa = 1;

/*DELETE*/
DELETE edificio WHERE id_edificio = 1;
DELETE divisao WHERE id_edificio = 2; 
DELETE consumoenergetico WHERE id_anomalia = 2;
DELETE equipamentoeletrico_divisao WHERE id_divisao = 1;
DELETE horario WHERE hora_inicio BETWEEN TO_CHAR('12:00', 'HH24:MI') AND TO_CHAR('14:00', 'HH24:MI');
DELETE equipamentoeletrico WHERE tensao_alimentacao = 50;
DELETE tarifa WHERE id_tarifa = 1;

/*RF 2 e RF 3*/
--insert consumo
INSERT INTO consumoenergetico values (
    TO_DATE('13:00', 'HH24:MI'), 
    TO_DATE('15:00', 'HH24:MI'), 
    18, 
    NULL,
    TO_DATE('14-04-2019', 'DD-MM-YYYY'),
    1
);
--delete consumo
DELETE consumoenergetico WHERE id_consumoenergetico = 1;

--TRIGGER UPDATE CONSUMO
CREATE OR REPLACE TRIGGER UPDATE_CONSUMO 
AFTER UPDATE OF HORARIOFIM,HORARIOINICIO ON CONSUMOENERGETICO
FOR EACH ROW
DECLARE
    idanomalia INTEGER := :OLD.id_anomalia;
    h_inicio DATE;
    h_fim DATE;
BEGIN
IF (:OLD.HORARIOFIM <> :NEW.HORARIOFIM OR :OLD.HORARIOINICIO <> :NEW.HORARIOINICIO) THEN
    UPDATE consumoenergetico SET id_anomalia = 2 
        WHERE consumoenergetico.id_consumoenergetico = :NEW.id_consumoenergetico;
    DBMS_OUTPUT.put_line('anomaly - updated');
END IF;

    SELECT horario.hora_inicio INTO h_inicio FROM horario 
JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
WHERE consumoenergetico.id_consumoenergetico = :NEW.id_consumoenergetico;

    SELECT horario.hora_inicio INTO h_fim FROM horario 
JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
WHERE consumoenergetico.id_consumoenergetico = :NEW.id_consumoenergetico;

IF :NEW.HORARIOFIM = H_FIM AND :NEW.HORARIOINICIO = H_INICIO THEN
    UPDATE consumoenergetico SET id_anomalia = 1
        WHERE consumoenergetico.id_consumoenergetico = :NEW.id_consumoenergetico;
    DBMS_OUTPUT.put_line('no anomaly - updated');
END IF;
END;
--UPDATE CONSUMOS
UPDATE consumoenergetico SET data_consumo = TO_DATE('15-04-2019', 'DD-MM-YYYY')
    WHERE id_consumoenergetico = 1;
--select consumoenergetico
SELECT * FROM consumoenergetico;

--create consumo  
CREATE_CONSUMO(TO_DATE('13:00', 'HH24:MI'), TO_DATE('15:00', 'HH24:MI'), TO_DATE('14-04-2019', 'DD-MM-YYYY'), 1, 2, 4);
--update consumo
UPDATE_CONSUMO(3, TO_DATE('13:00', 'HH24:MI'), TO_DATE('15:00', 'HH24:MI'));
--delete consumo
DELETE_CONSUMO(1, TO_DATE('01-04-2019', 'DD-MM-YYYY'));

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
    soma_consumos(edificio.id_edificio, '2019-04-11', '2019-04-15') AS soma_consumos,
    calcula_preco_consumo(edificio.id_edificio,'2019-04-11', '2019-04-15') AS custo_consumo
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
JOIN anomalia ON anomalia.id_anomalia = consumoenergetico.id_anomalia
JOIN equipamentoeletrico ON equipamentoeletrico_divisao.id_equipamentoeletrico = equipamentoeletrico.id_equipamentoeletrico
WHERE edificio.id_edificio = 1 AND anomalia.id_anomalia <> 1;

/*RF 11*/
-- devolve o maior e menor valor de energia gasta por um equipamento eletrico num edificio
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
WHERE edificio.id_edificio = 1;

