use proyectofinaljofre;
insert into empresa (nombre_e, contacto)
values ('ENAP', 'enapcontacto@enap.cl'),
('SQM', 'sqmcontacto@SQM.cl'),
('Codelco', 'codelco@codelco.cl'),
('Oxiquim', 'oxiquim@oxiquim.cl'),
('Química Rhenius', 'QuímicaR@qrhenius.cl');
insert into peligrosidades (peligrosidad, Descripción)
values (1, 'Explosivos'),
(2, 'Gases'),
(3, 'Liquido inflamable'),
(4, 'Solido inflamable'),
(5, 'Materiales oxidantes'),
(6, 'Materiales venenosos'),
(7, 'Materiales radioactivos'),
(8, 'corrosividad'),
(9, 'Otros');
insert into residuo (nombre_r, descripcion, peligrosidad)
values ('soda agotada', 'soda caustica con sulfuros', '8'),
('acido clorhidrico', 'acido clorhidrico 80%', '8'),
('peroxido de hidrogeno','peroxido concentrado', '5'),
('arsenical', 'relaves con arsenico', '6'),
('lodo planta acido', 'tierra con acidos', '8');
insert into ingreso (id_residuo, id_empresa, cantidad)
values ('1', '1', '50'),
('3', '2', '60'),
('4', '3', '100'),
('5', '4', '30'),
('2', '5', '50');
insert into ubicaciones(id_empresa, ubicacion, nombre)
values (1, 'ConCon', 'ENAP'),
(1, 'BioBio', 'ENAP'),
(2, 'Antofagasta', 'SQM'),
(2, 'Iquique', 'SQM'),
(3, 'Ventanas', 'Codelco'),
(3, 'Rancagua', 'Codelco'),
(4, 'Concepción', 'Oxiquim'),
(5, 'Santiago', 'Rhenium');
insert into bodegas(nombre_bodega)
values ('Inflamables'),
('Toxicos'),
('Patio 1'),
('Patio 2'),
('Halogenados'),
('Comburentes'),
('Liquidos inflamables');
insert into almacenamiento (id_bodega, cantidad_a, id_residuo)	
values ('2', 100, '4'),
('3', 70, '5'),
('7', 120, '1'),
('7', 80, '3'),
('5', 20, '2');
insert into almacenamiento_materiaprima (materia_prima, cantidad_almacenada, bodega_materiaprima)
values ('peroxido', 80, 'bodega materia prima 1'),
('base debil', 70, 'bodega materia prima 1'),
('ninguno', 400, 'bodega materia prima 2'),
('cal viva', 300, 'bodega materia prima 1'),
('cal viva', 200, 'bodega materia prima 2');
insert into tratamiento (id_residuo, cantidad, id_materiaprima, cantidad2, id_almacenamiento, fecha, hora)
values ('1', '30', 1, '10', '3', '2023-03-23', '10:30'),
('2', '20', 2, '20', '5', '2023-03-24', '11:00'),
('3', '50', 3, '0', '4', '2023-03-04', '11:40'),
('4', '50', 4, '40', '1', '2023-03-05', '8:00'),
('5', '40', 5, '10', '2', '2023-03-05', '10:00');
insert into areas_de_tratamiento (id_area, id_tratamiento, id_residuo, id_almacenamiento)
values (1, 1, 1, '3'),
(2, 2, 2,'5'),
(3, 3, 3,'4'),
(4, 4, 4,'1'),
(5, 5, 5,'2');
insert into descripcion_area_tratamiento (id_area, Descripción)
values (1, 'Area fisico quimico'),
(2, 'Area intertización'),
(3, 'Area combustible alternativo liquido'),
(4, 'Compactaje'),
(5, 'trasvasije');