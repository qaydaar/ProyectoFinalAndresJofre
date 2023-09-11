use proyectofinaljofre;
select @@autocommit;
SET autocommit =0;
START TRANSACTION; #inciar transacción
DELETE FROM ingreso WHERE id_ingreso = 8; #para que esto sirviera tuve que en el trigger2 re escribir el current_user() dado que no estaba en azul como fución dado que me estaba tirando un error no se por que.
#Rollback;
#Commit;