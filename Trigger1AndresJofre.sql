use proyectofinaljofre;

DELIMITER //
create trigger ingreso_log_trigger AFTER insert on ingreso
For each row
Begin
	Insert into ingresos_log (il_cantidad, id_iresiduo, fecha, hora, usuario, REGISTRO)
    values (New.cantidad, New.id_residuo, current_date(),current_time(), current_user(), 'NUEVO REGRISTRO');
END;

//

#Creo que es explicativo en si mismo, pero al final lo que quiero es poder llevar un registro claro de los ingresos que ocurren en la planta en el dia a dia.
	