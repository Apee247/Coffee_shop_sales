SELECT
    CASE WHEN dayofweek(transaction_date) IN(1,7) THEN 'Weekends'
    ELSE 'Weekdays'
    END AS day_type,
    CONCAT(ROUND(SUM(transaction_qty*unit_price)/1000,1),'K') As Total_Sales
    FROM coffee_shop_sales
    WHERE MONTH(transaction_date) = 5 
GROUP BY
CASE WHEN dayofweek(transaction_date) IN(1,7) THEN 'Weekends'
    ELSE 'Weekdays'
    END 