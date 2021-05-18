-- Write a query to return the ratings data in a more readable format: 
-- reviewer name, movie title, stars, and ratingDate. 
-- Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. 

SELECT RE.name, RA.date, RA.rating as star, M.title
from Movies M
JOIN Ratings RA 
JOIN Reviewers RE
on M.id = RA.mid 
AND RE.id = RA.rid
--order by RE.name ASC
--order by M.title ASC
order by RA.rating ASC


