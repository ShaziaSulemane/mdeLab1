UPDATE TABLE edificio SET coordenadas_gps = '66.56ºN 8.89ºO' WHERE id_edificio = 3;
UPDATE TABLE edificio SET area = 150 WHERE tipologia = 'loja';
UPDATE TABLE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE TABLE divisao SET numero_janelas = 4 WHERE id_edificio = 4;
UPDATE TABLE tarifa SET preco_dia = 0,3 WHERE id_tarifa = 1;
UPDATE TABLE tarifa SET hora_mudanca_tarde = 13 WHERE id_tarifa = 1;

/*DELETE*/
DELETE edificio WHERE id_edificio = 1;
DELETE divisao WHERE id_edificio = 2; 
DELETE consumoenergetico WHERE id_anomalia = 2;
DELETE equipamentoeletrico_divisao WHERE id_divisao = 1;
DELETE horario WHERE hora_inicio BETWEEN TO_DATE('12:00', 'HH24:MI') AND TO_DATE('14:00', 'HH24:MI');
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

/*RF4*/
SELECT
    equipamentoeletrico.designacao,
    TO_CHAR(consumoenergetico.horarioinicio, 'HH24:MI'),
    TO_CHAR(consumoenergetico.horariofim, 'HH24:MI')
    /*anomalia,*/
FROM equipamentoeletrico JOIN equipamentoeletrico_divisao 
ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico 
WHERE consumoenergetico.horarioinicio BETWEEN TO_DATE('23/4/2019', 'DD/MM/YYYY') AND TO_DATE('25/4/2019', 'DD/MM/YYYY'); 

    