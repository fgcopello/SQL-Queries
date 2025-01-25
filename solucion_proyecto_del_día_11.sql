-- Crear una Base de Datos para manejar el sistema de reservas de un pequeño hotel.
-- Crear diferentes tablas como Clientes, Reservas, Habitaciones

CREATE DATABASE IF NOT EXISTS ReservasDB;
USE ReservasDB;

-- Clientes
CREATE TABLE Clientes (
	cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    contacto VARCHAR(100)
    );
    
-- Habitaciones
CREATE TABLE Habitaciones (
	habitacion_id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    capacidad INT
	);

-- Reservas
CREATE TABLE Reservas (
	reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    habitacion_id INT,
    cliente_id INT,
    fecha_reserva DATE,
    numero_personas INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (habitacion_id) REFERENCES Habitaciones(habitacion_id)
    );
    