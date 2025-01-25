-- Insert data on table 'Desarrolladores'
INSERT INTO Desarrolladores (Nombre, Pais) VALUES 
('Naughty Dog', 'Estados Unidos'),
('Nintendo', 'Japón'),
('CD Projekt Red', 'Polonia');

-- Insert data on table 'Plataformas'
INSERT INTO Plataformas (Nombre, Tipo) VALUES 
('PlayStation 4', 'Consola'),
('Nintendo Switch', 'Consola'),
('PC', 'Computadora');

-- IInsert data on table 'Juegos'
INSERT INTO Juegos (Titulo, AñoLanzamiento, DesarrolladorID, PlataformaID) VALUES 
('The Last of Us Part II', 2020, 1, 1),  -- Desarrollado por Naughty Dog para PlayStation 4
('The Legend of Zelda: Breath of the Wild', 2017, 2, 2),  -- Desarrollado por Nintendo para Nintendo Switch
('Cyberpunk 2077', 2020, 3, 3);  -- Desarrollado por CD Projekt Red para PC
