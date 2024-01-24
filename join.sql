--retrieves information about customer orders, products, total order price without delivery cost
SELECT
    O.order_id AS OrderID,
    O.order_date AS OrderDate,
    C.customer_name AS CustomerName,
    P.product_name AS ProductName,
    O.order_price AS OrderTotalPrice
FROM
    Orders O
JOIN
    Customers C ON O.customer_name = C.customer_name AND O.e_mail = C.e_mail
JOIN
    Products_ordered PO ON O.order_id = PO.order_id
LEFT JOIN
    Deliveries D ON O.order_id = D.package_id
LEFT JOIN
    Offers F ON PO.offer_id = F.offer_id      
LEFT JOIN
    Products P ON F.product_id = P.product_id 
ORDER BY
    O.order_id, P.product_id;
