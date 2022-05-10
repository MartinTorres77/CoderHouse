drop table eliminacion_reg;
drop trigger eliminacion_reg;
create table eliminacion_reg(
	ID_GASTOS INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    tipo VARCHAR(50) not null,
    cantidad int not null,
    concepto varchar(50),
    fecha date not null,
    usuario varchar(50),
    fechaN date, 
    hora datetime
    );


CREATE TRIGGER eliminacion_reg
BEFORE UPDATE ON gastos
for each row 
insert into eliminacion_reg(ID_GASTOS, tipo, cantidad, concepto, fecha, usuario, fechaN, hora) 
values (OLD.ID_GASTOS, OLD.tipo, OLD.cantidad, OLD.concepto, OLD.fecha, current_user(), current_date(), current_time());    
-- con este TRIGGER lo que busco es que cada vez que se MODIFICA un gasto quede constancia del gasto que se modificó, el día y la hora.

UPDATE gastos SET id_gastos = '1', tipo = 'PESOS', cantidad = '2000', concepto = 'ferreteria', fecha = '20220101' where id_gastos = '1'