


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
