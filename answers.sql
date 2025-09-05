-- Q1: Retrieve employee details with officeCode using INNER JOIN
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    o.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;

    -- Q2: Retrieve product details with productLine using LEFT JOIN
SELECT 
    p.productName,
    p.productVendor,
    pl.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;

    -- Q3: Retrieve first 10 orders with customer info using RIGHT JOIN
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;


