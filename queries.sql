/*RF 1*/
/*UPDATE*/
UPDATE edificio SET coordenadas_gps = '66.56ºN 8.89ºO' WHERE id_edificio = 3;
UPDATE edificio SET area = 150 WHERE tipologia = 'loja';
UPDATE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE tarifa SET preco_dia = 0.3 WHERE id_tarifa = 1;
UPDATE tarifa SET hora_mudanca_tarde = 13 WHERE id_tarifa = 1;

/*DELETE*/
DELETE edificio WHERE edificio.id_edificio = 1;
DELETE divisao WHERE divisao.id_edificio = 2; 
DELETE consumoenergetico WHERE consumoenergetico.id_anomalia = 2;
DELETE equipamentoeletrico_divisao WHERE equipamentoeletrico_divisao.id_divisao = 1;
DELETE horario WHERE hora_inicio BETWEEN TO_CHAR('12:00', 'HH24:MI') AND TO_CHAR('14:00', 'HH24:MI');
DELETE equipamentoeletrico WHERE tensao_alimentacao = 50;
DELETE tarifa WHERE tarifa.id_tarifa = 1;

/*READ*/
SELECT * FROM edificio;
SELECT * FROM divisao;
SELECT * FROM consumoenergetico;
SELECT * FROM equipamentoeletrico;
SELECT * FROM horario;
SELECT * FROM equipamentoeletrico_divisao;
SELECT * FROM tarifa;

/*RF 2 e RF 3*/
-- insert consumo
INSERT INTO consumoenergetico values (TO_DATE('01:30', 'HH24:MI'),TO_DATE('09:30', 'HH24:MI'), 18, NULL, TO_DATE('10/4/2019', 'DD/MM/YYYY'));
-- update consumo
UPDATE consumoenergetico SET hora_inicio = TO_DATE('14:00', 'HH24:MI') WHERE id_consumo = 3;
-- delete consumo
DELETE equipamentoeletrico WHERE tensao_alimentacao = 50;
-- read consumo
SELECT * FROM consumoenergetico;


--create consumo  
CREATE_CONSUMO(TO_DATE('12:00', 'HH24:MI'), TO_DATE('19:00', 'HH24:MI'), TO_DATE('12-04-2019', 'DD-MM-YYYY'), 1, 2, 4);
--update consumo
UPDATE_CONSUMO(3, TO_DATE('21:00', 'HH24:MI'), TO_DATE('23:50', 'HH24:MI'));
--delete consumo
DELETE_CONSUMO(1, TO_DATE('13-04-2019', 'DD-MM-YYYY'));

/*RF4*/
SELECT
    equipamentoeletrico.designacao,
    TO_CHAR(consumoenergetico.data_consumo, 'DD/MM/YYYY'),
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa),
    TO_CHAR (calcula_preco_consumo(edificio.id_edificio,'2019-04-11', '2019-04-15'))
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico 
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE consumoenergetico.data_consumo BETWEEN TO_DATE('11/4/2019', 'DD/MM/YYYY') AND TO_DATE('15/4/2019', 'DD/MM/YYYY');

/*RF 5 E RF 6*/
SELECT 
    edificio.id_edificio,
    soma_consumos(edificio.id_edificio, '2019-04-11', '2019-04-15'),
    calcula_preco_consumo(edificio.id_edificio,'2019-04-11', '2019-04-15')
FROM edificio; 

/*RF7 */
SELECT AVG (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa))
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico 
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Lisboa';

SELECT AVG (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa))
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico 
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Almada';

/*RF 8 E RF 11*/
SELECT SUM (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa))
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico 
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Lisboa';

SELECT SUM (
    TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa))
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico 
JOIN divisao ON equipamentoeletrico_divisao.id_divisao = divisao.id_divisao
JOIN edificio ON divisao.id_edificio = edificio.id_edificio
WHERE edificio.localidade = 'Almada';



