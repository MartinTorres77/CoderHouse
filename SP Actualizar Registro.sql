CREATE PROCEDURE `actualizar_registro`(in id int,in np tinytext, in años int, in doc int, in dom varchar(100), in cole varchar (50))
BEGIN
UPDATE NNyA
SET nombre_apellido = np, edad = años, dni = doc, domicilio = dom, colegio = cole where id_nnya = id;
END

call asociacion_tarcisio.actualizar_registro(6, 'Ailu Zavedra', 17, 4983983, 'Las Viñas 5', 'CEBJA');
