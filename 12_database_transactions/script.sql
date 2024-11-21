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
