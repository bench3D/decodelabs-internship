--Query 1: High-Ticket Catalog Performance
SELECT 
    Product, 
    UnitPrice, 
    Quantity, 
    TotalPrice
FROM sales_data
WHERE UnitPrice > 350.00  -- Targets premium catalog tier
ORDER BY TotalPrice DESC;

--Query 2: Sales Performance by Payment Method
SELECT 
    PaymentMethod,
    COUNT(*) AS total_transactions,            -- Measures volume/scale including nulls
    SUM(TotalPrice) AS total_revenue,          -- Tracks absolute financial health
    AVG(TotalPrice) AS average_order_value     -- Identifies financial norms
FROM sales_data
GROUP BY PaymentMethod
ORDER BY total_revenue DESC;

--Query 3: Promotional Code Performance
SELECT 
    CouponCode,
    COUNT(*) AS usage_count,
    SUM(TotalPrice) AS promotional_revenue
FROM sales_data
WHERE CouponCode IS NOT NULL AND CouponCode <> 'No coupon'
GROUP BY CouponCode
ORDER BY usage_count DESC;

--Query 4: Operational Fulfillment & Pipeline Health
SELECT 
    OrderStatus,
    COUNT(*) AS order_volume,
    SUM(TotalPrice) AS tied_up_revenue
FROM sales_data
GROUP BY OrderStatus
HAVING SUM(TotalPrice) > 50000.00 -- Rejection funnel for low-value pipelines[cite: 2]
ORDER BY tied_up_revenue DESC;