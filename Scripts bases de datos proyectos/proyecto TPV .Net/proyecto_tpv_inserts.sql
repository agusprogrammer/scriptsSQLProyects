/*Inserts tpv*/
/*Clientes*/
/*
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`, `apellidos`, `direccion`, `e_mail`) VALUES ('1', 'Esther', 'Aguado', 'Avenida Francisco Catolico 20 Valencia', 'eaguado@ieshenrimatisse.com');
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`, `apellidos`, `direccion`, `e_mail`) VALUES ('2', 'Jeronimo', 'Valero', 'Avenida los Aires 7 Valencia', 'jvalro2007@gmail.com');
*/

/*Ofertas*/
/*
INSERT INTO `proyecto_tpv`.`ofertas` (`cod_oferta`, `descripcion`, `periodo_oferta`) VALUES ('1', 'descuento 20% platanos', '2019-07-13');
*/

/*Ofertas envio clientes*/
/*
INSERT INTO `proyecto_tpv`.`ofertas_envio_clientes` (`cod_cliente`, `cod_oferta`) VALUES ('1', '1');
INSERT INTO `proyecto_tpv`.`ofertas_envio_clientes` (`cod_cliente`, `cod_oferta`) VALUES ('2', '1');
*/

/*tabla roles*/
INSERT INTO `proyecto_tpv`.`roles` (`cod_rol`, `tipo_rol`) VALUES ('1', 'empleado');
INSERT INTO `proyecto_tpv`.`roles` (`cod_rol`, `tipo_rol`) VALUES ('2', 'encargado');
INSERT INTO `proyecto_tpv`.`roles` (`cod_rol`, `tipo_rol`) VALUES ('3', 'gerente');

/*Permisos*/
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('1', 'introducir_ventas', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('2', 'devolucion ventas', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('3', 'introducir_productos', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('4', 'modificar/eliminar_productos', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('5', 'campanyas_de_publicidad', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('6', 'gestionar_usuarios', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('7', 'edicion_de_permisos', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('8', 'cambio_de_contrasenyas', '1');
INSERT INTO `proyecto_tpv`.`permisos` (`cod_permiso`, `descripcion`, `permiso_activado`) VALUES ('9', 'edicion_de_roles', '1');

/*permisos y roles*/
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '1');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '2');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '3');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '4');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '5');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '6');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '7');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '8');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('3', '9');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('2', '1');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('2', '2');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('2', '3');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('2', '4');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('2', '5');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('1', '1');
INSERT INTO `proyecto_tpv`.`permisos_y_roles` (`cod_rol`, `cod_permiso`) VALUES ('1', '3');

/*Usuarios*/

/*Usuario administrador*/
INSERT INTO `proyecto_tpv`.`usuarios` (`cod_usuario`, `nombre_usu`, `apellidos_usu`, `usuario`, `contrasenya`, `cod_rol`) VALUES ('1', 'administrador', 'administrador', 'admin', 'admin', '3');

/*Usuarios del sistema*/
INSERT INTO `proyecto_tpv`.`usuarios` (`cod_usuario`, `nombre_usu`, `apellidos_usu`, `usuario`, `contrasenya`, `cod_rol`) VALUES ('2', 'empleado_1', 'empleado_1', 'empleado', 'empleado', '1');
INSERT INTO `proyecto_tpv`.`usuarios` (`cod_usuario`, `nombre_usu`, `apellidos_usu`, `usuario`, `contrasenya`, `cod_rol`) VALUES ('3', 'encaragado_1', 'encargado_1', 'encargado', 'encargado', '2');
INSERT INTO `proyecto_tpv`.`usuarios` (`cod_usuario`, `nombre_usu`, `apellidos_usu`, `usuario`, `contrasenya`, `cod_rol`) VALUES ('4', 'gerente_1', 'gerente_1', 'gerente', 'gerente', '3');

/*tipos de productos*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('productos_lacteos_y_huevos'); /*1*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('carne'); /*2*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('pescado'); /*3*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('bebidas_refrecos_y_zumos'); /*4*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('bebida_alcoholica'); /*5*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('chocolate_y_dulces'); /*6*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('cereales_y_galletas'); /*7*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('pasta_y_pan'); /*8*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('pizza_helados_y_platos_congelados'); /*9*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('arroz_y_legumbres'); /*10*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('verdura_pescado_y_carne_congelada'); /*11*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('conservas'); /*12*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('fruta_y_verdura'); /*13*/
INSERT INTO `proyecto_tpv`.`tipos_de_productos` (`tipo_de_producto`) VALUES ('snacks_y_salados'); /*14*/

/*categorias*/
/*productos_lacteos_y_huevos*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('leche','1'); /*1*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('batidos','1'); /*2*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('huevos','1'); /*3*/

/*Carne*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('carne_cordero','2'); /*4*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('carne_cerdo','2'); /*5*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('carne_pollo','2'); /*6*/

/*Pescado*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('pescado','3'); /*7*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('marisco','3'); /*8*/

/*bebidas_refrecos_y_zumos*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('refresco','4'); /*9*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('agua','4'); /*10*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('zumos','4'); /*11*/

/*bebida_alcoholica*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('cervezas','5'); /*12*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('vino','5'); /*13*/

/*chocolate_y_dulces*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('chocolate','6'); /*14*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('pasteleria','6'); /*15*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('dulces','6'); /*16*/

/*cereales_y_galletas*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('galletas','7'); /*17*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('cereales','7'); /*18*/

/*pasta_y_pan*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('pan','8'); /*19*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('pasta','8'); /*20*/

/*pizza_helados_y_platos_congelados*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('pizza','9'); /*21*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('plato_congelado','9'); /*22*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('helado','9'); /*23*/

/*arroz_y_legumbres*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('arroz','10'); /*24*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('legumbres','10'); /*25*/

/*verdura_pescado_y_carne_congelada*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('verdura_congelada','11'); /*26*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('pescado_congelado','11'); /*27*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('carne_congelada','11'); /*28*/

/*conservas*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('conservas','12'); /*29*/

/*fruta_y_verdura*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('fruta','13'); /*30*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('verdura','13'); /*31*/

/*snacks_y_salados*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('salados','14'); /*32*/
INSERT INTO `proyecto_tpv`.`categorias` (`categoria`,`cod_tipo_producto`) VALUES ('snacks','14'); /*33*/



/*productos ------------------------------------------------------------------------------------------------*/
/*productos_lacteos_y_huevos*/
/*leche 1*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('1', 'leche_entera_1L', '1.50', '1');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('2', 'leche_semidesnatada_1L', '1.50', '1');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('3', 'leche_desnatada_1L', '1.50', '1');

/*productos_lacteos_y_huevos*/
/*batidos 2*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('4', 'pack_6_batidos_chocolate', '1.00', '2');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('5', 'pack_6_batidos_vainilla', '1.00', '2');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('6', 'pack_6_batidos_fresa', '1.00', '2');

/*productos_lacteos_y_huevos*/
/*huevos 3*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('7', 'pack_6_huevos_gallina_s', '1.20', '3');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('8', 'pack_6_huevos_gallina_m', '1.30', '3');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('9', 'pack_6_huevos_gallina_xl', '1.40', '3');

INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('10', 'pack_12_huevos_gallina_s', '2.20', '3');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('11', 'pack_12_huevos_gallina_m', '2.30', '3');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('12', 'pack_12_huevos_gallina_xl', '2.40', '3');

/*Carne*/
/*carne_cordero 4*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('13', 'pack_2_chuletas_cordero', '5', '4');

/*carne_cerdo 5*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('14', 'pack_6_longanizas', '5', '5');

/*carne_pollo 6*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('15', 'pack_2_pechugas_pollo', '10', '6');

/*carne_cerdo 5*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('16', 'pack_6_chistorra', '5', '5');

/*carne_pollo 6*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('17', 'pack_12_alitas_de_pollo', '10', '6');

/*Pescado*/
/*Pescado 7*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('18', 'lenguado', '20', '7');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('19', 'boqueron', '5', '7');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('20', 'lomo_de_atun', '10', '7');

/*Marisco 8*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('21', 'gambon', '2', '8');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('22', 'gamba', '0.80', '8');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('23', 'centollo', '40', '8');

/*bebidas_refrecos_y_zumos*/
/*Refresco 9*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('24', 'pack_6_coca_cola', '0.50', '9');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('25', 'coca_cola_1L', '2', '9');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('26', 'pack_6_fanta_naranja', '0.50', '9');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('27', 'pack_6_fanta_limon', '0.50', '9');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('28', 'fanta_naranja_1L', '2', '9');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('29', 'fanta_limon_1L', '2', '9');

/*Agua 10*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('30', 'agua_0.25L', '0.5', '10');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('31', 'agua_1L', '1', '10');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('32', 'agua_5L', '5', '10');

/*Zumo 11*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('33', 'zumo_naranja_1L', '2', '11');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('34', 'zumo_melocoton_1L', '2', '11');

/*bebida_alcoholica*/
/*Cerveza 12*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('35', 'pack_6_cerveza', '1.5', '12');

/*Vino 13*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('36', 'vino_tinto_1L', '1.5', '13');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('37', 'vino_blanco_1L', '1.5', '13');

/*chocolate_y_dulces*/
/*chocolate 14*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('38', 'chocolate_blanco', '1', '14');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('39', 'chocolate_negro', '1', '14');

/*pasteleria 15*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('40', 'coca_de_llanda', '1', '15');

/*dulces 16*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('41', 'bolsa_de_gominolas', '1.20', '16');

/*Galletas y cereales*/
/*Galletas 17*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('42', 'galletas_maria', '5', '17');

/*Cereales 18*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('43', 'cereales_de_chocolate', '3', '18');

/*pasta_y_pan*/
/*pan 19*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('44', 'viena_pan_normal', '0.8', '19');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('45', 'viena_pan_integral', '0.8', '19');

/*pasta 20*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('46', 'espaguetis', '1', '20');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('47', 'macarrones', '1', '20');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('48', 'fideo_fino', '1', '20');

/*pizza_helados_y_platos_congelados*/
/*pizza 21*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('49', 'pizza_peperoni', '3.5', '21');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('50', 'pizza_jamon_y_queso', '3.5', '21');

/*plato_congelado 22*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('51', 'tortilla_de_patatas_para_llevar', '1', '22');

/*helados 23*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('52', 'pack_6_helados_sutido', '2', '23');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('53', 'pack_6_polos_de_hielo_sutido', '2', '23');

/*arroz_y_legumbres*/
/*arroz 24*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('54', 'arroz_bomba_valenciano', '1', '24');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('55', 'arroz_largo', '1', '24');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('56', 'arroz_negro', '1', '24');

/*legumbres 25*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('57', 'lentejas_1kilo', '1', '25');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('58', 'judias_1kilo', '1', '25');

/*verdura_pescado_y_carne_congelada*/
/*verdura congelada 26*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('59', 'guisantes_congelados', '2', '26');

/*pescado congelado 27*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('60', 'palitos_de_merluza', '2', '27');

/*carne congelada 28*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('61', 'cocretas', '2', '28');

/*conservas*/
/*conservas 29*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('62', 'mejillones', '3.5', '29');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('63', 'atun', '3.5', '29');

/*frutas y verduras*/
/*fruta 30*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('64', 'melon', '5', '30');
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('65', 'pera', '1', '30');

/*verdura 31*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('66', 'habas', '3', '31');

/*snacks y salados*/
/*salados 32*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('67', 'surtido_de_salados', '1', '32');

/*snacks 33*/
INSERT INTO `proyecto_tpv`.`productos` (`cod_producto`, `descripcion`, `precio`, `cod_categoria`) VALUES ('68', 'papas', '1', '33');


/*ubicaciones -----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EF1', 'camara_frigorifica_estante1','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EF2', 'camara_frigorifica_estante2','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EF3', 'camara_frigorifica_estante3','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EF4', 'camara_frigorifica_estante4','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EF5', 'camara_frigorifica_estante5','1');

INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA1', 'almacen_estante1','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA2', 'almacen_estante2','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA3', 'almacen_estante3','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA4', 'almacen_estante4','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA5', 'almacen_estante5','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA6', 'almacen_estante6','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA7', 'almacen_estante7','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA8', 'almacen_estante8','1');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('EA9', 'almacen_estante9','1');

INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET1', 'tienda_estante1','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET2', 'tienda_estante2','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET3', 'tienda_estante3','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET4', 'tienda_estante4','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET5', 'tienda_estante5','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET6', 'tienda_estante6','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET7', 'tienda_estante7','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET8', 'tienda_estante8','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('ET9', 'tienda_estante9','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('NEV', 'nevera','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('PES', 'pescaderia','0');
INSERT INTO `proyecto_tpv`.`ubicaciones` (`cod_ubicacion`, `descripcion_ubicacion`,`tipo_almacen`) VALUES ('CAR', 'carniceria','0');

/*Productos y ubicaciones -------------------------------------------------------------------------*/
/*Productos lacetos y huevos 1 - 12 estante 1 tienda y almacen, 
(hay productos lacteos que pueden ponersen en el frigorifico estante 5 o en la nevera) */
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('1', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('1', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('2', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('2', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('3', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('3', 'EA1', '300');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('4', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('4', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('5', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('5', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('6', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('6', 'ET1', '100');


INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('7', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('7', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('8', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('8', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('9', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('9', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('10', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('10', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('11', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('11', 'ET1', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('12', 'EA1', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('12', 'ET1', '100');

/*Carne 13 - 17 estante 3 camara frigorifica y carniceria*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('13', 'EF3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('13', 'CAR', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('14', 'EF3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('14', 'CAR', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('15', 'EF3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('15', 'CAR', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('16', 'EF3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('16', 'CAR', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('17', 'EF3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('17', 'CAR', '50');

/*Pescado 18 - 23 estante 2 camara frigorifica y pescaderia*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('18', 'EF2', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('18', 'PES', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('19', 'EF2', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('19', 'PES', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('20', 'EF2', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('20', 'PES', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('21', 'EF2', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('21', 'PES', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('22', 'EF2', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('22', 'PES', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('23', 'EF2', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('23', 'PES', '50');

/*Bebidas refrescos y zumos 24 - 34 estante 2 tienda, nevera y almacen*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('24', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('24', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('24', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('25', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('25', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('25', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('26', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('26', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('26', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('27', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('27', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('27', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('28', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('28', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('28', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('29', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('29', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('29', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('30', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('30', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('30', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('31', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('31', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('31', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('32', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('32', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('32', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('33', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('33', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('33', 'NEV', '50');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('34', 'EA2', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('34', 'ET2', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('34', 'NEV', '50');

/*bebidas alcholicas 35 - 37 estante 3 tienda, nevera y almacen*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('35', 'EA3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('35', 'NEV', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('36', 'EA3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('36', 'ET3', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('37', 'EA3', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('37', 'ET3', '50');

/*Chocolate y dulces 38 - 41 estante 4 tienda y almacen*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('38', 'EA4', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('38', 'ET4', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('39', 'EA4', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('39', 'ET4', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('40', 'EA4', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('40', 'ET4', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('41', 'EA4', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('41', 'ET4', '100');

/*Pasta y pan 42 - 48 estante 5 tienda y almacen*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('42', 'EA5', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('42', 'ET5', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('43', 'EA5', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('43', 'ET5', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('44', 'EA5', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('44', 'ET5', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('45', 'EA5', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('45', 'ET5', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('46', 'EA5', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('46', 'ET5', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('47', 'EA5', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('47', 'ET5', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('48', 'EA5', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('48', 'ET5', '100');

/*pizza_helados_y_platos_congelados 49 - 53 estante 1 frigorifico nevera*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('49', 'EF1', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('49', 'NEV', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('50', 'EF1', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('50', 'NEV', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('51', 'EF1', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('51', 'NEV', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('52', 'EF1', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('52', 'NEV', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('53', 'EF1', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('53', 'NEV', '50');

/*Arroz y legumbres 54 - 58 estante 6 tienda y almacen*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('54', 'EA6', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('54', 'ET6', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('55', 'EA6', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('55', 'ET6', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('56', 'EA6', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('56', 'ET6', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('57', 'EA6', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('57', 'ET6', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('58', 'EA6', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('58', 'ET6', '100');

/*verdura_pescado_y_carne_congelada 59 - 61 frigorifico estante4 - nevera*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('59', 'EF4', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('59', 'NEV', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('60', 'EF4', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('60', 'NEV', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('61', 'EF4', '200');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('61', 'NEV', '50');

/*conservas 62 - 63 estante 7 tienda y almacen*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('62', 'EA7', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('62', 'ET7', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('63', 'EA7', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('63', 'ET7', '100');

/*Fruta y verdura 64 - 66 fruta y verdura estante 8 tienda y almacen 
(hay productos lacteos que pueden ponersen en el frigorifico estante 5)*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('64', 'EA8', '50');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('64', 'ET8', '10');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('65', 'EA8', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('65', 'ET8', '100');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('65', 'EF5', '100'); /*almacen frigorifico*/

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('66', 'EA8', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('66', 'ET8', '100');

/*Snacks y salados 67 - 68 estante 9 almacen y tienda*/
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('67', 'EA9', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('67', 'ET9', '100');

INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('68', 'EA9', '300');
INSERT INTO `proyecto_tpv`.`productos_y_ubicaciones` (`cod_producto`, `cod_ubicacion`, `cantidad_en_stock`) VALUES ('68', 'ET9', '100');

/*Clientes ------------------------------------------------------------------------*/
/*Generico*/
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`) VALUES ('1', 'cliente_generico');

/*Otros clientes*/
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`, `apellidos`, `direccion`, `e_mail`, `poblacion`, `tipo_de_direccion`) VALUES ('2', 'Sergio', 'Flores_Fernandez', 'calle_Mayor_7', 'serflores@gmail.com', 'Paterna', 'calle');
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`, `apellidos`, `direccion`, `e_mail`, `poblacion`, `tipo_de_direccion`) VALUES ('3', 'David_Jorge', 'Ramada', 'calle_Enrrique_Valero_19', 'djorge@gmail.com', 'Valencia', 'calle');
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`, `apellidos`, `direccion`, `e_mail`, `poblacion`, `tipo_de_direccion`) VALUES ('4', 'Esther', 'Aguado', 'calle_Doctor_Pizarro_34', 'esterAg@gmail.com', 'Valencia', 'calle');
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`, `apellidos`, `direccion`, `e_mail`, `poblacion`, `tipo_de_direccion`) VALUES ('5', 'Charlie', 'Salmeron', 'avenida_de_les_corts_valencianes_5', 'charlieElbueno@gmail.com', 'Valencia', 'avenida');
INSERT INTO `proyecto_tpv`.`clientes` (`cod_cliente`, `nombre`, `apellidos`, `direccion`, `e_mail`, `poblacion`, `tipo_de_direccion`) VALUES ('6', 'Angel', 'Clemente', 'calle_Mayor_8', 'angelAhora@gmail.com', 'Paterna', 'calle');

/*ventas -------------------------------------------------------------------------*/
/*inserts*/
INSERT INTO `proyecto_tpv`.`ventas` (`cod_venta`,`cod_usuario`,`mensaje`, `fecha`,`total`, `iva`, `cod_cliente`, `total_mas_iva`) VALUES ('1','1','pagado', '2018-10-20', '7.4', '20', '1','8.88');

/* Ventas anterior
INSERT INTO `proyecto_tpv`.`ventas` (`cod_venta`, `fecha`, `iva`, `cod_cliente`) VALUES ('2', '2018-09-10', '20', '1');
INSERT INTO `proyecto_tpv`.`ventas` (`cod_venta`, `fecha`, `iva`, `cod_cliente`) VALUES ('3', '2018-10-15', '20', '2');
INSERT INTO `proyecto_tpv`.`ventas` (`cod_venta`, `fecha`, `iva`, `cod_cliente`) VALUES ('4', '2018-08-01', '20', '3');
INSERT INTO `proyecto_tpv`.`ventas` (`cod_venta`, `fecha`, `iva`, `cod_cliente`) VALUES ('5', '2018-05-02', '20', '4');
INSERT INTO `proyecto_tpv`.`ventas` (`cod_venta`, `fecha`, `iva`, `cod_cliente`) VALUES ('6', '2018-10-20', '20', '1');
INSERT INTO `proyecto_tpv`.`ventas` (`cod_venta`, `fecha`, `iva`, `cod_cliente`) VALUES ('7', '2018-10-20', '20', '5');
*/

/*ventas de productos ------------------------------------*/

INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_venta`, `cod_producto`, `cantidad_vendida`, `precio_total_unidades`) VALUES ('1', '4', '1', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_venta`, `cod_producto`, `cantidad_vendida`, `precio_total_unidades`) VALUES ('1', '12', '1', '2.4');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_venta`, `cod_producto`, `cantidad_vendida`, `precio_total_unidades`) VALUES ('1', '31', '2', '2');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_venta`, `cod_producto`, `cantidad_vendida`, `precio_total_unidades`) VALUES ('1', '68', '2', '2');

/*ventas de productos anterior
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '1', '1', '3');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '1', '65', '6');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '1', '68', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '1', '49', '2');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '2', '48', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '2', '47', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '2', '46', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('3', '3', '42', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('3', '3', '1', '6');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('4', '4', '23', '2');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '5', '13', '10');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '5', '14', '10');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '5', '25', '3');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '5', '68', '3');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '6', '35', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '6', '36', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '6', '37', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '6', '33', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '6', '34', '1');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '7', '67', '2');
INSERT INTO `proyecto_tpv`.`ventas_de_productos` (`cod_usuario`, `cod_venta`, `cod_producto`, `cantidad_vendida`) VALUES ('2', '7', '66', '5');
*/

/*Ofertas*/
INSERT INTO `proyecto_tpv`.`ofertas` (`cod_oferta`, `descripcion`, `periodo_oferta`) VALUES ('1', 'oferta1', '2018-12-25');

/*ofertas_envio_clientes*/
INSERT INTO `proyecto_tpv`.`ofertas_envio_clientes` (`cod_cliente`, `cod_oferta`) VALUES ('2', '1');

/*ubicaciones pertenecen*/

INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA1', 'ET1');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA2', 'ET2');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA2', 'NEV');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA3', 'ET3');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA3', 'NEV');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA4', 'ET4');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA5', 'ET5');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA6', 'ET6');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA7', 'ET7');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA8', 'ET8');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EA9', 'ET9');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EF1', 'NEV');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EF2', 'PES');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EF3', 'CAR');
INSERT INTO `proyecto_tpv`.`ubicaciones_pertenecen` (`cod_ubicacion_almacen`, `cod_ubicacion_tienda`) VALUES ('EF4', 'NEV');






