DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `donaciones_mensuales`(fecha1 date, fecha2 date) RETURNS int
    READS SQL DATA
BEGIN
DECLARE donaciones_mensuales integer;
set donaciones_mensuales = (select sum(cantidad) from donaciones where fecha between fecha1 and fecha2);
RETURN donaciones_mensuales;
END$$
DELIMITER ;
