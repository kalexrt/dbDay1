CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(255),
    price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Inserting data into Products table
INSERT INTO Products (product_id, product_name, category, price)
VALUES
(1, 'Laptop', 'Electronics', 1000),
<<<<<<< HEAD
(2, 'Smartphone', 'Electronics', 500),
=======
(2, 'Smartphone', 'Electronics', 500,
>>>>>>> 2ae329b94bc47c7633dafb2df883b63cb5123d55
(3, 'Tablet', 'Electronics', 300);

-- Inserting data into Orders table
INSERT INTO Orders (order_id, customer_name, product_id, quantity, order_date)
VALUES
(1, 'Alice', 1, 2, '2024-07-01'),
(2, 'Bob', 2, 1, '2024-07-02'),
(3, 'Charlie', 3, 3, '2024-07-03');
<<<<<<< HEAD

--Calculate the total quantity ordered for each product category in the orders table.
SELECT p.category, SUM(o.quantity) AS total_quantity_ordered
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.category;

-- Find categories where the total number of products ordered is greater than 5. 
SELECT p.product_name, SUM(o.quantity) AS total_quantity_ordered
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(o.quantity) > 5;
=======
>>>>>>> 2ae329b94bc47c7633dafb2df883b63cb5123d55
