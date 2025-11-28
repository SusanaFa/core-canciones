-- mostrar bd disponibles

SHOW DATABASES;

-- usar la bd de canciones
USE canciones_db;

-- mostrar lista de tablas de la bd seleccionada
SHOW TABLES;
-- mostrar campos de una tabla específica
DESCRIBE nombre_tabla;


INSERT INTO canciones (titulo, artista, album, genero, idioma, fecha_creacion, fecha_actualizacion)
VALUES
('Imagine', 'John Lennon', 'Imagine', 'Rock', 'Inglés', NOW(),NOW()),
('Gracias a la vida', 'Violeta Parra', 'Gracias a la vida', 'Folk', 'Español', NOW(),NOW()),
('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 'Rock', 'Inglés', NOW(),NOW()),
('Smooth Criminal', 'Michael Jackson', 'Bad', 'Pop', 'Inglés', NOW(),NOW()),
('Hijo de la Luna', 'Mecano', 'Entre el cielo y el suelo', 'Pop', 'Español', NOW(),NOW()),
('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', 'Rock', 'Inglés', NOW(),NOW()),
('Clandestino', 'Manu Chao', 'Clandestino', 'World Music', 'Español', NOW(),NOW()),
('Fix You', 'Coldplay', 'X&Y', 'Rock', 'Inglés', NOW(),NOW()),
('La Camisa Negra', 'Juanes', 'Mi Sangre', 'Rock Latino', 'Español', NOW(),NOW()),
('Enamoréname', 'Russtyko','Odisea', 'Dancehall', 'Español', NOW(),NOW()),
('Amor Eterno', 'Russtyko','Odisea', 'Dancehall', 'Español', NOW(),NOW());

-- considerar que si se hace este insert, no se completan los datos de fechaCreacion y fechaActualizacion

INSERT INTO artistas (nombre, apellido, biografia, fecha_creacion, fecha_actualizacion)
VALUES
  ('Shakira', 'Mebarak', 'Cantante y compositora colombiana, conocida por sus fusiones de pop y ritmos latinos.', NOW(), NOW()),
  ('Gustavo', 'Cerati', 'Músico, cantautor y productor argentino, líder de Soda Stereo.', NOW(), NOW()),
  ('Freddie', 'Mercury', 'Vocalista principal de Queen, una de las voces más icónicas del rock.', NOW(), NOW());
