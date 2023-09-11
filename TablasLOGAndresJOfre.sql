use proyectofinaljofre;

create table Ingresos_Log(
id_ilog INT auto_increment primary key,
fecha DATE,
HORA TIME,
il_Cantidad int,
id_iresiduo varchar(30),
usuario varchar(30),
REGISTRO VARCHAR(30)
) ;


create table almacenamientos_log(
id_alog int auto_increment primary key,
fecha date,
hora time,
id_lnrbodega int,
al_cantidad int,
id_aresiduo int
);
