UPDATE TABLE edificio 
 SET coordenadas_gps = '66.56ºN 8.89ºO'
 WHERE id_edificio = 3;
 
 UPDATE TABLE edificio 
 SET area = 150
 WHERE tipologia = 'loja';
 
 UPDATE TABLE divisao 
 SET numero_janelas = 4
 WHERE id_edificio = 4;
 
 UPDATE TABLE divisao 
 SET numero_janelas = 4
 WHERE id_edificio = 4;
 
 UPDATE TABLE tarifa 
 SET preco_dia = 0,3
 WHERE id_tarifa = 1;
 
 UPDATE TABLE tarifa 
 SET hora_mudanca_tarde = 13
 WHERE id_tarifa = 1;
 
 