-- Write your SQL code here

-------Tables with Check Constraints----
---supply table---
CREATE TABLE Supply (
    supply_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_id INT NOT NULL,
    order_date DATE NOT NULL,
    delivery_date DATE,
    quantity_ordered INT CHECK (quantity_ordered > 0),
    quantity_received INT CHECK (quantity_received >= 0),
    supply_status ENUM('Pending', 'Completed', 'Delayed'),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
) ENGINE=InnoDB;
