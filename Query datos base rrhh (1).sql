use rrhh;

ALTER TABLE candidatos change correroCandidato correoCandidato VARCHAR(40) not null;
ALTER TABLE candidatos change vancante vacante VARCHAR(40) not null;

INSERT INTO candidatos (nombreCandidato, apellidosCandidato, correoCandidato, telefonoCandidato,vacante,fecha_nacimientoCandidato)VALUES('Eduardo','Camacho Barquero','eduardojja@gmail.com','7059-0207','analista de datos','1990-05-18');
INSERT INTO candidatos (nombreCandidato, apellidosCandidato, correoCandidato, telefonoCandidato,vacante,fecha_nacimientoCandidato)VALUES('Jorge','Pujol arcadia','jorgepujol@gmail.com','8580-2544','desarrollador oracle','1995-04-23');
INSERT INTO candidatos (nombreCandidato, apellidosCandidato, correoCandidato, telefonoCandidato,vacante,fecha_nacimientoCandidato)VALUES('Esteban','Arias Esquivel','eesquivel@gmail.com','8741-8585','Asistente de planillas','1985-03-17');

INSERT INTO idiomas (descripcionIdioma) values('Ingles');
INSERT INTO idiomas (descripcionIdioma) values('Español');
INSERT INTO idiomas (descripcionIdioma) values('Frances');
INSERT INTO idiomas (descripcionIdioma) values('Portugues');
INSERT INTO idiomas (descripcionIdioma) values('Aleman');
INSERT INTO idiomas (descripcionIdioma) values('Ruso');
INSERT INTO idiomas (descripcionIdioma) values('Japones');
INSERT INTO idiomas (descripcionIdioma) values('Mandarin');
INSERT INTO idiomas (descripcionIdioma) values('Cantones');

INSERT INTO idiomas_candidato(id_candidato,id_idioma) values (1,1);
INSERT INTO idiomas_candidato(id_candidato,id_idioma) values (1,4);
INSERT INTO idiomas_candidato(id_candidato,id_idioma) values (2,1);
INSERT INTO idiomas_candidato(id_candidato,id_idioma) values (2,4);

ALTER TABLE puesto change nombrePuesto nombrePuesto VARCHAR(40) not null;

INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Analista de datos',850000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Desarrollador Oracle',1000000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Analista de riesgos',850000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Analista de procesos',850000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Jefatura de área',1500000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('CEO',7000000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Gerente de área',5000000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Analista contable',850000);
INSERT INTO puesto (nombrePuesto,salarioPuesto) values('Analista financiero',850000);

INSERT INTO empleados (nombreEmpleado, apellidosEmpleado, correoEmpleado,telefonoEmpleado,fecha_nacimientoEmpleado,id_puesto,fechaIngreso,estadoEmpleado)values('Eduardo','Jaen Arias','ejaena@rrhh.com','7059-0202','1998-08-18',1,'2018-04-14',1);
INSERT INTO empleados (nombreEmpleado, apellidosEmpleado, correoEmpleado,telefonoEmpleado,fecha_nacimientoEmpleado,id_puesto,fechaIngreso,estadoEmpleado)values('Esteban','Calderon Chavarria','ecalderonc@rrhh.com','7059-0203','1998-08-19',2,'2018-07-14',1);
INSERT INTO empleados (nombreEmpleado, apellidosEmpleado, correoEmpleado,telefonoEmpleado,fecha_nacimientoEmpleado,id_puesto,fechaIngreso,estadoEmpleado)values('Jorgue','Caballero Domingo','jcaballerod@rrhh.com','7059-0204','1998-08-20',3,'2018-07-14',1);
INSERT INTO empleados (nombreEmpleado, apellidosEmpleado, correoEmpleado,telefonoEmpleado,fecha_nacimientoEmpleado,id_puesto,fechaIngreso,estadoEmpleado)values('Miguel','Lopez Machado','mlopezm@rrhh.com','7059-0205','1998-08-21',4,'2018-07-14',0);

INSERT INTO idiomas_empleados (id_idioma,id_empleado) VALUES (1,1);
INSERT INTO idiomas_empleados (id_idioma,id_empleado) VALUES (4,1);
INSERT INTO idiomas_empleados (id_idioma,id_empleado) VALUES (1,2);
INSERT INTO idiomas_empleados (id_idioma,id_empleado) VALUES (4,2);

INSERT vacaciones (id_empleado,cantidadVacacionesDisponibles) VALUES (1,6);
INSERT vacaciones (id_empleado,cantidadVacacionesDisponibles) VALUES (2,4);
INSERT vacaciones (id_empleado,cantidadVacacionesDisponibles) VALUES (3,12);
INSERT vacaciones (id_empleado,cantidadVacacionesDisponibles) VALUES (4,9);

INSERT INTO vacacionesHistoricas (id_empleado,fechaSalida,fechaEntrada) VALUES (1, '2021-01-16', '2021-01-15');
INSERT INTO vacacionesHistoricas (id_empleado,fechaSalida,fechaEntrada) VALUES (2,'2020-05-13', '2020-05-27');

INSERT INTO permisos (id_empleado, fechaPermiso, motivoPermiso) VALUES (4,'2020-03-12','Graduacion');
INSERT INTO permisos (id_empleado, fechaPermiso, motivoPermiso) VALUES (2,'2020-07-15','Sacar licencia');
INSERT INTO permisos (id_empleado, fechaPermiso, motivoPermiso) VALUES (3,'2018-08-14','Liquidación laboral');

INSERT INTO fechaPago (descripcionFecha) values ('Quincenal');
INSERT INTO fechaPago (descripcionFecha) values ('Mensual');
INSERT INTO fechaPago (descripcionFecha) values ('Semanal');

INSERT INTO nomina (id_fechaPago, monto, fechaPago) VALUES (1,850000,'2021-03-15');
INSERT INTO nomina (id_fechaPago, monto, fechaPago) VALUES (1,1000000,'2021-03-15');
INSERT INTO nomina (id_fechaPago, monto, fechaPago) VALUES (1,850000,'2021-03-15');
INSERT INTO nomina (id_fechaPago, monto, fechaPago) VALUES (1,850000,'2021-03-15');

INSERT INTO liquidaciones (estatusEntrega, montoLiquidacion, id_empleado) values(1,3000000,4);

grant all privileges on rrhh.* to 'rrhh_user'@'%';

CREATE TABLE usuario (
  id_usuario int NOT NULL AUTO_INCREMENT,
  userName varchar(35),
  pwUsuario varchar(255) not null,
  nombreUsuario VARCHAR(30) NOT NULL,
  primary key(id_usuario)
);

insert into usuario (pwUsuario,nombreUsuario, userName) values (MD5('123'),'Juan Pablo','juan.pablo'),
                           (MD5('321'),'Pedro Cardenas','pedro.cardenas'),
                           (MD5('456'),'Ana Mendez','ana.mendez'),
                           (MD5('654'),'Rebeca Alfaro','rebeca.alfaro'),
                           (MD5('123'),'Jose Alfaro','jose.alfaro'),
                           (md5('1234'),'eduardo jaen','eduardo.jaen');


