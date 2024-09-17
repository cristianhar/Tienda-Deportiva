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
    precio DECIMAL(10, 2) NOT NULL,
    precioOriginal DECIMAL(10, 2),
    descuento DECIMAL(5, 2),
    imagen VARCHAR(255)
);

INSERT INTO usuarios (nombre, email, genero, password) VALUES ('Cristian Arboleda', 'yohan4752@gmail.com', 'Masculino', '12345');
