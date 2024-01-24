-- Calculates the average delivery time for packages with status 'Delivered'
SELECT
    D.delivery_status,
    D.delivery_date,
    P.order_id,
    AVG(DATEDIFF(day, O.order_date, D.delivery_date)) AS average_delivery_time
FROM
    Deliveries D
JOIN
    Packages P ON D.package_id = P.package_id
JOIN
    Orders O ON P.order_id = O.order_id
WHERE
    D.delivery_status = 'Delivered'
GROUP BY
    D.package_id, D.delivery_status, D.delivery_date, P.order_id;
