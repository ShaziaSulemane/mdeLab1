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
CREATE_CONSUMO();
--update consumo
UPDATE_CONSUMO();
--delete consumo
DELETE_CONSUMO();

/*RF4*/

/*RF 5*/
SELECT 
    edificio.id_edificio,
    edificio.tipologia,
    divisao.piso,
    equipamentoeletrico.designacao,
    equipamentoeletrico.potencia_ativa,
    /*consumoenergetico.horarioinicio,
    consumoenergetico.horariofim,*/
    TO_CHAR(consumoenergetico.data_consumo, 'DD/MM/YYYY')
FROM divisao JOIN edificio ON divisao.id_edificio = edificio.id_edificio
JOIN equipamentoeletrico_divisao ON divisao.id_divisao = equipamentoeletrico_divisao.id_divisao
JOIN equipamentoeletrico ON equipamentoeletrico_divisao.id_equipamentoeletrico = equipamentoeletrico.id_equipamentoeletrico
JOIN consumoenergetico ON equipamentoeletrico_divisao.id_consumoenergetico = consumoenergetico.id_consumoenergetico
WHERE edificio.id_edificio = 1 
AND consumoenergetico.data_consumo BETWEEN TO_DATE('11/4/2019', 'DD/MM/YYYY') 
    AND TO_DATE('15/4/2019', 'DD/MM/YYYY');

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
    
    
    