CREATE DATABASE IF NOT EXISTS miapp;

USE miapp;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    genero VARCHAR(50),
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(20, 2) NOT NULL,
    precioOriginal DECIMAL(20, 2),
    descuento DECIMAL(5, 2),
    imagen VARCHAR(255)
);

-- Inserción de un usuario con la contraseña hasheada
INSERT INTO usuarios (nombre, email, genero, password) 
VALUES ('Cristian Arboleda', 'yohan4752@gmail.com', 'Masculino', '$2b$10$KIXiW3W64jRWo3OR7J3OcuX3.OtU3vGfV0gSo5lP5q8M1RDoj2D0y'); -- Contraseña: 12345 hasheada

-- Inserción de 20 productos de ejemplo
INSERT INTO productos (nombre, descripcion, precio, precioOriginal, descuento, imagen) VALUES 
('Camiseta Deportivo', 'Camiseta de algodon perfecta para hacer ejercicio.', 29.99, 39.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551538/camiseta_yzlmiw.jpg'),
('Pantalon Deportivo', 'Pantalon comodo y ligero para cualquier actividad.', 49.99, 59.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551455/pantalondeportivo_bp041j.jpg'),
('Zapatillas Running', 'Zapatillas disenadas para correr largas distancias.', 89.99, 109.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551461/zapatillaruning_u9ghlx.jpg'),
('Reloj Inteligente', 'Reloj que monitoriza tu actividad y salud.', 149.99, 199.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551459/reloj_hfslz6.jpg'),
('Gorra de Beisbol', 'Gorra ajustable, ideal para el sol.', 19.99, 24.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551455/gorrabeisbol_vxzx5t.webp'),
('Auriculares Inalambricos', 'Auriculares con cancelacion de ruido y conectividad Bluetooth.', 79.99, 99.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551462/auriculares_t5q0ho.jpg'),
('Mochila Deportiva', 'Mochila espaciosa y resistente para llevar todo lo que necesitas.', 39.99, 49.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551455/mochila_ulppdh.jpg'),
('Botella de Agua', 'Botella reutilizable para mantenerse hidratado.', 14.99, 19.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551462/botella_ayvfbo.jpg'),
('Pelota de Futbol', 'Pelota de futbol oficial para jugar en el campo.', 24.99, 34.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551459/pelotafutbol_g9j0sb.jpg'),
('Cinta de Correr', 'Cinta de correr para hacer ejercicio en casa.', 499.99, 599.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551454/cinta_coqtkh.jpg'),
('Chaqueta Impermeable', 'Chaqueta ligera y resistente al agua para actividades al aire libre.', 89.99, 109.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551454/chaquetaimper_aklibh.jpg'),
('Gafas de Sol', 'Gafas de sol polarizadas, ideales para el verano.', 39.99, 49.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551455/gafas_tu8aux.jpg'),
('Kit de Pesas', 'Pesas ajustables para entrenamiento en casa.', 69.99, 89.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551455/kitpesas_pltncv.jpg'),
('Saco de Boxeo', 'Saco de boxeo para entrenamiento en casa.', 149.99, 179.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551460/sacoboxeo_ueh3w5.jpg'),
('Estera de Yoga', 'Estera de yoga antideslizante, perfecta para practicar en casa.', 29.99, 39.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551454/esterayoga_jhsaej.jpg'),
('Ciclomotor', 'Ciclomotor electrico para recorridos cortos.', 899.99, 1099.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551455/ciclo_g2vv70.jpg'),
('Patines en Linea', 'Patines en linea ajustables para todas las edades.', 59.99, 79.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551458/patines_lc86yo.jpg'),
('Tennis de Cuero', 'Tennis elegantes y comodos para uso diario.', 74.99, 94.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551460/teniscuero_ti6lep.jpg'),
('Short de Bano', 'Short de bano comodo, ideal para el verano.', 24.99, 34.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551460/short_q0zwbs.jpg'),
('Sueter de Lana', 'Sueter suave y calido para dias frios.', 54.99, 74.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551460/sueterlana_d0o9ic.jpg'),
('Camara de Accion', 'Camara resistente al agua para aventuras al aire libre.', 199.99, 249.99, NULL, 'https://res.cloudinary.com/dj10yh4z1/image/upload/v1726551454/camaraacion_psnhjk.jpg');
