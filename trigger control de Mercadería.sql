create table control_mercaderia(
	ID_MERCADERIA INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    tipo VARCHAR(50) not null,
    cantidad int not null,
    usuario varchar(50),
    fecha date, 
    hora datetime
    );


CREATE TRIGGER control_mercaderia
AFTER INSERT ON MERCADERIA
for each row 
insert into control_mercaderia(ID_mercaderia, tipo, cantidad, usuario, fecha, hora) 
values (NEW.ID_MERCADERIA, NEW.tipo, NEW.cantidad, current_user(), current_date(), current_time());    
-- con este TRIGGER lo que busco es que cada vez que se agregar mercadería a la Asociación se deja constancia de quien la ingresó, el día y la hora.


insert into mercaderia values(null,'queso blando', '3');
