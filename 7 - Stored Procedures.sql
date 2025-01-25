-- Create a stored procedure called 'AgregarDepartamento' in the departments table
-- This procedure must accept two input parameters: name and location of the department

DELIMITER //
CREATE PROCEDURE AgregarDepartamento(IN _nombre VARCHAR(45), IN _ubicacion VARCHAR(45))
BEGIN
	INSERT INTO departamentos(nombre, ubicacion) VALUES (_nombre, _ubicacion);
END //

DELIMITER ;

CALL AgregarDepartamento('Producción', 'Edificio Producción');

SELECT * FROM departamentos
