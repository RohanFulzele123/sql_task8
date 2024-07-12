select * from sales

--1) select all the row having second class in ship_mode

select * from sales where ship_mode ~ 'Second'

--2) whats the query of all the row of having 'off-la'

select * from sales where product_id ~* 'OFF\-LA'

--3) whats the query of all the customer age is 25 by using Caret(^) 

select * from customer where cast(age as varchar) ~ '^25' 

--4)  whats the query of all the customer age is between 30 to 40 by using ($)

select * from customer where cast(age as varchar) ~ '[3][0-9]$'

--5) whats the query of all the customer name start with latter 'E' and last latter is 'N'

select customer_name,first_name from customer where first_name ~* '^[e][a-z][a-z][n]$'

--6) whats the query of having sales 1st charachter is 2 to 5 2nd char 6 to 9 and last digit  1 or 6

select order_id , sales::varchar from sales where sales :: varchar ~* '^[2-5][6-9]{2}.[0-9](1|6)$'


--7) write the query of all the customer_id name start with latter 's' and second last digit 2-6 and last digit 3 or 5

select customer_name,customer_id from customer where customer_id::varchar ~* '^[S][a-z]-[0-9]{3}[2-6](3|5)$'

--8)  write a query last_name ending with latter 'I' of all customer

select customer_name from customer where last_name ~* 'i'

select * from sales

--9) write a query having order_id 1st char is 'C' year is 2016 and 2017 second last digit between 2-6
 --and last digit 4 or 8

select customer_id,order_id from sales where order_id::varchar ~* '^[C][a-z]-[0-2]{3}(6|7)-[0-9]{4}[2-6](2|8)'

--10) 

select * from sales where order_id::varchar ~* '^[C][a-z]-[0-2]{3}(6|7)-[0-9]{4}[2-6](2|8)' or 
customer_id::varchar ~* '^[P][G]-[0-9]{4}(5|6)'
