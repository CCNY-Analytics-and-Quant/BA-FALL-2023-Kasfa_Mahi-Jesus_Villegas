SELECT
    SD.Shipping_Mode,
    PD.Product_Name,
    COUNT(*) AS LateDeliveryCount
FROM
    [dbo].[ShippingData] SD
JOIN
    [dbo].[ProductData] PD ON Product_Category_Id = PD.Product_Category_Id
JOIN
    [dbo].[CustomerData] CD ON Customer_ID = CD.Customer_ID
WHERE
    SD.Delivery_Status = 'late delivery'
    AND PD.Category_Name = 'Electronics'
    AND CD.Customer_State = 'PR'
GROUP BY
    SD.Shipping_Mode,
    PD.Product_Name
ORDER BY
    LateDeliveryCount DESC;