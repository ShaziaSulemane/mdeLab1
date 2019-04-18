DROP PACKAGE package_dml;
DROP PROCEDURE create_equip_div;

CREATE OR REPLACE PROCEDURE create_equip_div IS
       i INTEGER := 1;
    BEGIN
        WHILE i <= 4
            LOOP
                INSERT INTO equipamentoeletrico_divisao values (
                    i, 1, 1, 
                    DBMS_RANDOM.value(low => 1, high => 9), 
                    DBMS_RANDOM.value(low => 1, high => 17));
            END LOOP;
    EXCEPTION
    WHEN OTHERS THEN
       raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;
