USE store

SELECT 
    supplier_id,
    COUNT(*) AS product_count,
    AVG(price) AS average_price
FROM products
GROUP BY supplier_id;
