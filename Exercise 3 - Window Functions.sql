-- Exercise 3
-- SQL Query: Write a SQL query that selects the first and last name of each employee, along with the total hours worked and a
-- ranking of employees within their department based on hours worked.
-- Window Functions: Use the RANK() window function to assign a ranking to each employee based on hours worked,
-- grouped by department.
-- Order of Results: The results must be ordered by department and by ranking.


SELECT 
    E.nombre AS 'Nombre',
    E.apellido AS 'Apellido',
    SUM(AP.horas_asignadas) AS 'Total Horas Trabajadas',
    RANK() OVER (PARTITION BY E.depto_id ORDER BY SUM(AP.horas_asignadas) DESC) AS 'Ranking Departamental'
FROM 
    Empleados E
LEFT JOIN 
    AsignacionesDeProyectos AP ON E.empleado_id = AP.empleado_id
GROUP BY 
    E.empleado_id, E.nombre, E.apellido, E.depto_id
ORDER BY 
    E.depto_id, 'Ranking Departamental';
