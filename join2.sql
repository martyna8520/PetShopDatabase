--find the total quantity of products ordered from shop produced by each manufacturer
SELECT
    PR.producer_name AS ProducerName,
    COUNT(DISTINCT P.product_id) AS TotalProductsOrdered
FROM
    Producers PR
JOIN
    Products P ON PR.producer_id = P.producer_id
JOIN
    Offers O ON P.product_id = O.product_id
JOIN
    Products_ordered PO ON O.offer_id = PO.offer_id
JOIN
    Orders ord ON PO.order_id = ord.order_id
GROUP BY
    PR.producer_name
ORDER BY
    TotalProductsOrdered DESC;