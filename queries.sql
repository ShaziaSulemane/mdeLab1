/*RF 1*/

/*UPDATE*/
UPDATE edificio SET coordenadas_gps = '66.56ºN 8.89ºO' WHERE id_edificio = 3;
UPDATE edificio SET area = 150 WHERE tipologia = 'loja';
UPDATE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE tarifa SET preco_dia = 0.3 WHERE id_tarifa = 1;
UPDATE tarifa SET hora_mudanca_tarde = 13 WHERE id_tarifa = 1;

/*DELETE*/
DELETE edificio WHERE id_edificio = 1;
DELETE divisao WHERE id_edificio = 2; 
DELETE consumoenergetico WHERE id_anomalia = 2;
DELETE equipamentoeletrico_divisao WHERE id_divisao = 1;
DELETE horario WHERE hora_inicio BETWEEN TO_CHAR('12:00', 'HH24:MI') AND TO_CHAR('14:00', 'HH24:MI');
DELETE equipamentoeletrico WHERE tensao_alimentacao = 50;
DELETE tarifa WHERE id_tarifa = 1;

/*READ*/
SELECT * FROM edificio;
SELECT * FROM divisao;
SELECT * FROM consumoenergetico;
SELECT * FROM equipamentoeletrico;
SELECT * FROM horario;
SELECT * FROM equipamentoeletrico_divisao;
SELECT * FROM tarifa;

/*RF 2*/
SELECT 
    consumoenergetico.id_consumoenergetico, 
    TO_CHAR(consumoenergetico.horarioinicio, 'HH24:MI'),
    TO_CHAR(consumoenergetico.horariofim, 'HH24:MI'),
    anomalia.tipoanomalia,
    TO_CHAR(horario.hora_inicio, 'HH24:MI'),
    TO_CHAR(horario.hora_fim, 'HH24:MI'),
    edificio.tipologia
FROM consumoenergetico JOIN anomalia ON consumoenergetico.id_anomalia = anomalia.id_anomalia
JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_consumoenergetico = consumoenergetico.id_consumoenergetico
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
JOIN horario ON equipamentoeletrico_divisao.id_horario = horario.id_horario
WHERE edificio.tipologia = 'penitenciaria';

UPDATE consumoenergetico SET id_anomalia = 1, horarioinicio = TO_DATE('18:00', 'HH24:MI'), 
horariofim = TO_DATE ('21:00', 'HH24:MI')
WHERE id_consumoenergetico = 11;

SELECT 
    TO_CHAR(consumoenergetico.horarioinicio, 'HH24:MI'),
    TO_CHAR(consumoenergetico.horariofim, 'HH24:MI')
FROM consumoenergetico WHERE horarioinicio 
    BETWEEN TO_DATE('10:00', 'HH24:MI') AND TO_DATE('17:00', 'HH24:MI') 
AND horariofim 
    BETWEEN TO_DATE('18:00', 'HH24:MI') AND TO_DATE('21:00', 'HH24:MI');

INSERT INTO consumoenergetico values (TO_DATE('11:22', 'HH24:MI'),TO_DATE('18:34', 'HH24:MI'), 18, 1);
DELETE consumoenergetico WHERE horarioinicio 
    BETWEEN TO_DATE ('11:21', 'HH24:MI') AND TO_DATE ('11:23', 'HH24:MI') 
AND horariofim 
    BETWEEN TO_DATE ('18:33', 'HH24:MI') AND TO_DATE ('18:35', 'HH24:MI');

/*RF 3*/
INSERT INTO consumoenergetico values
    TO_DATE('29-Oct-18 14:34', 'DD-Mon-YY HH24:MI'), 
    TO_DATE('29-Oct-18 17:34', 'DD-Mon-YY HH24:MI'), 18, 2);
INSERT INTO equipamentoeletrico_divisao values (390, 25, 4, 3, 18);

/*RF4*/
SELECT
    equipamentoeletrico.designacao,
    TO_CHAR(consumoenergetico.horarioinicio, 'HH24:MI'),
    TO_CHAR(consumoenergetico.horariofim, 'HH24:MI')
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico 
WHERE consumoenergetico.horarioinicio BETWEEN TO_DATE('11:00', 'HH24:MI') AND TO_DATE('18:00', 'HH24:MI');

/*RF 5*/
SELECT 
    edificio.id_edificio,
    edificio.tipologia,
    divisao.piso,
    equipamentoeletrico.designacao,
    equipamentoeletrico.potencia_ativa,
    consumoenergetico.horarioinicio,
    consumoenergetico.horariofim
FROM divisao JOIN edificio ON divisao.id_edificio = edificio.id_edificio
JOIN equipamentoeletrico_divisao ON divisao.id_divisao = equipamentoeletrico_divisao.id_divisao
JOIN equipamentoeletrico ON equipamentoeletrico_divisao.id_equipamentoeletrico = equipamentoeletrico.id_equipamentoeletrico
JOIN consumoenergetico ON equipamentoeletrico_divisao.id_consumoenergetico = consumoenergetico.id_consumoenergetico
WHERE edificio.id_edificio = 1 
AND consumoenergetico.horarioinicio BETWEEN TO_DATE('09:00', 'HH24:MI') 
    AND TO_DATE('18:00', 'HH24:MI')
AND consumoenergetico.horariofim BETWEEN TO_DATE('18:00', 'HH24:MI') 
    AND TO_DATE('23:00', 'HH24:MI');

/*RF 6*/
SELECT  
    equipamentoeletrico.designacao,
    equipamentoeletrico.potencia_ativa,
    TO_CHAR (consumoenergetico.horarioinicio, 'HH24:MI'),
    TO_CHAR (consumoenergetico.horariofim, 'HH24:MI')
FROM equipamentoeletrico 
JOIN equipamentoeletrico_divisao ON 
    equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON 
    consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico;
    
    
    