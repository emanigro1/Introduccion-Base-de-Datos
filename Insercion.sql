use aeropuerto;
-- Insertamos datos en la tabla:
-- pais
insert into pais 
values(1,"Estados Unidos");

insert into pais 
values(2,"Alemania");

-- marca
insert into marca 
values(1,"Cessna",1);

insert into marca 
values(2,"Beechcraft",1);

insert into marca 
values(3,"Fokker",2);

-- modelo
insert into modelo 
values(1,"Citation",1);

insert into modelo 
values(2,"Baron",2);

insert into modelo 
values(3,"F-27",3);

insert into modelo 
values(4,"Citation",1);

insert into modelo 
values(5,"King Air",2);

-- avion
insert into avion 
values("LV-ABC",'2010-12-12',1);

insert into avion 
values("LV-CDE",'2011-10-1',2);

insert into avion 
values("LV-FGH",'2008-5-4',3);

insert into avion 
values("LV-IJK",'2014-6-7',4);

insert into avion 
values("LV-LMN",'2012-7-8',5);

-- localidad
insert into localidad 
values(1,"Lanus");

insert into localidad 
values(2,"CABA");

insert into localidad 
values(3,"Avellaneda");

insert into localidad 
values(4,"Lomas de Zamora");

insert into localidad 
values(5,"Mar Del Plata");

insert into localidad 
values(6,"San Carlos de Bariloche");

-- provincia
insert into provincia 
values(1,"Buenos Aires");

insert into provincia 
values(2,"CABA");

-- calle
insert into calle 
values(1,"Ituzaingo ");

insert into calle 
values(2,"Roca ");

insert into calle 
values(3,"Campichuelo");

insert into calle 
values(4,"Meeks");

insert into calle 
values(5,"Mamberti");

insert into calle 
values(6,"Amenabar");

insert into calle 
values(7,"Capello");

insert into calle 
values(8,"San Martìn");

insert into calle 
values(9,"Azara");

insert into calle 
values(10,"Sarmiento");

insert into calle 
values(11,"Rivadavia");

insert into calle 
values(12,"Martinto");

insert into calle 
values(13,"Bolaños");

insert into calle 
values(14,"Loria");

-- pasajero
insert into pasajero 
values(11111111,"Barragan","Alejo",true,1,1,1,123);

insert into pasajero 
values(22222222,"casas","Andrès Alfredo",true,2,2,2,4561);

insert into pasajero 
values(33333333,"Chaves","Barbara",false,3,1,3,6532);

insert into pasajero 
values(44444444,"Chimbo","Brisa",true,4,1,4,562);

insert into pasajero 
values(55555555,"Chudoba","camila",false,1,1,5,2356);

insert into pasajero 
values(66666666,"Cires","Carlos ",true,2,2,6,2345);

insert into pasajero 
values(77777777,"Cusato","Carlos Sebastián",false,4,1,7,1589);

insert into pasajero 
values(88888888,"Dominguez","Christian",true,2,2,6,356);

insert into pasajero 
values(99999999,"Escullini","Cristian",true,4,1,4,1296);

insert into pasajero 
values(10111213,"Feijoo","Cristian",true,3,1,8,3652);

-- piloto
insert into piloto 
values("20-12345678-8",12345678,"Juarez","Federico Bernardo",'1994-10-1',2,2,8,2235);

insert into piloto 
values("20-34567890-1",34567890,"Lacoste","Franco",'2003-7-1',4,1,9,333);

insert into piloto 
values("27-45678901-1",45678901,"Laime ","Mariana",'2001-4-1',1,1,10,500);

insert into piloto 
values("20-56789123-3",56789123,"Lopez","Germán Ignacio",'2013-5-1',2,2,11,2351);

insert into piloto 
values("20-67891234-4",67891234,"Martinez","Giuliano",'2010-7-1',1,1,12,663);

insert into piloto 
values("27-78912345-5",78912345,"Medina","Adriana",'2015-8-1',1,1,13,1256);

insert into piloto 
values("20-90123456-6",90123456,"Melgarejo","Jair Alberto",'2011-3-1',4,1,14,1256);

-- aeropuerto
insert into aeropuerto
values ("BUE","Aeroparque Jorge Newbery",2);

insert into aeropuerto
values ("MDQ","Astor Piazolla",5);

insert into aeropuerto
values ("BRC","Teniente Luis Candelaria",6); 

-- vuelo
insert into vuelo 
values("TT1234","LV-ABC","20-12345678-8","BUE","BRC","2018-5-1  20:00:00","2018-5-1  23:45:00");

insert into vuelo 
values("TT3456","LV-CDE","27-78912345-5","BUE","MDQ","2018-5-2  10:00:00","2018-5-2  12:00:00");

insert into vuelo 
values("TT1235","LV-ABC","20-12345678-8","BRC","BUE","2018-5-2  07:00:00","2018-5-2  10:50:00");

insert into vuelo 
values("TT1256","LV-FGH","27-45678901-1","BUE","MDQ","2018-5-2  08:00:00","2018-5-2  10:05:00");

insert into vuelo 
values("TT5632","LV-IJK","20-56789123-3","MDQ","BUE","2018-5-3  07:00:00","2018-5-3  09:15:00");

insert into vuelo 
values("TT3333","LV-LMN","20-12345678-8","BUE","BRC","2018-5-3  07:00:00","2018-5-3  10:50:00");

insert into vuelo 
values("TT1257","LV-FGH","27-45678901-1","BUE","MDQ","2018-5-4  08:00:00","2018-5-4  10:05:00");

insert into vuelo 
values("TT3457","LV-CDE","27-78912345-5","MDQ","BUE","2018-5-4  10:00:00","2018-5-4  12:00:00");

insert into vuelo 
values("TT5633","LV-IJK","20-56789123-3","BUE","MDQ","2018-5-5  07:00:00","2018-5-5  09:15:00");

-- toma
insert into toma 
values("TT1234",44444444);

insert into toma 
values("TT1234",55555555);

insert into toma 
values("TT1234",66666666);

insert into toma 
values("TT3456",77777777);

insert into toma 
values("TT3456",88888888);

insert into toma 
values("TT3456",99999999);

insert into toma 
values("TT1235",44444444);

insert into toma 
values("TT1235",55555555);

insert into toma 
values("TT1256",11111111);

insert into toma 
values("TT1256",22222222);

insert into toma 
values("TT1256",33333333);

insert into toma 
values("TT5632",11111111);

insert into toma 
values("TT5632",22222222);

insert into toma 
values("TT5632",33333333);

insert into toma 
values("TT3333",77777777);

insert into toma 
values("TT3333",88888888);

insert into toma 
values("TT3333",999999999);

insert into toma 
values("TT1257",222222222);

insert into toma 
values("TT3457",77777777);

insert into toma 
values("TT3457",88888888);

insert into toma 
values("TT3457",99999999);

insert into toma 
values("TT5633",77777777);

insert into toma 
values("TT5633",88888888);

insert into toma 
values("TT5633",99999999);

