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

/*RF 2 e RF 3*/
--create consumo  
CREATE_CONSUMO(TO_DATE(), TO_DATE(), TO_DATE(), 1, 2, 4);
--update consumo
UPDATE_CONSUMO(3, TO_DATE(), TO_DATE());
--delete consumo
DELETE_CONSUMO(1, TO_DATE());

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



