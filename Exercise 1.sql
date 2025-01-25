-- Exercise 1
-- SQL Query: Write a SQL query that selects each employee's first and last name, along with the project name and the hours assigned to that project.
-- Order of Results: The results should be sorted first by employee and then by assigned hours in descending order.
-- Data Presentation: Make sure that each line of the report clearly shows the employee's first name, the project name, and the hours assigned to that project.
-- Remember to use the following aliases for the final result: 'Employee First Name', 'Employee Last Name', 'Project Name', and 'Assigned Hours'


SELECT 
    E.nombre AS 'Nombre Empleado', 
    E.apellido AS 'Apellido Empleado', 
    P.nombre AS 'Nombre Proyecto', 
    A.horas_asignadas AS 'Horas Asignadas'
FROM 
    Empleados E
JOIN 
    AsignacionesDeProyectos A ON E.empleado_id = A.empleado_id
JOIN 
    Proyectos P ON A.proyecto_id = P.proyecto_id
ORDER BY 
    E.nombre, E.apellido, A.horas_asignadas DESC;
