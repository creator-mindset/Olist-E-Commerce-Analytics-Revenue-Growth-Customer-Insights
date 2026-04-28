-- Monthly Revenue Growth
SELECT
   DATE_FORMAT(order_date,'%Y-%m') AS month,
   SUM(payment_value) AS revenue
FROM orders o 
JOIN payments p 
ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

-- Insights 
-- Sales showed consistent growth with peak revenue in festive months

-- Month Over Month Growth
SELECT 
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS prev_month,
    ROUND(
        ((revenue - LAG(revenue) OVER (ORDER BY month)) 
        / LAG(revenue) OVER (ORDER BY month)) * 100, 2
    ) AS growth_percentage
FROM (
    SELECT 
        DATE_FORMAT(o.order_date, '%Y-%m') AS month,
        SUM(p.payment_value) AS revenue
    FROM orders o
    JOIN payments p 
        ON o.order_id = p.order_id
    GROUP BY month
) t;

-- Top Selling Products

SELECT
   product_name,
   SUM(quantity) AS total_sold
FROM  order_items
GROUP BY product_name
ORDER BY total_sold DESC
LIMIT 10;


-- Revenue Contribution

SELECT
    product_name,
    SUM(quantity * price) AS revenue,
    ROUND( 
    (SUM(quantity * price) / SUM(SUM(quantity * price)) OVER()) * 100,2) AS contribution_percentage
FROM order_items
GROUP BY product_name
ORDER BY revenue DESC;

-- City wise sales

SELECT
    c.city,
    SUM(p.payment_value) AS revenue
FROM orders o 
JOIN customers c
ON o.customer_id = c.customer_id
JOIN payments p
ON o.order_id = p.order_id
GROUP BY c.city
ORDER BY revenue DESC;

-- Customer Retention Analysis

SELECT
 ROUND(
 (COUNT(CASE WHEN order_count > 1 THEN 1 END) / COUNT(*)) * 100,2) AS repeat_customer_percentage
FROM (
SELECT
    customer_id,
    COUNT(order_id) AS order_count
    FROM orders
    GROUP BY customer_id
    )t;
    
-- Average Order Value

SELECT
    ROUND(SUM(payment_value) / COUNT(DISTINCT(order_id),2)) AS avg_order_value
FROM payments;
