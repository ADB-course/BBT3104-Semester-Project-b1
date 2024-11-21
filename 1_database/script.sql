-- Write your SQL code here
---client table---
CREATE TABLE Client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    phone VARCHAR(15),
    address TEXT
) ENGINE=InnoDB;
