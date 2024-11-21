-- Write your SQL code here
--Trigger for Updating Machine Status---
CREATE TRIGGER after_maintenance_update
AFTER UPDATE ON Maintenance
FOR EACH ROW
BEGIN
    IF NEW.repair_outcome = 'Successful' THEN
        UPDATE Machine
        SET status = 'Operational'
        WHERE machine_id = NEW.machine_id;
    END IF;
END;
