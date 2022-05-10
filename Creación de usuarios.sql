use mysql;
CREATE USER 'giuliana@localhost' IDENTIFIED BY '123456';
CREATE USER 'sergio@localhost' IDENTIFIED BY '123456789';
-- con estas sentencias creo dos usuarios locales nuevos para la base de datos

GRANT SELECT, INSERT, UPDATE ON *.* TO 'giuliana'@'localhost'; 
-- le asigno al usuario giuliana el permiso de ver, insertar y actualizar los registros de toda la base de datos
GRANT SELECT ON *.* TO 'sergio'@'localhost'; 
-- le asigno al usuario sergio solo el permiso de ver las tablas

show grants for 'giuliana@localhost';
show grants for 'sergio@localhost';
-- con estas sentencias puedo observar los permisos que tiene cada usuario conforme lo solicitado en la consigna


select * from mysql.user;
-- consulto la información de todos los usuarios
select * from mysql.user where user like 'giuliana@localhost';
select * from mysql.user where user like 'sergio@localhost';
-- consulto la información de cada usuario en particular

flush privileges;
-- con esta sentencia actualizo los privilegios para consultarlos

DROP USER 'giuliana@localhost';
DROP USER 'sergio@localhost';
-- con estas sentencias podría eliminar los usuarios creados