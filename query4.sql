USE store

SELECT COUNT(*) AS product_count
FROM products
WHERE price BETWEEN 20 AND 100;