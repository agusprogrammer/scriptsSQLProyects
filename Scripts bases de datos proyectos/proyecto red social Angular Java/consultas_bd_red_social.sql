/* --consultas BD red social-- */

/* buscar todas las entradas de un usuario */
select e.id_usu, e.id_entrada, e.titulo_entrada, e.texto_entrada, e.fecha_creacion_ent
from entradas e, usuario u 
where u.id_usu = e.id_usu
and u.id_usu = 1;


/* buscar amigos del usuario */
select am.id_solicitante, am.id_receptor, am.solicitud_aceptada,
u.id_usu 
from amigos_usu am, usuario u 
where u.id_usu = am.id_solicitante
and am.solicitud_aceptada = 1 and am.id_solicitante = 1;


select am.id_solicitante, am.id_receptor, am.solicitud_aceptada,
u.id_usu 
from amigos_usu am, usuario u 
where u.id_usu = am.id_receptor
and am.solicitud_aceptada = 1 and am.id_receptor = 1;

/*En el programa se usara ids para buscar y luego se obtendra los objetos usuario*/
/*manera optima*/
select am.id_solicitante, am.id_receptor, am.solicitud_aceptada from amigos_usu am 
where (am.id_receptor = 1 or am.id_solicitante = 1) and am.solicitud_aceptada = 1;

/*por programa revisar cuales son aceptadas y cuales no*/


/* Nota: en el programa hay poner la opcion de rechazar o aceptar todas
ademas de la manera individual */

/* peticiones, si son rechazadas son null  y se borran
   si las peticiones son false se mantienen*/

/* buscar peticiones de amistad en general (sin identificar enviadas recibidas)*/
select am.id_solicitante, am.id_receptor, am.solicitud_aceptada from amigos_usu am 
where (am.id_receptor = 1 or am.id_solicitante = 1) and am.solicitud_aceptada = 0;


/* buscar peticiones de amistad realizadas por el usuario*/
select am.id_solicitante, am.id_receptor, am.solicitud_aceptada,
u.id_usu 
from amigos_usu am, usuario u 
where u.id_usu = am.id_solicitante
and am.id_solicitante = 1 
and am.solicitud_aceptada = 0;


/* buscar peticiones recibidas por el usuario*/
select am.id_solicitante, am.id_receptor, am.solicitud_aceptada,
u.id_usu 
from amigos_usu am, usuario u 
where u.id_usu = am.id_receptor
and am.id_receptor = 1
and am.solicitud_aceptada = 0;


/* buscar fotos del usuario limite de 9 ultimas */
select * from usuario u, fotos f 
where u.id_usu = f.id_usu and u.id_usu = 1 
order by f.fecha_subida_fot desc limit 9;


/* buscar fotos de un usuario*/
select * from usuario u, fotos f 
where u.id_usu = f.id_usu and u.id_usu = 1 
order by f.fecha_subida_fot desc;

/* buscar videos del usuario limite de 9 ultimas*/
select * from usuario u, videos v 
where u.id_usu = v.id_usu and u.id_usu = 1 
order by v.fecha_subida_vid desc limit 9;

/* buscar videos de un usuario*/
select * from usuario u, videos v 
where u.id_usu = v.id_usu and u.id_usu = 1 
order by v.fecha_subida_vid desc;

/*obtener las publicaciones de un usuario (para el perfil)*/
select publicacion.titulo_publicacion, publicacion.texto_publicacion, publicacion.id_usu
from publicacion where publicacion.id_usu = 4 order by publicacion.fecha_creacion_pub desc;

/*obtener publicaciones para el inicio (publicas, todos usuarios)*/
select publicacion.titulo_publicacion, publicacion.texto_publicacion, 
publicacion.id_usu, publicacion.pub_es_privada, publicacion.fecha_creacion_pub
from publicacion where publicacion.pub_es_privada = 0 
order by publicacion.fecha_creacion_pub desc;

/* buscar todas las publicaciones ordenadas por 
fecha que sean publicas con un limite de 10 ultimas */
select publicacion.titulo_publicacion, publicacion.texto_publicacion, 
publicacion.id_usu, publicacion.pub_es_privada, publicacion.fecha_creacion_pub
from publicacion where publicacion.pub_es_privada = 0 
order by publicacion.fecha_creacion_pub desc limit 10;


/* buscar publicaciones de los amigos del usuario */
select publicacion.titulo_publicacion, publicacion.texto_publicacion, 
publicacion.id_usu, publicacion.pub_es_privada, publicacion.fecha_creacion_pub
from publicacion where publicacion.id_usu = 1 and publicacion.id_usu 
in(select am.id_solicitante from amigos_usu am where am.solicitud_aceptada = 1)
or 
publicacion.id_usu in(select a.id_receptor from amigos_usu a where a.solicitud_aceptada = 1)
order by publicacion.fecha_creacion_pub desc;

/*
select publicacion.titulo_publicacion, publicacion.texto_publicacion, publicacion.id_usu
from publicacion where publicacion.id_usu = 4;

select publicacion.titulo_publicacion, publicacion.texto_publicacion, publicacion.id_usu
from publicacion where publicacion.id_usu in(select u.id_usu from usuario u, amigos_usu am 
where u.id_usu = am.id_receptor or u.id_usu = am.id_solicitante 
and am.solicitud_aceptada = 1);

select * from usuario u, amigos_usu am 
where u.id_usu = am.id_receptor or u.id_usu = am.id_solicitante 
and am.solicitud_aceptada = 1;
*/

/* buscar comentarios de una publicacion */
select * from comentario where comentario.id_publicacion = 5;

/*Seleccionar el ultimo id usuario (seleccionar el maximo)*/
SELECT max(id_usu) FROM bd_red_social_3.usuario;

/* ------------------------------------- */

/* ejemplo con puerto de la bd de ciclismo*/
select ciclismo.puerto.altura from ciclismo.puerto order by ciclismo.puerto.altura desc limit 4;


