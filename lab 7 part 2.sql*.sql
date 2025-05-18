#Rodas Gebreyohannes
#Lab 7
#part 2 
#1
CREATE OR REPLACE VIEW customer_addresses AS
    SELECT 
    c.customer_id,
    email_address,
    last_name,
    first_name,
    ba.line1 AS bill_line1,
    ba.line2 AS bill_line2,
    ba.city AS bill_city,
    ba.state AS bill_state,
    ba.zip_code AS bill_zip,
    sa.line1 AS ship_line1,
    sa.line2 AS ship_line2,
    sa.city AS ship_city,
    sa.state AS ship_state,
    sa.zip_code AS ship_zip
FROM
    customers c
        JOIN
    addresses ba ON c.customer_id = ba.customer_id
        AND c.billing_address_id = ba.address_id
        JOIN
    addresses sa ON c.customer_id = sa.customer_id
        AND c.shipping_address_id = sa.address_id;

#2
SELECT customer_id, last_name, first_name, bill_line1
FROM customer_addresses
ORDER BY last_name, first_name;

#3
UPDATE addresses
SET line1 = '1990 Westwood Blvd.'
WHERE address_id = (
  SELECT shipping_address_id
  FROM customers
  WHERE customer_id = 8
);

#4
CREATE OR REPLACE VIEW order_item_products AS
    SELECT 
        o.order_id,
        order_date,
        tax_amount,
        ship_date,
        item_price,
        discount_amount,
        (item_price - discount_amount) AS final_price,
        quantity,
        (item_price - discount_amount) * quantity AS item_total,
        product_name
    FROM
        orders o
            JOIN
        order_items oi ON o.order_id = oi.order_id
            JOIN
        products p ON oi.product_id = p.product_id;