SELECT 
    CAST(shipping_date_dateorders AS DATE) AS order_date,
    COUNT(*) AS TotalOrders
FROM 
    [dbo].[ShippingData] 
JOIN 
    [dbo].[CustomerData]  ON Customer_ID = Customer_ID
WHERE 
    YEAR(shipping_date_dateorders) = 2018
    AND MONTH(shipping_date_dateorders) = 2
GROUP BY 
    CAST(shipping_date_dateorders AS DATE)
ORDER BY 
    order_date;