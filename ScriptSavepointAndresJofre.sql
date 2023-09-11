use proyectofinaljofre;
#Insertar 4 registros en la tabla Almacenamiento
Start transaction;
INSERT INTO almacenamiento (nr_bodega, cantidad_a, id_residuo) VALUES
    ('2', 100, '4'),
    ('3', 70, '5'),
    ('7', 120, '1'),
    ('7', 80, '3');
    
SAVEPOINT cuarto_registro;

#Insertar otros 4 registros en la tabla Almacenamiento
INSERT INTO almacenamiento (nr_bodega, cantidad_a, id_residuo) VALUES
    ('1', 60, '3'),
    ('5', 10, '2'),
    ('2', 40, '4'),
    ('3', 70, '5');

SAVEPOINT octavo_registro;


#ROLLBACK TO cuarto_registro;

#Confirmar la transacción
#COMMIT;
