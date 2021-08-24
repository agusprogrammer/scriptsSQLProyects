CREATE SCHEMA `bd_red_social` ;

/*tabla de usuarios aplicacion*/
create table usuario(
id_usu int auto_increment,
nombre_usu varchar(60) not null unique key,
fecha_alta datetime not null,

pais varchar(100),
ciudad varchar(100),
region varchar(100),

email varchar(100),

nombre varchar(100),
apellidos varchar(200),
fecha_nacimiento date not null,
telefono varchar(20),

email_entrada varchar(100) not null unique key,
contrasenya varchar(100) not null,

perfil_privado bool default false,
aceptada_pol_priva bool default false,
es_administrador bool default false,
usuario_activo bool default true,
usuario_baneado bool default false,
fecha_fin_baneo datetime,

estado varchar(200),
num_visitas bigint default 0,
fecha_ultimo_login datetime,
foto_perfil varchar(100),
foto_portada varchar(100),

primary key(id_usu)
); 


/*Tabla amigos usuarios*/
create table amigos_usu(
id_solicitante int,
id_receptor int,
fecha_enviada datetime not null,
solicitud_aceptada bool default null,
primary key(id_solicitante, id_receptor),
foreign key(id_solicitante) references usuario(id_usu),
foreign key(id_receptor) references usuario(id_usu)
);

/*Tabla fotos*/
create table fotos(
id_foto int auto_increment,
id_usu int not null,
foto_string varchar(100) not null,
fecha_subida_fot datetime not null,
primary key (id_foto),
foreign key(id_usu) references usuario(id_usu)
);

/*Tabla videos*/
create table videos(
id_video int auto_increment,
id_usu int,
video_string varchar(100) not null,
fecha_subida_vid datetime not null,
primary key (id_video),
foreign key(id_usu) references usuario(id_usu)
);

/*Tabla entradas*/
create table entradas(
id_entrada int auto_increment,
id_usu int,
titulo_entrada varchar(200) not null,
texto_entrada varchar(500),
fecha_creacion_ent datetime not null,
primary key(id_entrada),
foreign key(id_usu) references usuario(id_usu)
);

/*Tabla publicaciones*/
create table publicacion(
id_publicacion int auto_increment,
id_usu int,
titulo_publicacion varchar(200) not null,
texto_publicacion varchar(500),
fecha_creacion_pub datetime not null,
pub_es_privada bool default false,
primary key(id_publicacion),
foreign key(id_usu) references usuario(id_usu)
);

/*Tabla comentarios*/
create table comentario(
id_comentario int auto_increment,
id_usuario int not null,
id_publicacion int not null,
texto_comentario varchar(500) not null,
fecha_creacion_com datetime not null,
primary key(id_comentario),
foreign key(id_usuario) references usuario(id_usu),
foreign key(id_publicacion) references publicacion(id_publicacion)
);

/* modificaciones unique key (nota: estaparte ya esta incluida en el create, es una cosa de antes)*/
ALTER TABLE `bd_red_social`.`usuario` 
ADD UNIQUE INDEX `nombre_usu_UNIQUE` (`nombre_usu` ASC),
ADD UNIQUE INDEX `email_entrada_UNIQUE` (`email_entrada` ASC);


/* Inserts  de prueba */

/* usuario admin de prueba*/
INSERT INTO `bd_red_social`.`usuario` (`id_usu`, `nombre_usu`, `fecha_alta`, `email`, `fecha_nacimiento`, `email_entrada`, `contrasenya`, `es_administrador`) VALUES ('1', 'admin', '2020-04-30 17:26:00', 'soporteADM@gmail.com', '1994-04-30', 'soporteADM@gmail.com', '123456789', '0');

UPDATE `bd_red_social`.`usuario` SET `es_administrador`='1' WHERE `id_usu`='1';

INSERT INTO `bd_red_social`.`entradas` (`id_entrada`, `id_usu`, `titulo_entrada`, `texto_entrada`, `fecha_creacion_ent`) VALUES ('1', '1', 'Entrada de prueba 1', 'Entrada 1', '2020-04-30 17:26:00');

INSERT INTO `bd_red_social`.`publicacion` (`id_publicacion`, `id_usu`, `titulo_publicacion`, `texto_publicacion`, `fecha_creacion_pub`, `pub_es_privada`) VALUES ('1', '1', 'Publicacion 1', 'Publicacion de prueba', '2020-04-30 17:26:00', '0');

INSERT INTO `bd_red_social`.`comentario` (`id_comentario`, `id_usuario`, `id_publicacion`, `texto_comentario`, `fecha_creacion_com`) VALUES ('1', '1', '1', 'Esto es un comentario', '2020-04-30 17:26:00');



/* usuarios de prueba para las selects*/

INSERT INTO `bd_red_social`.`usuario` (`id_usu`, `nombre_usu`, `fecha_alta`, `email`, `fecha_nacimiento`, `email_entrada`, `contrasenya`, `es_administrador`) VALUES ('2', 'admin', '2020-04-30 17:26:00', 'soporteADM@gmail.com', '1994-04-30', 'soporteADM@gmail.com', '123456789', '0');

INSERT INTO `bd_red_social`.`usuario` (`id_usu`, `nombre_usu`, `fecha_alta`, `email`, `fecha_nacimiento`, `email_entrada`, `contrasenya`, `es_administrador`) VALUES ('3', 'admin', '2020-04-30 17:26:00', 'soporteADM@gmail.com', '1994-04-30', 'soporteADM@gmail.com', '123456789', '0');


/*Ampliacion usuario admin de prueba*/
UPDATE `bd_red_social`.`usuario` SET `pais`='España', `ciudad`='Valencia', `region`='CValenciana', `nombre`='adm', `apellidos`='admin', `telefono`='9663015', `estado`='estadoAdmin' WHERE `id_usu`='1';

Update `usuario` SET `fecha_ultimo_login`='2020-04-30 17:26:00' WHERE `id_usu`='1';


/*Pruebas con spring*/
CREATE SCHEMA `bd_pruebas_spring` ;



/* datos sin especificar bd -----------------------------------------*/

INSERT INTO `usuario` (`id_usu`, `nombre_usu`, `fecha_alta`, `email`, `fecha_nacimiento`, `email_entrada`, `contrasenya`, `es_administrador`) VALUES ('1', 'admin', '2020-04-30 17:26:00', 'soporteADM@gmail.com', '1994-04-30', 'soporteADM@gmail.com', '123456789', '0');

UPDATE `usuario` SET `es_administrador`='1' WHERE `id_usu`='1';

INSERT INTO `entradas` (`id_entrada`, `id_usu`, `titulo_entrada`, `texto_entrada`, `fecha_creacion_ent`) VALUES ('1', '1', 'Entrada de prueba 1', 'Entrada 1', '2020-04-30 17:26:00');

INSERT INTO `publicacion` (`id_publicacion`, `id_usu`, `titulo_publicacion`, `texto_publicacion`, `fecha_creacion_pub`, `pub_es_privada`) VALUES ('1', '1', 'Publicacion 1', 'Publicacion de prueba', '2020-04-30 17:26:00', '0');

INSERT INTO `comentario` (`id_comentario`, `id_usuario`, `id_publicacion`, `texto_comentario`, `fecha_creacion_com`) VALUES ('1', '1', '1', 'Esto es un comentario', '2020-04-30 17:26:00');

INSERT INTO `usuario` (`id_usu`, `nombre_usu`, `fecha_alta`, `email`, `fecha_nacimiento`, `email_entrada`, `contrasenya`, `es_administrador`) VALUES ('2', 'admin2', '2020-04-30 17:26:00', 'soporteADM2@gmail.com', '1994-04-30', 'soporteADM2@gmail.com', '123456789', '0');

INSERT INTO `usuario` (`id_usu`, `nombre_usu`, `fecha_alta`, `email`, `fecha_nacimiento`, `email_entrada`, `contrasenya`, `es_administrador`) VALUES ('3', 'admin3', '2020-04-30 17:26:00', 'soporteADM3@gmail.com', '1994-04-30', 'soporteADM3@gmail.com', '123456789', '0');

UPDATE `usuario` SET `pais`='España', `ciudad`='Valencia', `region`='CValenciana', `nombre`='adm', `apellidos`='admin', `telefono`='9663015', `estado`='estadoAdmin' WHERE `id_usu`='1';

Update `usuario` SET `fecha_ultimo_login`='2020-04-30 17:26:00' WHERE `id_usu`='1';


/*Actualizacion usuario 1*/

UPDATE `bd_red_social`.`usuario` SET `pais`='España', `ciudad`='Valencia', `region`='CValenciana', `nombre`='adm', `apellidos`='admin', `telefono`='9663015', `estado`='estadoAdmin' WHERE `id_usu`='1';

Update `usuario` SET `fecha_ultimo_login`='2020-04-30 17:26:00' WHERE `id_usu`='1';

/* datos de prueba para conprobar (Nota: crear mas usuarios antes)*/

/* amigos usu*/
INSERT INTO `bd_red_social_3`.`amigos_usu` (`id_solicitante`, `id_receptor`, `fecha_enviada`) VALUES ('1', '5', '2020-04-30 17:26:00');
INSERT INTO `bd_red_social_3`.`amigos_usu` (`id_solicitante`, `id_receptor`, `fecha_enviada`, `solicitud_aceptada`) VALUES ('1', '4', '2020-04-30 17:26:00', '1');
INSERT INTO `bd_red_social_3`.`amigos_usu` (`id_solicitante`, `id_receptor`, `fecha_enviada`, `solicitud_aceptada`) VALUES ('2', '4', '2020-04-30 17:26:00', '1');
INSERT INTO `bd_red_social_3`.`amigos_usu` (`id_solicitante`, `id_receptor`, `fecha_enviada`) VALUES ('2', '5', '2020-04-30 17:26:00');
INSERT INTO `bd_red_social_3`.`amigos_usu` (`id_solicitante`, `id_receptor`, `fecha_enviada`, `solicitud_aceptada`) VALUES ('6', '1', '2020-04-30 17:26:00', '1');
INSERT INTO `bd_red_social_3`.`amigos_usu` (`id_solicitante`, `id_receptor`, `fecha_enviada`, `solicitud_aceptada`) VALUES ('4', '1', '2020-04-30 17:26:00', '0');

UPDATE `bd_red_social_3`.`amigos_usu` SET `solicitud_aceptada`='0' WHERE `id_solicitante`='1' and`id_receptor`='5';
UPDATE `bd_red_social_3`.`amigos_usu` SET `solicitud_aceptada`='0' WHERE `id_solicitante`='2' and`id_receptor`='5';

/*entradas*/
INSERT INTO `bd_red_social_3`.`entradas` (`id_entrada`, `id_usu`, `titulo_entrada`, `texto_entrada`, `fecha_creacion_ent`) VALUES ('2', '4', 'Entrada usu 4', 'entrada 4', '2020-04-30 17:26:00');
INSERT INTO `bd_red_social_3`.`entradas` (`id_entrada`, `id_usu`, `titulo_entrada`, `texto_entrada`, `fecha_creacion_ent`) VALUES ('3', '1', 'Entrada de prueba 2', 'entr 2', '2020-04-30 17:26:00');

/*publicaciones*/
INSERT INTO `bd_red_social_3`.`publicacion` (`id_publicacion`, `id_usu`, `titulo_publicacion`, `texto_publicacion`, `fecha_creacion_pub`, `pub_es_privada`) VALUES ('2', '4', 'Publicacion del 4 priv', 'Publicacion del 4 priv', '2020-04-30 17:26:00', '1');
INSERT INTO `bd_red_social_3`.`publicacion` (`id_publicacion`, `id_usu`, `titulo_publicacion`, `texto_publicacion`, `fecha_creacion_pub`, `pub_es_privada`) VALUES ('3', '4', 'Publicacion del 4 pub', 'Publicacion del 4 pub', '2020-04-30 17:26:00', '0');
INSERT INTO `bd_red_social_3`.`publicacion` (`id_publicacion`, `id_usu`, `titulo_publicacion`, `texto_publicacion`, `fecha_creacion_pub`, `pub_es_privada`) VALUES ('4', '5', 'Publicacion del 5 pub', 'Publicacion del 5 pub', '2020-04-30 17:26:00', '0');
INSERT INTO `bd_red_social_3`.`publicacion` (`id_publicacion`, `id_usu`, `titulo_publicacion`, `texto_publicacion`, `fecha_creacion_pub`, `pub_es_privada`) VALUES ('5', '4', 'Publicacion del 4 priv com', 'Publicacion del 4 priv com', '2020-04-30 17:26:00', '1');
INSERT INTO `bd_red_social_3`.`publicacion` (`id_publicacion`, `id_usu`, `titulo_publicacion`, `texto_publicacion`, `fecha_creacion_pub`, `pub_es_privada`) VALUES ('6', '4', 'Publicacion del 4 pub com', 'Publicacion del 4 pub com', '2020-04-30 17:26:00', '0');

/*comentarios*/
INSERT INTO `bd_red_social_3`.`comentario` (`id_comentario`, `id_usuario`, `id_publicacion`, `texto_comentario`, `fecha_creacion_com`) VALUES ('2', '1', '5', 'comm pub privada', '2020-04-30 17:26:00');
INSERT INTO `bd_red_social_3`.`comentario` (`id_comentario`, `id_usuario`, `id_publicacion`, `texto_comentario`, `fecha_creacion_com`) VALUES ('3', '1', '6', 'comm pub publ', '2020-04-30 17:26:00');
INSERT INTO `bd_red_social_3`.`comentario` (`id_comentario`, `id_usuario`, `id_publicacion`, `texto_comentario`, `fecha_creacion_com`) VALUES ('4', '1', '5', 'comm pub privada 2', '2020-04-30 17:26:00');


