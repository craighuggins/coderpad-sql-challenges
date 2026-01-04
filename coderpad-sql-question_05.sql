-- Question 5

-- Given:

-- Customers(customer_id, name)
-- Orders(order_id, customer_id, amount)

-- Write a query to return all customers with the total amount they have spent, including those who have never placed an order.

-- Result columns: customer_id, name, total_spent.

select c.customer_id, c.name, COALESCE(sum(oi.quantity * oi.price),0) AS total_spent
from Customers c
left join Orders o on c.customer_id = o.customer_id
left join OrderItems oi on o.order_id = oi.order_id
group by c.customer_id;