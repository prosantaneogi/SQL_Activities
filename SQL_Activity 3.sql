-- Activity 3
-- Show data from the salesman_id and city columns
Select salesman_id , city from salesman;

-- Show data of salesman from Paris
Select * from salesman where city='Paris';

-- Show salesman_id and commission of Paul Adam

Select salesman_id , commission from salesman where name = 'Paul Adam';
