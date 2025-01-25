-- Crear un procedimiento almacenado llamado 'AgregarDepartamento' en la tabla departamentos
-- Dicho procedimiento debe aceptar de entrada dos parámetros: nombre y ubicación del departamento

DELIMITER //
CREATE PROCEDURE AgregarDepartamento(IN _nombre VARCHAR(45), IN _ubicacion VARCHAR(45))
BEGIN
	INSERT INTO departamentos(nombre, ubicacion) VALUES (_nombre, _ubicacion);
END //

DELIMITER ;

CALL AgregarDepartamento('Producción', 'Edificio Producción');

SELECT * FROM departamentos