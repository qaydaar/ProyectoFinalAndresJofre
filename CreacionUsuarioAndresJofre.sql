use proyectofinaljofre;
create user 'usuario_sololectura@localhost' identified by 'lectura';
GRANT SELECT ON *.* TO 'usuario_sololectura@localhost';

#Crear usuario con permisos de lectura, inserción y modificación
CREATE USER 'usuario2_modificacion@localhost' IDENTIFIED BY 'Completo';
GRANT SELECT, INSERT, UPDATE ON *.* TO 'usuario2_modificacion@localhost';
#este grant entrega permisos para insertar, modificar y leer

#Revocar permisos de eliminación para ambos usuarios para estar seguro que no puedan borar datos
REVOKE DELETE ON *.* FROM 'usuario_sololectura@localhost';
REVOKE DELETE ON *.* FROM 'usuario2_modificacion@localhost';

show grants for 'usuario_lectura@localhost';