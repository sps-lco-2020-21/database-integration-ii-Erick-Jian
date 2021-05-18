SELECT 'before 1980'[time period], avg(mean) from {
	SELECT m.year, avg(r.rating) mean
	from Movies m
	JOIN Ratings r
	on m.id = r.mid
	where m.year < 1980
	group by
		m.id, m.year
} UNION 
-- create a temp table: running a query TABLE on in another
-- LOGICAL union: two query tables, one after another
-- find out the union of the results
