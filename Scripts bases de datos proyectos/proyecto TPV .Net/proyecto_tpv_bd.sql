create database if not exists proyecto_tpv;
use proyecto_tpv;

/*Tabla de clientes subscritos al sistema de ofertas*/
create table clientes(
cod_cliente integer auto_increment,
nombre varchar(60),
apellidos varchar(100),
direccion varchar(100),
e_mail varchar(60),
primary key (cod_cliente)
);

/*Columnas de poblacion y tipo de direccion */
alter table clientes add column poblacion varchar(70); 
alter table clientes add column tipo_de_direccion varchar(50);

/*En ofertas poner si eso un rango de fechas validas
en este caso el campo periodo_oferta se refiere hasta 
el ultimo dia de validez (En principio, se puede dividir en varios 
campos o quedarse en un campo de tipo varchar)*/

/*el campo fichero es la ruta del fichero para 
saber donde se encuentra en el ordenador y luego 
en el programa se envia al cliente*/

/*Tabla de las ofertas*/
create table ofertas(
cod_oferta integer auto_increment,
descripcion varchar(100),
periodo_oferta date,
fichero varchar(300),
primary key(cod_oferta)
);

/*Tabla de las ofertas que se envian a los distintos clientes*/
/*varios clientes reciben varias ofertas*/
create table ofertas_envio_clientes(
cod_cliente integer,
cod_oferta integer,
primary key(cod_cliente, cod_oferta),
foreign key(cod_cliente) references clientes (cod_cliente),
foreign key(cod_oferta) references ofertas (cod_oferta)
);

/*Tabla de productos que se venden anterior*/
/*
create table productos(
cod_producto integer auto_increment,
descripcion varchar(100),
precio double,

cantidad integer,
ubicacion varchar(300),

tipo_de_producto varchar(60),
categoria varchar(60),
cod_oferta integer unique key,
primary key(cod_producto),
foreign key(cod_oferta) references ofertas(cod_oferta)
);
*/

/*Tabla de tipos de productos*/
create table tipos_de_productos(
cod_tipo_producto integer auto_increment,
tipo_de_producto varchar(60),
primary key(cod_tipo_producto)
);

/*Tabla de categorias*/
create table categorias(
cod_categoria integer auto_increment,
categoria varchar(60),
cod_tipo_producto integer,
primary key(cod_categoria),
foreign key(cod_tipo_producto) references tipos_de_productos(cod_tipo_producto)
);

/*Tabla de productos que se venden nueva 
(la ubicacion y la cantidad se ponen a parte, porque varios productos 
pueden estar en varios lugares dentro de nuestra tienda para poder 
hacer un control de stock)*/
create table productos(
cod_producto integer auto_increment,
descripcion varchar(100),
precio double,
/*tipo_de_producto varchar(60),*/
/*categoria varchar(60),*/
cod_categoria integer,
cod_oferta integer unique key,
primary key(cod_producto),
foreign key(cod_oferta) references ofertas(cod_oferta));

/*Campo adicional anyadido para poner la imagen en la base de datos*/
alter table productos add column imagen_producto blob;

/*Campo de referencia con categoria*/
alter table productos add constraint fk_prodCateg
foreign key(cod_categoria) references categorias(cod_categoria);

/*ubicaciones, donde estan los productos y en que lugar de la tienda*/
create table ubicaciones(
cod_ubicacion varchar(10),
descripcion_ubicacion varchar(100),
primary key(cod_ubicacion)
);

/*Modificacion booleana para saber si la ubicacion es un almacen*/
alter table ubicaciones add column tipo_almacen bool;

/*Modificaciones de la tabla de ubicaciones 
para poner las referencias que vienen del almacen*/

/*
alter table ubicaciones add column cod_ubicacion_almacen_tienda1 varchar(10);
alter table ubicaciones add column cod_ubicacion_almacen_tienda2 varchar(10);
*/

/*referencias*/
/*
alter table ubicaciones add constraint fk_prodReferencia1
foreign key(cod_ubicacion_almacen_tienda1) references ubicaciones(cod_ubicacion);

alter table ubicaciones add constraint fk_prodReferencia2
foreign key(cod_ubicacion_almacen_tienda2) references ubicaciones(cod_ubicacion);
*/

/*Tabla de ubicaciones que pertenecen*/
/*Varias ubicaciones tienen hubicaciones*/
create table ubicaciones_pertenecen(
cod_ubicacion_almacen varchar(10),
cod_ubicacion_tienda varchar(10),
primary key(cod_ubicacion_almacen, cod_ubicacion_tienda),
foreign key(cod_ubicacion_almacen) references ubicaciones(cod_ubicacion),
foreign key(cod_ubicacion_tienda) references ubicaciones(cod_ubicacion)
);

/*Restriccion en la tabla de ubicaciones_pertenecen, 
no se pueden dejar a null*/
alter table ubicaciones_pertenecen modify column cod_ubicacion_almacen varchar(10) not null;
alter table ubicaciones_pertenecen modify column cod_ubicacion_tienda varchar(10) not null;

/*tablas para el control de stock para controlar los productos del almacen*/
/*Productos y su ubicacion(en tienda o almacen)*/
create table productos_y_ubicaciones(
cod_producto integer,
cod_ubicacion varchar(10),
cantidad_en_stock integer,
primary key(cod_producto, cod_ubicacion),
foreign key(cod_producto) references productos(cod_producto),
foreign key(cod_ubicacion) references ubicaciones(cod_ubicacion)
);

/*Tabla de ventas, registra las ventas realizadas*/
/*listado de todas las ventas del tpv*/
/*Ver que es la relacion de productos*/
create table ventas(
cod_venta integer auto_increment,
cod_usuario integer not null,
/*empleado varchar(60),*/
mensaje varchar(100),
/*relacion_productos varchar(200),*/
fecha datetime,
total double,
iva double,
primary key(cod_venta)
);

/*Unir con la tabla clientes*/
alter table ventas add column cod_cliente integer not null;
alter table ventas add constraint fk_cliente_venta 
foreign key(cod_cliente) references clientes(cod_cliente);

/*Campo del total + iva de una venta*/
alter table ventas add column total_mas_iva double;

/*Tabla de roles que se aplica a los usuarios*/
/*Poner si eso otro campo llamado descripcion: descripcion varchar(100),*/
create table roles(
cod_rol integer auto_increment,
tipo_rol varchar(60),
primary key (cod_rol)
);

/*Tabla de los usuarios registrados en el sistema*/
/*No se pueden dejar los campos nulos, poner en el formulario del programa*/
create table usuarios(
cod_usuario integer auto_increment,
nombre_usu varchar(60),
apellidos_usu varchar(100),
usuario varchar(60),
contrasenya varchar(60),
cod_rol integer,
primary key (cod_usuario), 
foreign key (cod_rol) references roles(cod_rol)
);

alter table ventas add constraint fk_usuarios_venta
foreign key(cod_usuario) references usuarios(cod_usuario);

/*Anyadir a ususarios*/
/*alter table ventas add column cod_cliente integer not null;*/
/*
alter table usuarios add constraint fk_usuario 
foreign key(cod_cliente) references clientes(cod_cliente);
*/

/*Tabla de permisos que llevan los roles*/
create table permisos(
cod_permiso integer auto_increment,
descripcion varchar(100), 
permiso_activado bool,
primary key(cod_permiso)
);

/*Tabla que se utiliza para saber que permisos tiene cada rol,
varios permisos son de varios roles*/
create table permisos_y_roles(
cod_rol integer,
cod_permiso integer,
primary key (cod_rol, cod_permiso),

foreign key (cod_rol) references roles(cod_rol),
foreign key (cod_permiso) references permisos(cod_permiso)
);

/*cada vez que se compra, se registra aqui, 
es la union de que un usuario realiza una venta 
y vende varios productos*/
/*cambiado a una n n n*/
create table ventas_de_productos(
cod_venta integer,
/*cod_usuario integer,*/
cod_producto integer,
primary key(cod_venta,cod_producto),

/*foreign key(cod_usuario) references usuarios(cod_usuario),*/
foreign key(cod_venta) references ventas(cod_venta),
foreign key(cod_producto) references productos(cod_producto)
);

/*Campo para poner la cantidad de productos vendidos en cada venta identificando cuantos de cada producto*/
alter table ventas_de_productos add column cantidad_vendida integer;

/*Campo de precio total de las unidades 
de productos por cada producto de la lista*/
alter table ventas_de_productos add column precio_total_unidades double;











