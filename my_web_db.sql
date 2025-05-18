-- Drop the database if it already exists
DROP DATABASE IF EXISTS my_web_db;

-- Create the database
CREATE DATABASE my_web_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- Select the database
USE my_web_db;

-- Create the tables
CREATE TABLE Users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Downloads (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  product_id INT NOT NULL,
  download_date DATETIME NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (product_id) REFERENCES Products(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create indexes
CREATE INDEX idx_user_id ON Downloads (user_id);
CREATE INDEX idx_product_id ON Downloads (product_id);