create schema A_T;

use A_T;

CREATE TABLE tipo_voluntarios(
	ID_ACTIVIDAD INT Not null  PRIMARY KEY UNIQUE AUTO_INCREMENT,
	actividad varchar(50) not null
    ); 

CREATE TABLE voluntarios (
	ID_VOLUNTARIOS INT Not null UNIQUE PRIMARY KEY  AUTO_INCREMENT, 
    ID_ACTIVIDAD INT NOT NULL,
    nombre varchar(50),
    apellido varchar(50),
    edad int not null,
    dni int not null,
    domicilio varchar(100) null,
    telefono int not null,
    fecha_ingreso date not null
    ); 

CREATE TABLE cocineros(
	ID_COCINEROS INT Not null UNIQUE PRIMARY KEY  AUTO_INCREMENT, 
    ID_ACTIVIDAD int not null,
	nombre_grupo varchar(50) not null,
    comidas varchar(100) not null,
    fecha date not null    
); 

    CREATE TABLE NNyA(
	ID_NNyA INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
	nombre varchar(50),
    apellido varchar(50),
    edad int not null,
    dni int not null,
    domicilio varchar(100) null,
    colegio varchar(50) null
    ); 

    CREATE TABLE salidas(
	ID_SALIDAS INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    ID_NNyA INT not null, 
    ID_VOLUNTARIOS INT not null,
    lugares text(50) not null,
    fecha_inicio date not null,
    fecha_regreso date not null
    ); 
    
    CREATE TABLE donaciones(
	ID_DONACIONES INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    tipo text(10) not null,
    cantidad int not null,
    fecha date not null
    );     
 
   CREATE TABLE gastos(
	ID_GASTOS INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    tipo text(10) not null,
    cantidad int not null,
    concepto varchar(50) not null
    );     
    
CREATE TABLE mercaderia(
	ID_MERCADERIA INT Not null PRIMARY KEY  AUTO_INCREMENT,
    tipo text(20) not null,
    cantidad int not null
    ); 

CREATE TABLE utiles(
	ID_UTILES INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
	tipo text(20) not null,
    cantidad int not null
    ); 

CREATE TABLE ropa(
	ID_ROPA INT not null PRIMARY KEY AUTO_INCREMENT,
	tipo text(20) not null,
    genero text(1) not null,
    edad int not null
    );

    CREATE TABLE inventario(
	ID_INVENTARIO INT Not null  PRIMARY KEY  AUTO_INCREMENT, 
    muebles text(50) not null,
    cantidad int not null,
    fecha_recepción date not null,
    fecha_egreso date null
    ); 
    
ALTER TABLE VOLUNTARIOS
ADD FOREIGN KEY (ID_ACTIVIDAD) REFERENCES TIPO_VOLUNTARIOS(ID_ACTIVIDAD);

ALTER TABLE COCINEROS
ADD FOREIGN KEY (ID_ACTIVIDAD) REFERENCES TIPO_VOLUNTARIOS(ID_ACTIVIDAD);

ALTER TABLE salidas
ADD  FOREIGN KEY (id_NNyA) REFERENCES NNyA(id_NNyA),
ADD  FOREIGN KEY (id_VOLUNTARIOS) REFERENCES VOLUNTARIOS(id_VOLUNTARIOS);