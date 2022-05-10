CREATE VIEW NNyA_ESCSALTA AS 
SELECT * FROM nnya
WHERE colegio = 'Escuela Salta';


CREATE OR REPLACE VIEW saldo_donaciones AS
select SUM(cantidad) from donaciones;


CREATE OR REPLACE VIEW total_gastos AS
select SUM(cantidad) from gastos;

CREATE OR REPLACE VIEW salidasmarzo AS
select * from salidas
WHERE fecha_inicio between '20220301' and '20220331';

CREATE OR REPLACE VIEW voluntarios_mayores AS
select nombre, apellido from voluntarios
WHERE edad > 18;

CREATE OR REPLACE VIEW ropa_m AS
select tipo, edad from ropa
where genero = 'M'
ORDER BY edad ASC;

CREATE OR REPLACE VIEW ropa_f AS
select tipo, edad from ropa
where genero = 'F'
ORDER BY edad ASC;

CREATE OR REPLACE VIEW ropa_I AS
select tipo, edad from ropa 
where genero = 'I'
ORDER BY edad ASC;
