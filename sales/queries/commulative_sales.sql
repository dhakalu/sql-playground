WITH
    daily_sales as (
        SELECT
            sold_on,
            SUM(price) total
        FROM
            sales
        GROUP BY
            sold_on
    )
select
    sold_on,
    total,
    SUM(total) OVER (
        ORDER BY
            sold_on ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW
    ) as running_total
from
    daily_sales