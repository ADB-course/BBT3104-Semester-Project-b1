-- Write your SQL code here
---Procedure to Assign Maintenance Requests---
DELIMITER //
CREATE PROCEDURE AssignMaintenance (
    IN p_machine_id INT,
    IN p_team_id INT
)
BEGIN
    INSERT INTO Maintenance (machine_id, maintenance_team_id, maintenance_date, type_of_maintenance, repair_outcome)
    VALUES (p_machine_id, p_team_id, NOW(), 'Corrective', 'Pending');
END;
//
DELIMITER ;
