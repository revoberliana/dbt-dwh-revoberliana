SELECT
    p.category,
    SUM(s.qty) AS total_quantity,
    SUM(s.amount) AS total_revenue
FROM `dibimbing-442703.dibimbing.fact_sales` s
INNER JOIN `dibimbing-442703.dibimbing.dim_product` p ON s.product_id = p.product_id
GROUP BY
    p.category
ORDER BY
    total_revenue DESC
    LIMIT 10;