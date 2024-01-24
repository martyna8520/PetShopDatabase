-- displays the number of orders and total revenue for each month in the last year, it filters orders based on the order date and groups the results by month
WITH Months AS (
    SELECT DISTINCT FORMAT(DATEADD(month, number, DATEFROMPARTS(2023, 1, 1)), 'yyyy-MM') AS order_month
    FROM master.dbo.spt_values
    WHERE type = 'P'
        AND DATEADD(month, number, DATEFROMPARTS(2023, 1, 1)) >= DATEFROMPARTS(2023, 1, 1)
        AND DATEADD(month, number, DATEFROMPARTS(2023, 1, 1)) < DATEFROMPARTS(2024, 1, 1)
)

SELECT
    M.order_month,
    COUNT(O.order_id) AS total_orders,
    ISNULL(SUM(T.total_price), 0) AS total_revenue
FROM
    Months M
LEFT JOIN
    Orders O ON M.order_month = FORMAT(O.order_date, 'yyyy-MM')
LEFT JOIN
    Transactions T ON O.order_id = T.order_id
GROUP BY
    M.order_month
ORDER BY
    M.order_month;

