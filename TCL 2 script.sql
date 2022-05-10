SET AUTOCOMMIT = 0;

START transaction; 
INSERT INTO donaciones values (null, 'PESOS', '13000', '20220401');
INSERT INTO donaciones values (null, 'PESOS', '25000', '20220402');
INSERT INTO donaciones values (null, 'PESOS', '1300', '20220403');
INSERT INTO donaciones values (null, 'PESOS', '100', '20220404');
savepoint donacionesabril;
-- en estas líneas agrego los primeros cuatro datos y genero el primer savepoint

INSERT INTO donaciones values (null, 'PESOS', '7000', '20220501');
INSERT INTO donaciones values (null, 'PESOS', '25000', '20220502');
INSERT INTO donaciones values (null, 'PESOS', '13000', '20220503');
INSERT INTO donaciones values (null, 'PESOS', '100000', '20220504');
savepoint donacionesmayo;
 -- en estas líneas agrego los últimos cuatro datos y genero el segundo savepoint

rollback to donacionesabril;
-- con este rollback regresa hasta los datos agregados hasta el primer savepoint

rollback to donacionesmayo;
-- con este rollback regresa hasta los datos agregados en el segundo savepoint
select * from donaciones;

