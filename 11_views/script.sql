-- Write your SQL code here
-----Client Delivery Delays View----
CREATE VIEW ClientDeliveryDelays AS
SELECT 
    client_id, 
    COUNT(order_id) AS delayed_orders,
    AVG(DATEDIFF(actual_delivery_date, scheduled_delivery_date)) AS avg_delay
FROM `Order`
WHERE delivery_status = 'Delayed'
GROUP BY client_id;
