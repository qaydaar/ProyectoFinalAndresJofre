use proyectofinaljofre;
Delimiter //

create trigger ingreso_trigger2 before delete on ingreso
for each row
Begin
	Insert into ingresos_log (il_cantidad, id_iresiduo, fecha, hora, usuario, REGISTRO)
    values (old.cantidad, old.id_residuo, current_date(), current_time(), current_user(), 'Registro borrado');
END;

//

drop trigger ingreso_trigger2;

#Creo que es explicativo en si mismo, pero al final lo que quiero es poder llevar un registro claro de los ingresos que ocurren en la planta en el dia a dia.
#a veces un ingreso puede no cumplir con los estandares de descarga, por lo cual deben ser devueltos al generador. O bien son aceptados en planta pero luego de realizar analisis en laboratorio nos damos cuenta que no son lo que declararon y tambien hay que devolverlos.
#Basicamente lo que busco con este tabla log y trigger es poder cuadrar todo lo ingresado y lo que realmente hay en planta.