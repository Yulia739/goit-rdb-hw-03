USE store

SELECT COUNT(*) AS row_count
FROM order_details AS od
INNER JOIN orders     AS o   ON od.order_id   = o.id
INNER JOIN products   AS p   ON od.product_id = p.id
INNER JOIN customers  AS c   ON o.customer_id = c.id
INNER JOIN employees  AS e   ON o.employee_id = e.employee_id
INNER JOIN shippers   AS sh  ON o.shipper_id  = sh.id
INNER JOIN categories AS cat ON p.category_id = cat.id
INNER JOIN suppliers  AS sup ON p.supplier_id = sup.id;

SELECT COUNT(*) AS row_count_left
FROM order_details AS od
LEFT JOIN orders     AS o   ON od.order_id   = o.id
LEFT JOIN products   AS p   ON od.product_id = p.id
LEFT JOIN customers  AS c   ON o.customer_id = c.id
LEFT JOIN employees  AS e   ON o.employee_id = e.employee_id
LEFT JOIN shippers   AS sh  ON o.shipper_id  = sh.id
LEFT JOIN categories AS cat ON p.category_id = cat.id
LEFT JOIN suppliers  AS sup ON p.supplier_id = sup.id;

SELECT COUNT(*) AS row_count_right
FROM orders AS o
RIGHT JOIN order_details AS od ON od.order_id = o.id
RIGHT JOIN products   AS p   ON od.product_id = p.id
RIGHT JOIN customers  AS c   ON o.customer_id = c.id
RIGHT JOIN employees  AS e   ON o.employee_id = e.employee_id
RIGHT JOIN shippers   AS sh  ON o.shipper_id  = sh.id
RIGHT JOIN categories AS cat ON p.category_id = cat.id
RIGHT JOIN suppliers  AS sup ON p.supplier_id = sup.id;

