-- Question 6

-- Products with >5 items sold

-- (From OrderItems, group by product_id)

select p.product_id, p.category, SUM(oi.quantity) as quantity_sold
from Products p
inner join OrderItems oi on p.product_id = oi.product_id
group by p.product_id
having SUM(oi.quantity) > 5;

-- None will appear in results, need to adjust the quantity to filter