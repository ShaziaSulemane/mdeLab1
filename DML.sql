DROP PROCEDURE CREATE_CONSUMO;
DROP PROCEDURE DELETE_CONSUMO;
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
        INSERT INTO divisao values (id_div, i, j, 
            DBMS_RANDOM.value(low => 100, high => 500),
            DBMS_RANDOM.value(low => 3, high => 9), 
            DBMS_RANDOM.value(low => 1, high => 17));
        id_div := id_div + 1;
        END LOOP;
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
        INSERT INTO equipamentoeletrico_divisao values (equipele_div, i, 
            DBMS_RANDOM.value(low => 1, high => 16),
            DBMS_RANDOM.value(low => 1, high => 9));
        equipele_div:= equipele_div + 1;
        END LOOP;
    END LOOP;               
END;

CREATE OR REPLACE PROCEDURE CREATE_CONSUMO 
(
  HORA_INICIO IN DATE 
, HORA_FIM IN DATE 
, DATA_CONSUMO IN DATE
, DIVISAO IN NUMBER
, EQUIPELE IN NUMBER
, ID_HORARIO IN NUMBER
) AS 

numb_rows_consumo INTEGER;
numb_rows_equip_div INTEGER;
id_anomalia INTEGER;
horario_inicio DATE;
horario_fim DATE;
    
BEGIN
    SELECT COUNT(*) INTO numb_rows_consumo FROM consumoenergetico;
    SELECT COUNT(*) INTO numb_rows_equip_div FROM equipamentoeletrico_divisao;
    SELECT horario.hora_inicio INTO horario_inicio FROM horario 
        JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        WHERE equipamentoeletrico_divisao.id_equipamentoeletrico = equipele;
    SELECT horario.hora_fim INTO horario_fim FROM horario 
        JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        WHERE equipamentoeletrico_divisao.id_equipamentoeletrico = equipele;

    IF ((hora_inicio <> horario_inicio) OR (hora_fim <> horario_fim)) THEN
        id_anomalia := 2;
    END IF;

    INSERT INTO equipamentoeletrico_divisao VALUES (numb_rows_equip_div + 1, divisao, equipele, id_horario);
    INSERT INTO consumoenergetico VALUES (hora_inicio, hora_fim, numb_rows_consumo + 1, id_anomalia, data_consumo, numb_rows_equip_div + 1);
END CREATE_CONSUMO;


CREATE OR REPLACE PROCEDURE UPDATE_CONSUMO 
(
  ID_EQUIP_DIV IN NUMBER 
, NOVO_HORARIO_INICIO IN DATE 
, NOVO_HORARIO_FIM IN DATE 
) AS 

horario_inicio DATE;
horario_fim DATE;
id_consumo INTEGER;
id_anomalia INTEGER := 1;

BEGIN
    SELECT consumoenergetico.id_consumoenergetico INTO id_consumo
        FROM consumoenergetico 
        JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_relacao = consumoenergetico.id_relacao
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
        
    SELECT anomalia.id_anomalia INTO id_anomalia 
        FROM anomalia JOIN consumoenergetico ON consumoenergetico.id_anomalia = anomalia.id_anomalia
        JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_relacao = consumoenergetico.id_relacao
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
        
    SELECT horario.hora_inicio INTO horario_inicio
        FROM horario JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
        
    SELECT horario.hora_fim INTO horario_fim
        FROM horario JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        JOIN consumoenergetico ON consumoenergetico.id_relacao = equipamentoeletrico_divisao.id_relacao
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
        
    IF novo_horario_inicio <> horario_inicio OR novo_horario_fim <> horario_fim THEN
        id_anomalia:= 2;
    END IF;
    
    UPDATE consumoenergetico SET 
        consumoenergetico.horarioinicio = novo_horario_inicio,
        consumoenergetico.horariofim = novo_horario_fim,
        consumoenergetico.id_anomalia = id_anomalia
    WHERE consumoenergetico.id_consumoenergetico = id_consumo;
    
END UPDATE_CONSUMO;

CREATE OR REPLACE PROCEDURE DELETE_CONSUMO 
(
  ID_EQUIP_DIV IN NUMBER 
, DATA_CONSUMO IN DATE 
) AS 
id_consumo INTEGER;
BEGIN
    SELECT consumoenergetico.id_consumoenergetico INTO id_consumo FROM 
        consumoenergetico JOIN equipamentoeletrico_divisao ON 
        equipamentoeletrico_divisao.id_relacao = consumoenergetico.id_relacao
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
    
    DELETE FROM consumoenergetico WHERE consumoenergetico.id_consumoenergetico = id_consumo 
        AND consumoenergetico.data_consumo = data_consumo;
    
END DELETE_CONSUMO;

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
