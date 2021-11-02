CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   `apellido` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   `id_nota` INT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `titulo` VARCHAR(100),
   `fecha_creacion` DATE,
   `fecha_modificacion` DATETIME,
   `descripcion` TEXT NOT NULL,
   `borrar` TINYINT,
   `id_usuario` INT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas_categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `id_nota` INT,
   `id_categoria` INT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `tipo` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `usuarios` ADD CONSTRAINT `FK_e385e467-7184-481d-aab3-92e5a3b3dc90` FOREIGN KEY (`id_nota`) REFERENCES `notas`(`id`)  ;

ALTER TABLE `notas` ADD CONSTRAINT `FK_9eec330e-c44d-49ee-974c-92b122f6b736` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_9ba4afbb-ea1d-41cb-83f6-9040c0d9aa97` FOREIGN KEY (`id_categoria`) REFERENCES `categorias`(`id`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_1a7a1cb0-1c42-4240-99d3-17d9563bb5ae` FOREIGN KEY (`id_nota`) REFERENCES `notas`(`id`)  ;

insert into categorias (tipo) values ('Musica');
insert into categorias (tipo) values ('Cine');
insert into categorias (tipo) values ('Teatro');
insert into categorias (tipo) values ('Matematica');
insert into categorias (tipo) values ('Programacion');
insert into categorias (tipo) values ('Baile');
insert into categorias (tipo) values ('Recordatorios');
insert into categorias (tipo) values ('Arte');
insert into categorias (tipo) values ('Series');
insert into categorias (tipo) values ('Deportes');

insert into usuarios (nombre, apellido, email)
values ('Pedro', 'Delgado', 'pedrodelgado@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Juan', 'Gonzalez', 'juangonzlez@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Jose', 'Milagros', 'josemilagros@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Antonio', 'Santafe', 'antoniosantafe@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Antonio', 'Santafe', 'pedrodelgado@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Alejandro', 'Diaz', 'alejandrodiaz@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Cesar', 'Benites', 'cesarbenites@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Matias', 'Fenema', 'matiasfenema@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Santiago', 'Suarez', 'santiagosuarez@jdhd.com');
insert into usuarios (nombre, apellido, email)
values ('Pedro', 'Murillo', 'pedrodelgadomurillo@jdhd.com');

insert into notas (titulo, descripcion, borrar)
values ('Canciones favoritas', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('Futbol', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('albun marc', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('PHP', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('salsa cacino', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('artista favorito', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('Algebra', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('Canciones favoritas2', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('beisbol', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);
insert into notas (titulo, descripcion, borrar)
values ('harry potter', "A continuación encontrarás las credenciales de acceso a los encuentros online que tendremos semanalmente a través de la plataforma de videoconferencias Zoom. Estas credenciales de acceso serán actualizadas periódicamente para garantizar la mejor experiencia de aprendizaje:", 1);

insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();
insert  into notas_categorias values ();