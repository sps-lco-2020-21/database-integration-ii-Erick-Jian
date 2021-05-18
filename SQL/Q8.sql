-- For each movie, return the title and the 'rating spread', 
-- that is, the difference between highest and lowest ratings given to that movie. 
-- Sort by rating spread from highest to lowest, then by movie title.

SELECT m.title, r.rating
from Movies m
join Ratings r
WHERE m.id = r.mid
