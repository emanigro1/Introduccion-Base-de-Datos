use aeropuerto;
-- consultas
-- Listado de pasajeros de la empresa (apellido, nombre, dni)
select p.apellido,p.nombre,p.dni 
from pasajero p;

 -- Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio)
select p.apellido, p.nombre, p.dni, c.nombre as calle, numero_calle as numero, l.nombre as localidad, pv.nombre as provincia
from pasajero p
inner join localidad l on p.localidad_idlocalidad=l.idlocalidad
inner join provincia pv on p.provincia_idprovincia=pv.idprovincia
inner join calle c on p.calle_idcalle=c.idcalle;

-- Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio) mostrando sólo a los que participan 
-- del programa de viajeros frecuentes, ordenados por apellido y nombre
select p.apellido, p.nombre, p.dni, c.nombre as calle, numero_calle as numero, l.nombre as localidad, pv.nombre as provincia
from pasajero p
inner join localidad l on p.localidad_idlocalidad=l.idlocalidad
inner join provincia pv on p.provincia_idprovincia=pv.idprovincia
inner join calle c on p.calle_idcalle=c.idcalle
where viajero_frecuente=1
order by p.apellido asc;

-- Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de entrada en servicio, país de origen).
select mar.nombre as marca, mo.nombre as modelo, a.matricula, a.fecha_entrada_servicio as entrada_servicio, p.nombre as pais 
from avion a
inner join modelo mo on a.modelo_idmodelo=mo.idmodelo
inner join marca mar on mo.marca_idmarca=mar.idmarca
inner join pais p on mar.pais_idpais=p.idpais;

-- Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de entrada en servicio, país de origen) 
-- cuyo país de origen sea “Alemania”.
select mar.nombre as marca, mo.nombre as modelo,matricula, fecha_entrada_servicio as entrada_servicio, p.nombre as pais 
from avion a
inner join modelo mo on a.modelo_idmodelo=mo.idmodelo
inner join marca mar on mo.marca_idmarca=mar.idmarca
inner join pais p on mar.pais_idpais=p.idpais
where p.nombre="Alemania";

-- Listado de vuelos realizados mostrando código, marca, modelo y matrícula del avión, Código IATA del Aeropuerto origen,
-- Código IATA del Aeropuerto destino, fecha hora partida, fecha hora llegada y CUIL piloto.
select idvuelo as codigo, ma.nombre as marca, mo.nombre as modelo, a.matricula, parte_idaeropuerto, arriba_idaeropuerto, 
parte_fecha_hora, arriba_fecha_hora, p.cuil as piloto_cuil
from vuelo v
inner join avion a on v.avion_matricula=a.matricula
inner join modelo mo on mo.idmodelo=a.modelo_idmodelo
inner join marca ma on ma.idmarca=mo.marca_idmarca
inner join piloto p on p.cuil=v.piloto_cuil;

-- Listado de vuelos realizados mostrando código, marca, modelo y matrícula del avión, Código IATA del Aeropuerto 
-- origen, Código IATA del Aeropuerto destino, fecha hora partida, fecha hora llegada y CUIL piloto que hayan
-- partido del aeropuerto “BUE” ordenados por fecha hora de partida.
select idvuelo as codigo, ma.nombre as marca, mo.nombre as modelo, a.matricula, parte_idaeropuerto, arriba_idaeropuerto, 
parte_fecha_hora, arriba_fecha_hora, p.cuil as piloto_cuil
from vuelo v
inner join avion a on v.avion_matricula=a.matricula
inner join modelo mo on mo.idmodelo=a.modelo_idmodelo
inner join marca ma on ma.idmarca=mo.marca_idmarca
inner join piloto p on p.cuil=v.piloto_cuil
where v.parte_idaeropuerto="BUE"
order by parte_fecha_hora asc;

-- Listado de vuelos realizados mostrando codigo, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto destino, 
-- fecha hora partida y fecha hora llegada que hayan partido del aeropuerto “BUE” y hayan arribado al aeropuerto “MDQ”.
select idvuelo as codigo, parte_idaeropuerto, arriba_idaeropuerto, parte_fecha_hora, arriba_fecha_hora
from vuelo
where parte_idaeropuerto="BUE" and vuelo.arriba_idaeropuerto="MDQ";

-- Listado de todos los vuelos realizados y sus pasajeros, (código, apellido,nombre, dni)
select idvuelo as codigo_vuelo , p.apellido, p.nombre, p.dni
 from vuelo
 inner join toma t on t.vuelo_codigo=idvuelo
 inner join pasajero p on t.pasajero_dni=p.dni;

-- Cantidad de vuelos realizados que hayan partido del aeropuerto “BUE” y hayan arribado al aeropuerto “BRC”
select count(*) as vuelos_bue_brc 
from vuelo
where parte_idaeropuerto="BUE" and arriba_idaeropuerto="BRC";

-- Cantidad de vuelos realizados que hayan partido del aeropuerto “MDQ”
select count(*) 
from vuelo
where parte_idaeropuerto="MDQ";

-- Cantidad de vuelos realizados, por aeropuerto de origen (Código IATA,cantidad)
select  idvuelo as codigo_vuelo,count(*) as cantidad_parte_aeropuerto
from vuelo
group by parte_idaeropuerto;

-- Cantidad de pasajeros transportados, por localidad del pasajero (localidad,cantidad)
select l.nombre as localidad , count(l.nombre) as cantidad_por_localidad
from toma t
inner join pasajero p on p.dni=t.pasajero_dni
inner join localidad l on l.idlocalidad=p.localidad_idlocalidad
group by l.nombre;

-- Cantidad de pasajeros transportados, por dìa (fecha, cantidad)
select date(parte_fecha_hora) as fecha, count(date(parte_fecha_hora)) as cantidad
from vuelo
group by  date(parte_fecha_hora);

-- Cantidad de vuelos por pasajero (apellido, nombre, dni, cantidad)
select p.apellido, p.nombre,p.dni , count(pasajero_dni) as cantidad
from toma m
inner join pasajero p on p.dni=m.pasajero_dni
group by p.dni;

