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
('Camiseta Deportivo', 'Camiseta de algodón perfecta para hacer ejercicio.', 29.99, 39.99, NULL, 'https://via.placeholder.com/200'),
('Pantalón Deportivo', 'Pantalón cómodo y ligero para cualquier actividad.', 49.99, 59.99, NULL, 'https://via.placeholder.com/200'),
('Zapatillas Running', 'Zapatillas diseñadas para correr largas distancias.', 89.99, 109.99, NULL, 'https://via.placeholder.com/200'),
('Reloj Inteligente', 'Reloj que monitoriza tu actividad y salud.', 149.99, 199.99, NULL, 'https://via.placeholder.com/200'),
('Gorra de Beisbol', 'Gorra ajustable, ideal para el sol.', 19.99, 24.99, NULL, 'https://via.placeholder.com/200'),
('Auriculares Inalambricos', 'Auriculares con cancelación de ruido y conectividad Bluetooth.', 79.99, 99.99, NULL, 'https://via.placeholder.com/200'),
('Mochila Deportiva', 'Mochila espaciosa y resistente para llevar todo lo que necesitas.', 39.99, 49.99, NULL, 'https://via.placeholder.com/200'),
('Botella de Agua', 'Botella reutilizable para mantenerse hidratado.', 14.99, 19.99, NULL, 'https://via.placeholder.com/200'),
('Pelota de Fútbol', 'Pelota de fútbol oficial para jugar en el campo.', 24.99, 34.99, NULL, 'https://via.placeholder.com/200'),
('Cinta de Correr', 'Cinta de correr para hacer ejercicio en casa.', 499.99, 599.99, NULL, 'https://via.placeholder.com/200'),
('Chaqueta Impermeable', 'Chaqueta ligera y resistente al agua para actividades al aire libre.', 89.99, 109.99, NULL, 'https://via.placeholder.com/200'),
('Gafas de Sol', 'Gafas de sol polarizadas, ideales para el verano.', 39.99, 49.99, NULL, 'https://via.placeholder.com/200'),
('Kit de Pesas', 'Pesas ajustables para entrenamiento en casa.', 69.99, 89.99, NULL, 'https://via.placeholder.com/200'),
('Saco de Boxeo', 'Saco de boxeo para entrenamiento en casa.', 149.99, 179.99, NULL, 'https://via.placeholder.com/200'),
('Estera de Yoga', 'Estera de yoga antideslizante, perfecta para practicar en casa.', 29.99, 39.99, NULL, 'https://via.placeholder.com/200'),
('Ciclomotor', 'Ciclomotor eléctrico para recorridos cortos.', 899.99, 1099.99, NULL, 'https://via.placeholder.com/200'),
('Patines en Línea', 'Patines en línea ajustables para todas las edades.', 59.99, 79.99, NULL, 'https://via.placeholder.com/200'),
('Tennis de Cuero', 'Tennis elegantes y cómodos para uso diario.', 74.99, 94.99, NULL, 'https://via.placeholder.com/200'),
('Short de Baño', 'Short de baño cómodo, ideal para el verano.', 24.99, 34.99, NULL, 'https://via.placeholder.com/200'),
('Suéter de Lana', 'Suéter suave y cálido para días fríos.', 54.99, 74.99, NULL, 'https://via.placeholder.com/200'),
('Cámara de Acción', 'Cámara resistente al agua para aventuras al aire libre.', 199.99, 249.99, NULL, 'https://via.placeholder.com/200');
