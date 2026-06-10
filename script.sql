-- =============================================================
-- SCRIPT ÚNICO: CONFIGURACIÓN COMPLETA DE HÉROES EN MYSQL
-- =============================================================

-- 1. Limpieza de base de datos (por si la tabla ya existía)
DROP TABLE IF EXISTS heroes_filtrables;

-- 2. Creación de la tabla optimizada para MySQL
CREATE TABLE heroes_filtrables (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    -- ENUM optimiza el rendimiento y valida las categorías nativamente en MySQL
    hero_type ENUM('Tecnologico', 'Fuerza', 'Volador', 'Magia', 'Elemental', 'Marcial', 'Velocidad') NOT NULL,
    power_level INT NOT NULL,
    series_universe VARCHAR(50) NOT NULL,
    
    -- Restricción para garantizar que el nivel de poder esté en el rango correcto (MySQL 8.0+)
    CONSTRAINT chk_power_level CHECK (power_level BETWEEN 1 AND 10)
);

-- 3. Inserción masiva de los 30 héroes legítimos
INSERT INTO heroes_filtrables (id, name, hero_type, power_level, series_universe) VALUES
(1, 'Superman', 'Volador', 10, 'DC Comics'),
(2, 'Goku', 'Elemental', 10, 'Dragon Ball'),
(3, 'Batman', 'Tecnologico', 2, 'DC Comics'),
(4, 'Saitama', 'Fuerza', 10, 'One Punch Man'),
(5, 'Spider-Man', 'Fuerza', 4, 'Marvel Comics'),
(6, 'Invincible', 'Volador', 7, 'Invincible'),
(7, 'Shazam', 'Volador', 9, 'DC Comics'),
(8, 'Naruto Uzumaki', 'Magia', 7, 'Naruto'),
(9, 'All Might', 'Fuerza', 5, 'My Hero Academia'),
(10, 'Thor', 'Elemental', 9, 'Marvel Comics'),
(11, 'Luffy', 'Fuerza', 6, 'One Piece'),
(12, 'Doctor Strange', 'Magia', 9, 'Marvel Comics'),
(13, 'Ben 10', 'Tecnologico', 8, 'Ben 10'),
(14, 'Tanjiro Kamado', 'Marcial', 3, 'Demon Slayer'),
(15, 'Omni-Man', 'Volador', 8, 'Invincible'),
(16, 'Iron Man', 'Tecnologico', 6, 'Marvel Comics'),
(17, 'Flash', 'Velocidad', 9, 'DC Comics'),
(18, 'Harry Potter', 'Magia', 3, 'Harry Potter'),
(19, 'Hulk', 'Fuerza', 8, 'Marvel Comics'),
(20, 'Avatar Aang', 'Elemental', 6, 'Avatar'),
(21, 'Deku (Izuku Midoriya)', 'Fuerza', 5, 'My Hero Academia'),
(22, 'Green Lantern', 'Tecnologico', 8, 'DC Comics'),
(23, 'Captain America', 'Fuerza', 3, 'Marvel Comics'),
(24, 'Cyclops', 'Elemental', 4, 'X-Men / Marvel'),
(25, 'Genos', 'Tecnologico', 6, 'One Punch Man'),
(26, 'Wonder Woman', 'Fuerza', 9, 'DC Comics'),
(27, 'Legolas', 'Marcial', 2, 'Lord of the Rings'),
(28, 'Scarlet Witch', 'Magia', 10, 'Marvel Comics'),
(29, 'Shoto Todoroki', 'Elemental', 4, 'My Hero Academia'),
(30, 'Spider-Gwen', 'Fuerza', 4, 'Marvel Comics'),
(31, 'Chapulin', 'Fuerza', 1, 'TV Azteca');

