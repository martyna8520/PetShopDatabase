--lists the customers based on their total purchase amount, it includes customer details and sums up the total purchase amount from transactions
SELECT
    C.customer_name,
    C.customer_surname,
    C.e_mail,
    SUM(T.total_price) AS total_purchase_amount
FROM
    Customers C
JOIN
    Orders O ON C.customer_name = O.customer_name AND C.e_mail = O.e_mail
JOIN
    Transactions T ON O.order_id = T.order_id
GROUP BY
    C.customer_name, C.customer_surname, C.e_mail
ORDER BY
    total_purchase_amount DESC;