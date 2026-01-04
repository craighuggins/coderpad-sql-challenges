-- Question 10

-- <!-- Using the Views table, write a query to return:

-- -Total views
-- -Total unique users
-- -Average views per user -->

select count(*) as total_views, 
        count(DISTINCT user_id) as unique_users, 
        count(*) / count(DISTINCT user_id) as avg_views_per_user
from Views;
