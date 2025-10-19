USE store

SELECT
    cat.name AS category_name,
    od.quantity
FROM order_details AS od
INNER JOIN orders     AS o   ON od.order_id   = o.id
INNER JOIN products   AS p   ON od.product_id = p.id
INNER JOIN customers  AS c   ON o.customer_id = c.id
INNER JOIN employees  AS e   ON o.employee_id = e.employee_id
INNER JOIN shippers   AS sh  ON o.shipper_id  = sh.id
INNER JOIN categories AS cat ON p.category_id = cat.id
INNER JOIN suppliers  AS sup ON p.supplier_id = sup.id
WHERE e.employee_id > 3 AND e.employee_id <= 10;

