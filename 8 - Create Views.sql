-- Project Objective: Create a View called 'VistaEmpleadosProyectos' in the EmpresaDB database, which displays the first and 
-- last name of the employee, along with the name of the project to which he or she is assigned.
-- Use the 'Empleados', 'AsignacionesdeProyectos' and 'Proyectos' tables.
 

CREATE VIEW VistaEmpleadosProyectos AS
	SELECT e.nombre AS 'Nombre Empleado', e.apellido AS 'Apellido Empleado', p.nombre AS 'Nombre Proyecto'
	FROM empleados e
    JOIN asignacionesdeproyectos a ON e.empleado_id = a.empleado_id
    JOIN proyectos p ON a.proyecto_id = p.proyecto_id;


SELECT * FROM vistaempleadosproyectos
