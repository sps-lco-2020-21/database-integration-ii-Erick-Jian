SELECT DISTINCT year  -- make a set of responses
from Movies m
JOIN Ratings r
on r.mid = m.id
WHERE r.rating > 3
order by year ASC