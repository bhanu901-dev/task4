USE LIBRARY_GF;
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
    );
    
SELECT product_name, SUM(quantity) AS total_quantity_sold FROM Sales GROUP BY(product_name);

SELECT region, AVG(price) AS average_price
FROM Sales
GROUP BY region;

SELECT region, COUNT(*) AS number_of_sales
FROM Sales
GROUP BY region;

SELECT product_name, SUM(quantity) AS total_sold
FROM Sales
GROUP BY product_name
HAVING total_sold > 50;

CREATE TABLE Marks (
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

SELECT student_id, AVG(marks) AS average_marks
FROM Marks
GROUP BY student_id;