--calculates the average rating from reviews for each product and category, sorted by the highest rating
WITH ProductCategoryAvgRating AS (
    SELECT
        P.product_id,
        P.product_name,
        P.category_name,
        AVG(R.rating) AS avg_rating
    FROM
        Products P
    LEFT JOIN
        Reviews R ON P.product_id = R.product_id
    GROUP BY
        P.product_id, P.product_name, P.category_name
)

SELECT
    product_id,
    product_name,
    category_name,
    AVG(ISNULL(avg_rating, 0)) AS average_rating
FROM
    ProductCategoryAvgRating
GROUP BY
    product_id, product_name, category_name
ORDER BY
    average_rating DESC;
