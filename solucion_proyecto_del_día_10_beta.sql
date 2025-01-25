-- Objetivo del Proyecto: Crear una Vista llamada 'VistaEmpleadosProyectos' en la base de datos EmpresaDB, que muestre el nombre y apellido del
-- empleado, junto con el nombre del proyecto al que está asignado. Utilizar las tablas Empleados, AsignacionesdeProyectos y Proyectos.
 

CREATE VIEW VistaEmpleadosProyectos AS
	SELECT e.nombre AS 'Nombre Empleado', e.apellido AS 'Apellido Empleado', p.nombre AS 'Nombre Proyecto'
	FROM empleados e
    JOIN asignacionesdeproyectos a ON e.empleado_id = a.empleado_id
    JOIN proyectos p ON a.proyecto_id = p.proyecto_id;


SELECT * FROM vistaempleadosproyectos
