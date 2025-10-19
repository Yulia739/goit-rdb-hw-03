USE store

SELECT
    od.id                AS order_details_id,
    o.id                 AS order_id,
    o.date               AS order_date,
    c.name               AS customer_name,
    e.last_name          AS employee_last,
    e.first_name         AS employee_first,
    sh.name              AS shipper_name,
    p.id                 AS product_id,
    p.name               AS product_name,
    cat.name             AS category_name,
    sup.name             AS supplier_name,
    od.quantity,
    p.price              AS unit_price
FROM order_details AS od
INNER JOIN orders     AS o   ON od.order_id   = o.id
INNER JOIN products   AS p   ON od.product_id = p.id
INNER JOIN customers  AS c   ON o.customer_id = c.id
INNER JOIN employees  AS e   ON o.employee_id = e.employee_id
INNER JOIN shippers   AS sh  ON o.shipper_id  = sh.id
INNER JOIN categories AS cat ON p.category_id = cat.id
INNER JOIN suppliers  AS sup ON p.supplier_id = sup.id;