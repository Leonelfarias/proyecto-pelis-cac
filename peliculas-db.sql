create database if not exists peliculas_DB;
use peliculas_db;

CREATE TABLE movies (
    id_movie int auto_increment primary key,
    nombre varchar(100),
    descripcion varchar(255),
    genero varchar(100),
    calificacion int,
    anio INT,
    estrellas INT CHECK (estrellas >= 1 AND estrellas <= 5),
	director VARCHAR(255)
);

INSERT INTO movies (nombre, descripcion, genero, calificacion, anio, estrellas, director) VALUES
('Titanic', 'Un romance épico en el trágico viaje inaugural del RMS Titanic.', 'romance', 13, 1997, 4, 'James Cameron'),
('El Padrino', 'La historia de la familia Corleone y su imperio criminal.', 'drama', 13, 1972, 5, 'Francis Ford Coppola'),
('El Señor de los Anillos: La Comunidad del Anillo', 'Un hobbit es encargado de destruir un anillo poderoso.', 'fantasia', 13, 2001, 5, 'Peter Jackson'),
('Forrest Gump', 'La vida de un hombre con un coeficiente intelectual bajo, pero con una vida extraordinaria.', 'drama', '13, 1994, 5, 'Robert Zemeckis'),
('La Lista de Schindler', 'Un hombre salva a más de mil judíos durante el Holocausto.', 'drama', 13, 1993, 5, 'Steven Spielberg'),
('Matrix', 'Un programador descubre que el mundo en el que vive es una simulación.', 'ciencia ficcion', 13, 1999, 4, 'Lana Wachowskis'),
('El Rey León', 'Un joven león busca reclamar su lugar como rey después de la muerte de su padre.', 'animacion', 13, 1994, 4, 'Roger Allers, Rob Minkoff'),
('Harry Potter y la Piedra Filosofal', 'Un niño descubre que es un mago y asiste a una escuela de magia.', 'fantasia', 13, 2001, 4, 'Chris Columbus'),
('El Club de la Pelea', 'Un hombre sin nombre lucha contra la insatisfacción de la vida moderna.', 'drama', 13, 1999, 5, 'David Fincher'),
('La La Land', 'Un músico y una actriz se enamoran mientras luchan por alcanzar sus sueños en Los Ángeles.', 'romance', 13, 2016, 4, 'Damien Chazelle'),
('Interestelar', 'Un grupo de exploradores viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad.', 'ciencia ficcion', 13, 2014, 5, 'Christopher Nolan'),
('La Forma del Agua', 'Una mujer muda trabaja en un laboratorio y se enamora de una criatura anfibia.', 'fantasia', 3, 2017, 4, 'Guillermo del Toro'),
('El Renacido', 'Un hombre herido es abandonado durante una expedición y busca venganza.', 'drama', 3, 2015, 5, 'Alejandro González Iñárritu'),
('Gladiador', 'Un exgeneral romano busca venganza contra el emperador que lo traicionó.', 'accion', 3, 2000, 4, 'Ridley Scott'),
('Mujer Maravilla', 'Una princesa amazona descubre su destino como superheroína.', 'accion', 13, 2017, 4, 'Patty Jenkins');
