SELECT *
-- SELECT distinct rv.name
from Reviewers rv
join Ratings r
on rv.id = r.rid
WHERE r.date is NULL