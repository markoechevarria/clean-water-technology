-------------------
--- DB CREATION ---
-------------------

CREATE DATABASE cwtdb;

-----------------------
--- TABLES CREATION ---
-----------------------


CREATE TABLE users (
    id_user SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    document VARCHAR(100) NOT NULL,
    registry_date DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
    id_course SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    creation_date DATE NOT NULL,
    num_modules INTEGER NOT NULL,
    code VARCHAR(100) NOT NULL
);

CREATE TABLE course_user (
    id_course_user SERIAL PRIMARY KEY NOT NULL,
    id_user SERIAL REFERENCES users(id_user),
    id_course SERIAL REFERENCES courses(id_course),
    registry_date DATE,
    status VARCHAR(100) NOT NULL
);

CREATE TABLE modules (
    id_module SERIAL PRIMARY KEY NOT NULL,
    id_course SERIAL REFERENCES courses(id_course) ON DELETE CASCADE,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL
);


---------------
--- INSERTS ---
---------------

INSERT INTO courses (name, description, creation_date, num_modules, code) VALUES
('Introducción a Python', 'Aprende las bases de la programación con Python desde cero.', '2025-01-10', 5, 'PY-101'),
('Diseño de Bases de Datos', 'Modelado relacional, normalización y lenguaje SQL.', '2025-02-15', 4, 'DB-202'),
('Desarrollo Web Frontend', 'HTML5, CSS3 y fundamentos de JavaScript moderno.', '2025-03-01', 8, 'WEB-303'),
('Seguridad Informática', 'Conceptos básicos de ciberseguridad y protección de datos.', '2025-04-20', 6, 'SEC-404');

INSERT INTO modules (id_course, title, description) VALUES
(1, 'Sintaxis Básica', 'Variables, tipos de datos y operadores en Python.'),
(1, 'Estructuras de Control', 'Uso de if, for y while para el flujo del programa.'),
(2, 'Modelo Entidad-Relación', 'Cómo diseñar diagramas efectivos para bases de datos.'),
(2, 'Consultas SQL Avanzadas', 'Uso de JOINs, subconsultas y funciones de agregación.'),
(3, 'Maquetación con Flexbox', 'Creación de layouts modernos y responsivos con CSS.'),
(4, 'Criptografía Básica', 'Entendiendo el cifrado de información sensible.');

INSERT INTO users (name, last_name, document, registry_date, email, password) VALUES
('Juan', 'Pérez', '12345678', '2025-05-01', 'juan.perez@email.com', 'hash_password_123'),
('Maria', 'García', '87654321', '2025-05-05', 'm.garcia@email.com', 'hash_password_456'),
('Carlos', 'López', '11223344', '2025-05-10', 'clopez@email.com', 'hash_password_789'),
('Ana', 'Martínez', '55667788', '2025-05-12', 'ana.mtz@email.com', 'hash_password_abc');

INSERT INTO course_user (id_user, id_course, registry_date, status) VALUES
(1, 1, '2025-05-02', 'En curso'),
(1, 2, '2025-05-03', 'Completado'),
(2, 1, '2025-05-06', 'En curso'),
(3, 3, '2025-05-11', 'Pendiente'),
(4, 4, '2025-05-13', 'En curso'),
(2, 3, '2025-05-14', 'Cancelado');