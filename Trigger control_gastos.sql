create table control_gastos(
	ID_GASTOS INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    tipo text(10) not null,
    cantidad int not null,
    concepto varchar (50),
    fechag date,
    usuario varchar(50),
    fecha date, 
    hora datetime
    );
    
CREATE TRIGGER control_gastos
AFTER INSERT ON gastos
for each row 
insert into control_gastos(ID_GASTOS, tipo, cantidad, concepto, fechag, usuario, fecha, hora) 
values (NEW.ID_GASTOS, NEW.tipo, NEW.cantidad, NEW.concepto, NEW.fechag, current_user(), current_date(), current_time());    
		-- con este TRIGGER lo que busco es que cada vez que se registra un gasto quede constancia de que usuario lo realizó, el día y la hora.
insert into gastos values (null, 'pesos', '15000', 'membrana', '20220101');