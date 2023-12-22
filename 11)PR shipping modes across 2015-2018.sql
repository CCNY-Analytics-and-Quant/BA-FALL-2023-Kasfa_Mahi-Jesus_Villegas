SELECT 
    YEAR(shipping_date_dateorders) AS shippingyear, 
    
    Shipping_Mode,
    COUNT(*) AS LateDeliveryCount
FROM 
    [dbo].[ShippingData] 
JOIN 
    [dbo].[CustomerData]  ON Customer_ID = Customer_ID
WHERE 
    delivery_status = 'late delivery'
    AND customer_state = 'PR'
    AND Shipping_Mode IN ('same day', 'first class', 'second class', 'standard class')
    AND YEAR(shipping_date_dateorders) BETWEEN 2015 AND 2018
GROUP BY 
    YEAR(shipping_date_dateorders),
    
    Shipping_Mode
ORDER BY 
    shippingyear,  Shipping_Mode;