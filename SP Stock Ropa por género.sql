CREATE PROCEDURE `stock_ropa`(in sexo varchar(1))
BEGIN
	if sexo = 'M' then
		select tipo, genero, edad from ropa where genero ='M' order by edad asc;
	ELSEif sexo  = 'F' then 
		(select tipo, genero, edad from ropa where genero ='F' order by edad asc);
	elseif sexo = 'I' then
		select tipo, genero, edad from ropa where genero ='I' order by edad asc;
	else
		SELECT 'INGRESA UNA OPCIÓN VALIDA';
        
END IF;
END