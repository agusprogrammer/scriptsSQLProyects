create user 'userRedSocial'@'localhost' identified by 'usersocial';

/*Nota: en un futuro usar alter user*/
grant all privileges on *.* to userRedSocial@localhost identified by 'usersocial';

grant select, update, insert, delete, create, drop, alter on bd_red_social.* to userRedSocial@localhost ;

drop user 'userRedSocial'@'localhost';

set global optimizer_switch='derived_merge=OFF'; /* para proyectos .net*/

/* usuario para proyectos spring  ------------------------------------------------ */

create user 'usuariospring'@'127.0.0.1' identified by 'ususpring';

/*Nota: en un futuro usar alter user*/
grant all privileges on *.* to usuariospring@127.0.0.1 identified by 'ususpring';

grant select, update, insert, delete, create, drop, alter on bd_pruebas_spring.* to usuariospring@127.0.0.1 ;

drop user 'usuariospring'@'127.0.0.1';

set global optimizer_switch='derived_merge=OFF'; /* para proyectos .net*/
