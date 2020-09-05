select * from orders;
    -- Write an SQL statement to find the total purchase amount of all orders.
    select sum(purchase_amount) as "totalpur" from orders;
    --  Write an SQL statement to find the average purchase amount of all orders.
    select avg(purchase_amount) as "Avgpur" from orders;
   --  Write an SQL statement to get the maximum purchase amount of all the orders.
   select max(purchase_amount) as "maxpur" from orders;
   --  Write an SQL statement to get the minimum purchase amount of all the orders.
   select min(purchase_amount) as "minpur" from orders;
   --  Write an SQL statement to find the number of salesmen listed in the table.
   select count(purchase_amount) as "countsalesman" from orders;
