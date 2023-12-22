SELECT 
    YEAR(shipping_date_dateorders) AS shippingyear, 
    MONTH(shipping_date_dateorders) AS shippingmonth,
    customer_state,
    COUNT(*) AS LateDeliveryCount
FROM 
    [dbo].[ShippingData] 
JOIN 
    [dbo].[CustomerData]  ON Customer_ID = Customer_ID
WHERE 
    delivery_status = 'late delivery'
    AND customer_state IN ('PR', 'CA', 'NY', 'TX', 'IL')
    AND Shipping_Mode = 'standard class'
    AND YEAR(shipping_date_dateorders) BETWEEN 2015 AND 2018
GROUP BY 
    YEAR(shipping_date_dateorders),
    MONTH(shipping_date_dateorders),
    customer_state
ORDER BY 
    shippingyear, shippingmonth, LateDeliveryCount DESC;