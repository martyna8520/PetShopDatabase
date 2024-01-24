-- shows the count of orders and average order price for each product category
SELECT
    P.category_name,
    COUNT(O.order_id) AS total_orders,
    AVG(O.order_price) AS average_order_price
FROM
    Products P
JOIN
    Offers F ON P.product_id = F.product_id
JOIN
    Products_ordered PO ON F.offer_id = PO.offer_id
JOIN
    Orders O ON PO.order_id = O.order_id
GROUP BY
    P.category_name
ORDER BY
    total_orders DESC;
