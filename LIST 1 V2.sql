SELECT
o.order_id AS Pedido_ID,
o.order_date AS Data_Pedido,
CONCAT(c.first_name, ' ', c.last_name) AS Nome_Completo,
c.email AS Email
FROM
Orders o
INNER JOIN
Customers c
ON
o.customer_id = c.id;
    
SELECT
p.product_name AS Nome_Produto,
oi.quantity AS Quantidade_Pedida
FROM
Order_Items oi
INNER JOIN
Orders o ON oi.order_id = o.order_id
JOIN
Products p ON oi.product_id = p.product_id
WHERE
o.customer_id = 1;
    
SELECT
CONCAT(c.first_name, ' ', c.last_name) AS Nome_Completo,
SUM(oi.quantity * p.price) AS Total_Gasto
FROM
Customers c
INNER JOIN
Orders o ON c.id = o.customer_id
JOIN
Order_Items oi ON o.order_id = oi.order_id
JOIN
Products p ON oi.product_id = p.product_id
GROUP BY
c.id, c.first_name, c.last_name;
    
SELECT
c.first_name AS Nome,
c.last_name AS Sobrenome
FROM
Customers c
LEFT JOIN
Orders o ON c.id = o.customer_id
WHERE
o.order_id IS NULL;
    
SELECT
p.product_name AS Nome_Produto,
SUM(oi.quantity) AS Quantidade_Total_Vendida
FROM
Order_Items oi
INNER JOIN
Products p ON oi.product_id = p.product_id
GROUP BY
p.product_name
ORDER BY
Quantidade_Total_Vendida DESC;