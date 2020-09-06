-- Create the customers table
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
insert into customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

select * from customers;
select * from salesman;
select * from orders;
    -- Write an SQL statement to know which salesman are working for which customer.
		select * from customers as cus inner join salesman as sales on cus.salesman_id = sales.salesman_id; 
    -- Write an SQL statement to make a list in ascending order for the customer who holds a grade less than 300 and works either through a salesman.
		select customer_name , cus.grade from customers as cus inner join salesman as sales on cus.salesman_id = sales.salesman_id where cus.grade < 300 order by customer_name asc; 
    -- Write an SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission from the company is more than 12%.
		SELECT cus.customer_name , cus.city, sales.name , sales.commission FROM customers cus
		INNER JOIN salesman sales ON cus.salesman_id=sales.salesman_id 
		WHERE sales.commission>12;
    -- Write an SQL statement to find the details of a order i.e. order number, order date, amount of order, which customer gives the order and which salesman works for that customer and commission rate he gets for an order.
		select o.order_no , o.order_date , o.purchase_amount 
        from orders as o         
		INNER JOIN customers cus ON cus.customer_id=o.customer_id 
INNER 	Join salesman as sales on o.salesman_id = sales.salesman_id;