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
            EXCEPTION
    WHEN OTHERS THEN
       raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;
 
 CREATE OR REPLACE PROCEDURE create_equipele_div IS
       i INTEGER := 1;
       j INTEGER :=1;
       equipele_div INTEGER := 1;
    BEGIN
        WHILE i <= 48
            LOOP
            WHILE j <= 10
                LOOP
                INSERT INTO dequipamentoeletrico_divisao values (equipele_div, i, j, 
                    DBMS_RANDOM.value(low => 1, high => 16),
                    DBMS_RANDOM.value(low => 1, high => 9), 
                    DBMS_RANDOM.value(low => 1, high => 17));
                equipele_div:= equipele_div + 1;
                END LOOP;
            END LOOP;               
    EXCEPTION
    WHEN OTHERS THEN
       raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
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

    INSERT INTO equipamentoeletrico_divisao VALUES (numb_rows_equip_div + 1, divisao, equipele, id_horario, numb_rows_consumo + 1);
    INSERT INTO consumoenergetico VALUES (hora_inicio, hora_fim, numb_rows_consumo + 1, id_anomalia, data_consumo);
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
        JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_consumoenergetico = consumoenergetico.id_consumoenergetico
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
        
    SELECT anomalia.id_anomalia INTO id_anomalia 
        FROM anomalia JOIN consumoenergetico ON consumoenergetico.id_anomalia = anomalia.id_anomalia
        JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_consumoenergetico = consumoenergetico.id_consumoenergetico
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
        
    SELECT horario.hora_inicio INTO horario_inicio
        FROM horario JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
        
    SELECT horario.hora_fim INTO horario_fim
        FROM horario JOIN equipamentoeletrico_divisao ON equipamentoeletrico_divisao.id_horario = horario.id_horario
        JOIN consumoenergetico ON consumoenergetico.id_consumoenergetico = equipamentoeletrico_divisao.id_consumoenergetico
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
        equipamentoeletrico_divisao.id_consumoenergetico = consumoenergetico.id_consumoenergetico
        WHERE equipamentoeletrico_divisao.id_relacao = id_equip_div;
    
    DELETE FROM consumoenergetico WHERE consumoenergetico.id_consumoenergetico = id_consumo 
        AND consumoenergetico.data_consumo = data_consumo;
    DELETE FROM equipamentoeletrico_divisao WHERE id_relacao = id_equip_div;
    
END DELETE_CONSUMO;