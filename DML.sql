CREATE OR REPLACE PROCEDURE CREATE_DIV AS 
    i INTEGER := 1;
    j INTEGER :=1;
    id_div INTEGER := 1;
BEGIN
WHILE i <= 12
LOOP
    WHILE j <= 4
    LOOP
    dbms_output.put_line ('NEW INSERT');
    INSERT INTO divisao values (id_div, i, j, 
    DBMS_RANDOM.value(low => 100, high => 500),
    DBMS_RANDOM.value(low => 3, high => 9), 
    DBMS_RANDOM.value(low => 1, high => 17));
    id_div := id_div + 1;
    j := j + 1;
    end loop;
    i := i + 1;
    j := 1;
END LOOP; 
END CREATE_DIV;

CREATE OR REPLACE PROCEDURE CREATE_EQUIP_DIV AS 
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
    DBMS_RANDOM.value(low => 1, high => 9), 
    DBMS_RANDOM.value(low => 1, high => 17));
    equipele_div:= equipele_div + 1;
    j := j + 1;
    END LOOP;
    i := i + 1;
    j := 1;
END LOOP;  
END CREATE_EQUIP_DIV;