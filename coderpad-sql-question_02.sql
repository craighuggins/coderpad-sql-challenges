-- Question 2

-- Given a table Orders(order_id, customer_id, amount, order_date),
-- write a query to find the total revenue per customer.

select customer_id, sum(quantity*price) as total_revenue
from Orders
inner join OrderItems on Orders.order_id = OrderItems.order_id
group by customer_id;