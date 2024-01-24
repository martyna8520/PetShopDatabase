--create a view that includes product details, category information, and the total number of orders for each product
CREATE VIEW ProductsWithCategoriesAndOrders AS
SELECT
    P.product_id,
    P.product_name,
    O.price,
    P.category_name,
    COUNT(PO.order_id) AS total_orders
FROM
    Products P
JOIN
    Offers O ON P.product_id = O.product_id
LEFT JOIN
    Products_ordered PO ON O.offer_id = PO.offer_id
GROUP BY
    P.product_id, P.product_name, O.price, P.category_name;
