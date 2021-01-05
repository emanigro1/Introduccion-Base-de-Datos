-- ​​Creaci​ó​n de esquema:
create schema if not exists aeropuerto;

-- Para​ establecer el esquema sobre el que trabajamos:
use aeropuerto;

-- ​​Creamos​ la tablas en el esquema activo:
create table pais(
idpais int primary key,
nombre varchar(45) not null);

create table marca(
idmarca int primary key,
nombre varchar(45) not null,
pais_idpais int not null,
foreign key (pais_idpais) references pais(idpais)
);

create table modelo(
idmodelo int primary key,
nombre varchar(45) not null,
marca_idmarca int not null,
foreign key (marca_idmarca) references marca(idmarca)
);

create table avion(
matricula varchar(10) primary key,
fecha_entrada_servicio date not null,
modelo_idmodelo int not null,
foreign key (modelo_idmodelo) references modelo(idmodelo)
);

create table localidad(
idlocalidad int primary key,
nombre varchar(45) not null);

create table provincia(
idprovincia int primary key,
nombre varchar(45) not null);

create table calle(
idcalle int primary key,
nombre varchar(45) not null);

create table piloto(
cuil varchar(13) primary key,
dni int not null,
nombre varchar(45) not null,
apellido varchar(45) not null,
fecha_ingreso date not null,
localidad_idlocalidad int not null,
provincia_idprovincia int not null,
calle_idcalle int not null,
numero_calle int not null,
foreign key (localidad_idlocalidad) references localidad(idlocalidad),
foreign key (provincia_idprovincia) references provincia(idprovincia),
foreign key (calle_idcalle) references calle(idcalle)
);

create table pasajero(
dni int primary key,
nombre varchar(45) not null,
apellido varchar(45) not null,
viajero_frecuente bool not null,
localidad_idlocalidad int not null,
provincia_idprovincia int not null,
calle_idcalle int not null,
numero_calle int not null,
foreign key (localidad_idlocalidad) references localidad(idlocalidad),
foreign key (provincia_idprovincia) references provincia(idprovincia),
foreign key (calle_idcalle) references calle(idcalle)

);

create table vuelo(
idvuelo varchar(6) primary key,
avion_matricula varchar(10) not null,
piloto_cuil varchar(45) not null,
parte_idaeropuerto varchar(3) not null,
arriba_idaeropuerto varchar(3) not null,
parte_fecha_hora datetime not null,
arriba_fecha_hora datetime not null,
foreign key (avion_matricula) references avion(matricula),
foreign key (piloto_cuil) references piloto(cuil),
foreign key (parte_idaeropuerto) references aeropuerto(idaeropuerto),
foreign key (arriba_idaeropuerto) references aeropuerto(idaeropuerto)
);

create table toma(
vuelo_codigo varchar(6) not null,
pasajero_dni int not null,
primary key(vuelo_codigo,pasajero_dni),
foreign key(vuelo_codigo)references vuelo(idvuelo),
foreign key(pasajero_dni)references pasajero(dni)
);

create table ciudad(
nombre varchar(45) not null,
localidad_idlocalidad int not null,
calle_idcalle int not null,
foreign key(localidad_idlocalidad) references localidad(idlocalidad)
);

create table aeropuerto(
idaeropuerto varchar(3) primary key,
nombre varchar(45) not null,
ciudad_idciudad int not null,
foreign key (ciudad_idciudad) references ciudad(idciudad)
);
