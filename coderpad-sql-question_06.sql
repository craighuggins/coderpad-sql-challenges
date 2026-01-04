-- Question 6

-- Products with >3 items sold

-- (From OrderItems, group by product_id)

select p.product_id, p.category, SUM(oi.quantity) as quantity_sold
from Products p
inner join OrderItems oi on p.product_id = oi.product_id
group by p.product_id
having SUM(oi.quantity) > 3;