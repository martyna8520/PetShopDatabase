--finds the total number of orders performed by each employee and the date of the last order they performed
SELECT 
    E.employee_id,
    E.employee_name,
    E.employee_surname,
    COUNT(O.order_id) AS total_orders,
    MAX(O.order_date) AS last_order_date
FROM 
    Employees E
JOIN 
    Packages P ON E.employee_id = P.employee_id
JOIN 
    Orders O ON P.order_id = O.order_id
GROUP BY 
    E.employee_id, E.employee_name, E.employee_surname;