SELECT title
from Movies m
left outer join Ratings r
on m.id = r.mid
WHERE name is NULL
