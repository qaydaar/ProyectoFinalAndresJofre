use proyectofinaljofre;
create table empresa (
id_empresa INT AUTO_INCREMENT primary key,
nombre_e varchar(30),
contacto varchar(30)
);
create table peligrosidades (
peligrosidad int primary key,
Descripción varchar(30)
);
create table residuo (
id_residuo INT AUTO_INCREMENT  primary key,
nombre_r varchar(30),
descripcion varchar(30),
peligrosidad INT,
foreign key (peligrosidad) references peligrosidades(peligrosidad)
);
create table ingreso (
id_ingreso INT AUTO_INCREMENT primary key,
id_residuo INT,
id_empresa INT,
cantidad INT,
foreign key (id_empresa) REFERENCES Empresa(id_empresa),
foreign key (id_residuo) references Residuo(id_residuo)
);
create table ubicaciones (
id_empresa int,
ubicacion varchar(30),
nombre varchar(30),
foreign key (id_empresa) references ingreso(id_empresa)
);
create table bodegas (
id_bodega INT auto_increment primary key,
nombre_bodega varchar(30)
);
create table almacenamiento (
id_almacenamiento INT AUTO_INCREMENT primary key,
id_bodega INT,
cantidad_a INT,
id_residuo INT,
foreign key (id_residuo) references Residuo(id_residuo),
foreign key (id_bodega) references bodegas(id_bodega)
);
create table almacenamiento_materiaprima (
id_materiaprima INT auto_increment primary key,
materia_prima varchar(30),
cantidad_almacenada INT,
Bodega_materiaprima varchar(30)
);
create table Tratamiento (
id_tratamiento INT AUTO_INCREMENT primary key,
id_residuo INT,
cantidad INT,
id_materiaprima int,
cantidad2 INT,
id_almacenamiento INT,
fecha date,
hora time,
foreign key (id_residuo) references Residuo(id_residuo),
foreign key (id_almacenamiento) references Almacenamiento (id_almacenamiento),
foreign key (id_materiaprima) references almacenamiento_materiaprima(id_materiaprima)
);
create table areas_de_tratamiento (
id_area INT primary key,
id_tratamiento INT,
id_residuo INT,
id_almacenamiento INT,
foreign key (id_almacenamiento) REFERENCES almacenamiento(id_almacenamiento),
foreign key (id_residuo) references residuo(id_residuo),
foreign key (id_tratamiento) references tratamiento(id_tratamiento)
);
create table descripcion_area_tratamiento (
id_area int,
Descripción varchar(40),
foreign key (id_area) references areas_de_tratamiento(id_area)
);