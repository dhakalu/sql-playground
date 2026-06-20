--Moving Average: Calculate a 3-day moving average 
-- of profit (price - cost) for each product.
with
    daily_sales as (
        select
            product_name,
            sold_on,
            sum((price- cost)) as total_profit_by_product
        from
            sales
        group by
            product_name, sold_on
    )
select
    product_name,
    sold_on,
    total_profit_by_product,
    avg(total_profit_by_product) over (partition by product_name order by sold_on rows between 2 preceding and current row)
from
    daily_sales;