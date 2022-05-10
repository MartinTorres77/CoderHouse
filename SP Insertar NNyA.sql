CREATE PROCEDURE `insertar_nnya`(in np tinytext, in años int, in doc int, in dom varchar(100), in cole varchar (50))
BEGIN
INSERT INTO nnya(nombre_apellido, edad, dni, domicilio, colegio) values (np, años, dom, cole);
END

call asociacion_tarcisio.insertar_nnya('Tiziano Orosco', 16, 3940394, 'Las Viñas 10', 'CEBJA');
