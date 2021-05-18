-- For each movie that has at least one rating, find the highest number of stars that movie received. 
-- Return the movie title and number of stars. Sort by movie title. 

SELECT m.title, max(r.rating as stars1)
-- max is aggregate function -- meta function on the results without result: min, count, avg
from Movies m
JOIN Ratings r
on m.id = r.mid
GROUP by 
	m.title
order by ASC
