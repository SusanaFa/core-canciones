USE canciones_db;

INSERT INTO canciones (titulo, artista, album, genero, idioma)
VALUES
('Imagine', 'John Lennon', 'Imagine', 'Rock', 'Inglés'),
('Gracias a la vida', 'Violeta Parra', 'Gracias a la vida', 'Folk', 'Español'),
('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 'Rock', 'Inglés'),
('Smooth Criminal', 'Michael Jackson', 'Bad', 'Pop', 'Inglés'),
('Hijo de la Luna', 'Mecano', 'Entre el cielo y el suelo', 'Pop', 'Español'),
('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', 'Rock', 'Inglés'),
('Clandestino', 'Manu Chao', 'Clandestino', 'World Music', 'Español'),
('Fix You', 'Coldplay', 'X&Y', 'Rock', 'Inglés'),
('La Camisa Negra', 'Juanes', 'Mi Sangre', 'Rock Latino', 'Español'),
('Enamoréname', 'Russtyko','Odisea', 'Dancehall', 'Español'),
('Amor Eterno', 'Russtyko','Odisea', 'Dancehall', 'Español');

-- considerar que si se hace este insert, no se completan los datos de fechaCreacion y fechaActualizacion