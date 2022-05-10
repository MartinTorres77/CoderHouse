SET AUTOCOMMIT = 0;

START transaction; 
DELETE from ropa where id_ropa = '1';
DELETE from ropa where id_ropa = '5';
DELETE from ropa where id_ropa = '7';
DELETE from ropa where id_ropa = '9';
DELETE from ropa where id_ropa = '11';
-- estas sentencia elimino registros de la tabla al azar, pudiendo ser más o utilizando cualquier otro criterio

COMMIT;
-- si ejecuto el commit en este momento los datos eliminados se guardan y el rollback posterior no devolvería ningún dato. 
ROLLBACK;
-- ejecutando ROLLBACK vuelven a agregarse los registros eliminados, siempre y cuando no se ejecutó el commit anterior

COMMIT;
-- si ejecuto solamente este commit y no el primero, se borrarían los registros, con el rollback se agregarían nuevamente y finalmente quedarían agregados



