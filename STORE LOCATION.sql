SELECT 
  store_location,
  CONCAT(ROUND(SUM(unit_price*transaction_qty)/1000,1),'K') as Total_Sales
  FROM
  coffee_shop_sales
  WHERE
  MONTH(transaction_date) = 5
  GROUP BY
  store_location
  ORDER BY
  SUM(unit_price*transaction_qty) DESC;
  
  
  
  