SELECT
    product_name,
    COUNT(product_name) as volume
FROM
    sales
GROUP BY
    product_name
ORDER BY
    volume DESC
LIMIT
    10;