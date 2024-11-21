-- Write your SQL code here
--------Transaction for Processing Maintenance Requests----
START TRANSACTION;

-- Assign a maintenance task
INSERT INTO Maintenance (machine_id, maintenance_team_id, maintenance_date, type_of_maintenance, repair_outcome)
VALUES (1, 2, NOW(), 'Preventive', 'Pending');

-- Update the machine's status
UPDATE Machine
SET status = 'Under Maintenance'
WHERE machine_id = 1;

COMMIT;


-----Transaction for Handling Delayed Orders----
START TRANSACTION;

-- Mark orders as delayed
UPDATE `Order`
SET delivery_status = 'Delayed'
WHERE actual_delivery_date > scheduled_delivery_date;

-- Log delayed orders
INSERT INTO DelayedOrdersLog (order_id, delay_duration, logged_date)
SELECT 
    order_id, 
    DATEDIFF(actual_delivery_date, scheduled_delivery_date), 
    NOW()
FROM `Order`
WHERE actual_delivery_date > scheduled_delivery_date;

COMMIT;
