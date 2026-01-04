-- Question 8

-- From table Logins(user_id, login_timestamp),
-- return the number of users who logged in yesterday.

select user_id, DATE(login_timestamp) as login_date
from Logins
where DATE(login_timestamp) = DATE('now', '-1 days');

-- NOTE: for this to work, re-run the load data script