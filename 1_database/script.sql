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


---order table---
CREATE TABLE `Order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    order_date DATE NOT NULL,
    scheduled_delivery_date DATE NOT NULL,
    actual_delivery_date DATE,
    delivery_status ENUM('On Time', 'Delayed', 'Cancelled'),
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
) ENGINE=InnoDB;
