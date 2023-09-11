use proyectofinaljofre;

Delimiter //

create trigger trigger_4 after insert on tratamiento
for each row
BEGIN
	insert into almacenamientos_log (fecha, hora, id_lnrbodega, al_cantidad, id_aresiduo, materia_prima, materia_prima_utilizada)
    values (current_date, current_time, 'No aplica', new.cantidad, new.id_residuo, new.materia_prima, new.cantidad2);
END;

//

#generar que la suma total de cantidad que genere este trigger en al_cantidad pueda compararse directament con la cantidad total generada en el trigger 3 en la misma columna.
#ademas de llevar un conteo claro de la materia prima utilizada (gastos de operación) asociados.