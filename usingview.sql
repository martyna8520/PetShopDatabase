--using view display products with the highest total orders
SELECT
    product_id,
    product_name,
    price,
    category_name,
    total_orders
FROM
    ProductsWithCategoriesAndOrders
WHERE
    total_orders = (SELECT MAX(total_orders) FROM ProductsWithCategoriesAndOrders);

