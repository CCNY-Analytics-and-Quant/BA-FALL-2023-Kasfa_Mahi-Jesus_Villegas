SELECT TOP 10
    Customer_State,
    Order_Region,
    TotalOrders
FROM (
    SELECT
        CD.Customer_State,
        OD.Order_Region,
        COUNT(OD.Order_Id) AS TotalOrders
    FROM
        dbo.CustomerData CD
    JOIN
        dbo.OrderData OD ON Customer_ID = Customer_ID
    WHERE
        CD.Customer_State IN ('PR')
    GROUP BY
        CD.Customer_State,
        OD.Order_Region
) Subquery
ORDER BY
    TotalOrders DESC;