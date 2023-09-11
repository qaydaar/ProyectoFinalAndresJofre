#stored procedures
use proyectofinaljofre;
Delimiter //
Create procedure Agregar_ingreso (in p_id_residuo int, in p_id_empresa int, in p_cantidad int)
BEGIN
	insert into ingreso (id_residuo, id_empresa, cantidad)
    values (p_id_residuo, p_id_empresa, p_cantidad);
end
//

call Agregar_ingreso(2, 4, 200);
