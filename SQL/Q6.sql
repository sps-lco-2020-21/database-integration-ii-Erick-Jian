SELECT rv.name, m.title, r.rating, r2.rating
from Movies m
JOIN Ratings r
on m.id = r.mid
JOIN Reviewers rv
on r.rid = rv.id
JOIN Ratings r2	-- new table for second rating
on r2.mid = m.id
and r2.mid = r.mid
and r2.rid = r.rid
and r2.rating > r.rating
and (r2.date > r.date or r2.date = NULL or r.date = NULL)
