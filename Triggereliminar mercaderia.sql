create table eliminar_mercaderia(
	ID_MERCADERIA INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    tipo VARCHAR(50) not null,
    cantidad int not null,
    usuario varchar(50),
    fecha date, 
    hora datetime
    );

CREATE TRIGGER eliminar_mercaderia
BEFORE UPDATE ON MERCADERIA
for each row 
insert into eliminar_mercaderia (ID_mercaderia, tipo, cantidad, usuario, fecha, hora) 
values (OLD.ID_MERCADERIA, OLD.tipo, OLD.cantidad, current_user(), current_date(), current_time());    
-- con este TRIGGER lo que busco es que cada vez que se elimina mercadería a la Asociación se deja constancia de que se eliminó y quien lo hizo, el día y la hora.

update mercaderia set id_mercaderia ='2', tipo = 'fideos', cantidad = '1' where id_mercaderia ='2';
