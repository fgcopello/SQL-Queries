-- Exercise 2
-- SQL Query: Write a SQL query that selects the department name and the total sum of hours assigned to projects by
-- the employees in that department.
-- Grouping of Results: The results must be grouped by department.
-- Order of Results: The results must be ordered by total hours from highest to lowest.
-- Remember to use the following aliases for the final result: 'Department Name' and 'Total Assigned Hours'


SELECT 
    D.nombre AS 'Nombre Departamento',
    SUM(AP.horas_asignadas) AS 'Total Horas Asignadas'
FROM 
    Departamentos D
JOIN 
    Empleados E ON D.depto_id = E.depto_id
JOIN 
    AsignacionesDeProyectos AP ON E.empleado_id = AP.empleado_id
GROUP BY 
    D.nombre
ORDER BY 
    SUM(AP.horas_asignadas) DESC;
