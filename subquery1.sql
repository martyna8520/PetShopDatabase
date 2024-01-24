--find the employees who have performed more orders than the average
WITH EmployeeOrderStats AS (
    SELECT
        E.employee_id,
        E.employee_name,
        COUNT(DISTINCT P.order_id) AS processed_orders
    FROM
        Employees E
    LEFT JOIN
        Packages P ON E.employee_id = P.employee_id
    WHERE
        P.package_status IN ('Forwarded for shipment', 'Sent', 'In packing')
    GROUP BY
        E.employee_id, E.employee_name
),

AverageOrders AS (
    SELECT AVG(processed_orders) AS average_processed_orders
    FROM EmployeeOrderStats
)

SELECT
    EOS.employee_id,
    EOS.employee_name,
    EOS.processed_orders
FROM
    EmployeeOrderStats EOS
JOIN
    AverageOrders AO ON EOS.processed_orders > AO.average_processed_orders;



