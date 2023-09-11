use proyectofinaljofre;
create view Residuos_Corrosivos as
select id_residuo,nombre_r,peligrosidad
from residuo
where peligrosidad = 8;
create view Residuos_Toxicos as
select id_residuo,nombre_r,peligrosidad
from residuo
where peligrosidad like 6;
create view Residuos_Oxidantes as
select id_residuo,nombre_r,peligrosidad
from residuo
where peligrosidad like 5;
create view Clientes_Region_Metropolitana1 as
select nombre
from ubicaciones
where ubicacion = 'Santiago' or ubicacion = 'Los Andes';
create view Clientes_Octava_Region as
select nombre
from ubicaciones
where ubicacion = 'BioBio' or ubicacion = 'Concepción';
