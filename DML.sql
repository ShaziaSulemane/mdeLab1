DROP PROCEDURE UPDATE_CONSUMO;
DROP PROCEDURE CREATE_DIV;
DROP PROCEDURE CREATE_EQUIP_DIV;

DROP FUNCTION CALCULA_PRECO;
DROP FUNCTION CALCULA_PRECO_BI_HORARIA;
DROP FUNCTION CALCULA_PRECO_CONSUMO;
DROP FUNCTION CONSUMOS_BI_HORARIOS;
DROP FUNCTION SOMA_CONSUMOS;


CREATE OR REPLACE PROCEDURE create_div IS
    i INTEGER := 1;
    j INTEGER :=1;
    id_div INTEGER := 1;
BEGIN
    WHILE i <= 12
    LOOP
        WHILE j <= 4
        LOOP
        INSERT INTO divisao values (ID_DIVISAO_SEQUENCE.nextval, i, j, 
            DBMS_RANDOM.value(low => 100, high => 500),
            DBMS_RANDOM.value(low => 3, high => 9), 
            DBMS_RANDOM.value(low => 1, high => 17));
        j := j + 1;
        END LOOP;
    i := i + 1;
    j := 1;
    END LOOP; 
END;
 
 CREATE OR REPLACE PROCEDURE create_equip_div IS
   i INTEGER := 1;
   j INTEGER :=1;
   equipele_div INTEGER := 1;
BEGIN
    WHILE i <= 48
    LOOP
        WHILE j <= 10
        LOOP
        INSERT INTO equipamentoeletrico_divisao values (ID_EQELE_DIV_SEQUENCE.nextval, i, 
            DBMS_RANDOM.value(low => 1, high => 16),
            DBMS_RANDOM.value(low => 1, high => 9));
        j := j + 1;
        END LOOP;
    i := i + 1;
    j := 1;
    END LOOP;               
END;

create or replace PROCEDURE UPDATE_CONSUMO 
(
  ID_EQUIP_DIV IN NUMBER 
, NOVO_HORARIO_INICIO IN DATE 
, NOVO_HORARIO_FIM IN DATE 
, ID_CONSUMO_ENERGETICO IN NUMBER
) AS 

horario_inicio DATE;
horario_fim DATE;
id_consumo INTEGER;
id_anomalia INTEGER := 1;

BEGIN
    SELECT consumoenergetico.id_consumoenergetico INTO id_consumo
        FROM consumoenergetico 
        WHERE consumoenergetico.id_consumoenergetico = id_consumo_energetico;

    SELECT horario.hora_inicio INTO horario_inicio
        FROM horario JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
        WHERE consumoenergetico.id_consumoenergetico = id_consumo_energetico;

    SELECT horario.hora_fim INTO horario_fim
        FROM horario JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
        WHERE consumoenergetico.id_consumoenergetico = id_consumo_energetico;

    IF novo_horario_inicio <> horario_inicio OR novo_horario_fim <> horario_fim THEN
        INSERT INTO anomalia VALUES (ANOMALIA_ID_SEQUENCE.nextval, 'CONSUMO INVALIDO', ID_EQUIP_DIV);
    END IF;

    UPDATE consumoenergetico SET 
        consumoenergetico.horarioinicio = novo_horario_inicio,
        consumoenergetico.horariofim = novo_horario_fim
    WHERE consumoenergetico.id_relacao = ID_EQUIP_DIV AND consumoenergetico.id_consumoenergetico = id_consumo_energetico;

END UPDATE_CONSUMO;


create or replace FUNCTION SOMA_CONSUMOS 
(
  IDEDIFICIO IN NUMBER 
, DATA_INICIO_CONSUMO IN DATE
, DATA_FIM_CONSUMO IN DATE
) RETURN NUMBER AS 
 total_consumo FLOAT := 0;
 K INTEGER := 0;
BEGIN
    SELECT SUM ( 
        TO_CHAR(24*(consumoenergetico.horariofim - consumoenergetico.horarioinicio)*equipamentoeletrico.potencia_ativa)
    )INTO total_consumo FROM divisao JOIN edificio ON divisao.id_edificio = edificio.id_edificio
    JOIN equipamentoeletrico_divisao ON divisao.id_divisao = equipamentoeletrico_divisao.id_divisao
    JOIN equipamentoeletrico ON equipamentoeletrico_divisao.id_equipamentoeletrico = equipamentoeletrico.id_equipamentoeletrico
    JOIN consumoenergetico ON equipamentoeletrico_divisao.id_relacao = consumoenergetico.id_relacao
    WHERE edificio.id_edificio = idedificio 
    AND consumoenergetico.data_consumo BETWEEN data_inicio_consumo
        AND data_fim_consumo;
        
    IF total_consumo = NULL THEN total_consumo := 0; END IF;
    
  RETURN ROUND(TOTAL_CONSUMO, 1);
END SOMA_CONSUMOS;


CREATE OR REPLACE FUNCTION CONSUMOS_BI_HORARIOS 
(
  HORARIO_INICIO IN DATE 
, HORARIO_FIM IN DATE 
, POTENCIA_ATIVA IN NUMBER 
) RETURN NUMBER AS 
    horario_mudanca_1 DATE;
    horario_mudanca_2 DATE;
    preco_1 FLOAT;
    preco_2 FLOAT;
    preco_consumo_equip FLOAT := 0;
BEGIN
    SELECT tarifa.hora_mudanca_tarde INTO horario_mudanca_1 FROM tarifa WHERE tarifa.id_tarifa = 1;
    SELECT tarifa.hora_mudanca_noite INTO horario_mudanca_2 FROM tarifa WHERE tarifa.id_tarifa = 1;
    SELECT tarifa.preco_dia INTO preco_1 FROM tarifa WHERE tarifa.id_tarifa = 1;
    SELECT tarifa.preco_tarde INTO preco_2 FROM tarifa WHERE tarifa.id_tarifa = 1;
    
    IF horario_inicio < horario_mudanca_1 AND horario_fim > horario_mudanca_2 THEN
        preco_consumo_equip := (horario_mudanca_1 - horario_inicio) * preco_2 * potencia_ativa +
            (horario_fim - horario_mudanca_2) * preco_2 * potencia_ativa +
            (horario_mudanca_2 - horario_mudanca_1) * preco_1 * potencia_ativa;
   
    ELSIF horario_inicio > horario_mudanca_1 AND horario_fim <= horario_mudanca_2 THEN
        preco_consumo_equip := (horario_fim - horario_inicio) * preco_1 * potencia_ativa;
    
    ELSIF horario_inicio > horario_mudanca_1 AND horario_fim > horario_mudanca_2  THEN
        preco_consumo_equip := (horario_mudanca_2 - horario_inicio) * preco_1 * potencia_ativa +
            (horario_fim - horario_mudanca_2) * preco_2 * potencia_ativa;
    
    ELSIF horario_inicio <= horario_mudanca_1 AND horario_fim <= horario_mudanca_2 AND horario_fim > horario_mudanca_1 THEN
        preco_consumo_equip := (horario_mudanca_1 - horario_inicio) * preco_2 * potencia_ativa +
            (horario_fim - horario_mudanca_1) * preco_1 * potencia_ativa;
    
    ELSIF ((horario_inicio < horario_mudanca_1 AND horario_fim < horario_mudanca_1) 
        OR (horario_inicio > horario_mudanca_2 AND horario_fim > horario_mudanca_2)) THEN
            preco_consumo_equip := (horario_fim - horario_inicio) * preco_2 * potencia_ativa;
    END IF;
    
  RETURN preco_consumo_equip;
END CONSUMOS_BI_HORARIOS;


CREATE OR REPLACE FUNCTION CALCULA_PRECO_BI_HORARIA 
(
  IDEDIFICIO IN NUMBER DEFAULT 1 
, DATA_INICIO_CONSUMO IN DATE DEFAULT '2019-04-11' 
, DATA_FIM_CONSUMO IN DATE DEFAULT '2019-04-15' 
) RETURN NUMBER AS 
    sum_preco_bi FLOAT := 0;
BEGIN    
    SELECT SUM (
        consumos_bi_horarios(consumoenergetico.horarioinicio, consumoenergetico.horariofim, equipamentoeletrico.potencia_ativa)
    )INTO sum_preco_bi FROM equipamentoeletrico JOIN equipamentoeletrico_divisao ON equipamentoeletrico.id_equipamentoeletrico = equipamentoeletrico_divisao.id_equipamentoeletrico
    JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
    JOIN divisao ON divisao.id_divisao = equipamentoeletrico_divisao.id_divisao
    JOIN edificio ON edificio.id_edificio = divisao.id_edificio
    WHERE edificio.id_edificio = idedificio AND
    consumoenergetico.data_consumo BETWEEN data_inicio_consumo AND data_fim_consumo;
    
    IF sum_preco_bi = NULL THEN sum_preco_bi := 0; END IF;
    
  RETURN sum_preco_bi;
END CALCULA_PRECO_BI_HORARIA;


CREATE OR REPLACE FUNCTION CALCULA_PRECO_CONSUMO 
(
  IDEDIFICIO IN NUMBER 
, DATA_INICIO_CONSUMO IN DATE
, DATA_FIM_CONSUMO IN DATE
) RETURN NUMBER AS 
    idtarifa INTEGER;
    preco_total FLOAT := 0;
    precodia FLOAT;
    sum_consumos FLOAT;
BEGIN
    SELECT tarifa.id_tarifa INTO idtarifa FROM tarifa JOIN edificio ON edificio.id_tarifa = tarifa.id_tarifa WHERE edificio.id_edificio = idedificio;
    SELECT tarifa.preco_dia INTO precodia FROM tarifa WHERE tarifa.id_tarifa = idtarifa;
    IF idtarifa = 2 THEN
        sum_consumos := soma_consumos(idedificio, data_inicio_consumo, data_fim_consumo);
        preco_total := sum_consumos * precodia;
    END IF;
    IF idtarifa = 1 THEN
        preco_total := calcula_preco_bi_horaria(idedificio, data_inicio_consumo, data_fim_consumo);
    END IF;
    
  RETURN ROUND(preco_total, 2);
END CALCULA_PRECO_CONSUMO;


