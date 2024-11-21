-- Write your SQL code here
---client table---
CREATE TABLE Client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    phone VARCHAR(15),
    address TEXT
) ENGINE=InnoDB;


---supplier table---
CREATE TABLE Supplier (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_info TEXT,
    region VARCHAR(50)
) ENGINE=InnoDB;


-----machine table-----
CREATE TABLE Machine (
    machine_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    status ENUM('Operational', 'Under Maintenance', 'Out of Service') NOT NULL
) ENGINE=InnoDB;
