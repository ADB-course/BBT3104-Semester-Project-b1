-- Write your SQL code here
-----Function to Calculate Maintenance Effectiveness----
DELIMITER //
CREATE FUNCTION MaintenanceEffectiveness(p_maintenance_id INT)
RETURNS VARCHAR(20)
BEGIN
    DECLARE result VARCHAR(20);
    SELECT 
        CASE 
            WHEN repair_outcome = 'Successful' THEN 'Effective'
            ELSE 'Ineffective'
        END
    INTO result
    FROM Maintenance
    WHERE maintenance_id = p_maintenance_id;

    RETURN result;
END;
//
DELIMITER ;
