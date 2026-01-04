-- Question 7

-- Given Movies(movie_id, title, genre, rating),
-- find the average rating for each genre, sorted from highest to lowest.

--select * from Reviews;
--select distinct(genre) from Movies;
select genre, AVG(rating) as average_rating
from Movies
inner join Reviews on Movies.movie_id = Reviews.movie_id
group by genre
order by AVG(rating) desc;