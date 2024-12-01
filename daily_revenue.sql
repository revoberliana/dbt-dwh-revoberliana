SELECT
    s.date,
    SUM(s.amount) AS daily_revenue
FROM
    `dibimbing-442703.dibimbing.fact_sales` s
GROUP BY
    s.date
ORDER BY
    s.date;