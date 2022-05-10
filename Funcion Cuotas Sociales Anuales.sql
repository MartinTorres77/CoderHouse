DELIMITER $$
CREATE FUNCTION `cuotas_sociales_anuales`(cuota int, socios int) RETURNS int
    NO SQL
BEGIN
DECLARE total int;
set total = (cuota * socios*12);
RETURN total;
END$$
DELIMITER ;
