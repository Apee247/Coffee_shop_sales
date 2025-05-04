SELECT concat((ROUND(sum(transaction_qty * unit_price)))/1000,'K') as Total_sales
from coffee_shop_sales
where 
month(transaction_date) = 5;


SELECT 
    MONTH(transaction_date) AS month,
    ROUND(SUM(unit_price * transaction_qty)) AS total_sales,
    (SUM(unit_price * transaction_qty) - LAG(SUM(unit_price * transaction_qty), 1)
    OVER (ORDER BY MONTH(transaction_date))) / LAG(SUM(unit_price * transaction_qty), 1) 
    OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) IN (4, 5) -- for months of April and May
GROUP BY 
    MONTH(transaction_date)
ORDER BY 
    MONTH(transaction_date);
    
    
SELECT COUNT(transaction_id) as Total_Orders 
FROM coffee_shop_sales
WHERE
month(transaction_date) = 5;

SELECT 
month(transaction_date)as month,
count(transaction_id) as Total_Orders,
(count(transaction_id) - LAG(count(transaction_id), 1) 
OVER (ORDER BY MONTH(transaction_date)))/LAG(COUNT(transaction_id),1)
OVER (ORDER BY MONTH(transaction_date)) *100 as mom_increase_percentage
FROM
coffee_shop_sales
WHERE
MONTH(transaction_date) IN(4,5)
GROUP BY
month(transaction_date)
ORDER BY 
month(transaction_date);


SELECT SUM(transaction_qty) as Total_Quantity_Sold
FROM
coffee_shop_sales
WHERE
MONTH(transaction_date) = 5;



SELECT 
month(transaction_date) as Month,
SUM(transaction_qty) as Total_Quantity_Sold,
(SUM(transaction_qty) - LAG(SUM(transaction_qty),1)
OVER (ORDER BY MONTH(transaction_date))) / LAG(SUM(transaction_qty),1)
OVER (ORDER BY MONTH(transaction_date))*100 as mom_increases_percentage
FROM
coffee_shop_sales
WHERE
month(transaction_date) IN(4,5)
GROUP BY
MONTH(transaction_date)
ORDER BY
MONTH(transaction_date);




