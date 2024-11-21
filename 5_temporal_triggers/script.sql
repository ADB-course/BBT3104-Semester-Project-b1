-- Write your SQL code here
-----Trigger for Logging Delayed Deliveries----
CREATE TRIGGER log_delayed_orders
AFTER UPDATE ON `Order`
FOR EACH ROW
BEGIN
    IF NEW.actual_delivery_date > NEW.scheduled_delivery_date THEN
        INSERT INTO DelayedOrdersLog (order_id, delay_duration, logged_date)
        VALUES (NEW.order_id, DATEDIFF(NEW.actual_delivery_date, NEW.scheduled_delivery_date), NOW());
    END IF;
END;